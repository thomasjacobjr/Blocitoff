module ApplicationHelper

  def time_left(item)
    if item.created_at >= 7.days.ago
      distance_of_time_in_words(7.days.ago, item.created_at) + " left"
    else
      "Item has expired! You didn't finish this. Lorbo is displeased."
    end
  end
end
