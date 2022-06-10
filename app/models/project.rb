class Project < ApplicationRecord
    validates :title,presence:true
    validates :description,presence:true
    belongs_to  :student
    has_one_attached  :document_upload
end
