class ImagesController < ApplicationController
	def new
        @image = Image.new
        @categories = Category.all
    end

    def create
        @image = Image.new(params[:image])
        @categories = Category.all
        if @image.save
            redirect_to "/upload"
        else
            redirect_to "/upload"
        end
    end

    def show
        @image = Image.find(params[:id])
    end

    def index
    end
end
