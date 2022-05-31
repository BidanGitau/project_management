class InstructorsController < ApplicationRecord
    def new 
        @instructor=Instructor.all
    end
    
end