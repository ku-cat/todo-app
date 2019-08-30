class CategoriesController < ApplicationController
    
    def index
        @categories = Category.all
    end
    
    def new
        @category = Category.new
    end
    
    def create
        @category = Category.create(category_params)
        redirect_to categories_path
    end
    
    def edit
        @category = Category.find_by(id: params[:id])
    end
    
    def update
        @category = Category.find_by(id: params[:id])
        @category.update(category_params)
        redirect_to categories_path
    end
    
    def destroy
        @category = Category.find_by(id: params[:id])
        @category.destroy
        redirect_to categories_path
    end
    
    private
      def category_params
          params.require(:category).permit(:title)
      end
    
end
