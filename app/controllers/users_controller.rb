class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new({email: user_params[:email], password: user_params[:password]})

    if @user.save
      company = Company.new({user_id: @user.id, name: user_params[:company_name], cvr: user_params[:company_cvr], address: user_params[:company_address], zip_code: user_params[:company_post_number], city: user_params[:company_city]})
      if company.save
        redirect_to login_path
      else
        render :new
      end
    else
      render :new
    end
    
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if @user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
    
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
      redirect_to root_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit!#(:email, :password_digest)
    end
