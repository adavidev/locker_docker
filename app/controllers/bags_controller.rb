class BagsController < ApplicationController
  before_action :set_bag, only: [:show]
  
  def show
    
  end
  
  def check
    @ticket = Bag.check(check_params["size"])
    
    render json: @ticket
  end
  
  def retrieve
    @locker = Bag.retrieve(retrieve_params["number"])
    render json: @locker
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bag
      @bag = Bag.find(params[:id])
    end
    
    def check_params
      params.permit(:size)
    end
    
    def retrieve_params
      params.permit(:number)
    end
  
end
