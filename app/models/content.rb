# frozen_string_literal: true

class Content < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :media
  belongs_to_active_hash :week
  belongs_to_active_hash :notice
  belongs_to :user

  validates :title,     {presence: true, length: { maximum: 15 }}

  validates :media_id,  numericality: { other_than: 1, message: "can't be blank" }
  validates :week_id,   numericality: { other_than: 1, message: "can't be blank" }
  validates :notice_id, numericality: { other_than: 1, message: "can't be blank" }
end
