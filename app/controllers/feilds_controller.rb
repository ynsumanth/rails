class FeildsController < ApplicationController
  before_action :set_feild, only: [:show, :edit, :update, :destroy]

  # GET /feilds
  # GET /feilds.json
  def index
    @feilds = Feild.all
  end

  # GET /feilds/1
  # GET /feilds/1.json
  def show
  end

  # GET /feilds/new
  def new
    @feild = Feild.new
  end

  # GET /feilds/1/edit
  def edit
  end

  # POST /feilds
  # POST /feilds.json
  def create
    @feild = Feild.new(feild_params)

    respond_to do |format|
      if @feild.save
        format.html { redirect_to @feild, notice: 'Feild was successfully created.' }
        format.json { render :show, status: :created, location: @feild }
      else
        format.html { render :new }
        format.json { render json: @feild.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feilds/1
  # PATCH/PUT /feilds/1.json
  def update
    respond_to do |format|
      if @feild.update(feild_params)
        format.html { redirect_to @feild, notice: 'Feild was successfully updated.' }
        format.json { render :show, status: :ok, location: @feild }
      else
        format.html { render :edit }
        format.json { render json: @feild.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feilds/1
  # DELETE /feilds/1.json
  def destroy
    @feild.destroy
    respond_to do |format|
      format.html { redirect_to feilds_url, notice: 'Feild was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feild
      @feild = Feild.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feild_params
      params.require(:feild).permit(:feildName,:departmentId)
    end
end
