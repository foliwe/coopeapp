class HomeController < ApplicationController
  layout 'landing'
  def index
    if current_user
      redirect_to businesses_path
    end

    @q = Business.ransack(params[:q])
    @business = @q.result(distinct: true)
  end
  def welcome

  end
end
