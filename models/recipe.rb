class Recipe

  attr_reader :rand_rec

  def brrr_days
    @rand_rec = [["http://www.bbcgoodfood.com/recipes/3444/saras-chilli-con-carne", "Chilli Con Carne"], ["https://deliciouslyella.com/potato-peanut-curry/", "Potato Peanut Curry"], ["http://www.bbcgoodfood.com/recipes/4807/chunky-minestrone-soup", "Minestrone Soup"]].sample
  end

  def not_too_cold_days
    @rand_rec = [["http://www.bbcgoodfood.com/recipes/144605/tuna-sweet-potato-jackets", "Tuna Sweet Potato Jackets"], ["http://www.bbc.co.uk/food/recipes/sausage_rolls_with_86029", "Sausage Rolls with Caramelised Onions"], ["http://www.bbc.co.uk/food/recipes/pork_belly_with_apples_71757", "Pork Belly with Apple and Sage"]].sample
  end

  def mild_days
    @rand_rec = [["http://www.bbcgoodfood.com/recipes/144605/tuna-sweet-potato-jackets", "Tuna Sweet Potato Jackets"], ["http://www.bbc.co.uk/food/recipes/carrot_and_poppyseed_72665", "Carrot and Poppyseed Salad"], ["http://www.bbc.co.uk/food/recipes/pork_pie_with_chicken_02918", "Pork Pie with Chicken and Apricots"]].sample
  end

  def balmy_days
    @rand_rec = [["http://www.bbc.co.uk/food/recipes/quichelorraine_71987", "Quiche Lorraine"], ["http://www.bbc.co.uk/food/recipes/scottish_cranachan_with_74862", "Scottish Cranachan"], ["http://www.bbc.co.uk/food/recipes/mixed_bean_salad_89055", "Mixed Bean Salad"]].sample
  end

  def hot_days
    @rand_rec = [["http://www.bbc.co.uk/food/recipes/strawberrydiaquiri_86315", "Strawberry Daiquiri"], ["http://www.bbc.co.uk/food/recipes/coconuticecream_86100", "Coconut Icecream"], ["http://www.bbc.co.uk/food/recipes/pistachio_and_rose_ice_66443", "Pistachio and Rose Icecream"]].sample
  end

end
