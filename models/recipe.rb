class Recipe

  def intro
    if @value < 10
       'Brrr!'
    elsif @value <15 && @value >10
      'Hmm, not too cold.'
    elsif @value < 20 && @value > 15
      'Mild, mild, mild.'
    elsif @value < 30 && @value > 20
      'Well, it\'s positively balmy!'
    else
      'You want to eat?!'
    end
  end

end
