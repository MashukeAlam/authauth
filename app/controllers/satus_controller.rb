class SatusController < ApplicationController
  before_action :set_satu, only: %i[ show edit update destroy ]

  # GET /satus or /satus.json
  def index
    @satus = Satu.all
  end

  # GET /satus/1 or /satus/1.json
  def show
  end

  # GET /satus/new
  def new
    @satu = Satu.new
  end

  # GET /satus/1/edit
  def edit
  end

  # POST /satus or /satus.json
  def create
    @satu = Satu.new(satu_params)

    respond_to do |format|
      if @satu.save
        format.html { redirect_to satu_url(@satu), notice: "Satu was successfully created." }
        format.json { render :show, status: :created, location: @satu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @satu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /satus/1 or /satus/1.json
  def update
    respond_to do |format|
      if @satu.update(satu_params)
        format.html { redirect_to satu_url(@satu), notice: "Satu was successfully updated." }
        format.json { render :show, status: :ok, location: @satu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @satu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /satus/1 or /satus/1.json
  def destroy
    @satu.destroy

    respond_to do |format|
      format.html { redirect_to satus_url, notice: "Satu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_satu
      @satu = Satu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def satu_params
      params.require(:satu).permit(:post)
    end
end
