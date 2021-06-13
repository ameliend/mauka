class ExperiencingsController < ApplicationController

  def index
    @experiencings = Experiencing.where(user_id: current_user_id)
  end


  def new
    @experiencing = Experiencing.new
    @experience = Experience.find(params[:experience_id])
  end

  def create
    @experiencing = Experiencing.new
    @experience = Experience.find(params[:experience_id])
    @experiencing.experience = @experience
    @experiencing.user = current_user
    @experiencing.save
  end

end
