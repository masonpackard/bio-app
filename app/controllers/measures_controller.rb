class MeasuresController < ApplicationController
  before_action :set_measure, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /measures
  # GET /measures.json
  def index
    @measures = current_user.measures.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /measures/1
  # GET /measures/1.json
  def show
  end

  # GET /measures/new
  def new
    @measure = Measure.new
  end

  # GET /measures/1/edit
  def edit
    @measure = Measure.find(@measure)
  end

  # POST /measures
  # POST /measures.json
  def create
    @measure = Measure.new(measure_params)
    @measure.user = current_user

    respond_to do |format|
      if @measure.save
        format.html { redirect_to measures_path, notice: 'Measure was successfully created.' }
        format.json { render action: 'show', status: :created, location: measures_path }
      else
        format.html { render action: 'new' }
        format.json { render json: @measure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /measures/1
  # PATCH/PUT /measures/1.json
  def update
    respond_to do |format|
      if @measure.update(measure_params)
        format.html { redirect_to measures_path, notice: 'Measure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @measure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /measures/1
  # DELETE /measures/1.json
  def destroy
    @measure.destroy
    respond_to do |format|
      format.html { redirect_to measures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measure
      @measure = Measure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def measure_params
      params.require(:measure).permit(:user_id, :measure_date, :measure_steps,  :measure_elevation, :measure_distance, :measure_calories, :measure_bpm)
    end
end
