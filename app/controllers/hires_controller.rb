class HiresController < ApplicationController



  before_action :set_hire, only: [:show, :edit, :update, :destroy]
  #GET/hires
  # GET /hires.json
  def index
    @hires = Hire.all
  end

  # GET /hires/1
  # GET /hires/1.json
  def show
  end

  # GET /hires/new
  def new
    @hire = Hire.new
  end

  # GET /hires/1/edit
  def edit
  end

  # POST /hires
  # POST /hires.json
  def create
    @hire = Hire.new(hire_params)

    respond_to do |format|
      if @hire.save
        format.html { redirect_to @hire, notice: 'Hire was successfully created.' }
        format.json { render :show, status: :created, location: @hire }
      else
        format.html { render :new }
        format.json { render json: @hire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hires/1
  # PATCH/PUT /hires/1.json
  def update
    respond_to do |format|
      if @hire.update(hire_params)
        format.html { redirect_to @hire, notice: 'Hire was successfully updated.' }
        format.json { render :show, status: :ok, location: @hire }
      else
        format.html { render :edit }
        format.json { render json: @hire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hires/1
  # DELETE /hires/1.json
  def destroy
    @hire.destroy
    respond_to do |format|
      format.html { redirect_to hires_url, notice: 'Hire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hire
      @hire = Hire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hire_params
      params.require(:hire).permit(:pk_date, :re_date, :client_id, :vehicle_id)
    end
end
