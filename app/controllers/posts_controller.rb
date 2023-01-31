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
    # binding.pry
    @post = Post.new(post_params)
    # binding.pry
    @post.pokemon_id = Pokemon.find_by(name: params[:post][:pokemon]).id
    @post.ability_id = Ability.find_by(name: params[:post][:ability]).id
    @post.item_id = Item.find_by(name: params[:post][:item]).id

    binding.pry
    if @post.save
      redirect_to posts_path, success: "育成論を作成しました"
    else
      flash.now['danger'] = "作成に失敗しました"
      render :new
    end
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
                                :ev_special_defense,
                                :ev_speed,
                                :iv_hp,
                                :iv_attack,
                                :iv_defense,
                                :iv_special_attack,
                                :iv_special_defense,
                                :iv_speed,
                                :tera_type,
                              )
  end
end
