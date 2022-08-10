class Content < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :media
  belongs_to :week
  belongs_to :user
  belongs_to :notify

  with_options presence: true do 
    validates :title
    validates :user_id
  end
  validates :media_id,  numericality: { other_than: 1, message: "can't be blank" }
  validates :week_id,   numericality: { other_than: 1, message: "can't be blank" }
  validates :notify_id, numericality: { other_than: 1, message: "can't be blank" }
end