class CategoriersController < ApplicationController
  before_action :set_category
  before_action :set_categorier, only: %i[ show edit update destroy ]

  # GET /categoriers or /categoriers.json
  def index
    @categoriers = Categorier.all
  end

  # GET /categoriers/1 or /categoriers/1.json
  def show
    @products = Product.all
  end

  # GET /categoriers/new
  def new
    @categorier = Categorier.new
  end

  # GET /categoriers/1/edit
  def edit
  end

  # POST /categoriers or /categoriers.json
  def create
    @categorier = Categorier.new(categorier_params)

    respond_to do |format|
      if @categorier.save
        format.html { redirect_to categorier_url(@categorier), notice: "Categorier was successfully created." }
        format.json { render :show, status: :created, location: @categorier }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categorier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoriers/1 or /categoriers/1.json
  def update
    respond_to do |format|
      if @categorier.update(categorier_params)
        format.html { redirect_to categorier_url(@categorier), notice: "Categorier was successfully updated." }
        format.json { render :show, status: :ok, location: @categorier }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categorier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoriers/1 or /categoriers/1.json
  def destroy
    @categorier.destroy

    respond_to do |format|
      format.html { redirect_to categoriers_url, notice: "Categorier was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categorier
      @categorier = Categorier.find(params[:id])
    end
    def set_category
      @categories = Category.all.order(:name)
    end
    # Only allow a list of trusted parameters through.
    def categorier_params
      params.require(:categorier).permit(:name, :category_id)
    end
end
