class CreateMarketPoints < ActiveRecord::Migration
  def self.up
    create_table :market_points do |t|
      t.string :value
      t.timestamp :created_at
    end
  end
end
