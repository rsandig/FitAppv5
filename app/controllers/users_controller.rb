class UsersController < ApplicationController
    def index
        @activity_list = Activity.all
        @user_list = User.all
        @comment_list = Comment.all
        @membership_list = Membership.all
        @community_list = Community.all
    end

    def new
    end

    def create
        u = User.new
        u.name = params["name"]
        u.username = params["username"]
        u.password = params["password"]
        u.age = params["age"]
        u.male = params["gender"]
        u.save
        redirect_to "/users/index"
    end

    def show
    end
end
