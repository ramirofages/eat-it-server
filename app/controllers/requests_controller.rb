class RequestsController < ApplicationController
	before_action :set_request, only: [:show, :edit, :update, :destroy]

  def index
    @order = Order.find(params.require(:order_id))
  end

  def new
    @request = Request.new(params.permit(:order_id))
  end


  def create
    @request = Request.new(request_params)
    respond_to do |format|
      if @request.save
        format.html { redirect_to @request.order, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request.order }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:requester, :comment, :order_id)
    end
end
