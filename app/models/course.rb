class Course < ActiveRecord::Base
    
    has_many :microposts
end