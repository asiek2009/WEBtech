class ProjectsController < ApplicationController
  def index
  	@projects = Project.all
  end

  def new
  	@project = Project.new
  end

  def create
  	@project = Project.new(project_params)
      
      if @project.save
         redirect_to projects_path, notice: "Plik został dodany"
      else
         render "new"
      end
  end

  def destroy
  	@project = Lecture.find(params[:id])
      @project.destroy
      redirect_to projects_path, notice:  "Plik został usunięty."
   
  end

    private 
  def project_params
  	params.require(:project).permit(:name, :attachment, :number, :bonus)
	end

end
