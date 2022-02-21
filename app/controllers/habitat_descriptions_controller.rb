class HabitatDescriptionsController < ApplicationController
  before_action :set_habitat_description, only: %i[ show edit update destroy ]

  # GET /habitat_descriptions or /habitat_descriptions.json
  def index
    @habitat_descriptions = HabitatDescription.all
  end

  # GET /habitat_descriptions/1 or /habitat_descriptions/1.json
  def show
  end

  # GET /habitat_descriptions/new
  def new
    @habitat_description = HabitatDescription.new
  end

  # GET /habitat_descriptions/1/edit
  def edit
  end

  # POST /habitat_descriptions or /habitat_descriptions.json
  def create
    @habitat_description = HabitatDescription.new(habitat_description_params)

    respond_to do |format|
      if @habitat_description.save
        format.html { redirect_to habitat_description_url(@habitat_description), notice: "Habitat description was successfully created." }
        format.json { render :show, status: :created, location: @habitat_description }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @habitat_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /habitat_descriptions/1 or /habitat_descriptions/1.json
  def update
    respond_to do |format|
      if @habitat_description.update(habitat_description_params)
        format.html { redirect_to habitat_description_url(@habitat_description), notice: "Habitat description was successfully updated." }
        format.json { render :show, status: :ok, location: @habitat_description }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @habitat_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /habitat_descriptions/1 or /habitat_descriptions/1.json
  def destroy
    @habitat_description.destroy

    respond_to do |format|
      format.html { redirect_to habitat_descriptions_url, notice: "Habitat description was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habitat_description
      @habitat_description = HabitatDescription.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def habitat_description_params
      params.require(:habitat_description).permit(:habitat_type, :habitat_description)
    end
end
