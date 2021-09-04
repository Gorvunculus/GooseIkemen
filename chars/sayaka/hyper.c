;===========================================================================
;������hypers������
;===========================================================================
;���������߂ăX�t�H���c�@���h
[statedef 3000]
type = s
movetype = a
physics = s
anim = 3000
velset = 0,0
ctrl = 0

[state -, varadd];���������߂ăX�t�H���c�@���h�A�̋�
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 15
persistent = 0

[state 3000, nothitby]
type = nothitby
trigger1 = animelemtime(6) < 6
value = sca,aa
ignorehitpause = 1

[state 3000, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 9,100+(random<500)
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 3000, superpause]
type = superpause
trigger1 = animelemtime(1) = 2
time = 40
anim = s32500
pos = -floor(const(size.xscale)*36),-floor(const(size.yscale)*33)
sound = s2,100
movetime = 40
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -1000

[state 3000, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,6

[state 3000, explod]
type = explod
trigger1 = animelemtime(5) = 0
anim = 13000+var(40)
id = 13000
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
ownpal = 1

[state 3000, hitdef]
type = hitdef
trigger1 = animelemtime(5) = 0
id = 3000
attr = s,ha
hitflag = mafd
guardflag = m
affectteam = e
animtype = up
ground.type = high
priority = 5,hit
sprpriority = 1
damage = floor(130*fvar(1)*fvar(2)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 40
guard.ctrltime = 12
ground.slidetime = 12
pausetime = 10,10
sparkno = s25002
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*30),-floor(const(size.yscale)*65)
hitsound = s1,10
guardsound = s2,1
ground.velocity = 0,ifelse(var(14)=0,-7.5,-5)
guard.velocity = -4
air.velocity = 0,ifelse(var(14)=0,-7.2,-3)
down.velocity = 0,0
fall = 1
fall.recover = 1;0
fall.recovertime = 35;900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2

[state 3000, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 3000
ignorehitpause = 1

[state 3000, targetstate]
type = targetstate
trigger1 = numtarget(3000) > 0
trigger1 = target(3000),statetype != l
trigger1 = target(3000),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 3000, helper]
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

[state 3000, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(3000) = 2
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

[state 3000, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;�����`�����ɃA���I�[�\
[statedef 3100]
type = s
movetype = a
physics = s
anim = 3100
velset = 0,0
ctrl = 0

[state -, varadd];�����`�����ɃA���I�[�\�A�̋�
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 15
persistent = 0

[state 3100, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3100, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*60),0
ignorehitpause = 1

[state 3100, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = -floor(const(size.xscale)*10)

[state 3100, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -floor(const(size.xscale)*30)

[state 3100, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = -floor(const(size.xscale)*20)

[state 3100, superpause]
type = superpause
trigger1 = animelemtime(5) = 0
time = 40
anim = s32500
pos = floor(const(size.xscale)*7),-floor(const(size.yscale)*41)
sound = s2,100
movetime = 40
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -1000

[state 3100, stopsnd]
type = stopsnd
trigger1 = animelemtime(6) = 0
channel = 0

[state 3100, playsnd]
type = playsnd
trigger1 = animelemtime(6) = 0
value = 9,200
channel = 1
lowpriority = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 3100, velset]
type = velset
trigger1 = animelemtime(6) >= 0
x = 25

[state 3100, varset]
type = varset
trigger1 = 1
var(20) = 90

[state 3100, changestate]
type = changestate
trigger1 = animtime = 0
value = 3110
;---------------------------------------------------------------------------
;�����`�����ɃA���I�[�\�E�ːi
[statedef 3110]
type    = s
movetype= a
physics = s

[state 3110, varadd]
type = varadd
trigger1 = var(20) > 0
var(20) = -1

[state 3110, varset]
type = varset
trigger1 = time = 0
var(34) = 0

[state 3110, width]
type = width
trigger1 = 1
edge = 3,0
ignorehitpause = 1

[state 3110, changeanim]
type = changeanim
trigger1 = anim != 3110
value = 3110
ignorehitpause = 1

[state 3110,hitoverride]
type = hitoverride
triggerall = var(40) != 0
trigger1 = alive = 1
attr = sca,aa,ap,at
stateno = 3190
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1

[state 3110,hitoverride]
type = hitoverride
triggerall = var(40) != 0
trigger1 = var(20) <= 0
trigger2 = alive = 0
attr = sca,aa,ap,at
stateno = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1

[state 3110, velset]
type = velset
trigger1 = 1
x = 20

[state 3110, hitdef]
type = hitdef
triggerall = var(20) > 20
trigger1 = animelemtime(1) = 0
trigger1 = var(34) := 1
trigger2 = animelemtime(3) = 0
trigger2 = var(34) := 2
trigger3 = animelemtime(5) = 0
trigger3 = var(34) := 3
id = 3100
attr = s,ha
hitflag = maf
guardflag = m
affectteam = e
animtype  = back
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(12*fvar(1)*fvar(2)),4
getpower = 0,0
givepower = 20,5
ground.hittime  = 30
air.hittime = 60
guard.ctrltime = 20
ground.slidetime = 30
pausetime = 10,10
sparkno = s25001
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*30),-floor(const(size.yscale)*50)
hitsound = s1,8
guardsound = s2,1
ground.velocity = -35+(frontedgedist<=60)*10
guard.velocity = -7
air.velocity = -5,-1.2
air.fall = 1
guard.cornerpush.veloff = -10
fall.recovertime = 30
envshake.time = 16
envshake.freq = 40
envshake.ampl = 5
kill = 0
guard.kill = 0
fall.kill = 0

[state 3110, targetdrop]
type = targetdrop
trigger1 = var(20) > 10
trigger1 = numtarget > 1
trigger1 = movehit = 1
excludeid = 3103
ignorehitpause = 1

[state 3110, targetstate]
type = targetstate
trigger1 = numtarget(3110) > 0
trigger1 = target(3110),statetype = a
trigger1 = target(3110),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 3110, hitdef]
type = hitdef
trigger1 = var(20) = 10
id = 3110
attr = s,ha
hitflag = mafd
guardflag = m
affectteam = e
animtype = back
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(66*fvar(1)*fvar(2)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 40
guard.ctrltime = 12
ground.slidetime = 12
pausetime = 12,12
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*50)
hitsound = s1,9
guardsound = s2,1
ground.velocity = -10,-4
guard.velocity = -4
air.velocity = -10,-2
down.velocity = 0,0
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
yaccel = 0.35

[state 3110, targetdrop]
type = targetdrop
trigger1 = var(20) <= 10
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 3110
ignorehitpause = 1

[state 3110, targetstate]
type = targetstate
trigger1 = numtarget(3111) > 0
trigger1 = target(3111),statetype != l
trigger1 = target(3111),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 3110, varset]
type = varset
trigger1 = var(20) <= 10
var(24) = 1

[state 3110, helper]
type = helper
trigger1 = var(20) <= 10
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

[state 3110, helper]
type = helper
triggerall = var(20) <= 10
triggerall = movehit = 1
trigger1 = numtarget(3110) = 2
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

[state 3110, changestate]
type = changestate
trigger1 = var(20) <= 0
value = 3150
;---------------------------------------------------------------------------
;�����`�����ɃA���I�[�\�E�I��
[statedef 3150]
type = s
movetype = i
physics = s
anim = 3150
ctrl = 0

[state 3150, width]
type = width
trigger1 = 1
edge = 3,0
ignorehitpause = 1

[state 3150, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;�����`�����ɃA���I�[�\�E�_���[�W
[statedef 3190]
type = u
movetype = h
physics = u
ctrl = 0

[state 3190, nothitby]
type = nothitby
trigger1 = 1
value = ,at
ignorehitpause = 1

[state 3190,hitoverride]
type = hitoverride
trigger1 = var(20) > 0
attr = sca,aa,ap,at
stateno = 3190
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1

[state 3190,hitoverride]
type = hitoverride
trigger1 = var(20) <= 0
trigger2 = alive = 0
attr = sca,aa,ap,at
stateno = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1

[state 3190, changeanim]
type = changeanim
trigger1 = 1
value = anim
elem = animelemno(0)
ignorehitpause = 1

[state 3190, palfx]
type = palfx
trigger1 = 1
time = 10
add = 250,0,0
ignorehitpause = 1

[state 3190, turn]
type = turn
trigger1 = p2dist x < 0

[state 3190, changestate]
type = changestate
trigger1 = alive = 1
trigger1 = time > 0
value = 3110
ignorehitpause = 1

[state 3190, changestate]
type = changestate
trigger1 = alive = 0
value = 5050
ignorehitpause = 1
;===========================================================================
;���E�C���悹�ăO�����f�B�I�[�\
[statedef 3200]
type = a
movetype = a
physics = n
ctrl = 0
velset = 0,0

[state -, varadd];���E�C���悹�ăO�����f�B�I�[�\�A�̋�
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 45
persistent = 0

[state 3200, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "grandioso1"
var(7) = 1

[state 3200, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "grandioso2"
var(7) = 2

[state 3200, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "grandioso3"
var(7) = 3

[state 3200, changeanim]
type = changeanim
trigger1 = time <= 1
value = 1100+(var(7)=2)*30+(var(7)=3)*60

[state 3200, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3200, superpause]
type = superpause
trigger1 = animelemtime(4) = 0
time = 40+var(38)*40
anim = s32500
pos = floor(const(size.xscale)*(11+(var(7)=2)*3+(var(7)=3)*6)),floor(const(size.yscale)*(-38-(var(7)=2)*12-(var(7)=3)*32))
sound = s2,100
movetime = 0
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -3000

[state 3200, playsnd]
type = playsnd
trigger1 = var(38) = 1
trigger1 = animelemtime(4) = 0
value = 9,310+(var(40)=1)
channel = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)
ignorehitpause = 1
persistent = 0

[state 3200, helper]
type = helper
trigger1 = var(38) = 1
trigger1 = animelemtime(4) = 0
helpertype = normal
name = "clear fg"
id = 7200
stateno = 7200
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3200, explod]
type = explod
trigger1 = var(38) = 1
trigger1 = animelemtime(4) = 0
id = 30000
postype = left
anim = ifelse(var(40)=1,30500,30000)
sprpriority = 5;ifelse(var(40)=1,-5,5)
supermovetime = 999
removetime = -2
removeongethit = 1
scale = 0.5,0.5
pos = 160,0

[state 3200, explod]
type = explod
trigger1 = var(38) = 1
trigger1 = animelemtime(4) = 0
id = 30010
postype = left
anim = ifelse(var(40)=1,30510,30010)
sprpriority = 5
supermovetime = 999
removetime = -2
removeongethit = 1
scale = 0.5,0.5
pos = 160,0

[state 3200, explod]
type = null;explod
trigger1 = var(38) = 1
trigger1 = var(40) = 1
trigger1 = animelemtime(4) = 0
postype = back
anim = 32000
sprpriority = -5
supermovetime = 999
removetime = 60
removeongethit = 1
scale = 1,1
pos = 0,0

[state 3200, posfreeze]
type = posfreeze
trigger1 = 1

[state 3200, changestate]
type = changestate
trigger1 = pos y >= 0
value = 52

[state 3200, changestate]
type = changestate
trigger1 = animtime = 0
value = 3210+(var(7)=2)*10+(var(7)=3)*20
;---------------------------------------------------------------------------
;���E�C���悹�ăO�����f�B�I�[�\�E�Βn�a��
[statedef 3210]
type    = a
movetype= a
physics = n
anim = 1110

[state 3210, varset]
type = varset
trigger1 = 1
var(24) = 1

[state 3210, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3210, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3210, posadd]
type = posadd
trigger1 = time = 0
y = -floor(const(size.yscale)*45)

[state 3210, velset]
type = velset
trigger1 = time = 0
x = 25
y = 25

[state 3210, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 3210, hitdef]
type = hitdef
trigger1 = time = 0
id = 3210
attr = a,ha
hitflag = maf
guardflag = ma
affectteam = e
animtype = up
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(70*fvar(1)*fvar(2)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,100
sparkno = -1
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,0
guardsound = s2,1
ground.velocity = -10,-3
guard.velocity = -4
air.velocity = -10,-2
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
yaccel = 0.1
kill = 0
guard.kill = 1

[state 3210, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 3210
ignorehitpause = 1

[state 3210, targetstate]
type = targetstate
trigger1 = numtarget(3210) > 0
trigger1 = target(3210),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 3210, helper]
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

[state 3210, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(3210) = 2
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

[state 3210, varset]
type = varset
trigger1 = movehit
trigger1 = var(15) = 0
var(15) = enemynear,id

[state 3210, varset]
type = varset
trigger1 = movehit
trigger1 = var(18) = 0
var(18) = enemynear,id

[state 3210, helper]
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

[state 3210, changestate]
type = changestate
trigger1 = movehit = 1
value = 3240

[state 3210, changestate]
type = changestate
trigger1 = pos y >= 20
value = 1090
;---------------------------------------------------------------------------
;���E�C���悹�ăO�����f�B�I�[�\�E�����a��
[statedef 3220]
type    = a
movetype= a
physics = n
anim = 1010

[state 3220, varset]
type = varset
trigger1 = 1
var(24) = 1

[state 3220, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3220, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3220, posadd]
type = posadd
trigger1 = time = 0
y = -floor(const(size.yscale)*45)

[state 3220, velset]
type = velset
trigger1 = time = 0
x = 70

[state 3220, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 3220, hitdef]
type = hitdef
trigger1 = time = 0
id = 3220
attr = a,ha
hitflag = maf
guardflag = ma
affectteam = e
animtype = up
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(70*fvar(1)*fvar(2)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,100
sparkno = -1
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,0
guardsound = s2,1
ground.velocity = -10,-3
guard.velocity = -4
air.velocity = -10,-2
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
yaccel = 0.1
kill = 0
guard.kill = 1

[state 3220, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 3220
ignorehitpause = 1

[state 3220, targetstate]
type = targetstate
trigger1 = numtarget(3220) > 0
trigger1 = target(3220),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 3220, helper]
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

[state 3220, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(3220) = 2
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

[state 3220, varset]
type = varset
trigger1 = movehit
trigger1 = var(15) = 0
var(15) = enemynear,id

[state 3220, varset]
type = varset
trigger1 = movehit
trigger1 = var(18) = 0
var(18) = enemynear,id

[state 3220, helper]
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

[state 3220, changestate]
type = changestate
trigger1 = movehit = 1
value = 3240

[state 3220, changestate]
type = changestate
trigger1 = !movehit
trigger1 = time >= 10
value = 1090
;---------------------------------------------------------------------------
;���E�C���悹�ăO�����f�B�I�[�\�E�΋�a��
[statedef 3230]
type    = a
movetype= a
physics = n
anim = 1040

[state 3230, varset]
type = varset
trigger1 = 1
var(24) = 1

[state 3230, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3230, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3230, posadd]
type = posadd
trigger1 = time = 0
y = -floor(const(size.yscale)*45)

[state 3230, velset]
type = velset
trigger1 = time = 0
x = 25
y = -25

[state 3230, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 3230, hitdef]
type = hitdef
trigger1 = time = 0
id = 3230
attr = a,ha
hitflag = maf
guardflag = ma
affectteam = e
animtype = up
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(70*fvar(1)*fvar(2)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,100
sparkno = -1
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,0
guardsound = s2,1
ground.velocity = -10,-3
guard.velocity = -4
air.velocity = -10,-2
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
yaccel = 0.1
kill = 0
guard.kill = 1

[state 3230, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 3230
ignorehitpause = 1

[state 3230, targetstate]
type = targetstate
trigger1 = numtarget(3230) > 0
trigger1 = target(3230),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 3230, helper]
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

[state 3230, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(3230) = 2
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

[state 3230, varset]
type = varset
trigger1 = movehit
trigger1 = var(15) = 0
var(15) = enemynear,id

[state 3230, varset]
type = varset
trigger1 = movehit
trigger1 = var(18) = 0
var(18) = enemynear,id

[state 3230, helper]
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

[state 3230, changestate]
type = changestate
trigger1 = movehit = 1
value = 3240

[state 3230, changestate]
type = changestate
trigger1 = pos y >= 20
value = 1020

[state 3230, changestate]
type = changestate
trigger1 = !movehit
trigger1 = time >= 6
value = 1091
;---------------------------------------------------------------------------
;���E�C���悹�ăO�����f�B�I�[�\�E�ǌ��P�E����
[statedef 3240]
type    = a
movetype= a
physics = n
anim = 1010
velset = 0,0

[state 3240, varset]
type = varset
trigger1 = 1
var(24) = 0

[state 3240, varset]
type = varset
trigger1 = time = 10
var(18) = 0

[state 3240, varset]
type = varset
trigger1 = time = 10
var(19) = 0

[state 3240, screenbound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[state 3240, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3240, assertspecial]
type = assertspecial
trigger1 = time < 30
flag = invisible
ignorehitpause = 1

[state 3240, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3240, posadd]
type = posadd
trigger1 = time = 0
x = -350

[state 3240, posadd]
type = posadd
trigger1 = var(15) = 0
trigger1 = time = 0
y = -50

[state 3240, posset]
type = posset
trigger1 = var(15) != 0
trigger1 = time = 0
y = var(17)+playerid(var(15)),const(size.mid.pos.y)

[state 3240, velset]
type = velset
trigger1 = time = 30
x = 70

[state 3240, playsnd]
type = playsnd
trigger1 = time = 30
value = 2,15

[state 3240, hitdef]
type = hitdef
trigger1 = time = 30
id = 3240
attr = a,ha
hitflag = maf
guardflag = ma
affectteam = e
animtype = up
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(45*fvar(1)*fvar(2)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,30
sparkno = -1
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*30),0
hitsound = s5,0
guardsound = s2,1
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 40
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
kill = 0
guard.kill = 0
fall.kill = 0

[state 3240, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 3240
ignorehitpause = 1

[state 3240, targetstate]
type = targetstate
trigger1 = numtarget(3240) > 0
trigger1 = target(3240),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 3240, helper]
type = helper
trigger1 = movehit = 2
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

[state 3240, helper]
type = helper
triggerall = movehit = 2
trigger1 = numtarget(3240) = 2
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

[state 3240, helper]
type = helper
trigger1 = time = 30
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

[state 3240, changestate]
type = changestate
trigger1 = time >= 40
value = 3250
;---------------------------------------------------------------------------
;���E�C���悹�ăO�����f�B�I�[�\�E�ǌ��Q�E�����㏸
[statedef 3250]
type    = a
movetype= a
physics = n
anim = 3200
velset = 0,0

[state 3250, screenbound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[state 3250, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3250, assertspecial]
type = assertspecial
trigger1 = time < 10
flag = invisible
ignorehitpause = 1

[state 3250, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3250, posadd]
type = posadd
trigger1 = time = 0
y = 350

[state 3250, posset]
type = posset
trigger1 = var(15) != 0
x = var(16)

[state 3250, velset]
type = velset
trigger1 = time = 10
y = -70

[state 3250, playsnd]
type = playsnd
trigger1 = time = 10
value = 2,15

[state 3250, hitdef]
type = hitdef
trigger1 = time = 10
id = 3250
attr = a,ha
hitflag = maf
guardflag = ma
affectteam = e
animtype = up
ground.type = high
priority = 5,hit
sprpriority = 1
damage = floor(45*fvar(1)*fvar(2)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,30
sparkno = -1
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*20),-floor(const(size.yscale)*100)
hitsound = s5,0
guardsound = s2,1
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 40
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
kill = 0
guard.kill = 0
fall.kill = 0

[state 3250, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 3250
ignorehitpause = 1

[state 3250, targetstate]
type = targetstate
trigger1 = numtarget(3250) > 0
trigger1 = target(3250),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 3250, helper]
type = helper
trigger1 = movehit = 2
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

[state 3250, helper]
type = helper
triggerall = movehit = 2
trigger1 = numtarget(3250) = 2
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

[state 3250, helper]
type = helper
trigger1 = time = 10
helpertype = normal
name = "blue wave"
stateno = 11140
id = 11140
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3250, changestate]
type = changestate
trigger1 = time >= 20
value = 3260
;---------------------------------------------------------------------------
;���E�C���悹�ăO�����f�B�I�[�\�E�ǌ��R�E�΂߉��~
[statedef 3260]
type    = a
movetype= a
physics = n
anim = 1110
velset = 0,0

[state 3260, screenbound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[state 3260, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3260, assertspecial]
type = assertspecial
trigger1 = time < 10
flag = invisible
ignorehitpause = 1

[state 3260, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3260, posset]
type = posset
trigger1 = var(15) = 0
trigger1 = time = 0
x = var(16)-(facing*350)
y = var(17)-400

[state 3260, posset]
type = posset
trigger1 = var(15) != 0
trigger1 = time = 0
x = var(16)-(facing*350)
y = var(17)+playerid(var(15)),const(size.mid.pos.y)-350

[state 3260, velset]
type = velset
trigger1 = time = 10
x = 50
y = 50

[state 3260, playsnd]
type = playsnd
trigger1 = time = 10
value = 2,15

[state 3260, hitdef]
type = hitdef
trigger1 = time = 10
id = 3260
attr = a,ha
hitflag = maf
guardflag = ma
affectteam = e
animtype = up
ground.type = low
priority = 5,hit
sprpriority = 1
damage = floor(45*fvar(1)*fvar(2)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,30
sparkno = -1
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*30),floor(const(size.yscale)*50)
hitsound = s5,0
guardsound = s2,1
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 40
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
kill = 0
guard.kill = 0
fall.kill = 0

[state 3260, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 3260
ignorehitpause = 1

[state 3260, targetstate]
type = targetstate
trigger1 = numtarget(3260) > 0
trigger1 = target(3260),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 3260, helper]
type = helper
trigger1 = movehit = 2
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

[state 3260, helper]
type = helper
triggerall = movehit = 2
trigger1 = numtarget(3260) = 2
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

[state 3260, helper]
type = helper
trigger1 = time = 10
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

[state 3260, changestate]
type = changestate
trigger1 = time >= 20
value = 3270
;---------------------------------------------------------------------------
;���E�C���悹�ăO�����f�B�I�[�\�E�ǌ��S�E�΂ߏ㏸
[statedef 3270]
type    = a
movetype= a
physics = n
anim = 1040
velset = 0,0

[state 3270, varset]
type = varset
trigger1 = 1
var(24) = 3

[state 3270, screenbound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[state 3270, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3270, assertspecial]
type = assertspecial
trigger1 = time < 10
flag = invisible
ignorehitpause = 1

[state 3270, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3270, posset]
type = posset
trigger1 = time = 0
trigger1 = var(15) = 0
x = var(16)-(facing*350)
y = var(17)+300

[state 3270, posset]
type = posset
trigger1 = time = 0
trigger1 = var(15) != 0
x = var(16)-(facing*350)
y = var(17)+playerid(var(15)),const(size.mid.pos.y)+350

[state 3270, velset]
type = velset
trigger1 = time = 10
x = 50
y = -50

[state 3270, playsnd]
type = playsnd
trigger1 = time = 10
value = 2,15

[state 3270, hitdef]
type = hitdef
trigger1 = time = 10
id = 3270
attr = a,ha
hitflag = maf
guardflag = ma
affectteam = e
animtype = up
ground.type = high
priority = 5,hit
sprpriority = 1
damage = floor(45*fvar(1)*fvar(2)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 200
air.hittime = 200
guard.ctrltime = 70
ground.slidetime = 70
pausetime = 0,80
sparkno = -1
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*30),-floor(const(size.yscale)*50)
hitsound = s5,0
guardsound = s2,1
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,0
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 90
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
kill = 0
guard.kill = 0
fall.kill = 0

[state 3270, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 3270
ignorehitpause = 1

[state 3270, targetstate]
type = targetstate
trigger1 = numtarget(3270) > 0
trigger1 = target(3270),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 3270, helper]
type = helper
trigger1 = movehit = 2
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

[state 3270, helper]
type = helper
triggerall = movehit = 2
trigger1 = numtarget(3270) = 2
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

[state 3270, helper]
type = helper
trigger1 = time = 10
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

[state 3270, changestate]
type = changestate
trigger1 = time >= 20
value = 3280
;---------------------------------------------------------------------------
;���E�C���悹�ăO�����f�B�I�[�\�E�ǌ��T�E�������~�t�B�j�b�V��
[statedef 3280]
type    = a
movetype= a
physics = n
anim = 3210
velset = 0,0

[state 3280, varset]
type = varset
trigger1 = 1
var(24) = 3

[state 3280, screenbound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[state 3280, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3280, assertspecial]
type = assertspecial
trigger1 = time < 70
flag = invisible
ignorehitpause = 1

[state 3280, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3280, playsnd]
type = playsnd
trigger1 = time = 0
value = 9,300
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 3280, posadd]
type = posadd
trigger1 = time = 0
y = -350

[state 3280, posset]
type = posset
trigger1 = var(15) != 0
x = var(16)

[state 3280, velset]
type = velset
trigger1 = time = 70
y = 70

[state 3280, playsnd]
type = playsnd
trigger1 = time = 70
value = 2,15

[state 3280, hitdef]
type = hitdef
trigger1 = time = 70
id = 3280
attr = a,ha
hitflag = maf
guardflag = m
affectteam = e
animtype = up
ground.type = trip
priority = 5,hit
sprpriority = 1
damage = floor(150*fvar(1)*fvar(2)),10
getpower = 0,0
givepower = 20,5
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 40
ground.slidetime = 20
pausetime = 0,30
sparkno = s20001+(var(40)=1)*10
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*50),floor(const(size.yscale)*100)
hitsound = s5,0
guardsound = s2,1
ground.velocity = -8,-4
guard.velocity = -4
air.velocity = -8,-4
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 64
envshake.freq = 120
envshake.ampl = 5
palfx.time = 90
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
yaccel = 0.35

[state 3280, targetstate]
type = targetstate
trigger1 = numtarget(3280) > 0
trigger1 = target(3280),alive
trigger1 = movehit = 1
value = 5075
ignorehitpause = 1

[state 3280, helper]
type = helper
trigger1 = movehit = 2
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

[state 3280, helper]
type = helper
triggerall = movehit = 2
trigger1 = numtarget(3280) = 2
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

[state 3280, helper]
type = helper
trigger1 = time = 70
helpertype = normal
name = "blue wave"
stateno = 11170
id = 11170
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3280, bgpalfx]
type = bgpalfx
trigger1 = movehit = 1
time = 15
add = 256,256,256

[state 3280, varset]
type = varset
trigger1 = movehit
trigger1 = roundstate = 3
var(36) = 1
ignorehitpause = 1

[state 3280, changestate]
type = changestate
trigger1 = time >= 80
value = 3290
;---------------------------------------------------------------------------
;���E�C���悹�ăO�����f�B�I�[�\�E�I��
[statedef 3290]
type    = a
movetype= i
physics = n
velset = 0,0

[state 3290, screenbound]
type = screenbound
trigger1 = time < 60
value = 0
movecamera = 0,0

[state 3290, assertspecial]
type = assertspecial
trigger1 = time < 50
flag = invisible
ignorehitpause = 1

[state 3290, bgpalfx]
type = bgpalfx
trigger1 = time = 30
trigger2 = time = 34
time = 2
add = 256,256,256

[state 3290, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3290, varset]
type = varset
trigger1 = 1
var(7) = 0

[state 3290, posset]
type = posset
trigger1 = time = 50
y = -10

[state 3290, changeanim]
type = changeanim
trigger1 = time = 50
value = 41

[state 3290, palfx]
type = palfx
trigger1 = time = 50
time = 12
add = 256,256,256

[state 3290, velset]
type = velset
trigger1 = time = 50
y = -5

[state 3290, statetypeset]
type = statetypeset
trigger1 = time = 50
physics = a

[state 3290, targetdrop]
type = targetdrop
trigger1 = time = 50
trigger1 = numenemy > 1
excludeid = -1
;===========================================================================
;���N�z���e���y�X�g�[�\
[statedef 3300]
type = s
movetype = a
physics = s
anim = 3300
velset = 0,0
ctrl = 0

[state -, varadd];���N�z���e���y�X�g�[�\�A�̋�
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 18
persistent = 0

[state 3300, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3300, explod]
type = explod
trigger1 = animelemtime(6) = 0
anim = 6100
id = 6100
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3300, explod]
type = explod
trigger1 = animelemtime(6) = 0
anim = 6110
id = 6110
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3300, superpause]
type = superpause
trigger1 = animelemtime(7) = 0
time = 40
anim = s32500
pos = -floor(const(size.xscale)*3),-floor(const(size.yscale)*49)
sound = s2,100
movetime = 40
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -1000

[state 3300, changestate]
type = changestate
trigger1 = animtime = 0
value = 3330
;---------------------------------------------------------------------------
;���N�z���e���y�X�g�[�\�E����
[statedef 3330]
type = s
movetype = a
physics = s
anim = 3330
ctrl = 0

[state 3330, nothitby]
type = nothitby
trigger1 = animelemtime(4) < 0
value = sca,aa
ignorehitpause = 1

[state 3300, removeexplod]
type = removeexplod
trigger1 = time = 0
id = 6100

[state 3300, removeexplod]
type = removeexplod
trigger1 = time = 0
id = 6110

[state 3300, explod]
type = explod
trigger1 = time = 0
anim = 6101
id = 6101
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 0
pausemovetime = 0

[state 3300, explod]
type = explod
trigger1 = time = 0
anim = 6111
id = 6111
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 0
ownpal = 1
removeongethit = 1
supermovetime = 0
pausemovetime = 0

[state 3330, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = 0
trigger3 = animelemtime(3) = 0
trigger4 = animelemtime(4) = 0
trigger5 = animelemtime(5) = 0
trigger6 = animelemtime(6) = 0
trigger7 = animelemtime(7) = 0
trigger8 = animelemtime(8) = 0
trigger9 = animelemtime(9) = 0
trigger10 = animelemtime(10) = 0
trigger11 = animelemtime(11) = 0
trigger12 = animelemtime(12) = 0
trigger13 = animelemtime(13) = 0
trigger14 = animelemtime(14) = 0
trigger15 = animelemtime(15) = 0
value = 0,4

[state 3330, helper]
type = helper
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(6) = 0
trigger3 = animelemtime(11) = 0
helpertype = normal
name = "hyper magical sword 1"
stateno = 6100
id = 6100
pos = floor(const(size.xscale)*60),-floor(const(size.yscale)*40)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(7) = 0
trigger3 = animelemtime(12) = 0
helpertype = normal
name = "hyper magical sword 2"
stateno = 6100
id = 6100
pos = floor(const(size.xscale)*28),-floor(const(size.yscale)*46)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(8) = 0
trigger3 = animelemtime(13) = 0
helpertype = normal
name = "hyper magical sword 3"
stateno = 6100
id = 6100
pos = floor(const(size.xscale)*74),-floor(const(size.yscale)*30)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(9) = 0
trigger3 = animelemtime(14) = 0
helpertype = normal
name = "hyper magical sword 4"
stateno = 6100
id = 6100
pos = floor(const(size.xscale)*52),-floor(const(size.yscale)*45)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(10) = 0
trigger3 = animelemtime(15) = 0
helpertype = normal
name = "hyper magical sword 5"
stateno = 6100
id = 6100
pos = floor(const(size.xscale)*71),-floor(const(size.yscale)*14)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, helper]
type = helper
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(10) = 0
trigger3 = animelemtime(15) = 0
helpertype = normal
name = "hyper magical sword 5"
stateno = 6100
id = 6100
pos = -floor(const(size.xscale)*3),-floor(const(size.yscale)*51)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3330, changestate]
type = changestate
trigger1 = animtime = 0
value = 3350
;---------------------------------------------------------------------------
;���N�z���e���y�X�g�[�\�E�I��
[statedef 3350]
type = s
movetype = i
physics = s
anim = 3350
ctrl = 0

[state 3350, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;���N���ׂɃA�t�F�b�g�D�I�[�\
[statedef 3400]
type = s
physics = s
anim = 3400
velset = 0,0
ctrl = 0
poweradd = -300

[state 3400, nothitby]
type = nothitby
triggerall = animelemtime(2) < 0
trigger1 = prevstateno = 5120
value = sca,aa
ignorehitpause = 1

[state 3400, statetypeset]
type = statetypeset
trigger1 = animelemtime(2) < 0
movetype = i

[state 3400, statetypeset]
type = statetypeset
trigger1 = animelemtime(2) >= 0
movetype = a

[state 3400, poweradd]
type = poweradd
trigger1 = 1
value = -10

[state 3400, palfx]
type = palfx
trigger1 = time = 0
time = 70
sinadd = -200,-200,-200,140

[state 3400, playsnd]
type = playsnd
trigger1 = time = 0
value = 3,0

[state 3400, reversaldef]
type = reversaldef
trigger1 = animelemtime(2) = 1
reversal.attr = sca,aa
pausetime = 10,10
p1stateno = 3410
p2stateno = 3490
id=3400

[state 3400, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E�Ք��荇��
[statedef 3410]
type = s
movetype = a
physics = s
anim = 3410
ctrl = 0

[state 3410, turn]
type = turn
trigger1 = time = 0
trigger1 = p2dist x < 0

[state 3410, varset]
type = varset
trigger1 = numtarget(3400) = 1;�����q�b�g���͔��肵�Ȃ�
trigger1 = target,life <= ceil((target,lifemax)*const(data.attack)/200)
var(28) = 1

[state 3410, targetfacing]
type = targetfacing
trigger1 = time = 0
value = -1
id = 3400

[state 3410, assertspecial]
type = assertspecial
trigger1 = time > 130
flag = nofg
ignorehitpause = 1

[state 3410, bgpalfx]
type = bgpalfx
trigger1 = time = 0
time = 130
add = var(21),var(22),var(23)

[state 3410, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*60),0
edge = floor(const(size.xscale)*160),0

[state 3410, helper]
type = helper
trigger1 = time = 3
helpertype = normal
name = "search & bind"
id = 7400
stateno = 7400
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3410, envshake]
type = envshake
trigger1 = time = 70
time = 200
freq = 60
ampl = -4
phase = 4

[state 3410, palfx]
type = palfx
trigger1 = time > 40
time = 1
add = -time*2,-time*2,-time*2
ignorehitpause = 1

[state 3410, helper]
type = helper
trigger1 = time = 55
trigger1 = var(40) := 1
helpertype = normal
name = "magic circle 0.18"
stateno = 21500
id = 21500
pos = -floor(const(size.xscale)*20),-floor(const(size.yscale)*40)
postype = p1
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.18*const(size.xscale)
size.yscale = 0.18*const(size.yscale)

[state 3410, helper]
type = helper
trigger1 = time = 60
trigger1 = var(40) := 1
helpertype = normal
name = "magic circle 0.23"
stateno = 21501
id = 21501
pos = floor(const(size.xscale)*70),-floor(const(size.yscale)*60)
postype = p1
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.23*const(size.xscale)
size.yscale = 0.23*const(size.yscale)

[state 3410, helper]
type = helper
trigger1 = time = 75
trigger1 = var(40) := 1
helpertype = normal
name = "magic circle 0.3"
stateno = 21500
id = 21500
pos = floor(const(size.xscale)*10),-floor(const(size.yscale)*85)
postype = p1
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.3*const(size.xscale)
size.yscale = 0.3*const(size.yscale)

[state 3410, changeanim]
type = changeanim
trigger1 = time = 120
value = 3415
ignorehitpause = 1

[state 3410, explod]
type = explod
trigger1 = time = 120
anim = 23400
id = 23400
pos = ceil(p2dist x)/2,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 3410, explod]
type = explod
trigger1 = time = 120
anim = 23401
id = 23401
pos = ceil(p2dist x)/2,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1

[state 3410, explod]
type = explod
trigger1 = anim = 3410
trigger1 = animelemtime(4) = 0
anim = 25002
id = 25000
pos = floor(const(size.xscale)*70),-floor(const(size.yscale)*60)
postype = p1
random = 10, 10
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
supermovetime = 999
pausemovetime = 999
ownpal = 1

[state 3410, playsnd]
type = playsnd
trigger1 = anim = 3410
trigger1 = animelemtime(4) = 0
value = 6,0

[state 3410, playsnd]
type = playsnd
trigger1 = time = 40
value = 3,4

[state 3410, playsnd]
type = playsnd
trigger1 = time = 80
value = 6,1

[state 3410, playsnd]
type = playsnd
trigger1 = time = 170
value = 9,400
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 3410, changestate]
type = changestate
trigger1 = time = 240
value = 3420

[state 3410, changestate]
type = changestate
trigger1 = numtarget(3400) = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E����
[statedef 3420]
type = s
movetype = a
physics = s
anim = 3420
ctrl = 0

[state 3420, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 3420, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3420, bgpalfx]
type = bgpalfx
trigger1 = animelemtime(3) >= 0
time = 1
add = 200,-100,-100

[state 3420, pause]
type = pause
trigger1 = animelemtime(4) > 0
trigger1 = gametime%3 = 0 
time = 2
movetime = 2

[state 3420, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,5

[state 3420, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 1,10

[state 3420, explod]
type = explod
trigger1 = animelemtime(3) = 0
anim = 25002
id = 25000
pos = floor(const(size.xscale)*65),-floor(const(size.yscale)*70)
postype = p1
random = 10, 10
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
supermovetime = 999
pausemovetime = 999
ownpal = 1

[state 3420, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*30),0

[state 3420, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*35)

[state 3420, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*25)

[state 3420, posadd]
type = posadd
trigger1 = animelemtime(7) = 0
x = -floor(const(size.xscale)*20)

[state 3420, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = -floor(const(size.xscale)*20)

[state 3420, posadd]
type = posadd
trigger1 = animtime = 0
x = -floor(const(size.xscale)*20)

[state 3420, targetstate]
type = targetstate
trigger1 = numtarget(3400) > 0
trigger1 = animelemtime(3) = 0
value = 3491

[state 3420, changestate]
type = changestate
trigger1 = numtarget(3400) = 0
value = 0
ctrl = 1

[state 3420, changestate]
type = changestate
trigger1 = animtime = 0
value = 3430
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E�N���E�`���O�X�^�[�g
[statedef 3430]
type = s
movetype = i
physics = s
anim = 3430
ctrl = 0

[state 3430, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 3430, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3430, bgpalfx]
type = bgpalfx
trigger1 = 1
time = 1
add = 200,-100,-100
ignorehitpause = 1

[state 3430, pause]
type = pause
trigger1 = gametime%3 = 0 
time = 2
movetime = 2

[state 3430, changestate]
type = changestate
trigger1 = animtime = 0
value = 3440
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E�_�b�V��
[statedef 3440]
type = s
movetype = i
physics = s
anim = 3440
ctrl = 0

[state 3440, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 3440, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3440, bgpalfx]
type = bgpalfx
trigger1 = 1
time = 1
add = 200,-100,-100

[state 3440, pause]
type = pause
trigger1 = gametime%3 = 0 
time = 2
movetime = 2

[state 3440, velset]
type = velset
trigger1 = 1
x = const(velocity.run.fwd.x)*2

[state 3440, changestate]
type = changestate
trigger1 = var(25) = [-100,100]
trigger2 = time > 80
value = 3450
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E�W�����v�X�^�[�g
[statedef 3450]
type = s
movetype = i
physics = s
anim = 3450
ctrl = 0

[state 3450, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 3450, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3450, bgpalfx]
type = bgpalfx
trigger1 = 1
time = 1
add = 200,-100,-100

[state 3450, pause]
type = pause
trigger1 = gametime%3 = 0 
time = 2
movetime = 2

[state 3450, changestate]
type = changestate
trigger1 = animtime = 0
value = 3451
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E�W�����v
[statedef 3451]
type = a
movetype = i
physics = n
anim = 3451
ctrl = 0

[state 3451, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 3491, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3451, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3451, bgpalfx]
type = bgpalfx
trigger1 = 1
time = 1
add = 200,-100,-100

[state 3451, pause]
type = pause
trigger1 = gametime%3 = 0 
time = 2
movetime = 2

[state 3451, velset]
type = velset
trigger1 = time = 0
x = 4
y = -7

[state 3451, veladd]
type = veladd
trigger1 = time > 10
y = const(movement.yaccel)

[state 3451, changestate]
type = changestate
trigger1 = time = 40
value = 3455
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E�W�����v�a��
[statedef 3455]
type = a
movetype = a
physics = n
anim = 3455
ctrl = 0

[state 3455, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 3455, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3455, bgpalfx]
type = bgpalfx
trigger1 = 1
time = 1
add = 200,-100,-100

[state 3455, pause]
type = pause
trigger1 = gametime%3 = 0 
time = 2
movetime = 2

[state 3455, veladd]
type = veladd
trigger1 = 1
x = 1

[state 3455, veladd]
type = veladd
trigger1 = 1
y = const(movement.yaccel)*2

[state 3455, playsnd]
type = playsnd
trigger1 = time = 0
value = 0,5

[state 3455, playsnd]
type = playsnd
trigger1 = time = 1
value = 1,10

[state 3455, envshake]
type = envshake
trigger1 = time = 1
time = 40
freq = 60
ampl = -4
phase = 4

[state 3455, explod]
type = explod
trigger1 = time = 0
anim = 25002
id = 25000
pos = floor(const(size.xscale)*70),-floor(const(size.yscale)*40)
postype = p1
random = 10, 10
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
supermovetime = 999
pausemovetime = 999
ownpal = 1

[state 3455, targetstate]
type = targetstate
trigger1 = numtarget(3400) > 0
trigger1 = time = 0
value = 3492

[state 3455, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 3459
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E���n
[statedef 3459]
type = s
movetype = i
physics = s
anim = 3459
velset = 0,0
ctrl = 0

[state 3459, varset]
type = varset
trigger1 = 1
var(7) = 0

[state 3459, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg

[state 3459, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3459, bgpalfx]
type = bgpalfx
trigger1 = 1
time = 1
add = 200,-100,-100

[state 3459, posset]
type = posset
trigger1 = pos y != 0
y = 0

[state 3459, changestate]
type = changestate
trigger1 = animtime = 0
value = 3460
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E�����a��
[statedef 3460]
type = s
movetype = a
physics = s
anim = 3460
ctrl = 0

[state 3460, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 3460, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3460, bgpalfx]
type = bgpalfx
trigger1 = 1
time = 1
add = 200,-100,-100

[state 3460, varadd]
type = varadd
trigger1 = time = 1
var(7) = 1
persistent = 0

[state 3460, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 7,9

[state 3460, varrandom]
type = varrandom
trigger1 = 1
v = 6
range = 0,8

[state 3460, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(9) = 0
value = 0,5

[state 3460, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(10) = 0
value = 1,var(5)

[state 3460, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(10) = 0
value = 9,401+var(6)
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 3460, explod]
type = explod
triggerall = var(39) != 0
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(10) = 0
anim = 24000
id = 24000
pos = ifelse(frontedgedist<50,-floor(const(size.xscale)*50),0),0
postype = p2
random = 30,0
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 0;1

[state 3460, envshake]
type = envshake
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(10) = 0
time = 20
freq = 60
ampl = -4
phase = 4

[state 3460, targetbind]
type = targetbind
triggerall = numtarget(3400) > 0
trigger1 = numpartner = 1
trigger1 = partner,alive
trigger2 = numenemy = 2
trigger2 = enemy(0),alive
trigger2 = enemy(1),alive
time = 1
id = 3400
pos = 40,0

[state 3460, targetstate]
type = targetstate
triggerall = numtarget(3400) > 0
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(10) = 0
value = 3496

[state 3460, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(var(7)>=3,3470,3460)
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E�����a��t�B�j�b�V��
[statedef 3470]
type = s
movetype = a
physics = s
anim = 3470
ctrl = 0

[state 3470, varset]
type = varset
trigger1 = 1
var(7) = 0

[state 3470, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 3470, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3470, bgpalfx]
type = bgpalfx
trigger1 = 1
time = 1
add = 200,-100,-100

[state 3470, playsnd]
type = playsnd
trigger1 = time = 0
value = 9,410
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 3470, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 30
value = 0,6

[state 3470, playsnd]
type = playsnd
trigger1 = animelemtime(6) = 0
value = 1,10

[state 3470, envshake]
type = envshake
trigger1 = animelemtime(6) = 0
time = 60
freq = 70
ampl = -4
phase = 4

[state 3470, explod]
type = explod
triggerall = var(39) != 0
trigger1 = animelemtime(6) = 0
anim = 24000
id = 24000
pos = ifelse(frontedgedist<50,-floor(const(size.xscale)*50),0),0
random = 30,0
postype = p2
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 0;1

[state 3470, varset]
type = varset
triggerall = numtarget(3400) > 0
trigger1 = target(3400),alive = 0
trigger1 = var(39) = 2
trigger1 = var(11) != [100,300]
trigger1 = matchover
var(27) = 1

[state 3470, targetstate]
type = targetstate
triggerall = numtarget(3400) > 0
trigger1 = animelemtime(6) = 0
value = 3497+var(28)

[state 3470, varset]
type = varset
trigger1 = animtime = 0
var(28) = 0

[state 3470, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E����P�E�Ք��荇��
[statedef 3490]
type = s
movetype = h
physics = n
ctrl = 0

[state 3490, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3490, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3490, palfx]
type = palfx
trigger1 = time > 40
trigger1 = time <= 100
time = 1
add = -time*2,-time*2,-time*2
ignorehitpause = 1

[state 3490, palfx]
type = palfx
trigger1 = time > 100
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3490, width]
type = width
trigger1 = 1
player = 30,0
edge = 0,floor(const(size.xscale)*100)

[state 3490, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3490, posset]
type = posset
trigger1 = pos y != 0
y = 0

[state 3490, velset]
type = velset
trigger1 = 1
x = 0
y = 0

[state 3490, changeanim]
type = changeanim
trigger1 = 1
elem = animelemno(0)
value = anim
ignorehitpause = 1

[state 3490, selfstate]
type = selfstate
trigger1 = time > 300
trigger1 = !gethitvar(isbound)
value = 5120
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E����Q�E������ё�
[statedef 3491]
type = a
movetype = h
physics = n
ctrl = 0

[state 3491, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3491, lifeadd]
type = lifeadd
triggerall = numenemy > 0
triggerall = enemy(0),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*0.07)*(enemy(0),const(data.attack)*0.01))
absolute = 1

[state 3491, lifeadd]
type = lifeadd
triggerall = numenemy > 1
triggerall = enemy(1),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*0.07)*(enemy(1),const(data.attack)*0.01))
absolute = 1

[state 3491, lifeadd]
type = lifeadd
triggerall = numenemy > 2
triggerall = enemy(2),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*0.07)*(enemy(2),const(data.attack)*0.01))
absolute = 1

[state 3491, lifeadd]
type = lifeadd
triggerall = numenemy > 3
triggerall = enemy(3),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*0.07)*(enemy(3),const(data.attack)*0.01))
absolute = 1

[state 3491, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3491, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3491, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3491, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3491, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[state 3491, changeanim]
type = changeanim
trigger1 = time = 0
value = 5030
ignorehitpause = 1

[state 3491, changeanim]
type = changeanim
trigger1 = anim = 5030
trigger1 = animtime = 0
trigger1 = selfanimexist(5035) = 1
value = 5035
ignorehitpause = 1

[state 3491, changeanim]
type = changeanim
trigger1 = anim = 5035
trigger1 = animtime = 0
trigger2 = anim = 5030
trigger2 = animtime = 0
trigger2 = selfanimexist(5035) != 1
value = 5050
ignorehitpause = 1

[state 3491, velset]
type = velset
trigger1 = time = 0
x = -15
y = -7

[state 3491, veladd]
type = velset
trigger1 = time > 10
y = 0.4
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E����R�E�@�����Ƃ����
[statedef 3492]
type = a
movetype = h
physics = n
ctrl = 0
anim = 5030

[state 3492, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3492, lifeadd]
type = lifeadd
triggerall = numenemy > 0
triggerall = enemy(0),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*0.07)*(enemy(0),const(data.attack)*0.01))
absolute = 1

[state 3492, lifeadd]
type = lifeadd
triggerall = numenemy > 1
triggerall = enemy(1),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*0.07)*(enemy(1),const(data.attack)*0.01))
absolute = 1

[state 3492, lifeadd]
type = lifeadd
triggerall = numenemy > 2
triggerall = enemy(2),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*0.07)*(enemy(2),const(data.attack)*0.01))
absolute = 1

[state 3492, lifeadd]
type = lifeadd
triggerall = numenemy > 3
triggerall = enemy(3),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*0.07)*(enemy(3),const(data.attack)*0.01))
absolute = 1

[state 3492, screenbound]
type = screenbound
trigger1 = numpartner = 1
trigger1 = partner,alive
trigger2 = numenemy = 2
trigger2 = enemy(0),alive
trigger2 = enemy(1),alive
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 3492, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3492, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3492, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3492, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[state 3492, velset]
type = velset
trigger1 = time = 0
x = -2
y = 16

[state 3492, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 3493
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E����S�E����
[statedef 3493]
type    = l
movetype= h
physics = n
anim = 5100

[state 3493, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3493, screenbound]
type = screenbound
trigger1 = numpartner = 1
trigger1 = partner,alive
trigger2 = numenemy = 2
trigger2 = enemy(0),alive
trigger2 = enemy(1),alive
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 3493, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3493, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3493, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3493, posset]
type = posset
trigger1 = time = 0
y = 0

[state 3493, velset]
type = velset
trigger1 = time = 0
;x = 0
y = 0

[state 3493, velmul]
type = velmul
trigger1 = time = 0
x = 0.75

[state 3493, gamemakeanim]
type = gamemakeanim
trigger1 = time = 1
value = 62
pos = 0,0

[state 3493, playsnd]
type = playsnd
trigger1 = time = 1
value = f7,2

[state 3493, posfreeze]
type = posfreeze
trigger1 = 1

[state 3493, changestate]
type = changestate
trigger1 = animtime = 0
value = 3494
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E����T�E�t�H�[���o�E���h
[statedef 3494]
type    = l
movetype= h
physics = n
anim = 5160

[state 3494, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3494, screenbound]
type = screenbound
trigger1 = numpartner = 1
trigger1 = partner,alive
trigger2 = numenemy = 2
trigger2 = enemy(0),alive
trigger2 = enemy(1),alive
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 3494, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3494, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3494, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3494, veladd]
type = veladd
trigger1 = time = 0
y = -4

[state 3494, veladd]
type = veladd
trigger1 = 1
y = 0.45

[state 3494, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 3495
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E����U�E�j���[�g�����_�E��
[statedef 3495]
type    = l
movetype= h
physics = n
anim = 5110
velset = 0,0

[state 3495, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3495, screenbound]
type = screenbound
trigger1 = numpartner = 1
trigger1 = partner,alive
trigger2 = numenemy = 2
trigger2 = enemy(0),alive
trigger2 = enemy(1),alive
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 3495, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3495, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3495, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3495, posset]
type = posset
trigger1 = 1
y = 0
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E����V�E�ꂵ��
[statedef 3496]
type    = l
movetype= h
physics = n
anim = 5080

[state 3496, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3496, lifeadd]
type = lifeadd
triggerall = numenemy > 0
triggerall = enemy(0),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*0.04)*(enemy(0),const(data.attack)*0.01))*floor((enemy(0),fvar(27)=1.0)*2.0+1.0);��
absolute = 1

[state 3496, lifeadd]
type = lifeadd
triggerall = numenemy > 1
triggerall = enemy(1),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*0.04)*(enemy(1),const(data.attack)*0.01))*floor((enemy(0),fvar(27)=1.0)*2.0+1.0);��
absolute = 1

[state 3496, lifeadd]
type = lifeadd
triggerall = numenemy > 2
triggerall = enemy(2),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*0.04)*(enemy(2),const(data.attack)*0.01))*floor((enemy(0),fvar(27)=1.0)*2.0+1.0);��
absolute = 1

[state 3496, lifeadd]
type = lifeadd
triggerall = numenemy > 3
triggerall = enemy(3),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*0.04)*(enemy(3),const(data.attack)*0.01))*floor((enemy(0),fvar(27)=1.0)*2.0+1.0);��
absolute = 1

[state 3496, screenbound]
type = screenbound
trigger1 = numpartner = 1
trigger1 = partner,alive
trigger2 = numenemy = 2
trigger2 = enemy(0),alive
trigger2 = enemy(1),alive
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 3496, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3496, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3496, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3496, posset]
type = posset
trigger1 = 1
y = 0

[state 3496, changestate]
type = changestate
trigger1 = animtime = 0
trigger2 = time >= 12
value = 3495
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E����W�E�t�B�j�b�V������
[statedef 3497]
type    = l
movetype= h
physics = n
anim = 5080
velset = 0,0

[state 3497, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3497, lifeadd]
type = lifeadd
triggerall = numenemy > 0
triggerall = enemy(0),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*0.12)*(enemy(0),const(data.attack)*0.01))
absolute = 1

[state 3497, lifeadd]
type = lifeadd
triggerall = numenemy > 1
triggerall = enemy(1),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*0.12)*(enemy(1),const(data.attack)*0.01))
absolute = 1

[state 3497, lifeadd]
type = lifeadd
triggerall = numenemy > 2
triggerall = enemy(2),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*0.12)*(enemy(2),const(data.attack)*0.01))
absolute = 1

[state 3497, lifeadd]
type = lifeadd
triggerall = numenemy > 3
triggerall = enemy(3),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*0.12)*(enemy(3),const(data.attack)*0.01))
absolute = 1

[state 3497, screenbound]
type = screenbound
trigger1 = numpartner = 1
trigger1 = partner,alive
trigger2 = numenemy = 2
trigger2 = enemy(0),alive
trigger2 = enemy(1),alive
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 3497, palfx]
type = palfx
trigger1 = time < 80
time = 900
add = -200,-200,-200
ignorehitpause = 1

[state 3497, palfx]
type = palfx
trigger1 = alive = 1
trigger1 = time = 80
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3497, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3497, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3497, posset]
type = posset
trigger1 = 1
y = 0

[state 3497, changeanim]
type = changeanim
trigger1 = anim = 5080
trigger1 = animtime = 0
trigger2 = time >= 24
value = 5110
ignorehitpause = 1

[state 3497, selfstate]
type = selfstate
triggerall = time = 80
trigger1 = alive = 1
trigger2 = roundstate = 2
trigger2 = numpartner
trigger2 = partner,alive
value = 5110

[state 3497, changestate]
type = changestate
trigger1 = time = 80
value = 5110
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\�E����X�E�t�B�j�b�V������
[statedef 3498]
type    = l
movetype= h
physics = n
anim = 5080
velset = 0,0

[state 3498, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3498, lifeadd]
type = lifeadd
triggerall = enemy(0),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*100)*(enemy(0),const(data.attack)*0.01))
absolute = 1

[state 3498, lifeadd]
type = lifeadd
triggerall = numenemy > 1
triggerall = enemy(1),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*100)*(enemy(1),const(data.attack)*0.01))
absolute = 1

[state 3498, lifeadd]
type = lifeadd
triggerall = numenemy > 2
triggerall = enemy(2),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*100)*(enemy(2),const(data.attack)*0.01))
absolute = 1

[state 3498, lifeadd]
type = lifeadd
triggerall = numenemy > 3
triggerall = enemy(3),name = "miki sayaka"
trigger1 = time = 0
value = -ceil((lifemax*100)*(enemy(3),const(data.attack)*0.01))
absolute = 1

[state 3498, screenbound]
type = screenbound
trigger1 = numpartner = 1
trigger1 = partner,alive
trigger2 = numenemy = 2
trigger2 = enemy(0),alive
trigger2 = enemy(1),alive
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 3498, palfx]
type = palfx
trigger1 = time < 80
time = 900
add = -200,-200,-200
ignorehitpause = 1

[state 3498, palfx]
type = palfx
trigger1 = alive = 1
trigger1 = time = 80
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 3498, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3498, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3498, posset]
type = posset
trigger1 = 1
y = 0

[state 3498, changeanim]
type = changeanim
trigger1 = anim = 5080
trigger1 = animtime = 0
trigger2 = time >= 24
value = 5110
ignorehitpause = 1

[state 3498, selfstate]
type = selfstate
triggerall = time = 80
trigger1 = alive = 1
trigger2 = roundstate = 2
trigger2 = numpartner
trigger2 = partner,alive
value = 5110

[state 3498, changestate]
type = changestate
trigger1 = time = 80
value = 5110
