class Recipe

  def brrr_days
     [{:url => "http://www.bbcgoodfood.com/recipes/3444/saras-chilli-con-carne", :title => "Chilli Con Carne"}, {:url => "https://deliciouslyella.com/potato-peanut-curry/", :title => "Potato and Peanut Curry"}, {:url => "http://www.bbcgoodfood.com/recipes/4807/chunky-minestrone-soup", :title => "Minestrone Soup"}].sample
  end

  def not_too_cold_days
    [{:url => "http://www.bbcgoodfood.com/recipes/144605/tuna-sweet-potato-jackets", :title => "Tuna Sweet Potato Jackets"}, {:url => "http://www.bbc.co.uk/food/recipes/sausage_rolls_with_86029", :title => "Sausage Rolls with Caramelised Onions"}, {:url => "http://www.bbc.co.uk/food/recipes/pork_belly_with_apples_71757", :title => "Pork Belly with Apple and Sage"}].sample
  end

  def mild_days
    [{:url => "http://www.bbcgoodfood.com/recipes/144605/tuna-sweet-potato-jackets", :title => "Tuna Sweet Potato Jackets"}, {:url => "http://www.bbc.co.uk/food/recipes/carrot_and_poppyseed_72665", :title => "Carrot and Poppyseed Salad"}, {:url => "http://www.bbc.co.uk/food/recipes/pork_pie_with_chicken_02918", :title => "Pork Pie with Chicken and Apricots"}].sample
  end

  def balmy_days
    [{:url => "http://www.bbc.co.uk/food/recipes/quichelorraine_71987", :title => "Quiche Lorraine"}, {:url => "http://www.bbc.co.uk/food/recipes/scottish_cranachan_with_74862", :title => "Scottish Cranachan"}, {:url => "http://www.bbc.co.uk/food/recipes/mixed_bean_salad_89055", :title => "Mixed Bean Salad"}].sample
  end

  def hot_days
    [{:url => "http://www.bbc.co.uk/food/recipes/strawberrydiaquiri_86315", :title => "Strawberry Daiquiri"}, {:url => "http://www.bbc.co.uk/food/recipes/coconuticecream_86100", :title => "Coconut Icecream"}, {:url => "http://www.bbc.co.uk/food/recipes/pistachio_and_rose_ice_66443", :title => "Pistachio and Rose Icecream"}].sample
  end

end
