class MarketPoint < ActiveRecord::Base
  def to_s
    "#{value} at #{created_at}"
  end
end
