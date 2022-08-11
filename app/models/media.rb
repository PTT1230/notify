class Media < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'Netflix' },
    { id: 3, name: 'TVer' },
    { id: 4, name: 'Hulu' },
    { id: 5, name: 'PrimeVideo' },
    { id: 6, name: 'Abema' },
    { id: 7, name: 'Disney+' },
    { id: 8, name: 'dTV' },
    { id: 8, name: 'dアニメ' },
    { id: 9, name: 'U-NEXT' },
    { id: 8, name: 'Paravi' },
    { id: 8, name: 'FOD' },
    { id: 8, name: 'TELASA' },
    { id: 10, name: 'その他' }
  ]
end
include ActiveHash::Associations