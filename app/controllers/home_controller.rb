class HomeController < ApplicationController
  layout 'landing'
  def index
    if current_user
      redirect_to businesses_path
    end
    @continents = Continent.all
  end
  def welcome

  end
end
