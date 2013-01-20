class AddResourceIdToTweet < ActiveRecord::Migration
  def change
    add_column :tweets, :resource_id, :integer
  end
end
