class PostsController < ApplicationController

    # def index
    #     @posts = Post.all.order("created_at ASC")
    # end

    def new
        @post = Post.new
    end

    def create
        @category = Category.find(params[:category_id])
        @forum = @category.forums.find(params[:forum_id])
        @user = current_user
        @post = @forum.posts.new(title: params[:title], content: params[:content])
        @post.set_user!(current_user)

        if @post.save
            redirect_to category_forum_path(@category, @forum)
        else
            render 'new'
        end
    end

    # def show
    #     @post = Post.find(params[:id])
    # end

    def update
        @category = Category.find(params[:category_id])
        @forum = @category.forums.find(params[:forum_id])
        @post = @forum.posts.find(params[:id])

        if @post.update(title: params[:title], content: params[:content])
            redirect_to category_forum_path(@category, @forum)
        else
            render 'edit'
        end
    end

    def edit
        @category = Category.find(params[:category_id])
        @forum = @category.forums.find(params[:forum_id])
        @post = @forum.posts.find(params[:id])
    end

    def destroy
        @category = Category.find(params[:category_id])
        @forum = @category.forums.find(params[:forum_id])
        @post = @forum.posts.find(params[:id])
        @post.destroy

        redirect_to category_forum_path(@category, @forum)

    end

    # private

    # def post_params
    #     params.require(:post).permit(:title, :content, :forum_id, :user_id)
    # end

end