class AddColumnToContents < ActiveRecord::Migration[6.0]
  def change
    add_column :contents, :user_uid, :string
  end
end
