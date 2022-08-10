class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string     :url          
      t.string     :tittle       , null: false
      t.integer    :week         , null: false
      t.string     :episode      
      t.integer    :notify       , null: false
      t.integer    :media_id     , null: false
      t.references :user         , null: false, foreign_key: true
      t.timestamps
    end
  end
end