class ProjectsController < ApplicationController
	def new
		@project=Project.new
		
	end

	 def create

	 
  	@project=Project.new(project_params)
    @project.save
    redirect_to project_new_path
    
end

  

  private
  def project_params
  	params.require(:project).permit(:name,:duration,:teamsize,:cost,:domain)
  	
  end

end
