class ForumsController < ApplicationController
	
	# def index
 #      @forums = Forum.all
 #  end

  def new
      @category = Category.find(params[:category_id])
      @forum = @category.forums.new
  end

	def create
    @category = Category.find(params[:category_id])
    @forum = @category.forums.new(title: params[:title])
        if @forum.save
            redirect_to categories_url
        else
            render 'new'
        end
  end

	def show
      @category = Category.find(params[:category_id])
      @forum = @category.forums.find(params[:id])
      @posts = @forum.posts.all.order("created_at ASC")
      @post = @forum.posts.new
  end

  def update
      @category = Category.find(params[:category_id])
      @forum = @category.forums.find(params[:id])

      if @forum.update(title: params[:title])
          redirect_to categories_url
      else
          render 'edit'
      end
  end

  def edit
    @category = Category.find(params[:category_id])
      @forum = @category.forums.find(params[:id])
  end

  def destroy
      @category = Category.find(params[:category_id])
      @forum = @category.forums.find(params[:id])
      @forum.destroy
      redirect_to categories_url
  end

  # private

  # def forum_params
  #     params.require(:forum).permit(:title, :category_id)
  # end

end
