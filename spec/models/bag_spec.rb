require 'rails_helper'

RSpec.describe Bag, type: :model do
  describe "check" do
    before :all do
      Locker.create(Locker::SMALL)
      Locker.create(Locker::MEDIUM)
      Locker.create(Locker::LARGE)
    end
    
    it "should create a bag" do
      expect(Bag).to receive :create!
      Bag.check
    end
    
    it "should return a ticket" do
      expect(Bag.check).to be_a Ticket
    end
    
    it "should assign a locker" do
      Bag.check
      expect(Bag.last.locker).not_to be_nil
    end
    
    it "should not assign the same locker twice" do
      Bag.check
      bag1 = Bag.last
      Bag.check
      bag2 = Bag.last
      expect(bag1.locker).not_to eq bag2.locker
    end
  end
  
  describe "create" do
    it "should always create a ticket" do
      expect(Ticket).to receive :create
      Bag.create
    end
    
    it "should assign initial values" do
      bag = Bag.create
      expect(bag.height).to eq Locker::MEDIUM[:height]
    end
  end
  
  describe "retrieve" do
    it "should return the bag for a ticket" do
      ticket = Bag.check
      locker = Bag.last.locker
      expect(Bag.retrieve(ticket.id)).to eq locker
    end
    
    it "should clear the locker" do
      ticket = Bag.check
      bag = Bag.last
      Bag.retrieve(ticket.id)
      expect(Bag.find_by_id(bag.id)).to be_nil
    end
  end
end
