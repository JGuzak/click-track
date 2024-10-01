-- engine.name = 'PolyPerc'

local current_beat = 0
local active_clock_id

function pulse()
  clock.sync(1/4)
  -- engine.hz(333)
  print("tap")
end

function clock.transport.start()
  print("we begin")
  current_beat = 0
  active_clock_id = clock.run(pulse)
end

function clock.transport.stop()
  clock.cancel(active_clock_id)
end