class JavalecturesController < ApplicationController
  def index
  	@javalectures = Javalecture.all
  end

  def new
  	@javalecture = Javalecture.new
  end

  def create
  	@javalecture = Javalecture.new(javalecture_params)
      
      if @javalecture.save
         redirect_to javalectures_path, notice: "Plik został dodany"
      else
         render "new"
      end
  end

  def destroy
  	@javalecture = Javalecture.find(params[:id])
      @javalecture.destroy
      redirect_to javalectures_path, notice:  "Plik został usunięty."
   
  end

    private 
  def javalecture_params
  	params.require(:javalecture).permit(:name, :attachment, :number)
	end

end
