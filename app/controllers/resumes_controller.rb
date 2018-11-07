class ResumesController < ApplicationController
  before_action :authenticate_user!

  def index
 @resumes = Resume.all.order("created_at ASC")
 end

 def new
  @resume = current_user.resumes.build  #Resume.new(resume_params)
 end

def back
  redirect_to resumes_path
end

 def create
  
  if user_signed_in?
    @resume =  current_user.resumes.build(resume_params)
  end



 if @resume.save
 redirect_to resumes_path, notice: "The resume #{@resume.name} has been uploaded."
 else
 render "new"
 end

 end

 def destroy
 @resume = Resume.find(params[:id])
 @resume.destroy
 redirect_to resumes_path, notice: "The resume #{@resume.name} has been deleted."
 end

 private
 def resume_params
 params.require(:resume).permit(:user_id, :name, :attachment, users_attributes: [:id, :email, :resume_id])
 end

end
