class TopicsController < ApplicationController
  before_action :set_sub
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  def index
    # I need to find my sub and grab all of the subs topics
    # how do that?
    @topics = @sub.topics
  end

  def show
  end

  def new
    # what do we need here? help form
    @topic = @sub.topics.new
  end

  def create
    @topic = @sub.topics.new(topic_params)

    if @topic.save
      # this up to you as dev where to go
      redirect_to sub_topic_path(@sub, @topic)
    else
      # want to go back form if error
      render :new
    end
  end

  def edit
  end

  def update
    if @topic.update(topic_params)
      redirect_to sub_topic_path(@sub, @topic)
    else
      render :edit
    end
  end

  def destroy
    @topic.destroy
    redirect_to sub_topics_path(@sub)
  end

  private

  def set_topic
    @topic = @sub.topics.find(params[:id])
    # @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:name, :body)
  end
end
