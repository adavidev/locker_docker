require 'rails_helper'

RSpec.describe Locker, type: :model do
  it "should have a default small" do
    expect(Locker::SMALL).to eq({height:18, width:18, depth:18})
  end
  
  it "should have a default medium" do
    expect(Locker::MEDIUM).to eq({height:36, width:36, depth:36})
  end
  
  it "should have a default large" do
    expect(Locker::LARGE).to eq({height:72, width:36, depth:36})
  end
  
  describe "find_smallest_locker" do
      
    before :all do
      Locker.create(Locker::SMALL)
      Locker.create(Locker::MEDIUM)
      Locker.create(Locker::LARGE)
    end
    
    it "should compare the size of the bag with the smallest locker available" do
      expect(Locker.find_smallest_locker(build(:small_bag)).height).to eq(Locker::SMALL[:height])
    end
  end
end
