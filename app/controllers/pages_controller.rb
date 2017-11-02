class PagesController < ApplicationController

# before_action :authenticate_user!

  def home
#    authenticate_user!

    @free_plan = Plan.find(1)
    @basic_plan = Plan.find(2)
    @pro_plan = Plan.find(3)
    @premium_plan = Plan.find(4)

  end
  
  def about
  end

end
