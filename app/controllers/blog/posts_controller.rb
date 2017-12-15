module Blog
  class PostsController < BlogController
    before_action only: [:show]

    def index
      if params[:tag].present?
        @posts = Post.most_recent.published.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 3)
      else
        @posts = Post.most_recent.published.paginate(:page => params[:page], :per_page => 3)
      end

    end

    def show
      @post = Post.friendly.find(params[:id])
    end

  end
end