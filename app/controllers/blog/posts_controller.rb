module Blog
  class PostsController < BlogController
    before_action only: [:show]

    def index
      @posts = storage.list_for(params[:page], params[:tag])
    end

    def show
      @post = storage.friendly.find(params[:id])
    end

    private

    def storage
      Post.published
    end

  end
end