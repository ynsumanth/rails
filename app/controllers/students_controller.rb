class StudentsController < ApplicationController
  #before_action :set_student, only: [:show, :edit, :update, :destroy]
  respond_to :json
  # GET /students
  # GET /students.json
  def index
    
    @students = Student.all
    #respond_to do |format|
    #  format.html #index.html.erb
    #  format.json {render json: @students}
    #end
    respond_with @students
    
  end

  # GET /students/1
  # GET /students/1.json
  def show
     @student = Student.find(params[:id])
     if !params[:id].nil?
       #@student = Student.find(params[:id])
       session[:studentId] = @student.id
       
     else 
       @student = Student.find(session[:studentId]);
     end
     #byebug
     
     @microposts = Micropost.where(student_id: params[:id]).all
     @courses ||= Array.new
     @microposts.each do |m|
       @course = Course.find(m.course_id)
       @courses.push(@course)
     end
     @courseSearched = session[:courseSearched]
     @feildOfCourse = session[:feildOfSearchedCourse]
     #session[:courseSearched] = nil
     #byebug
    
  end

  # GET /students/new
  def new
    @student = Student.new
    
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def addCourse
    
  end
  
  def searchCourse
    
    @courseSearched = Course.where("courseDescription like?","%#{params[:content]}%")
    session[:courseSearched] = @courseSearched.first.courseDescription
    @feild = Feild.find(@courseSearched.first.feildId);
    session[:feildOfSearchedCourse] = @feild.feildName
    @student = Student.find(session[:studentId]);
    #byebug
    respond_to do |format|
      format.html { redirect_to @student}
      format.json { render :show, status: :ok, location: @student }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      #byebug
      @student = Student.find(session[:studentId])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      #params.require(:student).permit(:firstName, :lastName, :emailId, :emergencyContact, :mailingAddress)
      #params.require(:student).permit(:firstName, :lastName, :emailId, :mailingAddress, 
      #:emergencyContact, :password_digest, :middleName, :mobileNo, :)
      params.require(:student).permit!
    end
end
