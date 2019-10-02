class Condition < ActiveHash::Base
  self.data = [
      {id: '新品、未使用', name: '新品、未使用'}, {id: '未使用に近い', name: '未使用に近い'}, {id: '目立った傷や汚れなし', name: '目立った傷や汚れなし'},
      {id: 'やや汚れあり', name: 'やや汚れあり'}, {id: '傷や汚れあり', name: '傷や汚れあり'}, {id: '全体的に状態が悪い', name: '全体的に状態が悪い'},
  ]
end