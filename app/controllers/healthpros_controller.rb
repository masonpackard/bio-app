class HealthprosController < ApplicationController
  before_action :set_healthpro, only: [:show, :edit, :update, :destroy]

  # GET /healthpros
  # GET /healthpros.json
  def index
    @healthpros = Healthpro.all
  end

  # GET /healthpros/1
  # GET /healthpros/1.json
  def show
  end

  # GET /healthpros/new
  def new
    #@healthpro = Healthpro.new
    @healthpro = Healthpro.new(:user_id => self.id)
  end

  # GET /healthpros/1/edit
  def edit
  end

  # POST /healthpros
  # POST /healthpros.json
  def create
    @healthpro = Healthpro.new(@healthpro)

    respond_to do |format|
      if @healthpro.save
        format.html { redirect_to @healthpro, notice: 'Healthpro was successfully created.' }
        format.json { render action: 'show', status: :created, location: @healthpro }
      else
        format.html { render action: 'new' }
        format.json { render json: @healthpro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /healthpros/1
  # PATCH/PUT /healthpros/1.json
  def update
    respond_to do |format|
      if @healthpro.update(healthpro_params)
        format.html { redirect_to root_path, notice: 'Healthpro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @healthpro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /healthpros/1
  # DELETE /healthpros/1.json
  def destroy
    @healthpro.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_healthpro
      #@healthpro = Healthpro.find(params[:id])
      @healthpro = Healthpro.where(user_id: current_user.id).first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def healthpro_params
      params.require(:healthpro).permit(:user_id, :first_name, :last_name, :title)
    end
end
