module PostHelper

  def time(object) 
    open_time = object.hours_open.hour
    close_time = object.hours_close.hour
    return "#{open_time}:#{close_time}"
  end

  def object_find(post)
    @who_object = WhosObject.find_by(who_id: post.who)
    @stay_object = StayObject.find_by(stay_id: post.stay)
    @days_object = DaysObject.find_by(days_id: post.days)
    @total_money_object = TotalMoneyObject.find_by(total_money_id: post.total_money)
  end
end
