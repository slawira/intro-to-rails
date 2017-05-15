class BlogpostsController < ApplicationController
  def new
    @user = current_user
    @blogpost = Blogpost.new
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = current_user
    @blogpost = Blogpost.find(params[:id])
  end

  def index
    @user = current_user
    @blogposts = current_user.blogposts
  end

  # POST /users
  # POST /users.json
  def create
    @user = current_user
    @blogpost = @user.blogposts.create(blogpost_params)

    if @blogpost.save
      redirect_to user_blogposts_path(@user, @blogpost)
    else
      render 'new'
    end
  end

  private
    def blogpost_params
      params.require(:blogpost).permit(:title)
    end

end
