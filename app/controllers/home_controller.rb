

class HomeController < ApplicationController
    
   require 'open_weather'
     
    def new
    end
    def create
        @post = Post.new()
        @post = Post.new
        @post.title = params[:title]
        @post.content = params[:content]
        @post.save
        redirect_to home_path(@post.id)
    end
    
    #Read
    def index
        @post = Post.find(5)
        
        options = { units: "metric", APPID: "6bd9557d7c997d637113c460ed0854ea" }
      @weather_seoul =  OpenWeather::Current.geocode(38.123206,128.2030600, options)
        #   @weather_seoul =OpenWeather::Current.city("Inje, KR", options)
    end
    
    def show
        @post = Post.find params[:id]
    end
    
    #Update
    def edit
        @post = Post.find params[:id]
    end
    def update
        @post = Post.find params[:id]
        @post.title = params[:title]
        @post.content = params[:content]
        @post.save
        
        redirect_to home_path(@post.id)
    end
    #Destroy
    def destroy
        @post = Post.find params[:id]
        @post.destroy
        redirect_to root_path
    end
    
    
end
