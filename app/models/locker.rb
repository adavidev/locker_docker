class Locker < ActiveRecord::Base
    
    SMALL  = {height:18, width:18, depth:18}
    MEDIUM = {height:36, width:36, depth:36}
    LARGE  = {height:72, width:36, depth:36}
    
    # really, at the moment this is ideally a has_one, though 
    # technically you could store multiple of someone's bags in
    # the same locker.  Mainly I did it for the cool unassigned query
    has_many :bags
    
    scope :smallest_to_largest, -> { order(:height, :width, :depth) }
    scope :unassigned, -> { includes(:bags).where( :bags => { :locker => nil } ) }
    scope :contains, ->(bag) { where("? <= lockers.height AND ? <= lockers.width AND ? <= lockers.depth", bag.height, bag.width, bag.depth) }
    
    class << self
        def find_smallest_locker(bag)
            unassigned.contains(bag).smallest_to_largest.first
        end
    end
    
end
