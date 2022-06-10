class Project < ApplicationRecord
    belongs_to  :student
    has_one_attached  :document_upload
end
