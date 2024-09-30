class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @categories = Category.find(params[:id])
    @categories = Category.all
  end

  def new
    @categories = Category.new()
    @categories = Category.find(category_param[:name])
    @categories.save
  end

  def destroy

  end

  private

  def category_params

  end
end
