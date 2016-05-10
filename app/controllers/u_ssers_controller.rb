class USsersController < ApplicationController
  before_action :set_u_sser, only: [:show, :edit, :update, :destroy]

  # GET /u_ssers
  # GET /u_ssers.json
  def index
    @u_ssers = USser.all
  end

  # GET /u_ssers/1
  # GET /u_ssers/1.json
  def show
  end

  # GET /u_ssers/new
  def new
    @u_sser = USser.new
  end

  # GET /u_ssers/1/edit
  def edit
  end

  # POST /u_ssers
  # POST /u_ssers.json
  def create
    @u_sser = USser.new(u_sser_params)

    respond_to do |format|
      if @u_sser.save
        format.html { redirect_to @u_sser, notice: 'U sser was successfully created.' }
        format.json { render :show, status: :created, location: @u_sser }
      else
        format.html { render :new }
        format.json { render json: @u_sser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /u_ssers/1
  # PATCH/PUT /u_ssers/1.json
  def update
    respond_to do |format|
      if @u_sser.update(u_sser_params)
        format.html { redirect_to @u_sser, notice: 'U sser was successfully updated.' }
        format.json { render :show, status: :ok, location: @u_sser }
      else
        format.html { render :edit }
        format.json { render json: @u_sser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /u_ssers/1
  # DELETE /u_ssers/1.json
  def destroy
    @u_sser.destroy
    respond_to do |format|
      format.html { redirect_to u_ssers_url, notice: 'U sser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_u_sser
      @u_sser = USser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def u_sser_params
      params.require(:u_sser).permit(:name, :email)
    end
end
