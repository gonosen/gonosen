class InternsController < ApplicationController
  before_action :set_intern, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!, only: [:new, :edit, :update, :destroy]
  # GET /interns
  # GET /interns.json
  def index
    @interns = Intern.all
    #@intern_short = 
  end

  # GET /interns/1
  # GET /interns/1.json
  def show
  end

  # GET /interns/new
  def new
    @intern = Intern.new
  end

  # GET /interns/1/edit
  def edit
  end

  # POST /interns
  # POST /interns.json
  def create
    @intern = Intern.new(intern_params)

    respond_to do |format|
      if @intern.save
        format.html { redirect_to @intern, notice: 'Intern was successfully created.' }
        format.json { render :show, status: :created, location: @intern }
      else
        format.html { render :new }
        format.json { render json: @intern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interns/1
  # PATCH/PUT /interns/1.json
  def update
    respond_to do |format|
      if @intern.update(intern_params)
        format.html { redirect_to @intern, notice: 'Intern was successfully updated.' }
        format.json { render :show, status: :ok, location: @intern }
      else
        format.html { render :edit }
        format.json { render json: @intern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interns/1
  # DELETE /interns/1.json
  def destroy
    @intern.destroy
    respond_to do |format|
      format.html { redirect_to interns_url, notice: 'Intern was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def overview
    @interns = Intern.where(intern_type: 1)
  end

  def information
    @tags = ActsAsTaggableOn::Tag.most_used(6)
    @interns = Intern.where.not(intern_type: 1)
    
    if params[:tag].blank? then
    else
      @interns = @interns.tagged_with(params[:tag])
    end

    
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intern
      @intern = Intern.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intern_params
      params.require(:intern).permit(:title, :context, :start_time, :end_time, :location, :owner,:timeschedule,:deadline,:baggage,:intern_type,:intern_span, :company_image,:remove_company_image, :tag_list)
    end
end
