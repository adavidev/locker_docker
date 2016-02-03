class Bag < ActiveRecord::Base
  
  Translate = {"S" => Locker::SMALL, "M" => Locker::MEDIUM, "L" => Locker::LARGE}
    
  belongs_to :locker
  belongs_to :ticket
  
  # I dont want a bag to exist without a ticket
  after_create :assign_ticket
  
  # set defaults in case they werent previously set
  after_initialize :initial_values
  
  def assign_ticket
    self.update_attributes ticket: Ticket.create
    self
  end
  
  # setting these to default to locker medium if not set
  def initial_values
    self.height ||= Locker::MEDIUM[:height]
    self.width ||= Locker::MEDIUM[:width]
    self.depth ||= Locker::MEDIUM[:depth]
  end
  
  class << self
  
    def check(size = {})
      size = Translate[size] if size.class == String
      bag = Bag.create!(size)
      bag.update_attributes locker: Locker.find_smallest_locker(bag)
      return bag
    end
    
    def retrieve(number)
      bag = find_by_ticket_id(number)
      locker = bag.locker
      bag.destroy!
      
      return locker
    end
    
  end
    
end
