class MainController < ApplicationController
  def index
    @points = MarketPoint.all(:order => 'created_at desc')
  end
end
