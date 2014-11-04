class ChoiceController < ApplicationController
  def index
  	@choices = Choice.all
  end

  def new
  	@choice = Choice.new
  end

  def create
  	@choice = Choice.new(params.require(:choice).permit(:description))
  	if @choice.save
			# @answer = @question.answers.create(params.require(:answer).permit(:description))
			redirect_to surveys_path
		else
			render "new"
		end
  end
end
