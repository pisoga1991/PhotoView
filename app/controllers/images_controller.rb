class ImagesController < ApplicationController

    before_filter do |controller|
        @image = Image.new
        @categories = Category.all
        @images = Image.find(:all)
    end

    def new
    end

    def create
        @image = Image.new(params[:image])
        if @image.save
            # binding.pry

            respond_to do |format|
                format.html { redirect_to root_path }
                format.js
            end
        else
            # binding.pry
            
            respond_to do |format|
                format.html { redirect_to root_path }
                format.js
            end
        end
    end

    def show
        @image = Image.find(params[:id])
    end

    def index
        # @images = Image.find(:all)
    end

end
