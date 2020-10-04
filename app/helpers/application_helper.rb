module ApplicationHelper
  def age(dob)
    now = Time.now.utc.to_date
    age_in_years = now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    if age_in_years < 1
      return now.month - dob.month
    else
      return age_in_years
    end
  end
end
