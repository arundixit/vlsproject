class PayslipreportsController < ApplicationController
  before_action :set_payslipreport, only: [:show, :edit, :update, :destroy]

  # GET /payslipreports
  # GET /payslipreports.json
  def index
    @payslipreports = Payslipreport.all
    @employees=Employee.all

       # @vehicles = Vehicle.where("category_id IN (#{params[:category_ids]})")

      #(VehicleCategory.where("vehicle_id = #{vehicle.id}").where(" category_id IN (#{condition_var}0)").collect(&:id).count == 1) || ( params[:category_ids]==nil) %-->


  end

     def menu
       @user = User.find_by_email(params[:email])
     end

  def report
    @payslipreports = Payslipreport.all
      @employee= Employee.find(params[:id])
    end



  # GET /payslipreports/1
  # GET /payslipreports/1.json
  def show


  end

  # GET /payslipreports/new
  def new
    @payslipreport = Payslipreport.new
  end

  # GET /payslipreports/1/edit
  def edit
  end

  # POST /payslipreports
  # POST /payslipreports.json
  def create
    @payslipreport = Payslipreport.new(payslipreport_params)

    respond_to do |format|
      if @payslipreport.save
        format.html { redirect_to @payslipreport, notice: 'Payslipreport was successfully created.' }
        format.json { render action: 'show', status: :created, location: @payslipreport }
      else
        format.html { render action: 'new' }
        format.json { render json: @payslipreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payslipreports/1
  # PATCH/PUT /payslipreports/1.json
  def update
    respond_to do |format|
      if @payslipreport.update(payslipreport_params)
        format.html { redirect_to @payslipreport, notice: 'Payslipreport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @payslipreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payslipreports/1
  # DELETE /payslipreports/1.json
  def destroy
    @payslipreport.destroy
    respond_to do |format|
      format.html { redirect_to payslipreports_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payslipreport
      @payslipreport = Payslipreport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payslipreport_params
      params[:payslipreport]
    end
end
