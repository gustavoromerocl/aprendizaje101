class ProspectsController < ApplicationController
  before_action :set_prospect, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /prospects or /prospects.json
  def index
    @prospects = Prospect.all
  end

  # GET /prospects/1 or /prospects/1.json
  def show
  end

  # GET /prospects/new
  def new
    @prospect = Prospect.new
    @states = State.all
  end

  # GET /prospects/1/edit
  def edit
  end

  # POST /prospects or /prospects.json
  def create
    @prospect = current_user.prospects.create(prospect_params)
    @prospect.save_conversation

    redirect_to @prospect
    
  end

  # PATCH/PUT /prospects/1 or /prospects/1.json
  def update
    @prospect.update(prospect_params)
    @prospect.save_conversation

    redirect_to @prospect
  end

  # DELETE /prospects/1 or /prospects/1.json
  def destroy
    @prospect.destroy
    respond_to do |format|
      format.html { redirect_to prospects_url, notice: "Prospect was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospect
      @prospect = Prospect.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prospect_params
      params.require(:prospect).permit(:first_name, :last_name, :phone_number, :email, :state_id, :content)
    end
end
