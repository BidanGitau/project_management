class Instructor < ApplicationRecord
    validates :name,presence:true
    validates :email,uniqueness:{case_sensitive: false}
end