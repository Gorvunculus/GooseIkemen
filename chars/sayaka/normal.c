;===========================================================================
;������normal actions������
;===========================================================================
;������
[statedef 195]
type = s
movetype = i
physics = s
velset = 0,0
ctrl = 0
anim = 195

[state 195, poweradd]
type = poweradd
trigger1 = 1
value = ceil(4*fvar(3))

[state 195, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,3

[state 195, playsnd]
type = playsnd
trigger1 = animelemtime(6) = 0
value = 10,90
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 195, ctrlset]
type = ctrlset
trigger1 = time = 80
value = 1

[state 195, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;���ւ��剻
[statedef 197]
type = s
movetype = i
physics = s
velset = 0,0
ctrl = 0
anim = 197

[state 197, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 20,31

[state 197, playsnd]
type = playsnd
trigger1 = time = 5
value = 10,var(5)
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 197, playsnd]
type = playsnd
trigger1 = time = 0
trigger1 = prevstateno != stateno
value = 2,11

[state 197, explod]
type = explod
trigger1 = time = 0
anim = 25500
id = 25500
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
supermovetime = 999
pausemovetime = 999
ownpal = 1

[state 197, bgpalfx]
type = bgpalfx
trigger1 = time = 0
time = 6
add = var(21),var(22),var(23)

[state 197, changestate]
type = changestate
trigger1 = roundstate != 2
trigger1 = time > 120
value = 0
ctrl = 1
;===========================================================================
;���������p���`
[statedef 200]
type    = s
movetype= a
physics = s
ctrl = 0
anim = 200
poweradd = ceil(10*fvar(3))

[state 200, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,3

[state 200, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 200
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = light
ground.type = high
priority = 3,hit
sprpriority = 1
damage = floor(5*fvar(1)*fvar(2)),0
getpower = ceil(15*fvar(3)),ceil(8*fvar(3))
givepower = 8,5
ground.hittime  = 19
air.hittime = 19
guard.ctrltime = 16
ground.slidetime = 13
pausetime = 8,8
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*47)
hitsound = s1,7
guardsound = s2,1
ground.velocity = -7.5
guard.velocity = -3
air.velocity = -1.4,-3
fall.recovertime = 25
guard.cornerpush.veloff = -6

[state 200, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 200
ignorehitpause = 1

[state 200, targetstate]
type = targetstate
trigger1 = numtarget(200) > 0
trigger1 = target(200),statetype = a
trigger1 = target(200),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 200, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;���������p���`
[statedef 210]
type    = s
movetype= a
physics = s
poweradd= ceil(25*fvar(3))
ctrl = 0
anim = 210

[state 210, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,3

[state 210, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 210, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,4

[state 210, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 210
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = medium
ground.type = high
priority = 3,hit
sprpriority = 1
damage = floor(13*fvar(1)*fvar(2)),0
getpower = ceil(39*fvar(3)),ceil(21*fvar(3))
givepower = 10,5
ground.hittime  = 22
air.hittime = 27
guard.ctrltime = 22
ground.slidetime = 22
pausetime = 10,10
sparkno = s25001
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*44)
hitsound = s1,8
guardsound = s2,1
ground.velocity = -7.5
guard.velocity = -7.5
air.velocity = -7,-4
fall.recovertime = 25
guard.cornerpush.veloff = -12

[state 210, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 210
ignorehitpause = 1

[state 210, targetstate]
type = targetstate
trigger1 = numtarget(210) > 0
trigger1 = target(210),statetype = a
trigger1 = target(210),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 210, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;��������p���`
[statedef 220]
type    = s
movetype= a
physics = s
ctrl = 0
anim = 220
poweradd= ceil(50*fvar(3))

[state 220, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,3

[state 220, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 220, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,5

[state 220, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*30),0

[state 220, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*35)

[state 220, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*25)

[state 220, posadd]
type = posadd
trigger1 = animelemtime(7) = 0
x = -floor(const(size.xscale)*20)

[state 220, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = -floor(const(size.xscale)*20)

[state 220, posadd]
type = posadd
trigger1 = animtime = 0
x = -floor(const(size.xscale)*20)

[state 220, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 220
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = back
ground.type = high
priority = 5,hit
sprpriority = 1
damage = floor(27*fvar(1)*fvar(2)),0
getpower = ceil(90*fvar(3)),ceil(40*fvar(3))
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 13
ground.slidetime = 13
pausetime = 12,12
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*43)
hitsound = s1,9
guardsound = s2,1
ground.velocity = -13
guard.velocity = -16
air.velocity = -24,-4
air.fall = 1
fall.recovertime = 90-80*(var(29)!=0)
guard.cornerpush.veloff = -20

[state 220, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 220
ignorehitpause = 1

[state 220, targetstate]
type = targetstate
trigger1 = numtarget(220) > 0
trigger1 = target(220),statetype = a
trigger1 = target(220),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 220, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;���������L�b�N
[statedef 230]
type    = s
movetype= a
physics = s
ctrl = 0
anim = 230
poweradd = ceil(10*fvar(3))

[state 230, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,3

[state 230, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 230
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = light
ground.type = low
priority = 3,hit
sprpriority = 1
damage = floor(7*fvar(1)*fvar(2)),0
getpower = ceil(18*fvar(3)),ceil(11*fvar(3))
givepower = 8,5
ground.hittime  = 23
air.hittime = 26
guard.ctrltime = 18
ground.slidetime = 18
pausetime = 8,8
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*51)
hitsound = s1,7
guardsound = s2,1
ground.velocity = -8.9
guard.velocity = -3.4
air.velocity = -1.6,-3
fall.recovertime = 25
guard.cornerpush.veloff = -6

[state 230, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 230
ignorehitpause = 1

[state 230, targetstate]
type = targetstate
trigger1 = numtarget(230) > 0
trigger1 = target(230),statetype = a
trigger1 = target(230),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 230, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;���������L�b�N
[statedef 240]
type    = c
movetype= a
physics = c
ctrl = 0
anim = 240
poweradd = ceil(20*fvar(3))

[state 240, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,4

[state 240, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*30),0

[state 240, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*20)

[state 240, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*5)

[state 240, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = floor(const(size.xscale)*45)

[state 240, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = floor(const(size.xscale)*15)

[state 240, posadd]
type = posadd
trigger1 = animtime = 0
x = floor(const(size.xscale)*35)

[state 240, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 240
attr = s,na
hitflag = maf
guardflag = la
affectteam = e
animtype = medium
ground.type = low
priority = 3,hit
sprpriority = 1
damage = floor(14*fvar(1)*fvar(2)),0
getpower = ceil(36*fvar(3)),ceil(18*fvar(3))
givepower = 10,5
ground.hittime  = 23
air.hittime = 28
guard.ctrltime = 28
ground.slidetime = 22
pausetime = 10,10
sparkno = s25001
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*47)
hitsound = s1,8
guardsound = s2,1
ground.velocity = -7.8
guard.velocity = -10
air.velocity = -8,-4
fall.recovertime = 25
guard.cornerpush.veloff = -12

[state 240, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 240
ignorehitpause = 1

[state 240, targetstate]
type = targetstate
trigger1 = numtarget(240) > 0
trigger1 = target(240),statetype = a
trigger1 = target(240),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 240, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;��������L�b�N
[statedef 250]
type    = s
movetype= a
physics = s
poweradd= ceil(50*fvar(3))
ctrl = 0
anim = 250

[state 250, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*30),0

[state 250, changestate]
type = changestate
trigger1 = animtime = 0
value = 251
;---------------------------------------------------------------------------
[statedef 251]
type    = a
movetype= a
physics = n
ctrl = 0
anim = 251

[state 251, velset]
type = velset
trigger1 = time = 0
x = 3
y = -9

[state 251, veladd]
type = veladd
trigger1 = pos y < 0
y = const(movement.yaccel)+0.7

[state 251, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 0,6

[state 251, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 252
;---------------------------------------------------------------------------
[statedef 252]
type    = s
movetype= a
physics = s
ctrl = 0
anim = 252

[state 252, velset]
type = velset
trigger1 = 1
y = 0

[state 252, posset]
type = posset
trigger1 = 1
y = 0

[state 252, hitdef]
type = hitdef
trigger1 = animelemtime(1) = 0
id = 250
attr = s,na
hitflag = mafd
guardflag = ha
affectteam = e
animtype  = back
ground.type = trip
priority = 3,hit
sprpriority = 1
damage = floor(36*fvar(1)*fvar(2)),0
getpower = ceil(70*fvar(3)),ceil(20*fvar(3))
givepower = 10,5
ground.hittime  = 30
air.hittime = 50
guard.ctrltime = 25
ground.slidetime = 12
pausetime = 12,12
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*10)
hitsound = s1,10
guardsound = s2,1
ground.velocity = -8,-2
guard.velocity = -12
air.velocity = -6,-2
down.velocity = 0,0
fall.recovertime = 30
guard.cornerpush.veloff = -13

[state 252, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 250
ignorehitpause = 1

[state 252, targetstate]
type = targetstate
trigger1 = numtarget(250) > 0
trigger1 = target(250),statetype = a
trigger1 = target(250),alive
trigger1 = movehit = 1
value = 5075
ignorehitpause = 1

[state 252, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;�����Ⴊ�ݏ��p���`
[statedef 300]
type    = c
movetype= a
physics = c
ctrl = 0
anim = 300
poweradd = ceil(10*fvar(3))

[state 300, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,3

[state 300, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 300
attr = c,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = light
ground.type = low
priority = 3,hit
sprpriority = 1
damage = floor(5*fvar(1)*fvar(2)),0
getpower = ceil(18*fvar(3)),ceil(11*fvar(3))
givepower = 8,5
ground.hittime  = 15
air.hittime = 26
guard.ctrltime = 18
ground.slidetime = 18
pausetime = 8,8
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*39)
hitsound = s1,7
guardsound = s2,1
ground.velocity = -8.9
guard.velocity = -3.4
air.velocity = -1.6,-3
fall.recovertime = 25
guard.cornerpush.veloff = -6

[state 300, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 300
ignorehitpause = 1

[state 300, targetstate]
type = targetstate
trigger1 = numtarget(300) > 0
trigger1 = target(300),statetype = a
trigger1 = target(300),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 300, changestate]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1
;===========================================================================
;�����Ⴊ�ݒ��p���`
[statedef 310]
type    = c
movetype= a
physics = c
poweradd= ceil(25*fvar(3))
ctrl = 0
anim = 310

[state 310, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,3

[state 310, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 310, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,4

[state 310, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 310
attr = c,na
hitflag = maf
guardflag = la
affectteam = e
animtype = medium
ground.type = high
priority = 3,hit
sprpriority = 1
damage = floor(13*fvar(1)*fvar(2)),0
getpower = ceil(36*fvar(3)),ceil(18*fvar(3))
givepower = 10,5
ground.hittime  = 19
air.hittime = 19
guard.ctrltime = 16
ground.slidetime = 16
pausetime = 10,10
sparkno = s25001
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*39)
hitsound = s1,8
guardsound = s2,1
ground.velocity = -7.5
guard.velocity = -10
air.velocity = -7,-4
fall.recovertime = 25
guard.cornerpush.veloff = -12

[state 310, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 310
ignorehitpause = 1

[state 310, targetstate]
type = targetstate
trigger1 = numtarget(3100) > 0
trigger1 = target(310),statetype = a
trigger1 = target(310),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 310, changestate]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1
;===========================================================================
;�����Ⴊ�ݑ�p���`
[statedef 320]
type    = c
movetype= a
physics = c
poweradd= ceil(50*fvar(3))
ctrl    = 0
anim    = 320

[state 320, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,3

[state 320, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 320, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*20),0

[state 320, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*5)

[state 320, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*10)

[state 320, posadd]
type = posadd
trigger1 = animelemtime(7) = 0
x = floor(const(size.xscale)*15)

[state 320, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,5

[state 320, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 320
attr = c,na
hitflag = maf
guardflag = la
affectteam = e
animtype = hard
air.animtype = up
ground.type = high
priority = 4,hit
sprpriority = 1
damage = floor(25*fvar(1)*fvar(2)),0
getpower = ceil(85*fvar(3)),ceil(40*fvar(3))
givepower = 20,5
ground.hittime  = 30
air.hittime = 90
guard.ctrltime = 12
ground.slidetime = 12
pausetime = 10,10
sparkno = s25002
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*40)
hitsound = s1,9
guardsound = s2,1
ground.velocity = -1.2
guard.velocity = -3
air.velocity = -1.6,-5
fall.recovertime = 30
guard.cornerpush.veloff = -20

[state 320, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 320
ignorehitpause = 1

[state 320, targetstate]
type = targetstate
trigger1 = numtarget(320) > 0
trigger1 = target(320),statetype = a
trigger1 = target(320),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 320, changestate]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1
;===========================================================================
;�����Ⴊ�ݏ��L�b�N
[statedef 330]
type    = c
movetype= a
physics = c
ctrl = 0
anim = 330
poweradd = ceil(10*fvar(3))

[state 330, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,3

[state 330, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 330
attr = c,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = light
ground.type = low
priority = 3,hit
sprpriority = 1
damage = floor(7*fvar(1)*fvar(2)),0
getpower = ceil(21*fvar(3)),ceil(13*fvar(3))
givepower = 8,5
ground.hittime  = 23
air.hittime = 26
guard.ctrltime = 18
ground.slidetime = 18
pausetime = 8,8
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*39)
hitsound = s1,7
guardsound = s2,1
ground.velocity = -8.9
guard.velocity = -3.4
air.velocity = -1.6,-3
fall.recovertime = 25
guard.cornerpush.veloff = -6

[state 330, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 330
ignorehitpause = 1

[state 330, targetstate]
type = targetstate
trigger1 = numtarget(330) > 0
trigger1 = target(330),statetype = a
trigger1 = target(330),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 330, changestate]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1
;===========================================================================
;�����Ⴊ�ݒ��L�b�N
[statedef 340]
type    = c
movetype= a
physics = c
poweradd= ceil(25*fvar(3))
ctrl = 0
anim = 340

[state 340, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*30),0

[state 340, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = floor(const(size.xscale)*30)

[state 340, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*30)

[state 340, changestate]
type = changestate
trigger1 = animtime = 0
value = 341
;---------------------------------------------------------------------------
[statedef 341]
type    = a
movetype= a
physics = n
ctrl = 0
anim = 341

[state 341, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*30),0

[state 341, velset]
type = velset
trigger1 = time = 0
x = 4.5
y = -1

[state 341, veladd]
type = veladd
trigger1 = pos y < 0
y = const(movement.yaccel)

[state 341, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 342
;---------------------------------------------------------------------------
[statedef 342]
type    = c
movetype= a
physics = c
ctrl = 0
anim = 342

[state 342, velset]
type = velset
trigger1 = 1
y = 0

[state 342, posset]
type = posset
trigger1 = 1
y = 0

[state 342, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 0,4

[state 342, hitdef]
type = hitdef
trigger1 = animelemtime(1) = 0
id = 340
attr = c,na
hitflag = maf
guardflag = la
affectteam = e
animtype = medium
ground.type = high
priority = 3,hit
sprpriority = 1
damage = floor(14*fvar(1)*fvar(2)),0
getpower = ceil(27*fvar(3)),ceil(18*fvar(3))
givepower = 10,5
ground.hittime  = 21
air.hittime = 17
guard.ctrltime = 15
ground.slidetime = 15
pausetime = 10,10
sparkno = s25001
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*39)
hitsound = s1,8
guardsound = s2,1
ground.velocity = -7.5
guard.velocity = -10
air.velocity = -7,-4
fall.recovertime = 25
guard.cornerpush.veloff = -12

[state 342, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 340
ignorehitpause = 1

[state 342, targetstate]
type = targetstate
trigger1 = numtarget(340) > 0
trigger1 = target(340),statetype = a
trigger1 = target(340),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 342, changestate]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1
;===========================================================================
;�����Ⴊ�ݑ�L�b�N
[statedef 350]
type    = c
movetype= a
physics = c
poweradd= ceil(50*fvar(3))
ctrl    = 0
anim    = 350

[state 350, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*20),0

[state 350, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,6

[state 350, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 350
attr = c,na
hitflag = mafd
guardflag = la
affectteam = e
animtype = back
ground.type = low
priority = 4,hit
sprpriority = 1
damage = floor(31*fvar(1)*fvar(2)),0
getpower = ceil(95*fvar(3)),ceil(70*fvar(3))
givepower = 25,5
ground.hittime  = 24
air.hittime = 90
guard.ctrltime = 8
ground.slidetime = 12
pausetime = 12,12
sparkno = s25002
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*7)
hitsound = s1,10
guardsound = s2,1
ground.velocity = -4,-3.5
guard.velocity = -3.2
air.velocity = -2.2,-4
down.velocity = 0,0
guard.cornerpush.veloff = -20
fall = 1
fall.recover = 0
fall.recovertime = 100

[state 350, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 350
ignorehitpause = 1

[state 350, targetstate]
type = targetstate
trigger1 = numtarget(350) > 0
trigger1 = target(350),statetype != l
trigger1 = target(350),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 350, changestate]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1
;===========================================================================
;���W�����v���p���`
[statedef 400]
type    = a
movetype= a
physics = a
poweradd= ceil(10*fvar(3))
ctrl = 0
anim = 400

[state 400, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 0,3

[state 400, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 400
attr = a,na
hitflag = maf
guardflag = ha
affectteam = e
animtype = light
ground.type = high
priority = 4,hit
sprpriority = 1
damage = floor(7*fvar(1)*fvar(2)),0
getpower = ceil(15*fvar(3)),ceil(10*fvar(3))
givepower = 8,5
ground.hittime  = 16-15*(var(13)=2)
air.hittime = 16
guard.ctrltime = 13
ground.slidetime = 13
pausetime = 10,10
sparkno = s25000
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*60)
hitsound = s1,7
guardsound = s2,1
ground.velocity = -2,0
guard.velocity = -2
air.velocity = -1,-3.3
guard.cornerpush.veloff = -10
air.fall = 1
fall.recovertime = 20

[state 400, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 400
ignorehitpause = 1

[state 400, targetstate]
type = targetstate
trigger1 = numtarget(400) > 0
trigger1 = target(400),statetype = a
trigger1 = target(400),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 400, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(var(9)=1,63,50)
ctrl = 1
;===========================================================================
;���W�����v���p���`
[statedef 410]
type    = a
movetype= a
physics = a
poweradd= ceil(25*fvar(3))
ctrl = 0
anim = 410

[state 410, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,3

[state 410, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 410, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,4

[state 410, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 410
attr = a,na
hitflag = maf
guardflag = ha
affectteam = e
animtype = medium
ground.type = high
priority = 4,hit
sprpriority = 1
damage = floor(12*fvar(1)*fvar(2)),0
getpower = ceil(35*fvar(3)),ceil(18*fvar(3))
givepower = 10,5
ground.hittime  = 20-19*(var(13)=2)
air.hittime = 22
guard.ctrltime = 10
ground.slidetime = 10
pausetime = 10,10
sparkno = s25001
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*60)
hitsound = s1,7
guardsound = s2,1
ground.velocity = -2.8,0
guard.velocity = -2.4
air.velocity = -2,-5.5
guard.cornerpush.veloff = -16
air.fall = 1
fall.recovertime = 30

[state 410, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 410
ignorehitpause = 1

[state 410, targetstate]
type = targetstate
trigger1 = numtarget(410) > 0
trigger1 = target(410),statetype = a
trigger1 = target(410),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 410, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(var(9)=1,63,50)
ctrl = 1
;===========================================================================
;���W�����v��p���`
[statedef 420]
type    = a
movetype= a
physics = a
poweradd= ceil(50*fvar(3))
ctrl = 0
anim = 420

[state 420, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 2,3

[state 420, playsnd]
type = playsnd
trigger1 = animelemtime(6) < 0
trigger1 = movecontact = 1
value = 9,var(5)
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)
persistent = 0
ignorehitpause = 1

[state 420, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(5) = 0
value = 0,6

[state 420, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(6) = 0
id = 420+(animelemtime(6)>=0)
attr = a,na
hitflag = mafd
guardflag = ha
affectteam = e
animtype = back
ground.type = low
priority = 4,hit
sprpriority = 1
damage = floor(30*fvar(1)*fvar(2))+(animelemtime(6)>=0)*10,0
getpower = ceil(90*fvar(3)),ceil(60*fvar(3))
givepower = 25,5
ground.hittime  = 24
air.hittime = 90
guard.ctrltime = 8
ground.slidetime = 12
pausetime = 12,12
sparkno = s25002
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*50)
hitsound = s1,10
guardsound = s2,1
ground.velocity = -4,-3
guard.velocity = -3.2
air.velocity = -2.2,15+(animelemtime(6)>=0)*25
down.velocity = 0,0
guard.cornerpush.veloff = -24
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
fall.damage = floor(16*fvar(1)*fvar(2))
fall.envshake.time = 16
fall.envshake.freq = 70
fall.envshake.ampl = 5
air.fall = 1
fall.recover = 0
fall.recovertime = 900

[state 420, targetdrop]
type = targetdrop
trigger1 = animelemtime(6) < 0
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 420
ignorehitpause = 1

[state 420, targetdrop]
type = targetdrop
trigger1 = animelemtime(6) >= 0
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 421
ignorehitpause = 1

[state 420, targetstate]
type = targetstate
trigger1 = numtarget(420) > 0
trigger1 = target(420),statetype = a
trigger1 = target(420),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 420, targetstate]
type = targetstate
trigger1 = numtarget(421) > 0
trigger1 = target(421),statetype != l
trigger1 = target(421),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 420, changeanim]
type = changeanim
trigger1 = animelemtime(3) > 0 && animelemtime(4) <= 0
trigger1 = movecontact
value = 420
elem = 4
ignorehitpause = 1
persistent = 0

[state 420, changeanim]
type = changeanim
trigger1 = animelemtime(4) > 0 && animelemtime(5) <= 0
trigger1 = movecontact
value = 420
elem = 5
ignorehitpause = 1
persistent = 0

[state 420, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(var(9)=1,63,50)
ctrl = 1
;===========================================================================
;���W�����v���L�b�N
[statedef 430]
type    = a
movetype= a
physics = a
poweradd= ceil(10*fvar(3))
ctrl = 0
anim = 430

[state 430, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 0,3

[state 430, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 430
attr = a,na
hitflag = maf
guardflag = ha
affectteam = e
animtype = light
ground.type = high
priority = 4,hit
sprpriority = 1
damage = floor(9*fvar(1)*fvar(2)),0
getpower = ceil(21*fvar(3)),ceil(13*fvar(3))
givepower = 9,5
ground.hittime  = 16-15*(var(13)=2)
air.hittime = 19
guard.ctrltime = 13
ground.slidetime = 13
pausetime = 10,10
sparkno = s25000
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*53)
hitsound = s1,7
guardsound = s2,1
ground.velocity = -2.3,0
guard.velocity = -2
air.velocity = -1.6,-3.4
guard.cornerpush.veloff = -10
air.fall = 1
fall.recovertime = 25

[state 430, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 430
ignorehitpause = 1

[state 430, targetstate]
type = targetstate
trigger1 = numtarget(430) > 0
trigger1 = target(430),statetype = a
trigger1 = target(430),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 430, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(var(9)=1,63,50)
ctrl = 1
;===========================================================================
;���W�����v���L�b�N
[statedef 440]
type    = a
movetype= a
physics = a
poweradd= ceil(25*fvar(3))
ctrl = 0
anim = 440

[state 440, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,4

[state 440, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 440
attr = a,na
hitflag = maf
guardflag = ha
affectteam = e
animtype = medium
ground.type = high
priority = 4,hit
sprpriority = 1
damage = floor(13*fvar(1)*fvar(2)),0
getpower = ceil(38*fvar(3)),ceil(19*fvar(3))
givepower = 12,5
ground.hittime  = 24-23*(var(13)=2)
air.hittime = 26
guard.ctrltime = 16
ground.slidetime = 16
pausetime = 10,10
sparkno = s25001
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*53)
hitsound = s1,7
guardsound = s2,1
ground.velocity = -2.8,0
guard.velocity = -2.4
air.velocity = -2,-5.3
guard.cornerpush.veloff = -16
air.fall = 1
fall.recovertime = 30

[state 440, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 440
ignorehitpause = 1

[state 440, targetstate]
type = targetstate
trigger1 = numtarget(440) > 0
trigger1 = target(440),statetype = a
trigger1 = target(440),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 440, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(var(9)=1,63,50)
ctrl = 1
;===========================================================================
;��������
[statedef 460]
type    = a
movetype= a
physics = a
poweradd= ceil(50*fvar(3))
ctrl = 0
velset = 0,0
anim = 460

[state 460, posfreeze]
type = posfreeze
trigger1 = 1

[state 460, changestate]
type = changestate
trigger1 = pos y >= 0
value = 52

[state 460, changestate]
type = changestate
trigger1 = animtime = 0
value = 463+(var(34)=0)
;---------------------------------------------------------------------------
[statedef 463]
type    = a
movetype= a
physics = n
anim = 463

[state 463, varset]
type = varset
trigger1 = time = 0
var(34) = 0

[state 463, gravity]
type = gravity
trigger1 = 1

[state 463, velset]
type = velset
trigger1 = time = 0
x = 0
y = 15

[state 463, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
helpertype = normal
name = "matagi bind"
stateno = 10000
id = 10463
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 463, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,14

[state 463, hitdef]
type = hitdef
trigger1 = time = 0
trigger1 = var(29) < 5
id = 460+var(34)
attr = a,na
hitflag = mafdp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
priority = 4,hit
sprpriority = 1
damage = floor(20*fvar(1)*fvar(2)),0
getpower = ceil(120*fvar(3)),ceil(15*fvar(3))
givepower = 20,5
ground.hittime = 27
air.hittime = 33
guard.ctrltime = 18
ground.slidetime = 18
pausetime = 10,10
sparkno = s20000+(var(40)=1)*10
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*30)
hitsound = s1,9
guardsound = s2,1
ground.velocity = -4.6,0
guard.velocity = -3
air.velocity = -1,-3
down.velocity = 0,0
air.fall = 1
fall.recovertime = 30
guard.cornerpush.veloff = -16

[state 463, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 460+var(34)
ignorehitpause = 1

[state 463, targetstate]
type = targetstate
trigger1 = numtarget(460+var(34)) > 0
trigger1 = target(460+var(34)),statetype = a
trigger1 = target(460+var(34)),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 463, changestate]
type = changestate
trigger1 = movecontact
value = 465

[state 463, changestate]
type = changestate
trigger1 = pos y >= 0
value = 467
;---------------------------------------------------------------------------
[statedef 464]
type    = a
movetype= a
physics = n
anim = 463

[state 464, varset]
type = varset
trigger1 = time = 0
var(34) = 1

[state 464, gravity]
type = gravity
trigger1 = 1

[state 464, velset]
type = velset
trigger1 = time = 0
x = 0
y = 15

[state 464, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
helpertype = normal
name = "matagi bind"
stateno = 10000
id = 10463
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 464, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,14

[state 464, hitdef]
type = hitdef
trigger1 = time = 0
trigger1 = var(29) < 5
id = 460+var(34)
attr = a,na
hitflag = mafdp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
priority = 4,hit
sprpriority = 1
damage = floor(20*fvar(1)*fvar(2)),0
getpower = ceil(120*fvar(3)),ceil(15*fvar(3))
givepower = 20,5
ground.hittime = 27
air.hittime = 33
guard.ctrltime = 18
ground.slidetime = 18
pausetime = 10,10
sparkno = s20000+(var(40)=1)*10
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*30)
hitsound = s1,9
guardsound = s2,1
ground.velocity = -4.6,0
guard.velocity = -3
air.velocity = -1,-3
down.velocity = 0,0
air.fall = 1
fall.recovertime = 30
guard.cornerpush.veloff = -16

[state 464, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 460+var(34)
ignorehitpause = 1

[state 464, targetstate]
type = targetstate
trigger1 = numtarget(460+var(34)) > 0
trigger1 = target(460+var(34)),statetype = a
trigger1 = target(460+var(34)),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 464, changestate]
type = changestate
trigger1 = movecontact
value = 465

[state 464, changestate]
type = changestate
trigger1 = pos y >= 0
value = 467
;---------------------------------------------------------------------------
[statedef 465]
type    = a
movetype= i
physics = a
anim = 465

[state 465, velset]
type = velset
trigger1 = time = 0
x = -7
y = -7

[state 465, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(var(9)=1,63,50)
ctrl = 1
;---------------------------------------------------------------------------
[statedef 467]
type    = c
movetype= i
physics = c
anim = 467

[state 467, velset]
type = velset
trigger1 = 1
y = 0

[state 467, posset]
type = posset
trigger1 = 1
y = 0

[state 467, changestate]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1
;===========================================================================
;������grab actions������
;===========================================================================
;���u���[�A�[��
[statedef 500]
type    = s
movetype= a
physics = s
velset = 0,0
ctrl = 0
anim = 500

[state 500, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "holdfwd"
var(7) = 1

[state 500, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "holdback"
var(7) = 2

[state 500, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 0,0

[state 500, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 500
affectteam = e
attr = s,nt
hitflag = m-
priority = 1,miss
sparkno = -1
getpower = 100,0
p1sprpriority = 1
p1facing = ifelse(var(7)=1,1,-1)
p2facing = 1
hitsound = s1,6
guard.dist = 0

[state 500, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 500
ignorehitpause = 1

[state 500, targetstate]
type = targetstate
trigger1 = numtarget(500) > 0
trigger1 = target(500),alive
trigger1 = movehit = 1
value = 505
ignorehitpause = 1

[state 500, changestate]
type = changestate
trigger1 = numtarget > 0
trigger1 = movehit
value = 501
ignorehitpause = 1

[state 500, varset]
type = varset
trigger1 = animtime = 0
var(7) = 0

[state 500, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = animtime = 0
var(54) = 1

[state 500, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[statedef 501]
type    = s
movetype= a
physics = s
anim = 501
poweradd = ceil(50*fvar(3))

[state 501, playsnd]
type = playsnd
trigger1 = time = 0
value = 9,4+(random<500)
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 501, posadd]
type = posadd
trigger1 = time = 0 
trigger1 = var(7) = 2
x = floor(const(size.xscale)*60)

[state 501, width]
type = width
trigger1 = animelemtime(1) = 0 
edge = floor(const(size.xscale)*90),0

[state 501, targetbind]
type = targetbind
trigger1 = time <= 10
pos = 60,0

[state 501, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,6

[state 501, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 501
attr = a,na
hitflag = mafd
guardflag = m
affectteam = e
animtype = back
ground.type = low
priority = 4,hit
sprpriority = 1
damage = floor(20*fvar(1)*fvar(2)),0
getpower = ceil(50*fvar(3)),ceil(25*fvar(3))
givepower = 10,5
ground.hittime  = 35
air.hittime = 35
guard.ctrltime = 20
ground.slidetime = 35
pausetime = 10,10
sparkno = s25002
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*24)
hitsound = s1,8
guardsound = s2,1
ground.velocity = -4,0
guard.velocity = -3.3
air.velocity = -2.4,-4
down.velocity = 0,0
guard.cornerpush.veloff = -24
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
air.fall = 1
fall.damage = floor(10*fvar(1)*fvar(2))
fall.envshake.time = 16
fall.envshake.freq = 70
fall.envshake.ampl = 5
fall.recover = 0
fall.recovertime = 900
kill = 0
guard.kill = 0
fall.kill = 0

[state 501, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 501
ignorehitpause = 1

[state 501, targetstate]
type = targetstate
trigger1 = numtarget(501) > 0
trigger1 = target(501),alive
trigger1 = movehit = 1
value = 5005
ignorehitpause = 1

[state 501, changestate]
type = changestate
trigger1 = animtime = 0
value = 502
;---------------------------------------------------------------------------
[statedef 502]
type    = s
movetype= a
physics = s
anim = 502
poweradd = ceil(50*fvar(3))

[state 502, velset]
type = velset
trigger1 = animelemtime(2) = 0
x = 33

[state 502, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 502
attr = a,na
hitflag = mafd
guardflag = m
affectteam = e
animtype = up
ground.type = low
priority = 4,hit
sprpriority = 1
damage = floor(25*fvar(1)*fvar(2)),0
getpower = ceil(50*fvar(3)),ceil(25*fvar(3))
givepower = 10,5
ground.hittime  = 35
air.hittime = 35
guard.ctrltime = 20
ground.slidetime = 35
pausetime = 10,10
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*35)
hitsound = s1,9
guardsound = s2,1
ground.velocity = 2,-5
guard.velocity = -3.9
air.velocity = -2.4,-13.5
down.velocity = 0,0
guard.cornerpush.veloff = -24
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
fall = 1
fall.damage = floor(10*fvar(1)*fvar(2))
fall.envshake.time = 16
fall.envshake.freq = 70
fall.envshake.ampl = 5
fall.recover = 0
fall.recovertime = 900

[state 502, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 502
ignorehitpause = 1

[state 502, targetstate]
type = targetstate
trigger1 = numtarget(502) > 0
trigger1 = target(502),alive
trigger1 = movehit = 1
value = 5005
ignorehitpause = 1

[state 502, varadd]
type = varadd
trigger1 = numtarget(502) > 0
trigger1 = movehit
var(14) = 20
ignorehitpause = 1
persistent = 0

[state 502, changestate]
type = changestate
trigger1 = time >= 12
value = 503
;---------------------------------------------------------------------------
[statedef 503]
type    = s
movetype= i
physics = s
anim = 503

[state 503, varset]
type = varset
trigger1 = 1
var(7) = 0

[state 503, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[statedef 505]
type    = s
movetype= h
physics = n
velset = 0,0

[state 505, destroyself]
type = destroyself
trigger1 = ishelper

[state 505, changeanim]
type = changeanim
trigger1 = 1
value = 5000

[state 505, selfstate]
type = selfstate
trigger1 = time >= 100
value = 5110
;===========================================================================
;���K�E�V��\����
[statedef 550]
type    = a
movetype= a
physics = a
ctrl = 0
anim = 550
poweradd = ceil(20*fvar(3))

[state 550, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command="holdfwd"
var(7) = 1

[state 550, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,0

[state 550, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
affectteam = e
attr = a,nt
hitflag = a-
priority = 1,miss
sparkno = -1
p1sprpriority = 1
p1facing = ifelse(var(7)=1,1,-1)
p2facing = 1
p1stateno = 551
p2stateno = 555
hitsound = s1,6
guard.dist = 0
fall = 1
fall.recover = 0
fall.recovertime = 900
fall.envshake.time = 16
fall.envshake.freq = 70
fall.envshake.ampl = 5

[state 550, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = animtime = 0
var(54) = 1

[state 550, changestate]
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
[statedef 551]
type    = a
movetype= a
physics = a
anim = 551
poweradd = ceil(50*fvar(3))

[state 551, width]
type = width
trigger1 = animelemtime(1) = 0 
edge = floor(const(size.xscale)*90),0

[state 551, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(6) = 0
value = 0,5

[state 551, hitadd]
type = hitadd
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(6) = 0
value = 1

[state 551, envshake]
type = envshake
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(6) = 0
time = 16
freq = 70
ampl = 5
phase = 50

[state 551, explod]
type = explod
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(6) = 0
anim = 25001
id = 25000
pos = floor(const(size.xscale)*45),-floor(const(size.yscale)*(65-(animelemtime(6)=0)*10))
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
supermovetime = 999
pausemovetime = 999
ownpal = 1

[state 551, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 1,8

[state 551, playsnd]
type = playsnd
trigger1 = animelemtime(6) = 0
value = 1,9

[state 551, posfreeze]
type = posfreeze
trigger1 = animelemtime(7) < 0

[state 551, targetbind]
type = targetbind
trigger1 = animelemtime(7) < 0
pos = 30,-50

[state 551, targetlifeadd]
type = targetlifeadd
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(6) = 0
value = -floor(30*fvar(1)*fvar(2))

[state 551, velset]
type = velset
trigger1 = animelemtime(7) = 0
x = -12
y = -3
;---------------------------------------------------------------------------
[statedef 555]
type    = a
movetype= h
physics = n
velset = 0,0

[state 555, destroyself]
type = destroyself
trigger1 = ishelper

[state 555, changeanim2]
type = changeanim2
trigger1 = time = 0
value = 555

[state 555, veladd]
type = veladd
trigger1 = 1
y = 0.95

[state 555, velset]
type = velset
trigger1 = animelemtime(7) = 0
x = -21
y = -2

[state 555, selfstate]
type = selfstate
trigger1 = anim = 555
trigger1 = animtime = 0
value = 5050

[state 555, selfstate]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= -10
value = 5100