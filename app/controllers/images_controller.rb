class ImagesController < ApplicationController
	def new
        @image = Image.new
        @categories = Category.all
    end

    def create
        binding.pry
        @categories = Category.all
        @check = true
        params[:image].each do |i|
            @image = Image.new(i)
            @image.save
        end
        redirect_to "/upload"
    end

    def show
        @image = Image.find(params[:id])
    end

    def index
    end
end
