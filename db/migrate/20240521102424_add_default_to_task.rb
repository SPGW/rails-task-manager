class AddDefaultToTask < ActiveRecord::Migration[7.1]
  def change
    change_column :tasks, :compleated, :boolean, default: false
  end
end
