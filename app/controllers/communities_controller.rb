class CommunitiesController < ApplicationController

    def new
    end

    def create
    end

    def index
            @membership_list = Membership.all
            @community_list = Community.all
    end

    def show
            @community = Community.find_by(:id => params[:community_id])
            @membership_list_abrv = Membership.where(:community_id => params[:community_id])
            @user_list = User.all
            @activity_list = Activity.all
            @comment_list = Comment.all
    end

end
