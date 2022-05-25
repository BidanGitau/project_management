class Student < ApplicationRecord
    has_many    :projects
    validates :name,presence:true
    validates :email,uniqueness:{case_sensitive: false}
end
