module Blog
  class PostsController < BlogController
    before_action only: [:show]

    def index
      #@posts = Post.paginate(:page => params[:page])
      @posts = Post.most_recent.published.paginate(:page => params[:page], :per_page => 3)
      #@posts = @post.paginate(page: params[:page])

    end

    def show
      @post = Post.friendly.find(params[:id])
    end

  end
end