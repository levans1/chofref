# Welcome to Sonic Pi v3.
back="C:/Users/logan_evans/Downloads/audacity sounds/backingtrack.wav"
elio="C:/Users/logan_evans/Downloads/audacity sounds/cmbyn_dialouge.wav"
love="C:/Users/logan_evans/Downloads/audacity sounds/love.wav"
friend="C:/Users/logan_evans/Downloads/audacity sounds/friend2.wav"
define:frienship do
  sample friend
  print sample_duration friend
end
x=1
use_bpm 131
use_synth :piano
2.times do
  sample love, rate: x, amp: 5
  print sample_duration love
  x=x-0.25
  sleep 15.8
end
live_loop :backtrack do
  5.times do
    sample back, amp: 5
    print sample_duration back
    sleep 32.8
  end
  1.times do
    frienship
  end
  stop
end
notes=[:g5, :e5,:b4,:c5,:b4,:a4,:r,:b4,:c5,:d5,:b4,:f4]
rests=[1,1,1.5,0.25,0.25,2,2,1,1,1.5,0.5,2]
live_loop :demarco do
  4.times do
    sample elio, amp: 5
    print sample_duration elio
    sleep 18.8
    index=0
    rests_index=0
    play notes=[index]
    sleep_rests=[rests_index]
  end
  stop
end
