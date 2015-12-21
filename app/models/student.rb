class Student < ActiveRecord::Base
    
    #before_save {self.emailId = :emailId.downcase}
    
    
    validates :firstName, presence: true, length: {maximum: 50}
    validates :lastName, presence: true, length: {maximum: 50}
    #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+z/i
    #validates :emailId, presence: true, length: {maximum: 50}, format:{with:VALID_EMAIL_REGEX},
    #    uniqueness:{case_sensitive: false}
    has_secure_password
    validates :password, presence: true, length: {minimum: 6}
    
    has_many :microposts
    
end
