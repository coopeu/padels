module UsersHelper
  
  def gender
    if @user.profile.gender == "Female"
      "<i class='fa fa-code'></i>".html_safe
    elsif @user.profile.match_type == "Male"
      "<i class='fa fa-lightbulb-o'></i>".html_safe
    end 
  end

#  def match_type
#    if @user.profile.match_type == "Males"
#      "<i class='fa fa-code'></i>".html_safe
#    elsif @user.profile.match_type == "Females"
#      "<i class='fa fa-lightbulb-o'></i>".html_safe
#    elsif @user.profile.match_type == "Males & Mix"
#      "<i class='fa fa-dollar'></i>".html_safe
#    elsif @user.profile.match_type == "Females & Mix"
#      "<i class='fa fa-dollar'></i>".html_safe
#    end 
#  end

end