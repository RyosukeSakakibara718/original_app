module PostHelper

  def time(object) 
    open_time = object.hours_open.hour
    close_time = object.hours_close.hour
    return "#{open_time}:#{close_time}"
  end

  def object_find(post)
    @who_object = WhosObject.find(post.who)
    @stay_object = StayObject.find(post.stay)
    @days_object = DaysObject.find(post.days)
    @total_money_object = TotalMoneyObject.find(post.total_money)
  end
end
