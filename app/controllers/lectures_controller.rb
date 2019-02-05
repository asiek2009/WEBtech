class LecturesController < ApplicationController
  def index
  	@lectures = Lecture.all
  end

  def new
  	@lecture = Lecture.new
  end

  def create
  	@lecture = Lecture.new(lecture_params)
      
      if @lecture.save
         redirect_to lectures_path, notice: "Plik został dodany"
      else
         render "new"
      end
  end

  def destroy
  	@lecture = Lecture.find(params[:id])
      @lecture.destroy
      redirect_to lectures_path, notice:  "Plik został usunięty."
   
  end

    private 
  def lecture_params
  	params.require(:lecture).permit(:name, :attachment, :number)
	end

end
