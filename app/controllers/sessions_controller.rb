class SessionsController < ApplicationController
  def new
  end

  def create 
  if params[:name].present?
  session[:name] = params[:name]
  redirect_to '/'
  elsif !params[:name].present?
    redirect_to '/login'
  else 
    redirect_to '/login'
  end 
  end 

  def destroy 
  if params[:name] != nil 
    session[:name].delete 
  else 
    session[:name] = nil
  end
  end

end
