class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show]
  
  def show
    
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @bag = Ticket.find(params[:id])
    end
  
end
