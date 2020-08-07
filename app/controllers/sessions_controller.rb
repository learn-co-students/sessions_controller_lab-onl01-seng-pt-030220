class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    user = session[:name]
    if user.nil? or user.empty?
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def destroy
      session.delete :name
  end
  
end
