class Recipe < ApplicationRecord

  def ingredients_split
    return ingredients.split(",")
  end

  def human_friendly_time
    created_at.strftime("%B %e, %Y")
  end

  def friendly_prep_time
    hours = prep_time / 60
    minutes = prep_time % 60
    puts "hours and minutes below"
    result = ""
    result += "#{hours} hours" if hours > 0
    result += " #{minutes} minutes" if minutes > 0
    result
  end
end
