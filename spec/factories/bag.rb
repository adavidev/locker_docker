# This will guess the User class
FactoryGirl.define do
  factory :medium_bag, class: Bag do
    height 24
    width 24
    depth 24
    
    factory :big_bag do
      height 50
      width 24
      depth 24
    end
    
    factory :small_bag do
      height 50
      width 24
      depth 24
    end
    
    
  end
end