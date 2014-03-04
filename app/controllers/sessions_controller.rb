class SessionsController < ApplicationController
    def login
    end

    def create
        u = User.find_by(:username => params[:username])

        if u.present?
              if u.password == params[:password]
                session[:user_id] = u.id
                redirect_to root_url, notice: "Welcome!"
              else
                redirect_to "/login", notice: "Wrong Password."
              end
        else
            redirect_to "/login", notice: "Unknown user."
        end
    end

    def logout
        reset_session
        redirect_to root_url, notice: "You are now logged out!"
    end

end
