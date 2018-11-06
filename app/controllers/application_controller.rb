class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    def welcome
      @title = "Welcome to Calums PA2: a thing he did"
    end
  
end
