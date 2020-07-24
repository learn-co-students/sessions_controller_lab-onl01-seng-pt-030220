class SessionsController < ApplicationController 


    def new
       
    end

    def  create
      
        if !params[:name].present?
            redirect_to login_path
        else
           session[:name] = params[:name]
        end
        if !!session[:name]
            redirect_to '/'
        end

    end

    def destroy 
        session.delete :name 
    end

end