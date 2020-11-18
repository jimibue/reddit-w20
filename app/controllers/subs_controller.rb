class SubsController < ApplicationController
  # before_action :set_model, only: [:show, :edit, :update, :destroy]

  before_action :set_sub, only: [:show, :edit, :update, :destroy]
  # grab all instances
  def index
    @subs = Sub.all
  end

  # grab one instance

  def show
    # @model = Model.find(params[:id])
  end

  # new - gives us form
  def new
    #@model = Model.new #we need create of our model for form helper
    @sub = Sub.new
    render partial: "form"
  end

  # create - tries to save to db

  def create
    # @model = Model.new(model_params)
    # @model.save # tries save to db will fail if validations aren't meet
    # redirect somewhere or render new if save fails
    binding.pry
    @sub = Sub.new(sub_params)
    if @sub.save # tries db, if succesfull returns if not return false
      redirect_to sub_path(@sub)
      # redirect_to @sub #does the same as above
    else
      # something went wrong go to new form
      render :new
    end
  end

  # edit - give us new form with the info from our instance
  def edit
    # @model = Model.find(params[:id]) # give @model to edit form
    render partial: "form"
  end

  # update - updates the instance to DB
  def update
    # @model = Model.find(params[:id])
    # @model.update(model_params)
    # redirect somewhere or render edit if update fails
    if @sub.update(sub_params) # tries db, if succesfull returns true if not return false
      redirect_to sub_path(@sub)
      # redirect_to @sub #does the same as above
    else
      # something went wrong go to edit form
      render :edit
    end
  end

  # destroy - which removes from db
  def destroy
    # @model = Model.find(params[:id]).destroy
    @sub.destroy
    redirect_to subs_path
  end

  # We can do what ever we want in our controller the crud action we are talking about are fairly common
  def random
    @sub = Sub.all.sample
  end

  private

  def set_sub
    @sub = Sub.find(params[:id])
  end

  def sub_params
    # return a hash like object {name:'value'}
    params.require(:sub).permit(:name)
  end
end
