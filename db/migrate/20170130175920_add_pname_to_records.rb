class AddPnameToRecords < ActiveRecord::Migration
  def change
    add_column :records, :p_name, :string
  end
end
