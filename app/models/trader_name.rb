class TraderName < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: 'ヤマト運輸' },
    { id: 2, name: '佐川急便' },
    { id: 3, name: '日本郵便' },
    { id: 4, name: '日本通運' },
    { id: 5, name: 'あかぼう' },
    { id: 6, name: '未定' }
  ]
end
