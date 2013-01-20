class AddResourceIdToUrlData < ActiveRecord::Migration
  def change
    add_column :url_data, :resource_id, :integer
  end
end
