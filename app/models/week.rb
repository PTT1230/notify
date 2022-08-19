# frozen_string_literal: true

class Week < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '月曜日', sub_name: '(月)' },
    { id: 3, name: '火曜日', sub_name: '(火)' },
    { id: 4, name: '水曜日', sub_name: '(水)' },
    { id: 5, name: '木曜日', sub_name: '(木)' },
    { id: 6, name: '金曜日', sub_name: '(金)' },
    { id: 7, name: '土曜日', sub_name: '(土)' },
    { id: 8, name: '日曜日', sub_name: '(日)' }
  ]
end
include ActiveHash::Associations
