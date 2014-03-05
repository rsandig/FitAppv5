require 'open-uri'
class HomeController < ApplicationController


    def home
        # @city = params[:city]
        # @url = URI.escape("http://api.openweathermap.org/data/2.5/weather?q=#{@city}&units=imperial")
        # @json_data = open(@url).read
        # @data = JSON.parse(@json_data)

        @city2 = "Chicago, IL"
        @url2 = URI.escape("http://api.openweathermap.org/data/2.5/weather?q=#{@city2}&units=imperial")
        @json_data2 = open(@url2).read
        @data2 = JSON.parse(@json_data2)

        @user_list = User.all
        @activity_list = Activity.all
        @community_list = Community.all
        @membership_list = Membership.all
        @comment_list = Comment.all
    end

end
