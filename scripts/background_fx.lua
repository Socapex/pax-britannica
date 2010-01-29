local v2 = require 'dokidoki.v2'
local blueprints = require 'blueprints'

function update()
  if math.random() < 0.25 then
    game.actors.new(blueprints.debris,
      {'transform', pos=v2(math.random() * 1024, math.random() * 768)},
      {'sprite', image=game.resources.debris_sprites[math.ceil(math.random() * 3)], color={1, 1, 1, 0}})
  end
  
  if math.random() < 0.03 then
    game.actors.new(blueprints.fish,
      {'transform', pos=v2(math.random() * 1024, math.random() * 768)},
      {'sprite', image=game.resources.fish_sprites[math.ceil(math.random() * 8)], color={1, 1, 1, 0}})
  end
end
