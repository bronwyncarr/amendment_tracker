class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  def index
    @records = Record.all
  end

  def show
  end

  def pending
    @pending_records = Record.where(approved: true, incorporated: false)
  end

  def new
    @record = Record.new
  end

  def edit
  end

  def create
    @record = current_user.records.new(record_params)
    if @record.save
      redirect_to @record, notice: 'Record was successfully created.'
    else
      render :new
    end
  end

  def update
    if @record.update(record_params)
      redirect_to @record, notice: 'Record was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @record.destroy
    respond_to do |format|
      redirect_to records_url, notice: 'Record was successfully destroyed.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @record = Record.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def record_params
      params.require(:record).permit(:document_ref, :text, :error, :comment, :revision, :approved, :incorporated, :user_id, :manual_id)
    end
end
