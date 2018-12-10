class CategoriesController < ApplicationController
	
	def index
      @categories = Category.all
  end

  def new
      @category = Category.new
  end

	def create
		@category = Category.new(title: params[:title])

        if @category.save
            redirect_to categories_url
        else
            render 'new'
        end
	end

	def show
      @category = Category.find(params[:id])
  end

  def update
      @category = Category.find(params[:id])

      if @category.update(title: params[:title])
          redirect_to categories_url
      else
          render 'edit'
      end
  end

  def edit
      @category = Category.find(params[:id])
  end

  def destroy
      @category = Category.find(params[:id])
      @category.destroy
      redirect_to root_path
  end

  # private

  # def category_params
  #     params.require(:category).permit(:title)
  # end

end
