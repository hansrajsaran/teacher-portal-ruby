class ApplicationController < ActionController::Base
	before_action :authenticate_teacher!

  def after_sign_in_path_for(resource)
    students_path
  end
end
