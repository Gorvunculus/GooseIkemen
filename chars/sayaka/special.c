;===========================================================================
;������specials������
;===========================================================================
;�������̃I���g���I�P
[statedef 1000]
type = s
movetype = a
physics = s
anim = 1000
poweradd = ceil(160*fvar(3))
ctrl = 0

[state -, varadd];�����̃I���g���I�A�̋�
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 5
persistent = 0

[state 1000, nothitby];��
type = nothitby
trigger1 = fvar(25) = 1.0
trigger1 = time = 1
value = sca,aa
time = 21
ignorehitpause = 1

[state 1000, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = -floor(const(size.xscale)*10)

[state 1000, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -floor(const(size.xscale)*30)

[state 1000, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = -floor(const(size.xscale)*20)

[state 1000, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = floor(const(size.xscale)*10)

[state 1000, posadd]
type = posadd
trigger1 = animelemtime(7) = 0
x = floor(const(size.xscale)*40)

[state 1000, changestate]
type = changestate
trigger1 = animtime = 0
value = 1010
;---------------------------------------------------------------------------
[statedef 1010]
type    = a
movetype= a
physics = n
anim = 1010

[state 1010, varset]
type = varset
trigger1 = 1
var(24) = 1

[state 1010, nothitby]
type = nothitby
trigger1 = 1
value2 = ,np,sp
ignorehitpause = 1

[state 1010, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 1010, posadd]
type = posadd
trigger1 = time = 0
y = -floor(const(size.yscale)*45)

[state 1010, velset]
type = velset
trigger1 = time = 0
x = 70

[state 1010, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 1010, hitdef]
type = hitdef
trigger1 = time = 0
id = 1010
attr = a,sp
hitflag = maf
guardflag = m
affectteam = e
animtype = up
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(85*fvar(1)*fvar(2)),10
getpower = ceil(100*fvar(3)),ceil(25*fvar(3))
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 24+(prevstateno=1130)*8
ground.slidetime = 20
pausetime = 0,0
sparkno = -1
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,0
guardsound = s2,1
ground.velocity = -7,-5.5
guard.velocity = -4
air.velocity = -7,-5.5
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 32
envshake.freq = 60
envshake.ampl = 5
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
yaccel = 0.35

[state 1010, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 1010
ignorehitpause = 1

[state 1010, targetstate]
type = targetstate
trigger1 = numtarget(1010) > 0
trigger1 = target(1010),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 1010, helper]
type = helper
trigger1 = movehit = 1
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1010, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(1010) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1010, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "blue wave"
stateno = 11010
id = 11010
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1010, changestate]
type = changestate
trigger1 = time >= 10
value = 1090
;---------------------------------------------------------------------------
;�������̃I���g���I�Q
[statedef 1030]
type = s
movetype = a
physics = s
anim = 1030
poweradd = ceil(160*fvar(3))
ctrl = 0

[state -, varadd];�����̃I���g���I�A�̋�
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 5
persistent = 0

[state 1030, nothitby];��
type = nothitby
trigger1 = fvar(25) = 1.0
trigger1 = time = 1
value = sca,aa
time = 21
ignorehitpause = 1

[state 1030, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = -floor(const(size.xscale)*10)

[state 1030, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -floor(const(size.xscale)*30)

[state 1030, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = -floor(const(size.xscale)*20)

[state 1030, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = floor(const(size.xscale)*10)

[state 1030, posadd]
type = posadd
trigger1 = animelemtime(7) = 0
x = floor(const(size.xscale)*40)

[state 1030, changestate]
type = changestate
trigger1 = animtime = 0
value = 1040
;---------------------------------------------------------------------------
[statedef 1040]
type    = a
movetype= a
physics = n
anim = 1040

[state 1040, varset]
type = varset
trigger1 = 1
var(24) = 1

[state 1040, nothitby]
type = nothitby
trigger1 = 1
value2 = ,np,sp
ignorehitpause = 1

[state 1040, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 1040, posadd]
type = posadd
trigger1 = time = 0
y = -floor(const(size.yscale)*45)

[state 1040, velset]
type = velset
trigger1 = time = 0
x = 25
y = -25

[state 1040, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 1040, hitdef]
type = hitdef
trigger1 = time = 0
id = 1040
attr = a,sp
hitflag = maf
guardflag = m
affectteam = e
animtype = up
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(85*fvar(1)*fvar(2)),10
getpower = ceil(100*fvar(3)),ceil(25*fvar(3))
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 24
ground.slidetime = 20
pausetime = 0,0
sparkno = -1
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,0
guardsound = s2,1
ground.velocity = -7,-8
guard.velocity = -4
air.velocity = -7,-7
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 32
envshake.freq = 60
envshake.ampl = 5
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
yaccel = 0.35

[state 1040, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 1040
ignorehitpause = 1

[state 1040, targetstate]
type = targetstate
trigger1 = numtarget(1040) > 0
trigger1 = target(1040),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 1040, helper]
type = helper
trigger1 = movehit = 1
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1040, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(1040) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1040, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "blue wave"
stateno = 11040
id = 11040
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1040, changestate]
type = changestate
trigger1 = time >= 6
value = 1091
;===========================================================================
;�������̃I���g���I�R
[statedef 1060]
type = s
movetype = a
physics = s
anim = 1060
poweradd = ceil(160*fvar(3))
ctrl = 0

[state -, varadd];�����̃I���g���I�A�̋�
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 5
persistent = 0

[state 1060, nothitby];��
type = nothitby
trigger1 = fvar(25) = 1.0
trigger1 = time = 1
value = sca,aa
time = 21
ignorehitpause = 1

[state 1060, turn]
type = turn
trigger1 = time = 0

[state 1060, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = -floor(const(size.xscale)*10)

[state 1060, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -floor(const(size.xscale)*30)

[state 1060, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = -floor(const(size.xscale)*20)

[state 1060, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = floor(const(size.xscale)*10)

[state 1060, posadd]
type = posadd
trigger1 = animelemtime(7) = 0
x = floor(const(size.xscale)*40)

[state 1060, changestate]
type = changestate
trigger1 = animtime = 0
value = 1070
;---------------------------------------------------------------------------
[statedef 1070]
type    = a
movetype= a
physics = n
anim = 1010

[state 1070, varset]
type = varset
trigger1 = 1
var(24) = 1

[state 1070, nothitby]
type = nothitby
trigger1 = 1
value2 = ,np,sp
ignorehitpause = 1

[state 1070, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 1070, screenbound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[state 1070, posadd]
type = posadd
trigger1 = frontedgedist < 0
x = -360

[state 1070, posadd]
type = posadd
trigger1 = time = 0
y = -floor(const(size.yscale)*45)

[state 1070, velset]
type = velset
trigger1 = time = 0
x = 25

[state 1070, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 1070, hitdef]
type = hitdef
trigger1 = time = 0
id = 1070
attr = a,sp
hitflag = maf
guardflag = m
affectteam = e
animtype = up
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(85*fvar(1)*fvar(2)),10
getpower = ceil(100*fvar(3)),ceil(25*fvar(3))
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 24
ground.slidetime = 20
pausetime = 0,0
sparkno = -1
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,0
guardsound = s2,1
ground.velocity = -10,-4.5
guard.velocity = -4
air.velocity = -10,-4
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 32
envshake.freq = 60
envshake.ampl = 5
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
yaccel = 0.35

[state 1070, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 1070
ignorehitpause = 1

[state 1070, targetstate]
type = targetstate
trigger1 = numtarget(1070) > 0
trigger1 = target(1070),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 1070, helper]
type = helper
trigger1 = movehit = 1
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1070, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(1070) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1070, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "blue wave"
stateno = 11010
id = 11010
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1070, changestate]
type = changestate
trigger1 = time >= 10
value = 1090
;---------------------------------------------------------------------------
[statedef 1090]
type    = a
movetype= i
physics = n
anim = 1090

[state 1090, veladd]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 1090, changestate]
type = changestate
trigger1 = pos y >= 0
value = 1095+(prevstateno=1110)
;---------------------------------------------------------------------------
[statedef 1091]
type    = a
movetype= i
physics = n
anim = 1090

[state 1091, veladd]
type = veladd
trigger1 = 1
y = const(movement.yaccel)+0.9

[state 1091, changestate]
type = changestate
trigger1 = pos y >= 0
value = 1095
;---------------------------------------------------------------------------
[statedef 1095]
type    = c
movetype= i
physics = c
anim = 1095

[state 1095, velset]
type = velset
trigger1 = 1
y = 0

[state 1095, posset]
type = posset
trigger1 = 1
y = 0

[state 1095, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[statedef 1096]
type    = c
movetype= i
physics = c
anim = 1096

[state 1096, velset]
type = velset
trigger1 = 1
y = 0

[state 1096, posset]
type = posset
trigger1 = 1
y = 0

[state 1096, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;�������̃I���g���I�E�󒆂P
[statedef 1100]
type = a
movetype = a
physics = n
anim = 1100
poweradd = ceil(160*fvar(3))
ctrl = 0
velset = 0,0

[state -, varadd];�����̃I���g���I�A�̋�
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 5
persistent = 0

[state 1100, nothitby];��
type = nothitby
trigger1 = fvar(25) = 1.0
trigger1 = time = 1
value = sca,aa
time = 21
ignorehitpause = 1

[state 1100, posfreeze]
type = posfreeze
trigger1 = 1

[state 1100, changestate]
type = changestate
trigger1 = pos y >= 0
value = 52

[state 1100, changestate]
type = changestate
trigger1 = animtime = 0
value = 1110
;---------------------------------------------------------------------------
[statedef 1110]
type    = a
movetype= a
physics = n
anim = 1110

[state 1110, varset]
type = varset
trigger1 = 1
var(24) = 1

[state 1110, nothitby]
type = nothitby
trigger1 = 1
value2 = ,np,sp
ignorehitpause = 1

[state 1110, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 1110, posadd]
type = posadd
trigger1 = time = 0
y = -floor(const(size.yscale)*45)

[state 1110, velset]
type = velset
trigger1 = time = 0
x = 25
y = 25

[state 1110, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 1110, hitdef]
type = hitdef
trigger1 = time = 0
trigger1 = var(29) < 4
id = 1110
attr = a,sp
hitflag = maf
guardflag = m
affectteam = e
animtype = up
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(85*fvar(1)*fvar(2)),10
getpower = ceil(100*fvar(3)),ceil(25*fvar(3))
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 12
ground.slidetime = 20
pausetime = 0,0
sparkno = -1
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,0
guardsound = s2,1
ground.velocity = -10,-3.5;-10,-3
guard.velocity = -4
air.velocity = -10,-3.2;-10,-2
fall = 1
fall.recovertime = 25
envshake.time = 32
envshake.freq = 60
envshake.ampl = 5
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2

[state 1110, targetstate]
type = targetstate
trigger1 = numtarget(1110) > 0
trigger1 = target(1110),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 1110, helper]
type = helper
trigger1 = movehit = 1
helpertype = normal
name = "kirakira"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1110, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(1110) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "kirakira"
id = 20001
stateno = 20001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1110, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "blue wave"
stateno = 11110
id = 11110
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1110, changestate]
type = changestate
trigger1 = pos y >= -40
value = 1090
;===========================================================================
;�������̃I���g���I�E�󒆂Q
[statedef 1130]
type = a
movetype = a
physics = n
anim = 1130
poweradd = ceil(160*fvar(3))
ctrl = 0
velset = 0,0

[state -, varadd];�����̃I���g���I�A�̋�
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 5
persistent = 0

[state 1130, nothitby];��
type = nothitby
trigger1 = fvar(25) = 1.0
trigger1 = time = 1
value = sca,aa
time = 21
ignorehitpause = 1

[state 1130, posfreeze]
type = posfreeze
trigger1 = 1

[state 1130, changestate]
type = changestate
trigger1 = pos y >= 0
value = 52

[state 1130, changestate]
type = changestate
trigger1 = animtime = 0
value = 1010
;===========================================================================
;�������̃I���g���I�E�󒆂R
[statedef 1160]
type = a
movetype = a
physics = n
anim = 1160
poweradd = ceil(160*fvar(3))
ctrl = 0
velset = 0,0

[state -, varadd];�����̃I���g���I�A�̋�
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 5
persistent = 0

[state 1160, nothitby];��
type = nothitby
trigger1 = fvar(25) = 1.0
trigger1 = time = 1
value = sca,aa
time = 21
ignorehitpause = 1

[state 1160, posfreeze]
type = posfreeze
trigger1 = 1

[state 1160, changestate]
type = changestate
trigger1 = pos y >= 0
value = 52

[state 1160, changestate]
type = changestate
trigger1 = animtime = 0
value = 1040
;===========================================================================
;���e�x��X�P���c�H�P
[statedef 1200]
type = s
movetype = a
physics = s
anim = 1200
poweradd = ceil(90*fvar(3))
ctrl = 0

[state -, varadd];���e�x��X�P���c�H�A�̋�
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 1
persistent = 0

[state 1200, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 9,6
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 1200, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = time = 0
var(7) = 0

[state 1200, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "scherzo2"
var(7) = 2

[state 1200, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "scherzo3"
var(7) = 3

[state 1200 helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "bind 1200"
stateno = 10000
id = 11200
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1200, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 3,1

[state 1200, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,4

[state 1200, helper]
type = helper
trigger1 = animelemtime(3) = 0
helpertype = normal
name = "magical sword x"
stateno = 6000
id = 6000
pos = floor(const(size.xscale)*42),-floor(const(size.yscale)*35)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1200, changestate]
type = changestate
trigger1 = var(7) = 2
trigger1 = animelemtime(5) >= 0
value = 1210

[state 1200, changestate]
type = changestate
trigger1 = var(7) = 3
trigger1 = animelemtime(5) >= 0
value = 1220

[state 1200, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;���e�x��X�P���c�H�Q
[statedef 1210]
type = s
movetype = a
physics = s
anim = 1210+(prevstateno=1200)
poweradd = ceil(90*fvar(3))
ctrl = 0

[state -, varadd];���e�x��X�P���c�H�A�̋�
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 1
persistent = 0

[state 1210, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 9,7
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 1210, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = time = 0
var(7) = 0

[state 1210, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "scherzo3"
var(7) = 3

[state 1210 helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "bind 1210"
stateno = 10000
id = 11210
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1210, playsnd]
type = playsnd
trigger1 = animelemtime(6) = 0
value = 3,1

[state 1210, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,4

[state 1210, helper]
type = helper
trigger1 = animelemtime(4) = 0
helpertype = normal
name = "magical sword y"
stateno = 6000
id = 6000
pos = floor(const(size.xscale)*55),-floor(const(size.yscale)*44)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1210, changestate]
type = changestate
trigger1 = var(7) = 3
trigger1 = animelemtime(6) >= 0
value = 1220

[state 1210, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;���e�x��X�P���c�H�R
[statedef 1220]
type = s
movetype = a
physics = s
anim = 1220+(prevstateno=[1200,1210])
poweradd = ceil(90*fvar(3))
ctrl = 0

[state -, varadd];���e�x��X�P���c�H�A�̋�
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 2
persistent = 0

[state 1220, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 9,8
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 1220 helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "bind 1220"
stateno = 10000
id = 11220
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1220, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(7) = 0
value = 3,1

[state 1220, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(4) = 2
value = 0,4

[state 1220, helper]
type = helper
trigger1 = animelemtime(4) = 0
helpertype = normal
name = "magical sword z1"
stateno = 6000
id = 6000
pos = floor(const(size.xscale)*37),-floor(const(size.yscale)*26)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1220, helper]
type = helper
trigger1 = animelemtime(4) = 0
helpertype = normal
name = "magical sword z2"
stateno = 6000
id = 6000
pos = floor(const(size.xscale)*57),-floor(const(size.yscale)*48)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1220, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;���ؘR����̃A���A
[statedef 1500]
type = s
movetype = i
physics = s
anim = 1500
ctrl = 0

[state -, varadd];���ؘR����̃A���A�A�̋�
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 3
persistent = 0

[state 1500, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 3,2

[state 1500, palfx]
type = palfx
triggerall = numhelper(15000) = 0
trigger1 = animelemtime(5) = 0
time = 120
add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
sinadd = -var(21)+(var(40)=1)*var(21)*2,-var(22)+(var(40)=1)*var(22)*2,-var(23)+(var(40)=1)*var(23)*2,480

[state 1500, helper]
type = helper
trigger1 = animelemtime(5) = 0
helpertype = normal
name = "magic circle 0.5"
stateno = 21500
id = 21500
pos = -floor(const(size.xscale)*15),-floor(const(size.yscale)*60)
postype = p1
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.5*const(size.xscale)
size.yscale = 0.5*const(size.yscale)

[state 1500, helper]
type = helper
trigger1 = animelemtime(5) = 12
helpertype = normal
name = "magic circle 0.38"
stateno = 21501
id = 21501
pos = -floor(const(size.xscale)*15),-floor(const(size.yscale)*60)
postype = p1
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.38*const(size.xscale)
size.yscale = 0.38*const(size.yscale)

[state 1500, helper]
type = helper
trigger1 = animelemtime(5) = 24
helpertype = normal
name = "magic circle 0.28"
stateno = 21500
id = 21500
pos = -floor(const(size.xscale)*15),-floor(const(size.yscale)*60)
postype = p1
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.28*const(size.xscale)
size.yscale = 0.28*const(size.yscale)

[state 1500, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;���K�[�h�L�����Z��
[statedef 2000]
type    = u
movetype= a
physics = u
ctrl    = 0
anim    = 120+(statetype=c)
poweradd= -1000

[state -, varadd];�K�[�h�L�����Z���A�̋�
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 5
persistent = 0

[state 2000, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 2000, bgpalfx]
type = bgpalfx
triggerall = numhelper(15000) = 0
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
anim = 2000
ctrl = 0

[state 2010, nothitby]
type = nothitby
trigger1 = animelemtime(5) < 0
value = sca,aa
ignorehitpause = 1

[state 2010, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
trigger1 = var(11) != [100,300]
value = 9,10+(random<500)
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 2010, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
trigger1 = var(11) = [100,300]
value = 9,20+(random<500)
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 2010, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,5

[state 2010, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*30),0

[state 2010, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*40)

[state 2010, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*20)

[state 2010, posadd]
type = posadd
trigger1 = animelemtime(7) = 0
x = -floor(const(size.xscale)*20)

[state 2010, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = -floor(const(size.xscale)*30)

[state 2010, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 2010
attr = s,sa
hitflag = mafd
guardflag = ma
affectteam = e
animtype  = back
ground.type = high
priority = 4,hit
sprpriority = 1
damage = floor(30*fvar(1)*fvar(2)),10
getpower = 0,0
givepower = 50,15
ground.hittime  = 24
air.hittime = 90
guard.ctrltime = 8
ground.slidetime = 12
pausetime = 12,12
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*43)
hitsound = s1,9
guardsound = s2,1
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

[state 2010, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;���}�M�J�u�[�g
[statedef 900]
movetype = a
poweradd = -1000
ctrl = 0

[state -, varadd];�}�M�J�u�[�g�A�̋�
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 0
var(46) = 5
persistent = 0

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
;���}�M�J�u�[�g�_�b�V��
[statedef 901]
movetype = a
anim = 100+(statetype=a)*10
poweradd = -1000
ctrl = 0

[state -, varadd];�}�M�J�u�[�g�A�̋�
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 0
var(46) = 5
persistent = 0

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

[state 901, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*30),0

[state 901, changestate]
type = changestate
trigger1 = time = 1
value = ifelse(pos y!=0,110,100+(var(50)!=0))
ctrl = 1