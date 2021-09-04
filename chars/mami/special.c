;===========================================================================
;†††specials†††
;===========================================================================
;■ティロ・ヴォレー
[statedef 1000]
type = s
movetype = a
physics = s
anim = 1000
poweradd = ceil(50*fvar(3))
ctrl = 0

[state 1100, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 1,4

[state 1000, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 9,20+var(5)
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 1000, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "volley1"
trigger2 = var(6) = 1
var(7) = 1

[state 1000, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "volley2"
trigger2 = var(6) = 2
var(7) = 2

[state 1000, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "volley3"
trigger2 = var(6) = 3
var(7) = 3

[state 1000, varset];▼AI・安全装置
type = varset
triggerall = var(50) != 0
trigger1 = var(7) != [1,3]
trigger1 = time > 3
var(7) = 1

[state 1000, varset];▼AI
type = varset
triggerall = var(50) != 0
trigger1 = var(53) = 40
var(7) = 3

[state 1000, varset];▼AI
type = varset
triggerall = var(50) != 0
trigger1 = var(53) = 41
var(7) = 1

[state 1000, helper]
type = helper
trigger1 = animelemtime(3) = 0
helpertype = normal
name = "muskets f"
id = 21000
stateno = 21000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1000, helper]
type = helper
trigger1 = animelemtime(3) = 0
helpertype = normal
name = "muskets b"
id = 21010
stateno = 21010
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1000, varset]
type = varset
trigger1 = animtime = 0
var(6) = 0

[state 1000, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■ティロ・ヴォレー（フェイント）
[statedef 1030]
type = s
movetype = a
physics = s
anim = 1001
poweradd = ceil(50*fvar(3))
ctrl = 0

[state 1030, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 1,4

[state 1030, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 9,20+var(5)
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 1030, helper]
type = helper
trigger1 = animelemtime(3) = 0
helpertype = normal
name = "feint f"
id = 21030
stateno = 21030
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1030, helper]
type = helper
trigger1 = animelemtime(3) = 0
helpertype = normal
name = "feint b"
id = 21035
stateno = 21035
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1030, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■ティロ・ヴォレー・空中
[statedef 1100]
type = a
movetype = a
physics = a
anim = 1100
poweradd = ceil(50*fvar(3))
ctrl = 0

[state 1100, velset]
type = velset
trigger1 = animelemtime(5) < 0
y = 0

[state 1100, posfreeze]
type = posfreeze
trigger1 = animelemtime(5) < 0

[state 1100, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 1,4

[state 1100, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 9,20+var(5)
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 1100, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "volley1"
var(7) = 1

[state 1100, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "volley2"
var(7) = 2

[state 1100, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "volley3"
var(7) = 3

[state 1100, varset];▼AI・安全装置
type = varset
triggerall = var(50) != 0
trigger1 = var(7) != [1,3]
trigger1 = time > 3
var(7) = 2;1

[state 1100, varset];▼AI
type = varset
triggerall = var(50) != 0
trigger1 = var(53) = 0
var(7) = 2+(random<200)

[state 1100, varset];▼AI
type = varset
triggerall = var(50) != 0
trigger1 = var(53) = 51
var(7) = 1+(random<200)

[state 1100, helper]
type = helper
trigger1 = animelemtime(3) = 0
helpertype = normal
name = "muskets f"
id = 21100
stateno = 21100
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1100, helper]
type = helper
trigger1 = animelemtime(3) = 0
helpertype = normal
name = "muskets b"
id = 21110
stateno = 21110
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1100, varset]
type = varset
trigger1 = animtime = 0
var(5) = 0

[state 1100, changestate]
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 1
;===========================================================================
;■ティロ・ロンディーネ
[statedef 1200]
type = a
movetype = a
physics = a
anim = 1200
poweradd = ceil(50*fvar(3))
ctrl = 0

[state 1200, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "rondine1"
var(7) = 2

[state 1200, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "rondine2"
var(7) = 3

[state 1200, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "rondine3"
var(7) = 4

[state 1200, varset];▼AI・安全装置
type = varset
triggerall = var(50) != 0
trigger1 = var(7) != [2,4]
trigger1 = time < 3
var(7) = 2

[state 1200, varset];▼AI
type = varset
triggerall = var(50) != 0
trigger1 = prevstateno = 450
trigger1 = time < 3
var(7) = 4

[state 1200, varset];▼AI
type = varset
triggerall = var(50) != 0
trigger1 = var(53) = 55
trigger1 = var(10) = 0
trigger1 = time < 3
var(7) = 3

[state 1200, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "muskets t"
id = 6300
stateno = 6300
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1200, ctrlset]
type = ctrlset
trigger1 = animelemtime(4) = 0
value = 1
;===========================================================================
;■ティロ・ミラッジオ
[statedef 1300]
type = s
movetype = i
physics = s
poweradd = ceil(50*fvar(3))
ctrl = 0

[state 1300, nothitby]
type = nothitby
triggerall = animelemtime(3) < 0
trigger1 = prevstateno = 5120
trigger2 = fvar(25) = 1.0;◆
value = sca,aa
ignorehitpause = 1

[state 1300, varset]
type = varset
triggerall = var(50) = 0
trigger1 = command = "miraggio1"
trigger1 = time = 0
trigger2 = var(6) = 1
var(7) = 0

[state 1300, varset]
type = varset
triggerall = var(50) = 0
trigger1 = command = "miraggio2"
trigger1 = time = 0
trigger2 = var(6) = 2
var(7) = 1

[state 1300, varset]
type = varset
triggerall = var(50) = 0
trigger1 = command = "miraggio3"
trigger1 = time = 0
trigger2 = var(6) = 3
var(7) = 2

[state 1300, varset];▼AI・安全装置
type = varset
triggerall = var(50) != 0
trigger1 = var(7) != [0,2]
trigger1 = time < 3
var(7) = 1

[state 1300, varset];▼AI
type = varset
triggerall = var(50) != 0
trigger1 = time < 3
var(7) = (p2bodydist x=[-50,50])+(p2bodydist x>50)*2

[state 1300, changeanim]
type = changeanim
trigger1 = time = 0
value = 1300+var(7)

[state 1300, varset]
type = varset
trigger1 = time = 1
var(6) = 0

[state 1300, hitoverride]
type = hitoverride
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(4) < 0
attr = sca,na,np,sp
slot = 0
stateno = 1350
time = 1
forceair = 0

[state 1300, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[statedef 1310]
type = a
movetype = i
physics = n
anim = 1310
poweradd = ceil(50*fvar(3))
ctrl = 0

[state 1310, nothitby];◆
type = nothitby
triggerall = animelemtime(3) < 0
trigger1 = fvar(25) = 1.0
value = sca,aa
ignorehitpause = 1

[state 1310, varset];prevが機能しないので
type = varset
trigger1 = time = 0
var(6) = 1

[state 1310, gravity]
type = gravity
trigger1 = 1

[state 1310, hitoverride]
type = hitoverride
trigger1 = animelemtime(3) >= 0
attr = sca,na,np,sp
slot = 0
stateno = 1350
time = 1
forceair = 0

[state 1310, varset]
type = varset
trigger1 = vel y > 0
trigger1 = pos y >= 0
var(6) = 0

[state 1310, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 1355
;---------------------------------------------------------------------------
[statedef 1350]
type = a
movetype = a
physics = n
anim = 1350
poweradd = ceil(240*fvar(3))

[state 1350, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 1350, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 1350, bgpalfx]
type = bgpalfx
trigger1 = (time = 0)||(time = 10)
time = 4
add = 256,256,256

[state 1350, posset]
type = posset
trigger1 = time = 0
trigger1 = pos y > -2
y = -2

[state 1350, pause]
type = pause
trigger1 = time = 0
time = 15
movetime = 15

[state 1350, pause]
type = pause
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(6) < 0
trigger1 = gametime%4 = 0 
time = 2
movetime = 2

[state 1350, turn]
type = turn
trigger1 = time = 0
trigger1 = p2dist x < 0
persistent = 0

[state 1350, velset]
type = velset
trigger1 = time = 0
x = -2

[state 1350, velset]
type = velset
trigger1 = time = 0
y = -0.30

[state 1350, veladd]
type = veladd
trigger1 = animelemtime(5) > 0
x = -0.15
y = 0.1+(var(6))*0.2

[state 1350, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(6) = 0
value = 5,1

[state 1350, explod]
type = explod
trigger1 = animelemtime(5) = 0
anim = 16000
id = 16000
pos = floor(const(size.xscale)*63),-floor(const(size.yscale)*81)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
pausemovetime = 999

[state 1350, explod]
type = explod
trigger1 = animelemtime(6) = 0
anim = 16000
id = 16000
pos = floor(const(size.xscale)*67),-floor(const(size.yscale)*68)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
pausemovetime = 999

[state 1350, hitdef]
type = hitdef
trigger1 = animelemtime(5) = 0
id = 1350
attr = a,sp
hitflag = mafdp
guardflag = ma
affectteam = e
animtype = back
ground.type = high
priority = 5,hit
sprpriority = 1
damage = floor(65*fvar(1)*fvar(2)),2
getpower = ceil(65*fvar(3)),ceil(15*fvar(3))
givepower = 8,5
ground.hittime  = 60
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 40
pausetime = 1,1
sparkno = s25003
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*50),-floor(const(size.yscale)*81)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -5,-4.5
guard.velocity = -7
air.velocity = -5,-3.5
fall = 1
fall.recovertime = 120
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
guard.cornerpush.veloff = -8

[state 1350, hitdef]
type = hitdef
trigger1 = animelemtime(6) = 1
id = 1350
attr = a,sp
hitflag = mafdp
guardflag = ma
affectteam = e
animtype = back
ground.type = high
priority = 5,hit
sprpriority = 1
damage = floor(65*fvar(1)*fvar(2)),2
getpower = ceil(65*fvar(3)),ceil(15*fvar(3))
givepower = 8,5
ground.hittime  = 60
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 40
pausetime = 10,10
sparkno = s25003
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*50),-floor(const(size.yscale)*68)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -5,-4.5
guard.velocity = -7
air.velocity = -5,-3.5
fall = 1
fall.recovertime = 120
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
guard.cornerpush.veloff = -8

[state 1350, explod]
type = explod
trigger1 = animelemtime(7) = 0
anim = 11300
id = 11300
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 1;■例外
ownpal = 1
removeongethit = 1

[state 1350, attackdist]
type = attackdist
trigger1 = animelemtime(5) >= 0
value = 400

[state 1350, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 1350
ignorehitpause = 1

[state 1350, targetstate]
type = targetstate
trigger1 = numtarget(1350) > 0
trigger1 = target(1350),statetype = a
trigger1 = target(1350),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 1350, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 1355
;---------------------------------------------------------------------------
[statedef 1355]
type    = s
physics = s
anim = 1355

[state 1355, nothitby]
type = nothitby
trigger1 = prevstateno = 1350
value = sca,aa
ignorehitpause = 1

[state 1355, velset]
type = velset
trigger1 = time = 0
y = 0

[state 1355, posset]
type = posset
trigger1 = time = 0
y = 0

[state 1355, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "magical flower"
stateno = 20100
id = 20100
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1355, varset]
type = varset
trigger1 = time = 0
var(6) = 0

[state 1355, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■レガーレ
[statedef 1400]
type = a
movetype = a
physics = a
poweradd = ceil(50*fvar(3))
ctrl = 0

[state 1400, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "legare1"
var(7) = 0

[state 1400, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "legare2"
var(7) = 1

[state 1400, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "legare3"
var(7) = 2

[state 1400, varset];▼AI・安全装置
type = varset
triggerall = var(50) != 0
trigger1 = var(7) != [0,2]
trigger1 = time < 3
var(7) = (p2bodydist x=[60,120])+(p2bodydist x>120)*2

[state 1400, varset];▼AI
type = varset
triggerall = var(50) != 0
trigger1 = var(53) = 52
trigger1 = time < 3
var(7) = (p2bodydist x=[60,120])+(p2bodydist x>120)*2

[state 1400, varset];▼AI
type = varset
triggerall = var(50) != 0
trigger1 = var(53) = 57
trigger1 = time < 3
var(7) = (p2bodydist x=[60,120])+(p2bodydist x>120)*2

[state 1400, changeanim]
type = changeanim
trigger1 = time = 0
value = 1400+var(7)

[state 1400, attackdist]
type = attackdist
trigger1 = animelemtime(3) >= 0
value = 200+var(7)*100

[state 1400, velset]
type = velset
trigger1 = animelemtime(5) < 0
y = 0

[state 1400, posfreeze]
type = posfreeze
trigger1 = animelemtime(5) < 0

[state 1400, helper]
type = helper
trigger1 = animelemtime(3) = 0
helpertype = normal
name = "magical flower 1400"
stateno = 20100
id = 20100
pos = floor(const(size.xscale)*74+(var(7)=1)*74+(var(7)=2)*197),floor(const(size.yscale)*102-(var(7)=1)*28-(var(7)=2)*25)
postype = p1
facing = 1
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1400, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 9,30
channel = 0
;lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 1400, explod]
type = explod
trigger1 = animelemtime(3) = 0
anim = 11400+var(7)
id = 11400+var(7)
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 0
ownpal = 1
removeongethit = 1

[state 1400, hitdef]
type = hitdef
triggerall = var(29) = 0
triggerall = animelemtime(3) = 0
trigger1 = !playeridexist(var(18))
trigger2 = playeridexist(var(18))
trigger2 = playerid(var(18)),stateno != 1490
id = 1400
attr = a,sa;a,st
hitflag = ma
guardflag = ha
priority = 1,miss
sparkno = -1
p1sprpriority = 1
hitsound = s-1,0

[state 1400, helper]
type = helper
trigger1 = movehit = 1
helpertype = normal
name = "l-bind"
id = 21400
stateno = 21400
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1400, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(1010) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "l-bind"
id = 21401
stateno = 21401
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1400, targetdrop]
type = null;targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 1400
ignorehitpause = 1

[state 1400, targetstate]
type = targetstate
trigger1 = numtarget(1400) > 0
trigger1 = target(1400),alive
trigger1 = movehit = 1
value = 1490
ignorehitpause = 1

[state 1400, changestate]
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
;■レガーレ・バインドやられ
[statedef 1490]
type    = a
movetype= h
physics = n
velset = 0,0

[state 1490, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 1490, posadd]
type = posadd
trigger1 = time = 0
y = -10

[state 1490, posset]
type = posset
trigger1 = time <= 90
trigger1 = pos y < -20
y = -20

[state 1490, velset]
type = velset
trigger1 = time <= 90
y = 0

[state 1490, posfreeze]
type = posfreeze
trigger1 = time > 1

[state 1490, changeanim]
type = changeanim
trigger1 = 1
value = 5010
ignorehitpause = 1

[state 1490, velset]
type = velset
trigger1 = time > 90
y = -5

[state 1490, changestate]
type = changestate
trigger1 = time > 90
value = 5030
;===========================================================================
;■ガードキャンセル
[statedef 2000]
type    = u
movetype= a
physics = u
ctrl    = 0
anim    = 2000+(statetype=c)
poweradd= -1000

[state 2000, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 2000, bgpalfx]
type = bgpalfx
trigger1 = (time = 0)||(time = 10)
time = 4
add = 256,256,256

[state 2000, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,103

[state 2000, pause]
type = pause
trigger1 = time = 0
time = 20
movetime = 20

[state 2000, changestate]
type = changestate
trigger1 = time = 20
value = 2010
;---------------------------------------------------------------------------
[statedef 2010]
type = s
movetype = a
physics = s
anim = 2010
ctrl = 0

[state 2010, nothitby]
type = nothitby
trigger1 = animelemtime(7) < 0
value = sca,aa
ignorehitpause = 1

[state 2010, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*15)

[state 2010, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*25)

[state 2010, posadd]
type = posadd
trigger1 = animelemtime(7) = 0
x = -floor(const(size.xscale)*25)

[state 2010, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = -floor(const(size.xscale)*15)

[state 2010, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,5

[state 2010, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*10),0

[state 2010, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 6
value = 0,2

[state 2010, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 5,1

[state 2010, explod]
type = explod
trigger1 = animelemtime(5) = 0
anim = 16000
id = 16000
pos = floor(const(size.xscale)*90),-floor(const(size.yscale)*82)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 2010, attackdist]
type = attackdist
trigger1 = animelemtime(5) >= 0
value = 400

[state 2010, hitdef]
type = hitdef
trigger1 = animelemtime(5) = 0
id = 2010
attr = s,sp
hitflag = mafp
guardflag = ma
affectteam = e
animtype  = back
ground.type = high
priority = 4,hit
sprpriority = 1
damage = floor(30*fvar(1)*fvar(2)),10
getpower = 0,0
givepower = 50,15
ground.hittime  = 40
air.hittime = 40
guard.ctrltime = 8
ground.slidetime = 40
pausetime = 12,12
sparkno = s25003
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*50),-floor(const(size.yscale)*82)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -7,-3
guard.velocity = -5.3
air.velocity = -6.4,-4
down.velocity = 0,0
fall = 1
fall.recover = 0
fall.recovertime = 900
guard.cornerpush.veloff = -20
kill = 0
guard.kill = 0
fall.kill = 0

[state 2010, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 2010
ignorehitpause = 1

[state 2010, targetstate]
type = targetstate
trigger1 = numtarget(2010) > 0
trigger1 = target(2010),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 2010, playsnd]
type = playsnd
trigger1 = animelemtime(7) = 0
value = 9,10+(random<500)
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 2010, explod]
type = explod
trigger1 = animelemtime(7) = 4
anim = 10225
id = 10225
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[state 2010, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■マギカブート
[statedef 900]
movetype = a
poweradd = -1000
ctrl = 0

[state 900, varset];▼AI
type = varset
trigger1 = var(50) != 0
trigger1 = var(53) = [40,41]
trigger1 = time = 0
var(53) = 0

[state 900, varset];▼AI・マギカブート・フォロー・インターバル
type = varset
trigger1 = var(50) != 0
trigger1 = time = 0
var(44) = 900

[state 900, varadd]
type = varadd
trigger1 = time = 0
var(8) = -1

[state 900, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = s
statetype = s
physics = s

[state 900, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = c
statetype = c
physics = c

[state 900, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = a
statetype = a
physics = a

[state 900, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
time = 1

[state 900, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "spark"
stateno = 32400
id = 32400
pos = 0,-floor(const(size.yscale)*60)
postype = p1
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 900, bgpalfx]
type = bgpalfx
trigger1 = time = 0
time = 60
add = var(21),var(22),var(23)

[state 900, playsnd]
type = playsnd
trigger1 = time = 0
value = 3,0

[state 900, changestate]
type = changestate
trigger1 = time = 1
value = ifelse(pos y!=0,50,0)
ctrl = 1
;===========================================================================
;■マギカブートダッシュ
[statedef 901]
movetype = a
anim = 100+(statetype=a)*10
poweradd = -1000
ctrl = 0

[state 901, varadd]
type = varadd
trigger1 = time = 0
var(8) = -1

[state 901, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = s
statetype = s
physics = s

[state 901, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = c
statetype = c
physics = c

[state 901, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = a
statetype = a
physics = a

[state 901, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
time = 1

[state 901, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "spark"
stateno = 32400
id = 32400
pos = 0,-floor(const(size.yscale)*60)
postype = p1
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 901, bgpalfx]
type = bgpalfx
trigger1 = time = 0
time = 60
add = var(21),var(22),var(23)

[state 901, playsnd]
type = playsnd
trigger1 = time = 0
value = 3,0

[state 901, changestate]
type = changestate
trigger1 = time = 1
value = ifelse(pos y!=0,110,100+(var(50)!=0))

