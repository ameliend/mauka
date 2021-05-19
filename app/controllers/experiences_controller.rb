class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]


  def new
    @experience = Experience.new # needed to instantiate the form_for
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user
    if @experience.save
      flash[:notice] = "L'expérience #{@experience.title} a bien été créé"
      redirect_to experiences_path
    else
      render :new
    end
  end

  def index
    @experiences = Experience.all
  end

  def show
  end

  def edit
  end

  def update
    @experience.update(experience_params)
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def destroy
    @experience.destroy
    redirect_to experiences_path
  end

private
  def experience_params
    params.require(:experience).permit(:title, :category, :photo)
  end

  def set_experience
    @experience = Experience.find(params[:id])
  end
end
