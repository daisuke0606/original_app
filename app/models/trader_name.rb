class TraderName < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ヤマト運輸' },
    { id: 3, name: '佐川急便' },
    { id: 4, name: '日本郵便' },
    { id: 5, name: '日本通運' },
    { id: 6, name: 'あかぼう' },
  ]
end
