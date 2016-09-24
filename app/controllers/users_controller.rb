require 'rest-client'

class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  def send_simple_message
    RestClient.post "https://api:#{Rails.application.secrets.mailgun_api_key}"\
    "@api.mailgun.net/v3/sandbox6f38c47038a64b02b8e1a09650b98a67.mailgun.org/messages",
    :from => "Mailgun Sandbox <postmaster@sandbox6f38c47038a64b02b8e1a09650b98a67.mailgun.org>",
    :to => "#{@user.name} <#{@user.email}>",
    :subject => "Hello #{@user.name}",
    :text => "Congratulations #{@user.name}, you are now a keenbean"
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.first
    # send_simple_message
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
    @user = User.new(user_params)
    send_simple_message

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :about, :twitter, :linkedin, :facebook, :github, :site)
    end
end
