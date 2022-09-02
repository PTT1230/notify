# frozen_string_literal: true

class Content < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :media
  belongs_to_active_hash :week
  belongs_to_active_hash :notice
  belongs_to :user

  validates :title,     {presence: true, length: { maximum: 20 }}

  validates :media_id,  numericality: { other_than: 1, message: "を選択してください" }
  validates :week_id,   numericality: { other_than: 1, message: "を選択してください" }
  validates :notice_id, numericality: { other_than: 1, message: "を選択してください" }
end
