module Blog
  class PostsController < BlogController
    before_action only: [:show]

    def index
      @posts = Post.most_recent
    end

    def show
      @post = Post.friendly.find(params[:id])
    end

  end
end