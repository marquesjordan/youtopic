class SurveyController < ApplicationController
  def index
  	@surveys = Survey.all
  end

  def new
  	@survey = Survey.new
  	2.times { @survey.choices.build}
  end

  def create
  	# raise params.inspect
  	@survey = Survey.new(post_params)
  	if @survey.topic_id == nil
  		flash[:notice] = "You must select a topic catagory"
		render 'new'
	elsif @survey.content == ""
		render 'new'
  	elsif @survey.save
  		redirect_to surveys_path
  	else
  		render 'new'
  	end
  end

  def edit
  	@survey = Survey.find(:survey_id)
  end

  def show
  end

  def post_params
  	params.require(:survey).permit(:content, :topic_id, choices_attributes: [:description])
  end
end
