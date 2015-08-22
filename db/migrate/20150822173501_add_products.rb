class AddProducts < ActiveRecord::Migration
  def change
  		Product.create :title => 'Гавайская', :description => 'Это гавайская пицца с далеких островов', :price => 350, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/hawaiian.jpg'

  		Product.create :title => 'Пепперони', :description => 'Пицца пепперони со вкусной колбаской', :price => 450, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => true, :path_to_image => '/images/pepperoni.jpg'

  		Product.create :title => 'Вегетарианская', :description => 'Вегетарианская пицца с овощами для вегетарианцев', :price => 300, :size => 30, :is_spicy => false, :is_veg => true, :is_best_offer => false, :path_to_image => '/images/veg.jpg'

  end
end
