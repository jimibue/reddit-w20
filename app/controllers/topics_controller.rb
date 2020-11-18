class TopicsController < ApplicationController
  before_action :set_sub

  def index
    # I need to find my sub and grab all of the subs topics
    # how do that?
    @topics = @sub.topics
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def set_sub
    @sub = Sub.find(params[:sub_id])
  end
end
