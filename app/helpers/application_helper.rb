module ApplicationHelper
  def age(dob)
    now = Time.now.utc.to_date
    age_in_years = now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    if age_in_years < 1
      if (now.month - dob.month).negative?
        return "#{now.month - dob.month + 12} monate"
      else
        return ("#{(now.month - dob.month)} monate" )
      end
    else
      return age_in_years
    end
  end
end
