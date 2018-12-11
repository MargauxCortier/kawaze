class CommentsController < ApplicationController

    def create
        @category = Category.find(params[:category_id])
        @forum = @category.forums.find(params[:forum_id])
        @post = @forum.posts.find(params[:post_id])
        @comment = @post.comments.create(content: params[:content])
        @comment.set_user!(current_user)
        redirect_to category_forum_path(@category, @forum)
    end

    # def update
    #     @forum = Forum.find(params[:forum_id])
    #     @post = @forum.posts.find(params[:post_id])
    #     @comment = @post.comments.find(params[:id])

    #     if @comment.update(content: params[:content])
    #         redirect_to category_forum_path(@category, @forum)
    #     else
    #         render 'edit'   
    #     end      
    # end

    # def edit
    #     @forum = Forum.find(params[:forum_id])
    #     @post = @forum.posts.find(params[:post_id])
    #     @comment = @post.comments.find(params[:id])
    # end

    def destroy
        @category = Category.find(params[:category_id])
        @forum = @category.forums.find(params[:forum_id])
        @post = @forum.posts.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        redirect_to category_forum_path(@category, @forum)
    end

    # private

    # def comment_params
    #     params[:name, :content]
    # end
end