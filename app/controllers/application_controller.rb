class ApplicationController < ActionController::Base
  protect_from_forgery

  @image = Image.new
  @categories = Category.all
end
