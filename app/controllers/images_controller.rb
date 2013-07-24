class ImagesController < ApplicationController

    before_filter do |controller|
        @image = Image.new
        @categories = Category.all
        # @images = Image.where('category_id = ?', '1')
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
        @images = @images = Image.where('category_id = ?', Category.first[:id])
        @display = @images.first
    end

    def update_category
        # binding.pry
        @images = Image.where('category_id = ?', Category.find_by_name(params[:category])[:id])
    end

    def update_display
        # binding.pry
        @display = Image.find(params[:id])
    end

end
