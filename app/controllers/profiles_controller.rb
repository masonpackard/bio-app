class ProfilesController < ApplicationController
  before_action :set_profile, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /profiles
  # GET /profiles.json
  def index
    #@profiles = Profile.all
    #redirect_to root_path
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  end

  # GET /profiles/new
  def new
    @profile = Profile.new(:user_id => self.id)
  end

  # GET /profiles/1/edit
  def edit
    #@profile = current_user.profile
    @profile = Profile.find(@profile)
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(@profile)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @profile }
      else
        format.html { render action: 'new' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    @profile = Profile.find(@profile)
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to root_path, notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.where(user_id: current_user.id).first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:user_id, :first_name, :last_name, :gender, :birth_date, :height_feet, :height_inches, :withings_id, :withings_api_key)
    end
end