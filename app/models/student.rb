class Student < ApplicationRecord
    before_save { self.email = email.downcase }
    has_many  :projects
    validates :name,presence:true
    validates :password,presence:true
    validates :pojectname,presence:true
    validates :year_of_study,presence:true
    validates :instructorname,presence:true
    VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates :email,uniqueness:{case_sensitive: false},format: {with:VALID_EMAIL_REGEX}
    has_secure_password
end
