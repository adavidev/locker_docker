class BagsController < ApplicationController
  before_action :set_bag, only: [:show]
  
  # def index
  #   @bags = Bag.all
  # end
  
  def show
    
  end
  
  # def create
    
  #   @bag = Bag.new(bag_params)

  #   respond_to do |format|
  #     if @bag.save
  #       format.html { redirect_to @bag, notice: 'Post was successfully created.' }
  #       format.json { render :show, status: :created, location: @bag }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @bag.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def bag_params
      params.require(:bag).permit(:size, :height, :width, :depth)
    end
    
    def check_params
      params.permit(:size)
    end
    
    def retrieve_params
      params.permit(:number)
    end
  
end
