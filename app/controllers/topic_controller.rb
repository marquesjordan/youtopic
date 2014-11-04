class TopicController < ApplicationController
  def index
  	@topics = Topic.all
  end

  def new
  	@topic = Topic.new
  end

  def edit
  end

  def show
  end
end
