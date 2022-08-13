# frozen_string_literal: true

class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string     :url
      t.string     :title, null: false
      t.integer    :week_id, null: false
      t.string     :episode
      t.integer    :notice_id, null: false
      t.integer    :media_id, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
