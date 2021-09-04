;===========================================================================
;†††normal actions†††
;===========================================================================
;■挑発
[statedef 195]
type = s
movetype = i
physics = s
velset = 0,0
ctrl = 0
anim = 195

[state 195, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 90,93

[state 195, poweradd]
type = poweradd
trigger1 = 1
value = ceil(4*fvar(3))

[state 195, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 10,var(5)
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 195, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■へちょ化
[statedef 197]
type = s
movetype = i
physics = s
velset = 0,0
ctrl = 0
anim = 197

[state 197, playsnd]
type = playsnd
trigger1 = time = 0
trigger1 = prevstateno != stateno
value = 2,11

[state 197, playsnd]
type = playsnd
trigger1 = time = 5
value = 9,900
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

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
;■立ち小パンチ
[statedef 200]
type = s
movetype= a
physics = s
ctrl = 0
anim = 200
poweradd = ceil(10*fvar(3))

[state 200, width]
type = width
trigger1 = animelemtime(2) < 0
player = floor(const(size.xscale)*20),0

[state 200, explod]
type = explod
trigger1 = animelemtime(1) = 0
anim = 10200
id = 10200
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 200, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*20)

[state 200, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = -floor(const(size.xscale)*20)

[state 200, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,0

[state 200, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 200
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = light
ground.type = low;high
priority = 3,hit
sprpriority = 1
damage = floor(10*fvar(1)*fvar(2)),0
getpower = ceil(12*fvar(3)),ceil(6*fvar(3))
givepower = 8,5
ground.hittime = 16
air.hittime = 16
guard.ctrltime = 10
ground.slidetime = 13
pausetime = 8,8
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*62)
hitsound = s1,2
guardsound = s2,0
ground.velocity = -7.5
guard.velocity = -3
air.velocity = -1.4,-3
fall.recovertime = 20
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
trigger1 = target(200),alive
trigger1 = movehit = 1
value = 5005+(target(200),statetype=a)*20
ignorehitpause = 1

[state 200, explod]
type = explod
trigger1 = animelemtime(5) = 0
anim = 10201
id = 10201
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[state 200, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■立ち中パンチ１
[statedef 210]
type = s
movetype= a
physics = s
poweradd= ceil(20*fvar(3))
ctrl = 0
anim = 210

[state 210, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*15)

[state 210, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = -floor(const(size.xscale)*15)

[state 210, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,1

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
trigger1 = animelemtime(3) = 0
value = 0,1

[state 210, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 210
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = medium
ground.type = high
priority = 3,hit
sprpriority = 1
damage = floor(24*fvar(1)*fvar(2)),0
getpower = ceil(24*fvar(3)),ceil(12*fvar(3))
givepower = 10,5
ground.hittime = 27
air.hittime = 30
guard.ctrltime = 16
ground.slidetime = 27
pausetime = 10,10
sparkno = s25001
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*64)
hitsound = s1,1
guardsound = s2,0
ground.velocity = -4
guard.velocity = -4
air.velocity = -1.7,-3
fall.recovertime = 25
guard.cornerpush.veloff = -8

[state 210, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 210
ignorehitpause = 1

[state 210, targetstate]
type = targetstate
trigger1 = numtarget(210) > 0
trigger1 = target(210),alive
trigger1 = target(210),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 210, explod]
type = explod
trigger1 = animelemtime(5) = 0
anim = 10210
id = 10210
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[state 210, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■立ち中パンチ２
[statedef 215]
type = s
movetype= a
ctrl = 0
anim = 215
poweradd = ceil(15*fvar(3))

[state 215, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(5) = 0
x = -floor(const(size.xscale)*5)

[state 215, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 6
value = 0,2

[state 215, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 5,1

[state 215, explod]
type = explod
trigger1 = animelemtime(4) = 0
anim = 16000
id = 16000
pos = floor(const(size.xscale)*48),-floor(const(size.yscale)*81)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 215, explod]
type = explod
trigger1 = animelemtime(4) = 15
anim = 10215
id = 10215
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[state 215, attackdist]
type = attackdist
trigger1 = animelemtime(3) >= 0
value = 400

[state 215, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 215
attr = s,np
hitflag = mafp
guardflag = ma
affectteam = e
animtype = back
ground.type = high
priority = 5,hit
sprpriority = 1
damage = floor(30*fvar(1)*fvar(2)),2
getpower = ceil(48*fvar(3)),ceil(24*fvar(3))
givepower = 8,5
ground.hittime = 60
air.hittime = 5
guard.ctrltime = 21
ground.slidetime = 40
pausetime = 8,8
sparkno = s25003
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*50),-floor(const(size.yscale)*80)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -5,-4.5
guard.velocity = -7
air.velocity = -5,-3.5
fall = 1
fall.recovertime = 900-(var(29)>0)*895
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
guard.cornerpush.veloff = -8

[state 215, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 215
ignorehitpause = 1

[state 215, targetstate]
type = targetstate
trigger1 = numtarget(215) > 0
trigger1 = target(215),statetype = a
trigger1 = target(215),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 215, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■立ち大パンチ１
[statedef 220]
type = s
movetype= a
physics = s
ctrl = 0
anim = 220
poweradd = ceil(30*fvar(3))

[state 220, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 2,4

[state 220, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 220, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 4
value = 0,2

[state 220, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(3) = 0
x = floor(const(size.xscale)*15)

[state 220, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = floor(const(size.xscale)*10)

[state 220, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 220
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = back
ground.type = high
priority = 5,hit
sprpriority = 1
damage = floor(35*fvar(1)*fvar(2)),0
getpower = ceil(36*fvar(3)),ceil(18*fvar(3))
givepower = 15,5
ground.hittime = 30
air.hittime = 60
guard.ctrltime = 18
ground.slidetime = 30
pausetime = 12,12
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*75)
hitsound = s1,2
guardsound = s2,0
ground.velocity = -6
guard.velocity = -5
air.velocity = -3,-4
air.fall = 1
fall.recovertime = 30
guard.cornerpush.veloff = -13

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
value = 221
;---------------------------------------------------------------------------
[statedef 221]
type = s
movetype= i
ctrl = 0
anim = 221

[state 221, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = -floor(const(size.xscale)*25)

[state 221, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -floor(const(size.xscale)*15)

[state 221, explod]
type = explod
trigger1 = animelemtime(1) = 0
anim = 10220
id = 10220
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[state 221, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■立ち大パンチ２
[statedef 225]
type = s
movetype= a
ctrl = 0
anim = 225
poweradd = ceil(15*fvar(3))

[state 225, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 6
value = 0,2

[state 225, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 5,1

[state 225, explod]
type = explod
trigger1 = animelemtime(4) = 0
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

[state 225, attackdist]
type = attackdist
trigger1 = animelemtime(4) >= 0
value = 400

[state 225, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 225
attr = s,np
hitflag = mafp
guardflag = ma
affectteam = e
animtype = back
ground.type = high
priority = 5,hit
sprpriority = 1
damage = floor(30*fvar(1)*fvar(2)),2
getpower = ceil(48*fvar(3)),ceil(24*fvar(3))
givepower = 8,5
ground.hittime = 40
air.hittime = 5
guard.ctrltime = 20
ground.slidetime = 40
pausetime = 8,8
sparkno = s25003
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*50),-floor(const(size.yscale)*82)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -7,-4.5
guard.velocity = -7
air.velocity = -7,-3.5
fall = 1
fall.recovertime = 900-(var(29)>0)*895
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
guard.cornerpush.veloff = -8

[state 225, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 225
ignorehitpause = 1

[state 225, targetstate]
type = targetstate
trigger1 = numtarget(225) > 0
trigger1 = target(225),statetype = a
trigger1 = target(225),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 225, changestate]
type = changestate
trigger1 = animtime = 0
value = 226
;---------------------------------------------------------------------------
[statedef 226]
type = s
movetype= i
ctrl = 0
anim = 226

[state 226, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = -floor(const(size.xscale)*25)

[state 226, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -floor(const(size.xscale)*15)

[state 226, explod]
type = explod
trigger1 = animelemtime(1) = 2
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

[state 226, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■立ち小キック
[statedef 230]
type = s
movetype= a
physics = s
ctrl = 0
anim = 230
poweradd = ceil(10*fvar(3))

[state 230, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = floor(const(size.xscale)*10)

[state 230, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*5)

[state 230, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = -floor(const(size.xscale)*5)

[state 230, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = -floor(const(size.xscale)*10)

[state 230, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 4
value = 0,0

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
priority = 5,hit
sprpriority = 1
damage = floor(10*fvar(1)*fvar(2)),0
getpower = ceil(12*fvar(3)),ceil(6*fvar(3))
givepower = 8,5
ground.hittime = 20
air.hittime = 25
guard.ctrltime = 19
ground.slidetime = 20
pausetime = 10,10
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*35)
hitsound = s1,3
guardsound = s2,0
ground.velocity = -4
guard.velocity = -3
air.velocity = -1.5,-5
fall.recovertime = 25
guard.cornerpush.veloff = -8

[state 230, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 230
ignorehitpause = 1

[state 230, targetstate]
type = targetstate
trigger1 = numtarget(230) > 0
trigger1 = target(230),alive
trigger1 = target(230),statetype=a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 230, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■立ち中キック
[statedef 240]
type = s
movetype= a
physics = s
ctrl = 0
anim = 240
poweradd = ceil(30*fvar(3))

[state 240, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = floor(const(size.xscale)*10)

[state 240, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*5)

[state 240, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*10)

[state 240, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = floor(const(size.xscale)*15)

[state 240, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = -floor(const(size.xscale)*20)

[state 240, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = -floor(const(size.xscale)*10)

[state 240, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,1

[state 240, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 240
attr = s,na
hitflag = maf
guardflag = ha
affectteam = e
animtype = medium
ground.type = high
priority = 3,hit
sprpriority = 1
damage = floor(18*fvar(1)*fvar(2)),0
getpower = ceil(24*fvar(3)),ceil(12*fvar(3))
givepower = 10,5
ground.hittime = 18
air.hittime = 28
guard.ctrltime = 4
ground.slidetime = 18
pausetime = 10,10
sparkno = s25001
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*55)
hitsound = s1,4
guardsound = s2,0
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
;■立ち大キック
[statedef 250]
type = a
movetype= a
physics = n
ctrl = 0
anim = 250
poweradd = ceil(30*fvar(3))

[state 250, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*20),0

[state 250, velset]
type = velset
trigger1 = time = 0
x = 5
y = -2.5

[state 250, veladd]
type = veladd
trigger1 = pos y < 0
y = const(movement.yaccel)

[state 250, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 251
;---------------------------------------------------------------------------
[statedef 251]
type = s
movetype= a
physics = s
ctrl = 0
anim = 251

[state 251, helper]
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

[state 251, velset]
type = velset
trigger1 = 1
y = 0

[state 251, posset]
type = posset
trigger1 = 1
y = 0

[state 251, hitdef]
type = hitdef
trigger1 = animelemtime(1) = 0
id = 250
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = back
ground.type = low
priority = 3,hit
sprpriority = 1
damage = floor(40*fvar(1)*fvar(2)),0
getpower = ceil(36*fvar(3)),ceil(18*fvar(3))
givepower = 10,5
ground.hittime = 24
air.hittime = 5
guard.ctrltime = 24
ground.slidetime = 24
pausetime = 12,12
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*65)
hitsound = s1,5
guardsound = s2,0
ground.velocity = -8
guard.velocity = -12
air.velocity = -8,-3.5
down.velocity = 0,0
air.fall = 1
fall.recover = 1
fall.recovertime = 900-(var(29)>1)*895
guard.cornerpush.veloff = -13

[state 251, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 250
ignorehitpause = 1

[state 251, targetstate]
type = targetstate
trigger1 = numtarget(250) > 0
trigger1 = target(250),statetype = a
trigger1 = target(250),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 251, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■ホーリー・カデンツァ１
[statedef 260]
type = s
movetype= a
physics = s
ctrl = 0
anim = 260
poweradd = ceil(30*fvar(3))

[state 260, width]
type = width
trigger1 = animelemtime(2) < 0
player = floor(const(size.xscale)*20),0

[state 260, explod]
type = explod
trigger1 = animelemtime(4) = 0
anim = 16000
id = 16000
pos = floor(const(size.xscale)*96),-floor(const(size.yscale)*82)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 260, explod]
type = explod
trigger1 = animelemtime(5) = 4
anim = 10260
id = 10260
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[state 260, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(3) = 0
x = floor(const(size.xscale)*20)

[state 260, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = -floor(const(size.xscale)*25)

[state 260, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = -floor(const(size.xscale)*15)

[state 260, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 5,1

[state 260, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 260
attr = s,np
hitflag = mafp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
priority = 5,hit
sprpriority = 1
damage = floor(25*fvar(1)*fvar(2)),2
getpower = ceil(24*fvar(3)),ceil(12*fvar(3))
givepower = 8,5
ground.hittime = 24
air.hittime = 24
guard.ctrltime = 24
ground.slidetime = 24
pausetime = 8,8
sparkno = s25003
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*50),-floor(const(size.yscale)*82)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -8
guard.velocity = -8
air.velocity = -1.5,-5
fall.recovertime = 20
envshake.time = 6
envshake.freq = 60
envshake.ampl = 5
guard.cornerpush.veloff = -8

[state 260, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 260
ignorehitpause = 1

[state 260, targetstate]
type = targetstate
trigger1 = numtarget(260) > 0
trigger1 = target(260),alive
trigger1 = movehit = 1
value = 5005+(target(260),statetype=a)*20
ignorehitpause = 1

[state 260, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■ホーリー・カデンツァ２
[statedef 263]
type = s
movetype= a
physics = s
ctrl = 0
anim = 263
poweradd = ceil(30*fvar(3))

[state 263, width]
type = width
trigger1 = animelemtime(2) < 0
player = floor(const(size.xscale)*10),0

[state 263, explod]
type = explod
trigger1 = animelemtime(5) = 0
anim = 16000
id = 16000
pos = floor(const(size.xscale)*92),-floor(const(size.yscale)*81)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 263, explod]
type = explod
trigger1 = animelemtime(5) = 9
anim = 10263
id = 10263
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[state 263, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,2

[state 263, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 263, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = floor(const(size.xscale)*10)

[state 263, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*30)

[state 263, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*5)

[state 263, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = floor(const(size.xscale)*10)

[state 263, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 5,1

[state 263, hitdef]
type = hitdef
trigger1 = animelemtime(5) = 0
id = 263
attr = s,np
hitflag = mafp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
priority = 5,hit
sprpriority = 1
damage = floor(25*fvar(1)*fvar(2)),2
getpower = ceil(24*fvar(3)),ceil(12*fvar(3))
givepower = 8,5
ground.hittime = 24
air.hittime = 24
guard.ctrltime = 24
ground.slidetime = 24
pausetime = 8,8
sparkno = s25003
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*50),-floor(const(size.yscale)*81)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -5
guard.velocity = -8
air.velocity = -1.5,-5
fall.recovertime = 20
envshake.time = 6
envshake.freq = 60
envshake.ampl = 5
guard.cornerpush.veloff = -8

[state 263, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 263
ignorehitpause = 1

[state 263, targetstate]
type = targetstate
trigger1 = numtarget(263) > 0
trigger1 = target(263),alive
trigger1 = movehit = 1
value = 5005+(target(263),statetype=a)*20
ignorehitpause = 1

[state 263, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■ホーリー・カデンツァ３
[statedef 266]
type = s
movetype= a
physics = s
ctrl = 0
anim = 266
poweradd = ceil(30*fvar(3))

[state 266, explod]
type = explod
trigger1 = animelemtime(1) = 0
anim = 10266
id = 10266
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[state 266, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = floor(const(size.xscale)*10)

[state 266, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*5)

[state 266, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = -floor(const(size.xscale)*5)

[state 266, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = -floor(const(size.xscale)*10)

[state 266, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 4
value = 0,0

[state 266, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 266
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = light
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(15*fvar(1)*fvar(2)),0
getpower = ceil(24*fvar(3)),ceil(12*fvar(3))
givepower = 8,5
ground.hittime = 20
air.hittime = 20
guard.ctrltime = 20
ground.slidetime = 20
pausetime = 8,8
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*35)
hitsound = s1,3
guardsound = s2,0
ground.velocity = -4
guard.velocity = -8
air.velocity = -1.5,-5
fall.recovertime = 20
guard.cornerpush.veloff = -8

[state 266, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 266
ignorehitpause = 1

[state 266, targetstate]
type = targetstate
trigger1 = numtarget(266) > 0
trigger1 = target(266),alive
trigger1 = movehit = 1
value = 5005+(target(266),statetype=a)*20
ignorehitpause = 1

[state 266, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■ホーリー・カデンツァ４
[statedef 270]
type = s
movetype= a
physics = s
ctrl = 0
anim = 270
poweradd = ceil(30*fvar(3))

[state 270, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,2

[state 270, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 270, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = floor(const(size.xscale)*20)

[state 270, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(3) = 0
x = floor(const(size.xscale)*10)

[state 270, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = floor(const(size.xscale)*25)

[state 270, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,6

[state 270, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 270
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = hard
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(40*fvar(1)*fvar(2)),0
getpower = ceil(24*fvar(3)),ceil(12*fvar(3))
givepower = 8,5
ground.hittime = 20
air.hittime = 20
guard.ctrltime = 20
ground.slidetime = 20
pausetime = 8,8
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*50)
hitsound = s1,5
guardsound = s2,0
ground.velocity = -6
guard.velocity = -8
air.velocity = -1.5,-5
fall.recovertime = 20
guard.cornerpush.veloff = -9

[state 270, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 270
ignorehitpause = 1

[state 270, targetstate]
type = targetstate
trigger1 = numtarget(270) > 0
trigger1 = target(270),alive
trigger1 = movehit = 1
value = 5005+(target(270),statetype=a)*20
ignorehitpause = 1

[state 270, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■ホーリー・カデンツァ５
[statedef 273]
type = s
movetype= a
physics = s
ctrl = 0
anim = 273
poweradd = ceil(30*fvar(3))

[state 273, explod]
type = explod
trigger1 = animelemtime(5) = 0
anim = 16000
id = 16000
pos = floor(const(size.xscale)*95),-floor(const(size.yscale)*76)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 273, explod]
type = explod
trigger1 = animelemtime(5) = 0
anim = 16000
id = 16000
pos = -floor(const(size.xscale)*89),-floor(const(size.yscale)*76)
postype = p1
facing = -1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 273, explod]
type = explod
trigger1 = animelemtime(2) = 0
anim = 10273
id = 10273
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[state 273, explod]
type = explod
trigger1 = animelemtime(9) = 0
anim = 10274
id = 10274
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[state 273, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = floor(const(size.xscale)*10)

[state 273, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*5)

[state 273, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
trigger2 = animelemtime(9) = 0
x = -floor(const(size.xscale)*5)

[state 273, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,2

[state 273, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 5,2

[state 273, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 9,5
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 273, hitdef]
type = hitdef
trigger1 = animelemtime(5) = 0
id = 273
attr = s,np
hitflag = mafp
guardflag = ma
affectteam = e
animtype = hard
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(35*fvar(1)*fvar(2)),2
getpower = ceil(24*fvar(3)),ceil(12*fvar(3))
givepower = 8,5
ground.hittime = 20
air.hittime = 20
guard.ctrltime = 20
ground.slidetime = 20
pausetime = 8,8
sparkno = s25003
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*50),-floor(const(size.yscale)*76)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -8
guard.velocity = -8
air.velocity = -1.5,-5
fall.recovertime = 20
envshake.time = 6
envshake.freq = 60
envshake.ampl = 5
guard.cornerpush.veloff = -10

[state 273, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 273
ignorehitpause = 1

[state 273, targetstate]
type = targetstate
trigger1 = numtarget(273) > 0
trigger1 = target(273),alive
trigger1 = movehit = 1
value = 5005+(target(273),statetype=a)*20
ignorehitpause = 1

[state 273, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■ホーリー・カデンツァ６
[statedef 276]
type = s
movetype= a
physics = s
ctrl = 0
anim = 276
poweradd = ceil(30*fvar(3))

[state 276, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = floor(const(size.xscale)*15)

[state 276, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*35)

[state 276, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*5)

[state 276, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = floor(const(size.xscale)*10)

[state 276, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
trigger2 = animelemtime(7) = 0
x = -floor(const(size.xscale)*10)

[state 276, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,6

[state 276, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 276
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
priority = 5,hit
sprpriority = 1
damage = floor(20*fvar(1)*fvar(2)),0
getpower = ceil(24*fvar(3)),ceil(12*fvar(3))
givepower = 8,5
ground.hittime = 20
air.hittime = 20
guard.ctrltime = 20
ground.slidetime = 20
pausetime = 8,8
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*70)
hitsound = s1,5
guardsound = s2,0
ground.velocity = -6
guard.velocity = -8
air.velocity = -1.5,-5
fall.recovertime = 20
guard.cornerpush.veloff = -11

[state 276, helper]
type = helper
trigger1 = animelemtime(4) = 0
helpertype = normal
name = "kicked gun"
stateno = 6050
id = 6050
pos = floor(const(size.xscale)*0),-floor(const(size.yscale)*40)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 276, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 276
ignorehitpause = 1

[state 276, targetstate]
type = targetstate
trigger1 = numtarget(276) > 0
trigger1 = target(276),alive
trigger1 = movehit = 1
value = 5005+(target(276),statetype=a)*20
ignorehitpause = 1

[state 276, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■ホーリー・カデンツァ７
[statedef 280]
type = s
movetype= a
physics = s
ctrl = 0
anim = 280
poweradd = ceil(30*fvar(3))

[state 280, explod]
type = explod
trigger1 = animelemtime(2) = 0
anim = 10280
id = 10280
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 280, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = 0
x = floor(const(size.xscale)*15)

[state 280, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*10)

[state 280, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = floor(const(size.xscale)*15)

[state 280, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = floor(const(size.xscale)*20)

[state 280, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
trigger2 = animelemtime(7) = 0
trigger3 = animelemtime(8) = 0
x = floor(const(size.xscale)*15)

[state 280, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,0

[state 280, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,1

[state 280, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(5) = 0
id = 280+(animelemtime(5)>=0)
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
priority = 5,hit
sprpriority = 1
damage = floor(15*fvar(1)*fvar(2)),0
getpower = ceil(74*fvar(3)),ceil(12*fvar(3))
givepower = 8,5
ground.hittime = 30;■22fが下限です。
air.hittime = 30
guard.ctrltime = 30
ground.slidetime = 30
pausetime = 8,8
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*70)
hitsound = s1,5
guardsound = s2,0
ground.velocity = -6
guard.velocity = -8
air.velocity = -1.5,-5
fall.recovertime = 20
guard.cornerpush.veloff = -12

[state 280, targetdrop]
type = targetdrop
trigger1 = animelemtime(5) < 0
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 280
ignorehitpause = 1

[state 280, targetdrop]
type = targetdrop
trigger1 = animelemtime(5) >= 0
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 281
ignorehitpause = 1

[state 280, targetstate]
type = targetstate
trigger1 = numtarget(280) > 0
trigger1 = target(280),alive
trigger1 = movehit = 1
value = 5005+(target(280),statetype=a)*20
ignorehitpause = 1

[state 280, targetstate]
type = targetstate
trigger1 = numtarget(281) > 0
trigger1 = target(281),alive
trigger1 = movehit = 1
value = 5005+(target(281),statetype=a)*20
ignorehitpause = 1

[state 280, changestate]
type = changestate
trigger1 = animtime = 0
value = 283
;===========================================================================
;■ホーリー・カデンツァ８・フィニッシュ
[statedef 283]
type = s
movetype= a
physics = s
ctrl = 0
anim = 283
poweradd = ceil(30*fvar(3))

[state 283, explod]
type = explod
trigger1 = animelemtime(2) = 0
anim = 16000
id = 16000
pos = floor(const(size.xscale)*83),-floor(const(size.yscale)*84)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 283, explod]
type = explod
trigger1 = animelemtime(3) = 0
anim = 10283
id = 10283
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[state 283, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*30),0
edge = floor(const(size.xscale)*35),0

[state 283, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = floor(const(size.xscale)*10)

[state 283, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*30)

[state 283, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*5)

[state 283, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = -floor(const(size.xscale)*5)

[state 283, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 5,2

[state 283, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 9,6
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 283, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 283
attr = s,np
hitflag = mafp
guardflag = ma
affectteam = e
animtype = back
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(60*fvar(1)*fvar(2)),4
getpower = ceil(236*fvar(3)),ceil(12*fvar(3))
givepower = 8,5
ground.hittime = 60
air.hittime = 60
guard.ctrltime = 17
ground.slidetime = 40
pausetime = 8,8
sparkno = s25003
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*50),-floor(const(size.yscale)*84)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -10,-5.5
guard.velocity = -8
air.velocity = -10,-5.5
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
guard.cornerpush.veloff = -13
numhits = 2

[state 283, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 283
ignorehitpause = 1

[state 283, targetstate]
type = targetstate
trigger1 = numtarget(283) > 0
trigger1 = target(283),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 283, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■しゃがみ小パンチ
[statedef 300]
type = c
movetype= a
physics = c
ctrl = 0
anim = 300
poweradd = ceil(10*fvar(3))

[state 300, explod]
type = explod
trigger1 = animelemtime(4) = 0
anim = 10300
id = 10300
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[state 300, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,0

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
getpower = ceil(12*fvar(3)),ceil(6*fvar(3))
givepower = 8,5
ground.hittime = 18
air.hittime = 15
guard.ctrltime = 15
ground.slidetime = 18
pausetime = 8,8
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*30)
hitsound = s1,0
guardsound = s2,0
ground.velocity = -3
guard.velocity = -2.4
air.velocity = -1.6,-3
fall.recovertime = 20
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
;■しゃがみ中パンチ
[statedef 310]
type = c
movetype= a
physics = c
poweradd= ceil(20*fvar(3))
ctrl = 0
anim = 310

[state 310, explod]
type = explod
trigger1 = animelemtime(4) = 0
anim = 10310
id = 10310
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[state 310, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,1

[state 310, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 310, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 0,1

[state 310, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 310
attr = c,na
hitflag = maf
guardflag = la
affectteam = e
animtype = medium
ground.type = low
priority = 3,hit
sprpriority = 1
damage = floor(20*fvar(1)*fvar(2)),0
getpower = ceil(24*fvar(3)),ceil(12*fvar(3))
givepower = 10,5
ground.hittime = 20
air.hittime = 20
guard.ctrltime = 17
ground.slidetime = 20
pausetime = 10,10
sparkno = s25001
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*40)
hitsound = s1,1
guardsound = s2,0
ground.velocity = -4
guard.velocity = -10
air.velocity = -1.7,-3
fall.recovertime = 25
guard.cornerpush.veloff = -8

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
;■しゃがみ大パンチ
[statedef 320]
type = c
movetype= a
physics = c
poweradd= ceil(40*fvar(3))
ctrl = 0
anim = 320

[state 320, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
trigger1 = random < 200
value = 9,2
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 320, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 3,5

[state 320, helper]
type = helper
trigger1 = animelemtime(3) = 0
helpertype = normal
name = "magical flower 320"
stateno = 20100
id = 20100
pos = floor(const(size.xscale)*55),-floor(const(size.yscale)*50)
postype = p1
facing = 1
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

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
damage = floor(35*fvar(1)*fvar(2)),0
getpower = ceil(36*fvar(3)),ceil(18*fvar(3))
givepower = 15,5
ground.hittime = 30
air.hittime = 120
guard.ctrltime = 10
ground.slidetime = 10
pausetime = 10,10
sparkno = s1
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*40)
hitsound = s-1,0
guardsound = s-1,0
ground.velocity = -1.2
guard.velocity = -1.5
air.velocity = -1.2,-5
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
;■しゃがみ小キック
[statedef 330]
type = c
movetype= a
physics = c
ctrl = 0
anim = 330
poweradd = ceil(10*fvar(3))

[state 330, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,0

[state 330, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 330
attr = c,na
hitflag = maf
guardflag = la
affectteam = e
animtype = light
ground.type = low
priority = 3,hit
sprpriority = 1
damage = floor(10*fvar(1)*fvar(2)),0
getpower = ceil(12*fvar(3)),ceil(6*fvar(3))
givepower = 8,5
ground.hittime = 12
air.hittime = 12
guard.ctrltime = 12
ground.slidetime = 12
pausetime = 8,8
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*3)
hitsound = s1,3
guardsound = s2,0
ground.velocity = -3
guard.velocity = -3
air.velocity = -1.6,-3
fall.recovertime = 20
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
;■しゃがみ中キック
[statedef 340]
type = c
movetype= a
physics = c
poweradd= ceil(20*fvar(3))
ctrl = 0
anim = 340

[state 340, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*15)

[state 340, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*5)

[state 340, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = -floor(const(size.xscale)*5)

[state 340, velset]
type = velset
trigger1 = animelemtime(2) = 0
x = 1

[state 340, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,1

[state 340, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 340
attr = c,na
hitflag = maf
guardflag = la
affectteam = e
animtype = medium
ground.type = high
priority = 3,hit
sprpriority = 1
damage = floor(23*fvar(1)*fvar(2)),0
getpower = ceil(24*fvar(3)),ceil(12*fvar(3))
givepower = 10,5
ground.hittime = 21
air.hittime = 17
guard.ctrltime = 15
ground.slidetime = 15
pausetime = 10,10
sparkno = s25001
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*10)
hitsound = s1,4
guardsound = s2,0
ground.velocity = -6.5
guard.velocity = -10
air.velocity = -7,-4
fall.recovertime = 25
guard.cornerpush.veloff = -12

[state 340, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 340
ignorehitpause = 1

[state 340, targetstate]
type = targetstate
trigger1 = numtarget(340) > 0
trigger1 = target(340),statetype = a
trigger1 = target(340),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 340, changestate]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1
;===========================================================================
;■しゃがみ大キック
[statedef 350]
type = c
movetype= a
physics = c
poweradd= ceil(40*fvar(3))
ctrl = 0
anim = 350

[state 350, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*10),0

[state 350, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = 0
x = floor(const(size.xscale)*5)

[state 350, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*15)

[state 350, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = -floor(const(size.xscale)*5)

[state 350, velset]
type = velset
trigger1 = animelemtime(2) = 0
x = 2

[state 350, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,2

[state 350, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 350
attr = c,na
hitflag = mafd
guardflag = la
affectteam = e
animtype = back
ground.type = low
priority = 4,hit
sprpriority = 1
damage = floor(40*fvar(1)*fvar(2)),0
getpower = ceil(36*fvar(3)),ceil(18*fvar(3))
givepower = 25,5
ground.hittime = 24
air.hittime = 90
guard.ctrltime = 8
ground.slidetime = 12
pausetime = 12,12
sparkno = s25002
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*5)
hitsound = s1,5
guardsound = s2,0
ground.velocity = -4,-3.5
guard.velocity = -3.2
air.velocity = -2.2,0;-4;こちらが優先される？
down.velocity = 0,0
guard.cornerpush.veloff = -20
fall = 1
fall.recover = 0
fall.recovertime = 900

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
;■ジャンプ小パンチ
[statedef 400]
type = a
movetype= a
physics = a
poweradd= ceil(10*fvar(3))
ctrl = 0
anim = 400

[state 400, explod]
type = explod
trigger1 = animelemtime(3) = 3
anim = 10400
id = 10400
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[state 400, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 0,0

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
damage = floor(10*fvar(1)*fvar(2)),0
getpower = ceil(12*fvar(3)),ceil(6*fvar(3))
givepower = 8,5
ground.hittime = 16-15*(var(13)=2)
air.hittime = 16
guard.ctrltime = 13
ground.slidetime = 13
pausetime = 10,10
sparkno = s25000
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*40)
hitsound = s1,0
guardsound = s2,0
ground.velocity = -2,0
guard.velocity = -2
air.velocity = -1,-4
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
;■ジャンプ中パンチ
[statedef 410]
type = a
movetype= a
physics = a
poweradd= ceil(20*fvar(3))
ctrl = 0
anim = 410

[state 410, explod]
type = explod
trigger1 = animelemtime(4) = 7
anim = 10410
id = 10410
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[state 410, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,1

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
trigger1 = animelemtime(3) = 0
value = 0,1

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
damage = floor(20*fvar(1)*fvar(2)),0
getpower = ceil(24*fvar(3)),ceil(12*fvar(3))
givepower = 10,5
ground.hittime = 20-19*(var(13)=2)
air.hittime = 26
guard.ctrltime = 14
ground.slidetime = 14
pausetime = 10,10
sparkno = s25001
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*70)
hitsound = s1,1
guardsound = s2,0
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
;■ジャンプ中パンチ２
[statedef 415]
type = a
movetype= a
physics = a
poweradd= ceil(20*fvar(3))
ctrl = 0
anim = 415

[state 415, posfreeze]
type = posfreeze
trigger1 = animelemtime(4) < 0

[state 417, velset]
type = velset
trigger1 = animelemtime(4) = 0
y = -2

[state 415, explod]
type = explod
trigger1 = animelemtime(4) = 0
anim = 16100
id = 16100
pos = floor(const(size.xscale)*75),-floor(const(size.yscale)*48)
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 415, attackdist]
type = attackdist
trigger1 = animelemtime(4) >= 0
value = 400

[state 415, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,2

[state 415, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 5,1

[state 415, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 415
attr = s,np
hitflag = mafp
guardflag = ma
affectteam = e
animtype = back
ground.type = high
priority = 5,hit
sprpriority = 1
damage = floor(35*fvar(1)*fvar(2)),2
getpower = ceil(64*fvar(3)),ceil(32*fvar(3))
givepower = 8,5
ground.hittime = 60
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 40
pausetime = 8,8
sparkno = s25005
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*0),floor(const(size.yscale)*20)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -5,-4.5
guard.velocity = -7
air.velocity = -5,-3.5
fall = 1
fall.recovertime = 60
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
guard.cornerpush.veloff = -8

[state 415, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 415
ignorehitpause = 1

[state 415, targetstate]
type = targetstate
trigger1 = numtarget(415) > 0
trigger1 = target(415),statetype = a
trigger1 = target(415),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 415, explod]
type = explod
trigger1 = animtime = 0
anim = 10415
id = 10415
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[state 415, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(var(9)=1,63,50)
ctrl = 1
;===========================================================================
;■ジャンプ中パンチ３
[statedef 417]
type = a
movetype= a
physics = a
poweradd= ceil(30*fvar(3))
ctrl = 0
anim = 417

[state 417, posfreeze]
type = posfreeze
trigger1 = animelemtime(3) < 0

[state 417, velset]
type = velset
trigger1 = animelemtime(3) = 0
x = -2
y = -5.5

[state 417, veladd]
type = veladd
trigger1 = animelemtime(3) > 0
y = fvar(10)

[state 415, explod]
type = explod
trigger1 = animelemtime(1) = 0
anim = 10415
id = 10415
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[state 417, explod]
type = explod
trigger1 = animelemtime(3) = 0
anim = 16100
id = 16100
pos = floor(const(size.xscale)*41),-floor(const(size.yscale)*59)
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 417, attackdist]
type = attackdist
trigger1 = animelemtime(3) >= 0
value = 400

[state 417, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,2

[state 417, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 5,1

[state 417, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 417
attr = s,np
hitflag = mafp
guardflag = ma
affectteam = e
animtype = back
ground.type = high
priority = 5,hit
sprpriority = 1
damage = floor(35*fvar(1)*fvar(2)),2
getpower = ceil(64*fvar(3)),ceil(32*fvar(3))
givepower = 8,5
ground.hittime = 60
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 40
pausetime = 8,8
sparkno = s25005
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*0),floor(const(size.yscale)*20)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -5,-4.5
guard.velocity = -7
air.velocity = -5,-3.5
fall = 1
fall.recovertime = 60
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
guard.cornerpush.veloff = -8


[state 417, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 417
ignorehitpause = 1

[state 417, targetstate]
type = targetstate
trigger1 = numtarget(417) > 0
trigger1 = target(417),statetype = a
trigger1 = target(417),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 417, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(var(9)=1,63,50)
ctrl = 1
;===========================================================================
;■ジャンプ大パンチ
[statedef 420]
type = a
movetype= a
physics = a
poweradd= ceil(40*fvar(3))
ctrl = 0
anim = 420

[state 420, explod]
type = explod
trigger1 = animelemtime(4) = 15
anim = 10420
id = 10420
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[state 420, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 2,3

[state 420, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 9,var(5)
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)
persistent = 0
ignorehitpause = 1

[state 420, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,2

[state 420, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 420
attr = a,na
hitflag = mafd
guardflag = ha
affectteam = e
animtype = back
ground.type = low
priority = 4,hit
sprpriority = 1
damage = floor(45*fvar(1)*fvar(2)),0
getpower = ceil(36*fvar(3)),ceil(12*fvar(3))
givepower = 25,5
ground.hittime = 20-19*(var(13)=2)
air.hittime = 90
guard.ctrltime = 20
ground.slidetime = 20
pausetime = 12,12
sparkno = s25002
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*60)
hitsound = s1,2
guardsound = s2,0
ground.velocity = -4,0
guard.velocity = -3.2
air.velocity = -2.2,30
down.velocity = 0,0
guard.cornerpush.veloff = -24
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
fall.damage = floor(5*fvar(1)*fvar(2))
fall.envshake.time = 16
fall.envshake.freq = 70
fall.envshake.ampl = 5
air.fall = 1
fall.recover = 0
fall.recovertime = 900

[state 420, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 420
ignorehitpause = 1

[state 420, targetdrop]
type = targetdrop
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

[state 420, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(var(9)=1,63,50)
ctrl = 1
;===========================================================================
;■ジャンプ小キック
[statedef 430]
type = a
movetype= a
physics = a
poweradd= ceil(10*fvar(3))
ctrl = 0
anim = 430

[state 430, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 0,0

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
damage = floor(10*fvar(1)*fvar(2)),0
getpower = ceil(12*fvar(3)),ceil(6*fvar(3))
givepower = 9,5
ground.hittime = 16-15*(var(13)=2)
air.hittime = 19
guard.ctrltime = 13
ground.slidetime = 13
pausetime = 10,10
sparkno = s25000
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*55)
hitsound = s1,3
guardsound = s2,0
ground.velocity = -2.3,0
guard.velocity = -2
air.velocity = -1.6,-3.5
guard.cornerpush.veloff = -10
air.fall = 1
fall.recovertime = 20

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
;■ジャンプ中キック
[statedef 440]
type = a
movetype= a
physics = a
poweradd= ceil(20*fvar(3))
ctrl = 0
anim = 440

[state 440, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,1

[state 440, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 440
attr = a,na
hitflag = maf
guardflag = ha
affectteam = e
animtype = medium
ground.type = high
priority = 4,hit
sprpriority = 1
damage = floor(24*fvar(1)*fvar(2)),0
getpower = ceil(24*fvar(3)),ceil(12*fvar(3))
givepower = 12,5
ground.hittime = 20-19*(var(13)=2)
air.hittime = 26
guard.ctrltime = 16
ground.slidetime = 16
pausetime = 10,10
sparkno = s25001
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*77)
hitsound = s1,4
guardsound = s2,0
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
;■ジャンプ大キック
[statedef 450]
type = a
movetype= a
physics = a
poweradd= ceil(70*fvar(3))
ctrl = 0
anim = 450

[state 450, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,6

[state 450, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 450
attr = a,na
hitflag = maf
guardflag = ha
affectteam = e
animtype = back
ground.type = low
priority = 4,hit
sprpriority = 1
damage = floor(45*fvar(1)*fvar(2)),0
getpower = ceil(36*fvar(3)),ceil(12*fvar(3))
givepower = 25,5
ground.hittime = 24
air.hittime = 90
guard.ctrltime = 24
ground.slidetime = 24
pausetime = 12,12
sparkno = s25002
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*50)
hitsound = s1,5
guardsound = s2,0
ground.velocity = -7.0,-1.5
guard.velocity = -3.2
air.velocity = -6,30
guard.cornerpush.veloff = -24
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
fall = 1
fall.xvelocity = -2
fall.damage = floor(5*fvar(1)*fvar(2))
fall.envshake.time = 16
fall.envshake.freq = 70
fall.envshake.ampl = 5
fall.recover = 0
fall.recovertime = 900

[state 450, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 450
ignorehitpause = 1

[state 450, targetstate]
type = targetstate
trigger1 = numtarget(450) > 0
trigger1 = target(450),statetype = a
trigger1 = target(450),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 450, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(var(9)=1,63,50)
ctrl = 1
;===========================================================================
;†††grab actions†††
;===========================================================================
;■びんた／ティロ・フィナーレ(物理)
[statedef 500]
type = s
movetype= a
physics = s
velset = 0,0
ctrl = 0
anim = 500

[state 500, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "holdfwd"
trigger2 = var(50) != 0
trigger2 = random <= 499
var(6) = 1

[state 500, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "holdback"
trigger2 = var(50) != 0
trigger2 = random > 500
var(6) = 2

[state 500, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "recovery"
trigger2 = var(50) != 0			;▼AI
trigger3 = var(50) != 0			;▼AI
trigger3 = var(37) = 2
trigger3 = random < 700
var(5) = 0

[state 500, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "lol"
trigger2 = var(50) != 0			;▼AI
trigger2 = var(37) = 2
trigger2 = random >= 700
var(5) = 1

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
p1facing = ifelse(var(6)=1,1,-1)
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
var(5) = 0

[state 500, varset]
type = varset
trigger1 = animtime = 0
var(6) = 0

[state 500, varadd];▼AI
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
type = s
movetype= a
physics = s
anim = 501
poweradd = ceil(100*fvar(3))

[state 501, width]
type = width
trigger1 = animelemtime(1) = 0 
edge = floor(const(size.xscale)*35),0

[state 501, targetbind]
type = targetbind
trigger1 = animelemtime(3) <= 0
pos = floor(const(size.xscale)*35),0

[state 501, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 8
value = 9,20+var(5)*881
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 501, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 10
value = 0,2

[state 501, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 501
attr = a,na
hitflag = mafd
guardflag = m
affectteam = e
animtype = back
ground.type = low
priority = 4,hit
sprpriority = 1
damage = floor(70*fvar(1)*fvar(2)),0
getpower = ceil(50*fvar(3)),ceil(25*fvar(3))
givepower = 10,5
ground.hittime = 35
air.hittime = 35
guard.ctrltime = 20
ground.slidetime = 35
pausetime = 10,10
sparkno = s25001
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*30),-floor(const(size.yscale)*84)
hitsound = s1,7
guardsound = s2,0
ground.velocity = -4,-4
guard.velocity = -3.3
air.velocity = -2.4,-4
down.velocity = -1,0
guard.cornerpush.veloff = -24
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
fall = 1
air.fall = 1
fall.damage = 0
fall.envshake.time = 8
fall.envshake.freq = 35
fall.envshake.ampl = 5
fall.recover = 0
fall.recovertime = 900

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
value = 5025
ignorehitpause = 1

[state 501, varset]
type = varset
trigger1 = animelemtime(2) > 8
var(5) = 0

[state 501, varset]
type = varset
trigger1 = animelemtime(2) > 8
var(6) = 0

[state 501, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[statedef 505]
type = s
movetype= h
physics = n
velset = 0,0

[state 505, destroyself]
type = destroyself
trigger1 = ishelper

[state 505, nothitby]
type = nothitby
trigger1 = time < 20
value = sca,aa
ignorehitpause = 1

[state 505, changeanim2]
type = changeanim2
trigger1 = time = 0
value = 505

[state 505, posset]
type = posset
trigger1 = time < 20
y = -87
ignorehitpause = 1

[state 505, screenbound]
type = screenbound
trigger1 = time < 20
value = 1
movecamera = 1,0

[state 505, assertspecial]
type = assertspecial
trigger1 = time = 20
flag = invisible
ignorehitpause = 1

[state 505, posset]
type = posset
trigger1 = time >= 20
trigger1 = const(size.head.pos.y) > -60
y = -40
ignorehitpause = 1

[state 505, posset]
type = posset
trigger1 = time >= 20
trigger1 = const(size.head.pos.y) <= -60
y = 0
ignorehitpause = 1

[state 505, selfstate]
type = selfstate
trigger1 = time >= 100
value = 5110
;===========================================================================
;■グランディーネ
[statedef 550]
type = a
movetype= a
physics = a
ctrl = 0
anim = 550

[state 550, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command="holdfwd"
var(6) = 1

[state 550, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = time = 0
var(7) = 1

[state 550, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
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
p1facing = ifelse(var(6)=1,1,-1)
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

[state 550, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = animtime = 0
var(6) = 0

[state 550, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = animtime = 0
var(7) = 0

[state 550, varadd];▼AI
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
type = a
movetype= a
physics = a
anim = 551
poweradd = ceil(150*fvar(3))

[state 551, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = time = 1
var(6) = 0

[state 551, width]
type = width
trigger1 = animelemtime(1) = 0 
edge = floor(const(size.xscale)*60),0

[state 551, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 9,0
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 551, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,2

[state 551, posfreeze]
type = posfreeze
trigger1 = animelemtime(5) < 0

[state 551, velset]
type = velset
trigger1 = animelemtime(5) = 0
x = 5
y = -5.5

[state 551, targetbind]
type = targetbind
trigger1 = animelemtime(5) < 0
pos = 35,-60

[state 551, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 551
attr = a,na
hitflag = mafd
guardflag = !
affectteam = e
animtype = back
ground.type = low
priority = 4,hit
sprpriority = 1
damage = floor(120*fvar(1)*fvar(2)),0
getpower = ceil(30*fvar(3)),ceil(15*fvar(3))
givepower = 10,5
ground.hittime = 30
air.hittime = 30
guard.ctrltime = 20
ground.slidetime = 10
pausetime = 5,5
sparkno = s25002
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*35),-floor(const(size.yscale)*60)
hitsound = s1,5
guardsound = s2,0
ground.velocity = -3,70
guard.velocity = 0
air.velocity = -3,70
down.velocity = 0,0
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
fall = 1
air.fall = 1
fall.damage = floor(10*fvar(1)*fvar(2))
fall.envshake.time = 8
fall.envshake.freq = 35
fall.envshake.ampl = 5
fall.recover = 0
fall.recovertime = 900

[state 551, helper]
type = helper
trigger1 = animelemtime(8) = 0
helpertype = normal
name = "muskets l"
id = 21200
stateno = 21200
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 551, helper]
type = helper
trigger1 = animelemtime(8) = 0
helpertype = normal
name = "muskets r"
id = 21210
stateno = 21210
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 551, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = animelemtime(14) = 0
var(7) = 0
;---------------------------------------------------------------------------
[statedef 555]
type = a
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

[state 555, gravity]
type = gravity
trigger1 = 1

[state 555, changestate]
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 1

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

