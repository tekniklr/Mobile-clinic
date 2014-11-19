class UsersController < ApplicationController
  before_filter   :is_admin?
  before_filter   { |c| c.page_title 'User management' }
  
  # GET /users
  # GET /users.json
  def index
    @users = User.all.sort_by{|u| u.name || u.id.to_s}

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      @user.name   = params[:user][:name]
      @user.handle = params[:user][:handle]
      @user.admin  = params[:user][:admin]
      if @user.save
        format.html { redirect_to users_url, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully removed.' }
      format.js   
    end
  end
end
