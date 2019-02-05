class LabsController < ApplicationController
  def index
  	@labs = Lab.all
  end

  def new
  	@lab = Lab.new
  end


  def create
  	@lab = Lab.new(lab_params)
      
      if @lab.save
         redirect_to labs_path, notice: "Plik został dodany."
      else
         render "new"
      end
  end

  def destroy
  	@lab = Lab.find(params[:id])
  	@lab.destroy
  	redirect_to labs_path, notice: "Plik został usunięty."
  end

  private 
  def lab_params
  	params.require(:lab).permit(:name, :attachment, :number)
end

end
