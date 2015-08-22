class AddProducts1 < ActiveRecord::Migration
  def change
  		Product.create ({
  			:title => 'Морепродукты', 
  			:description => 'Замечательная пицца с морепродуктами', 
  			:price => 450, 
  			:size => 30, 
  			:is_spicy => false, 
  			:is_veg => false, 
  			:is_best_offer => false, 
  			:path_to_image => '/images/more.jpg'
  			})

  		Product.create ({
  			:title => 'Острый Чили', 
  			:description => 'Очень острая пицца для любителей острых ощущений и перчиков ЧИЛИ', 
  			:price => 350, 
  			:size => 30, 
  			:is_spicy => true, 
  			:is_veg => false, 
  			:is_best_offer => false, 
  			:path_to_image => '/images/chili.jpg'
  			})

  		Product.create ({
  			:title => 'Четыре сыра', 
  			:description => 'Сырная пицца с четырьмя видами сыра для любителей изысканных сыров', 
  			:price => 400, 
  			:size => 30, 
  			:is_spicy => false, 
  			:is_veg => false, 
  			:is_best_offer => false, 
  			:path_to_image => '/images/cheese.jpg'
  			})
  end
end
