module ProfileHelper
  def get_sex sex
    if sex == 1
      return "Male"
    elsif sex == 2
      return "Female"
    else
      return "Unknown"
    end
  end
end
