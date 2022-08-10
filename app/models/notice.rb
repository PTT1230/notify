class Notice < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '通知する' },
    { id: 3, name: '通知しない' }
  ]
  
  include ActiveHash::Associations
  has_many :contents
 end