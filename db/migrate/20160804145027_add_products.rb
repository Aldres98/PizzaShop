class AddProducts < ActiveRecord::Migration
  def change
  end
  Product.create  :title => 'Meat', :description => 'This is pizza with meat', :price => 350, :size => 30, :is_spice => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/meat.png' 

  Product.create :title => 'Mushroom', :description => 'This is pizza with mushrooms', :price => 400, :size => 30, :is_spice => false, :is_veg => true, :is_best_offer => true,:path_to_image => '/images/mushroom.png'

  Product.create :title => 'Pepper', :description => 'This is pizza with pepper',:price => 450,:size => 30,:is_spice => true,:is_veg => false, :is_best_offer => true,:path_to_image => '/images/pepper.png'

end
