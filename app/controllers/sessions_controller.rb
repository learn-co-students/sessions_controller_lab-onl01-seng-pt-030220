class SessionsController < ApplicationController 


    def new
       
    end

    def  create
       # byebug
       # if session[:name] == params[:name]
        #    redirect_to '/'
       # end
    # if !!session[:name]
     #   redirect_to '/'
    # else
        if params[:name] == '' || params[:name] == nil
            redirect_to login_path
        else
       
       session[:name] = params[:name]
        
        end
     if !!session[:name]
        redirect_to '/'
    end
  
    end

    def destroy 
        session.delete :name if session[:name]
    end

end