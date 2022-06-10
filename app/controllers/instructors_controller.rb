class InstructorsController < ApplicationController
    def new
      end
    def index
      instructors=Instructor.all
    end
end
