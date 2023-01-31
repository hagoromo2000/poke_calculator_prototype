class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def show
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title,
                                :body,
                                :ev_hp,
                                :ev_attack,
                                :ev_defense,
                                :ev_special_attack,
                                :ev_special_defense
                                :ev_speed,
                                :iv_hp,
                                :iv_attack,
                                :iv_defense,
                                :iv_special_attack,
                                :iv_special_defense,
                                :iv_speed,
                                :tera_type
                              )
  end
end
