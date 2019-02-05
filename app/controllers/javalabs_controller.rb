class JavalabsController < ApplicationController
def index
  	@javalabs = Javalab.all
  end

  def new
  	@javalab = Javalab.new
  end

  def create
  	@javalab = Javalab.new(javalab_params)
      
      if @javalab.save
         redirect_to javalab_path, notice: "Plik został dodany"
      else
         render "new"
      end
  end

  def destroy
  	@javalab = Javalab.find(params[:id])
      @javalecture.destroy
      redirect_to javalabs_path, notice:  "Plik został usunięty."
   
  end

    private 
  def javalab_params
  	params.require(:javalab).permit(:name, :attachment, :number)
	end

end
