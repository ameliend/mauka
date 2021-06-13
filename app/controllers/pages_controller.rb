class PagesController < ApplicationController

  def home
  end

  def mon_compte
    @experiencings = Experiencing.where(user_id: current_user)
  end
end
