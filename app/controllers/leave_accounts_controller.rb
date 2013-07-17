class LeaveAccountsController < ApplicationController
  before_action :set_leave_account, only: [:show, :edit, :update, :destroy]

  # GET /leave_accounts
  # GET /leave_accounts.json
  def index
    @leave_accounts = LeaveAccount.all
  end

  # GET /leave_accounts/1
  # GET /leave_accounts/1.json
  def show
  end

  # GET /leave_accounts/new
  def new
    @leave_account = LeaveAccount.new
  end

  # GET /leave_accounts/1/edit
  def edit
  end

  # POST /leave_accounts
  # POST /leave_accounts.json
  def create
    @leave_account = LeaveAccount.new(leave_account_params)

    respond_to do |format|
      if @leave_account.save
        format.html { redirect_to @leave_account, notice: 'Leave account was successfully created.' }
        format.json { render action: 'show', status: :created, location: @leave_account }
      else
        format.html { render action: 'new' }
        format.json { render json: @leave_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leave_accounts/1
  # PATCH/PUT /leave_accounts/1.json
  def update
    respond_to do |format|
      if @leave_account.update(leave_account_params)
        format.html { redirect_to @leave_account, notice: 'Leave account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @leave_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_accounts/1
  # DELETE /leave_accounts/1.json
  def destroy
    @leave_account.destroy
    respond_to do |format|
      format.html { redirect_to leave_accounts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leave_account
      @leave_account = LeaveAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leave_account_params
      params.require(:leave_account).permit(:employee_id, :leave_type_id, :count)
    end
end
