class TwisteesController < ApplicationController
  before_action :set_twistee, only: [:show, :edit, :update, :destroy]

  # GET /twistees
  # GET /twistees.json
  def index
    @twistees = Twistee.all
  end

  # GET /twistees/1
  # GET /twistees/1.json
  def show
  end

  # GET /twistees/new
  def new
    @twistee = Twistee.new
  end

  # GET /twistees/1/edit
  def edit
  end

  # POST /twistees
  # POST /twistees.json
  def create
    @twistee = Twistee.new(twistee_params)

    respond_to do |format|
      if @twistee.save
        format.html { redirect_to @twistee, notice: 'Twistee was successfully created.' }
        format.json { render :show, status: :created, location: @twistee }
      else
        format.html { render :new }
        format.json { render json: @twistee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twistees/1
  # PATCH/PUT /twistees/1.json
  def update
    respond_to do |format|
      if @twistee.update(twistee_params)
        format.html { redirect_to @twistee, notice: 'Twistee was successfully updated.' }
        format.json { render :show, status: :ok, location: @twistee }
      else
        format.html { render :edit }
        format.json { render json: @twistee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twistees/1
  # DELETE /twistees/1.json
  def destroy
    @twistee.destroy
    respond_to do |format|
      format.html { redirect_to twistees_url, notice: 'Twistee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twistee
      @twistee = Twistee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def twistee_params
      params.require(:twistee).permit(:twistee)
    end
end
