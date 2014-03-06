class ActivitiesController < ApplicationController

    def index
        @activity_list = Activity.all
        @user_list = User.all
    end

    def show
        @activity_list = Activity.all
        @user_list = User.all
        @comment_list = Comment.all
        @activity = Activity.find_by(:id => params[:activity_id])
    end

    def destroy
    end

    def new
    end

    def create
        a = Activity.new
        a.variety = params["variety"]
        a.user_id = session[:user_id]
        a.date = params["date"]
        a.distance = params["distance"]
        a.time = params["time"]
        a.description = params["description"]
        a.photo_url = params["photo_url"]
        a.save
        redirect_to "/activities/index"
    end

    def comment
        c = Comment.new
        c.user_id = session[:user_id]
        c.comment = params[:comment]
        c.date = Time.new
        c.activity_id = params[:activity_id]
        c.save
        @redirect_url = "/activities/show?activity_id="+params[:activity_id]
        redirect_to @redirect_url
    end

    def edit
    end

    def update
    end

end
