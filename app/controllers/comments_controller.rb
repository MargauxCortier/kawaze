class CommentsController < ApplicationController

    def create
        @forum = Forum.find(params[:forum_id])
        @post = @forum.posts.find(params[:post_id])
        @comment = @post.comments.create(name: params[:name], comment: params[:comment])
        @comment.set_user!(current_user)
        redirect_to forum_path(@forum)
    end

    # def update
    #     @forum = Forum.find(params[:forum_id])
    #     @post = @forum.posts.find(params[:post_id])
    #     @comment = @post.comments.find(params[:id])

    #     if @comment.update(name: params[:name], comment: params[:comment])
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
        @forum = Forum.find(params[:forum_id])
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