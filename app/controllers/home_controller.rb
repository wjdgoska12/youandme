class HomeController < ApplicationController
     
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
        @post = Post.all
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
