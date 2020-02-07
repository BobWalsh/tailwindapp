class ThetagsController < ApplicationController
  before_action :set_thetag, only: [:show, :edit, :update, :destroy]

  # GET /thetags
  # GET /thetags.json
  def index
    @thetags = Thetag.all
  end

  # GET /thetags/1
  # GET /thetags/1.json
  def show
  end

  # GET /thetags/new
  def new
    @thetag = Thetag.new
  end

  # GET /thetags/1/edit
  def edit
  end

  # POST /thetags
  # POST /thetags.json
  def create
    @thetag = Thetag.new(thetag_params)

    respond_to do |format|
      if @thetag.save
        format.html { redirect_to @thetag, notice: 'Thetag was successfully created.' }
        format.json { render :show, status: :created, location: @thetag }
      else
        format.html { render :new }
        format.json { render json: @thetag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thetags/1
  # PATCH/PUT /thetags/1.json
  def update
    respond_to do |format|
      if @thetag.update(thetag_params)
        format.html { redirect_to @thetag, notice: 'Thetag was successfully updated.' }
        format.json { render :show, status: :ok, location: @thetag }
      else
        format.html { render :edit }
        format.json { render json: @thetag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thetags/1
  # DELETE /thetags/1.json
  def destroy
    @thetag.destroy
    respond_to do |format|
      format.html { redirect_to thetags_url, notice: 'Thetag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thetag
      @thetag = Thetag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thetag_params
      params.require(:thetag).permit(:name, :color, :is-favorite, :user_id)
    end
end
