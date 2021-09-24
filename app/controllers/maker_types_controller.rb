class MakerTypesController < ApplicationController
  before_action :set_maker_type, only: %i[ show edit update destroy ]

  # GET /maker_types or /maker_types.json
  def index
    @maker_types = MakerType.all
  end

  # GET /maker_types/1 or /maker_types/1.json
  def show
  end

  # GET /maker_types/new
  def new
    @maker_type = MakerType.new
  end

  # GET /maker_types/1/edit
  def edit
  end

  # POST /maker_types or /maker_types.json
  def create
    @maker_type = MakerType.new(maker_type_params)

    respond_to do |format|
      if @maker_type.save
        format.html { redirect_to @maker_type, notice: "Maker type was successfully created." }
        format.json { render :show, status: :created, location: @maker_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @maker_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maker_types/1 or /maker_types/1.json
  def update
    respond_to do |format|
      if @maker_type.update(maker_type_params)
        format.html { redirect_to @maker_type, notice: "Maker type was successfully updated." }
        format.json { render :show, status: :ok, location: @maker_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @maker_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maker_types/1 or /maker_types/1.json
  def destroy
    @maker_type.destroy
    respond_to do |format|
      format.html { redirect_to maker_types_url, notice: "Maker type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maker_type
      @maker_type = MakerType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def maker_type_params
      params.require(:maker_type).permit(:maker_id, :type_id)
    end
end
