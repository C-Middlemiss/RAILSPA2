class SearchController < ApplicationController

	def index
		#@courses = Course.all
		#@instructors = Instructor.all
		#@subjects = Subject.all

		if params[:search]
     		@courses = Course.search(params[:search]).order("created_at DESC")
    	else
      		@courses = Course.all.order('created_at DESC')
    end
	end 

end
