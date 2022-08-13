# frozen_string_literal: true

class Notice < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '通知する' },
    { id: 3, name: '通知しない' }
  ]
end
include ActiveHash::Associations
