;===========================================================================
;†††helpers†††
;===========================================================================
;■汎用バインド
[statedef 10000]
anim = 1
sprpriority = 3

[state 10000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 10000, changeanim]
type = changeanim
trigger1 = animexist(root,anim+10000)
value = root,anim+10000
elem = root,animelemno(0)
ignorehitpause = 1

[state 10000, bindtoroot]
type = bindtoroot
trigger1 = 1
facing = 1
pos = 0,0
ignorehitpause = 1

[state 10000, destroyself]
type = destroyself
trigger1 = root,anim != anim-10000
trigger2 = root,movetype = h
ignorehitpause = 1
;===========================================================================
;■ソウルジェム
[statedef 10001]
movetype = i
physics = n
anim = 10001
sprpriority = 1

[state 10001, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 10001, veladd]
type = veladd
trigger1 = 1
y = 0.18

[state 10001, velset]
type = velset
trigger1 = time = 0
y = -6.0

[state 10001, bgpalfx]
type = bgpalfx
trigger1 = animelemtime(8) = 0
time = 9
add = (root,var(21)),(root,var(22)),(root,var(23))

[state 10001, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■ティロ・ヴォレー・ホライゾン
[statedef 6000]
movetype = a
physics = n
anim = 1
sprpriority = parent,var(2)

[state 6000, varset]
type = varset
trigger1 = time = 0
var(7) = parent,var(7)
ignorehitpause = 1

[state 6000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6000, changeanim]
type = changeanim
trigger1 = anim != 16001
trigger1 = time = var(7)*20
value = 16001
elem = 1

[state 6000, hitby]
type = hitby
trigger1 = 1
value = sca,ap

[state 6000, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6000, playsnd]
type = playsnd
trigger1 = time = 0
value = 5,0
channel = 1

[state 6000, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 1,3

[state 6000, explod]
type = explod
trigger1 = time = 0
anim = 6000+var(1)
id = 6000
pos = -floor(const(size.xscale)*30),0
postype = p1
facing = 1
bindtime = 1
removetime = 30+var(7)*20
scale = const(size.xscale),const(size.yscale)
sprpriority = var(2)
ownpal = 1
removeongethit = 1

[state 6000, playsnd]
type = playsnd
trigger1 = anim = 16001
trigger1 = animelemtime(2) = 0
value = 5,1

[state 6000, attackdist]
type = attackdist
trigger1 = anim = 16001
trigger1 = animelemtime(2) >= 0
value = 400

[state 6000, hitdef]
type = hitdef
trigger1 = anim = 16001
trigger1 = animelemtime(2) = 0
id = 6000
attr = a,sp
hitflag = mafdp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
priority = 3,hit
sprpriority = 1
damage = floor(10*root,fvar(1)*root,fvar(2)),2
getpower = ceil(36*root,fvar(3)),ceil(12*root,fvar(3))
givepower = 8,5
ground.hittime  = 25
air.hittime = 20
guard.ctrltime = 10
ground.slidetime = 20
pausetime = 8,8
sparkno = s25003
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*0),floor(const(size.yscale)*0)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -8
guard.velocity = -8
air.velocity = -1.5,-5
down.velocity = 0,0
fall.recovertime = 20
envshake.time = 4
envshake.freq = 45
envshake.ampl = 5
guard.cornerpush.veloff = 8
ownpal = 1

[state 6000, parentvaradd]
type = parentvaradd
trigger1 = movehit = 1
var(14) = 1

[state 6000, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 6000, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 6000, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 6000
ignorehitpause = 1

[state 6000, targetstate]
type = targetstate
trigger1 = numtarget(6000) > 0
trigger1 = target(6000),statetype = a
trigger1 = target(6000),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 6000, parentvarset];▼AI
type = parentvarset
trigger1 = parent,stateno = 21000
trigger1 = root,var(46) = 0
trigger1 = var(7) = 3
trigger1 = movehit = [1,3]
var(46) = 1

[state 6000, stopsnd]
type = stopsnd
trigger1 = root,fvar(24) != 1.0;◆
trigger1 = root,movetype = h
trigger1 = root,stateno != [120,155]
trigger1 = root,stateno != [1300,1355]
channel = 1

[state 6000, changestate]
type = changestate
trigger1 = root,fvar(24) != 1.0;◆
trigger1 = root,movetype = h
trigger1 = root,stateno != [120,155]
trigger1 = root,stateno != [1300,1355]
trigger2 = time > 0
trigger2 = numexplod(6000) = 0
value = 6005
;---------------------------------------------------------------------------
[statedef 6005]
movetype = i
anim = 6005

[state 6005, posadd]
type = posadd
trigger1 = time = 0
x = -floor(const(size.xscale)*30)
y = 0

[state 6005, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6005, removeexplod]
type = removeexplod
trigger1 = 1
id = 6000

[state 6005, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■ティロ・ヴォレー・フェイント
[statedef 6030]
movetype = a
physics = n
anim = 1
sprpriority = parent,var(2)

[state 6030, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6030, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa

[state 6030, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6030, playsnd]
type = playsnd
trigger1 = time = 0
value = 5,0
channel = 1

[state 6030, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 1,3

[state 6030, changeanim]
type = changeanim
trigger1 = time = 0
value = 6000+var(1)

[state 6030, stopsnd]
type = stopsnd
trigger1 = root,fvar(24) != 1.0;◆
trigger1 = root,movetype = h
channel = 1

[state 6030, destroyself]
type = destroyself
trigger1 = time >= 60
;===========================================================================
;■マスケ銃蹴り当て
[statedef 6050]
type = a
movetype = a
physics = n
anim = 6050
ctrl = 0

[state 6050, veladd]
type = veladd
trigger1 = 1
x = 10

[state 6050, hitby]
type = hitby
trigger1 = 1
value = sca,ap

[state 6050, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6050, hitdef]
type = hitdef
trigger1 = time = 2
id = 6050
attr = a,sp
hitflag = mafdp
guardflag = ma
affectteam = e
animtype  = hard
ground.type = high
priority = 2,hit
sprpriority = 1
damage = floor(10*root,fvar(1)*root,fvar(2)),5
getpower = ceil(24*root,fvar(3)),ceil(12*root,fvar(3))
givepower = 10,5
ground.hittime = 16
air.hittime = 16
guard.ctrltime = 8
pausetime = 0,12
sparkno = s25002
guard.sparkno = s1
sparkxy = 0,-floor(const(size.yscale)*50)
hitsound = s1,4
guardsound = s2,0
ground.velocity = -3,0
guard.velocity = -2
air.velocity = -2.4,-2
down.velocity = 0,0
ground.cornerpush.veloff = 2
air.fall = 1
fall.recovertime = 20

[state 6050, parentvaradd]
type = parentvaradd
trigger1 = movehit = 1
var(14) = 1

[state 6050, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 6050, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 6050, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 6050
ignorehitpause = 1

[state 6050, targetstate]
type = targetstate
trigger1 = numtarget(6050) > 0
trigger1 = target(6050),alive
trigger1 = movehit = 1
value = 5005+(target(6050),statetype=a)*20
ignorehitpause = 1

[state 6050, changestate]
type = changestate
trigger1 = movecontact
value = 6051

[state 6050, destroyself]
type = destroyself
trigger1 = frontedgedist < -30
;---------------------------------------------------------------------------
[statedef 6051]
type = a
movetype = i
physics = n
anim = 6051
ctrl = 0
velset = -5,-10.5

[state 6051, veladd]
type = veladd
trigger1 = 1
y = 0.45

[state 6051, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■ティロ・ヴォレー・クォート
[statedef 6100]
movetype = a
physics = n
anim = 1
sprpriority = parent,var(2)

[state 6100, varset]
type = varset
trigger1 = time = 0
var(7) = parent,var(7)
ignorehitpause = 1

[state 6100, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6100, changeanim]
type = changeanim
trigger1 = anim != 16101
trigger1 = time = var(7)*20
value = 16101
elem = 1

[state 6100, hitby]
type = hitby
trigger1 = 1
value = sca,ap

[state 6100, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6100, playsnd]
type = playsnd
trigger1 = time = 0
value = 5,0
channel = 1

[state 6100, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 1,3

[state 6100, explod]
type = explod
trigger1 = time = 0
anim = 6100+var(1)
id = 6100
pos = -floor(const(size.xscale)*30),-floor(const(size.yscale)*15)
postype = p1
facing = 1
bindtime = 1
removetime = 30+var(7)*20
scale = const(size.xscale),const(size.yscale)
sprpriority = var(2)
ownpal = 1
removeongethit = 1

[state 6100, playsnd]
type = playsnd
trigger1 = anim = 16101
trigger1 = animelemtime(2) = 0
value = 5,1

[state 6100, attackdist]
type = attackdist
trigger1 = anim = 16101
trigger1 = animelemtime(2) >= 0
value = 400

[state 6100, hitdef]
type = hitdef
trigger1 = anim = 16101
trigger1 = animelemtime(2) = 0
id = 6100
attr = a,sp
hitflag = mafdp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
priority = 3,hit
sprpriority = 1
damage = floor(10*root,fvar(1)*root,fvar(2)),2
getpower = ceil(36*root,fvar(3)),ceil(12*root,fvar(3))
givepower = 8,5
ground.hittime  = 25
air.hittime = 20
guard.ctrltime = 10
ground.slidetime = 20
pausetime = 8,8
sparkno = s25005
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*0),floor(const(size.yscale)*50)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -8
guard.velocity = -8
air.velocity = -1.5,-5
down.velocity = 0,0
fall.recovertime = 20
envshake.time = 4
envshake.freq = 45
envshake.ampl = 5
guard.cornerpush.veloff = 8
ownpal = 1

[state 6100, parentvaradd]
type = parentvaradd
trigger1 = movehit = 1
var(14) = 1

[state 6100, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 6100, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 6100, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 6100
ignorehitpause = 1

[state 6100, targetstate]
type = targetstate
trigger1 = numtarget(6100) > 0
trigger1 = target(6100),alive
trigger1 = movehit = 1
value = 5005+(target(6100),statetype=a)*20
ignorehitpause = 1

[state 6100, stopsnd]
type = stopsnd
trigger1 = root,fvar(24) != 1.0;◆
trigger1 = root,movetype = h
trigger1 = root,stateno != [120,155]
trigger1 = root,stateno != [1300,1355]
channel = 1

[state 6100, changestate]
type = changestate
trigger1 = root,fvar(24) != 1.0;◆
trigger1 = root,movetype = h
trigger1 = root,stateno != [120,155]
trigger1 = root,stateno != [1300,1355]
trigger2 = time > 0
trigger2 = numexplod(6100) = 0
value = 6105
;---------------------------------------------------------------------------
[statedef 6105]
movetype = i
anim = 6105

[state 6105, posadd]
type = posadd
trigger1 = time = 0
x = -floor(const(size.xscale)*30)
y = -floor(const(size.yscale)*15)

[state 6105, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6105, removeexplod]
type = removeexplod
trigger1 = 1
id = 6100

[state 6105, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■グランディーネ
[statedef 6200]
movetype = a
physics = n
anim = 1
sprpriority = parent,var(2)

[state 6200, varset]
type = varset
trigger1 = time = 0
var(7) = root,var(7)
ignorehitpause = 1

[state 6200, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6200, changeanim]
type = changeanim
trigger1 = anim != 16201
trigger1 = time = var(7)*20
value = 16201
elem = 1

[state 6200, hitby]
type = hitby
trigger1 = 1
value = sca,ap

[state 6200, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6200, playsnd]
type = playsnd
trigger1 = time = 0
value = 5,0
channel = 1

[state 6200, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 1,3

[state 6200, explod]
type = explod
trigger1 = time = 0
anim = 6200+var(1)
id = 6200
pos = floor(const(size.xscale)*0),-floor(const(size.yscale)*30)
postype = p1
facing = 1
bindtime = 1
removetime = 30+var(7)*20
scale = const(size.xscale),const(size.yscale)
sprpriority = var(2)
ownpal = 1
removeongethit = 1

[state 6200, playsnd]
type = playsnd
trigger1 = anim = 16201
trigger1 = animelemtime(2) = 0
value = 5,1

[state 6200, attackdist]
type = attackdist
trigger1 = anim = 16201
trigger1 = animelemtime(2) >= 0
value = 400

[state 6200, hitdef]
type = hitdef
trigger1 = anim = 16201
trigger1 = animelemtime(2) = 0
id = 6200
attr = a,sp
hitflag = mafdp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
priority = 3,hit
sprpriority = 1
damage = floor(10*root,fvar(1)*root,fvar(2)),2
getpower = ceil(36*root,fvar(3)),ceil(12*root,fvar(3))
givepower = 8,5
ground.hittime  = 35
air.hittime = 20
guard.ctrltime = 20
ground.slidetime = 20
pausetime = 8,8
sparkno = s25004
guard.sparkno = s25030
sparkxy = 0,floor(const(size.yscale)*50)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -8
guard.velocity = -8
air.velocity = -1.5,-5
fall.recovertime = 20
envshake.time = 4
envshake.freq = 45
envshake.ampl = 5
guard.cornerpush.veloff = 8
ownpal = 1

[state 6200, parentvaradd]
type = parentvaradd
trigger1 = movehit = 1
var(14) = 1

[state 6000, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 6000, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 6200, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 6200
ignorehitpause = 1

[state 6200, targetstate]
type = targetstate
trigger1 = numtarget(6200) > 0
trigger1 = target(6200),alive
trigger1 = movehit = 1
value = 5005+(target(6200),statetype=a)*20
ignorehitpause = 1

[state 6200, stopsnd]
type = stopsnd
trigger1 = root,fvar(24) != 1.0;◆
trigger1 = root,movetype = h
trigger1 = root,stateno != [120,155]
trigger1 = root,stateno != [1300,1355]
trigger1 = root,var(9) = 2
channel = 1

[state 6200, changestate]
type = changestate
trigger1 = root,fvar(24) != 1.0;◆
trigger1 = root,movetype = h
trigger1 = root,stateno != [120,155]
trigger1 = root,stateno != [1300,1355]
trigger2 = time > 0
trigger2 = numexplod(6200) = 0
value = 6205
;---------------------------------------------------------------------------
[statedef 6205]
movetype = i
anim = 6205

[state 6205, posadd]
type = posadd
trigger1 = time = 0
x = 0
y = -floor(const(size.yscale)*30)

[state 6205, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6205, removeexplod]
type = removeexplod
trigger1 = 1
id = 6200

[state 6205, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■ティロ・ロンディーネ
[statedef 6300]
movetype = a
physics = n
anim = 1
sprpriority = 3

[state 6300, bindtoroot]
type = bindtoroot
trigger1 = 1
time = 1
facing = 1
pos = 0, 0
ignorehitpause = 1

[state 6300, varset]
type = varset
trigger1 = time = 0
var(2) = 3
ignorehitpause = 1

[state 6300, varset]
type = varset
trigger1 = time = 0
var(7) = root,var(7)
ignorehitpause = 1

[state 6300, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6300, explod]
type = explod
trigger1 = time = 0
anim = 6300
id = 6300
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1
;removeongethit = 1

[state 6300, explod]
type = explod
trigger1 = time = 0
anim = 6301
id = 6301
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 1
ownpal = 1
;removeongethit = 1

[state 6300, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa

[state 6300, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6300, playsnd]
type = playsnd
trigger1 = time = 7
value = 5,0
channel = 1

[state 6300, helper]
type = helper
trigger1 = time = 14+var(7)*12
trigger2 = time = 14+var(7)*12+12
trigger3 = time = 14+var(7)*12+24
helpertype = normal
name = "fire"
id = 6350
stateno = 6350
pos = floor(const(size.xscale)*86),-floor(const(size.yscale)*67)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 6300, parentvaradd]
type = parentvaradd
trigger1 = var(14) != 0
var(14) = var(14)

[state 6300, varset]
type = varset
trigger1 = var(14) != 0
var(14) = 0

[state 6300, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 6300, stopsnd]
type = stopsnd
trigger1 = root,fvar(24) != 1.0;◆
trigger1 = root,movetype = h
trigger1 = root,stateno != [120,155]
trigger1 = root,stateno != [1300,1355]
channel = 1

[state 6300, removeexplod]
type = removeexplod
trigger1 = root,fvar(24) != 1.0;◆
trigger1 = root,movetype = h
trigger1 = root,stateno != [120,155]
trigger1 = root,stateno != [1300,1355]
trigger2 = time >= 14+var(7)*12+36
id = 6300

[state 6300, removeexplod]
type = removeexplod
trigger1 = root,fvar(24) != 1.0;◆
trigger1 = root,movetype = h
trigger1 = root,stateno != [120,155]
trigger1 = root,stateno != [1300,1355]
trigger2 = time >= 14+var(7)*12+36
id = 6301

[state 6300, changestate]
type = changestate
trigger1 = numhelper(6350) = 0
trigger1 = root,fvar(24) != 1.0;◆
trigger1 = root,movetype = h
trigger1 = root,stateno != [120,155]
trigger1 = root,stateno != [1300,1355]
trigger2 = time > 0
trigger2 = numexplod(6300) = 0
trigger3 = time >= 14+var(7)*12+36
value = 6320
;---------------------------------------------------------------------------
[statedef 6320]
movetype = i
anim = 1

[state 6320, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6320, removeexplod]
type = removeexplod
trigger1 = 1
id = 6300

[state 6320, removeexplod]
type = removeexplod
trigger1 = 1
id = 6301

[state 6320, explod]
type = explod
trigger1 = time = 0
anim = 6320
id = 6320
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1
;removeongethit = 1

[state 6320, explod]
type = explod
trigger1 = time = 0
anim = 6321
id = 6321
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 1
ownpal = 1
;removeongethit = 1

[state 6320, destroyself]
type = destroyself
trigger1 = numhelper(6350) = 0
trigger1 = time > 0
;===========================================================================
;■ティロ・ロンディーネ・ガンファイア
[statedef 6350]
movetype = a
physics = n
anim = 16002
sprpriority = parent,var(2)

[state 6350, bindtoparent]
type = bindtoparent
trigger1 = 1
time = 1
facing = 1
pos = floor(const(size.xscale)*86),-floor(const(size.yscale)*67)

[state 6350, varset]
type = varset
trigger1 = time = 0
var(7) = parent,var(7)
ignorehitpause = 1

[state 6350, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6350, hitby]
type = hitby
trigger1 = 1
value = sca,ap

[state 6350, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6350, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 5,1

[state 6350, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 6350
attr = a,sp
hitflag = mafdp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
priority = 3,hit
sprpriority = 1
damage = floor(10*root,fvar(1)*root,fvar(2)),2
getpower = ceil(64*root,fvar(3)),ceil(24*root,fvar(3))
givepower = 8,5
ground.hittime  = 30
air.hittime = 25
guard.ctrltime = 20
ground.slidetime = 25
pausetime = 8,8
sparkno = s25003
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*0),floor(const(size.yscale)*0)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -8
guard.velocity = -8
air.velocity = -1.5,-5
fall.recovertime = 10;20
envshake.time = 4
envshake.freq = 45
envshake.ampl = 5
guard.cornerpush.veloff = 8
ownpal = 1

[state 6350, parentvaradd]
type = parentvaradd
trigger1 = movehit = 1
var(14) = 1

[state 6350, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 6350, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 6350, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 6350
ignorehitpause = 1

[state 6350, targetstate]
type = targetstate
trigger1 = numtarget(6350) > 0
trigger1 = target(6350),alive
trigger1 = movehit = 1
value = 5005+(target(6350),statetype=a)*20
ignorehitpause = 1

[state 6350, stopsnd]
type = stopsnd
trigger1 = root,fvar(24) != 1.0;◆
trigger1 = root,movetype = h
trigger1 = root,stateno != [120,155]
trigger1 = root,stateno != [1300,1355]
channel = 1

[state 6350, removeexplod]
type = removeexplod
trigger1 = root,fvar(24) != 1.0;◆
trigger1 = root,movetype = h
trigger1 = root,stateno != [120,155]
trigger1 = root,stateno != [1300,1355]
id = 6350

[state 6350, destroyself]
type = destroyself
trigger1 = root,fvar(24) != 1.0;◆
trigger1 = root,movetype = h
trigger1 = root,stateno != [120,155]
trigger1 = root,stateno != [1300,1355]
trigger2 = animtime = 0
;===========================================================================
;■ティロ・メテオリーテ１
[statedef 6501]
movetype = a
physics = n
anim = 1
sprpriority = 1

[state 6501, varset]
type = varset
trigger1 = time = 0
var(7) = root,var(7)
ignorehitpause = 1

[state 6501, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6501, changeanim]
type = changeanim
trigger1 = anim != 16501
trigger1 = time = var(7)*20
value = 16501
elem = 1

[state 6501, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 6501, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6501, playsnd]
type = playsnd
trigger1 = time = 0
value = 5,0
channel = 1

[state 6501, explod]
type = explod
trigger1 = time = 0
anim = 6501
id = 6501
pos = floor(const(size.xscale)*0),floor(const(size.yscale)*0)
postype = p1
facing = 1
bindtime = 1
removetime = 30+var(7)*20
scale = const(size.xscale),const(size.yscale)
sprpriority = var(2)
ownpal = 1
removeongethit = 1
pausemovetime = 40

[state 6501, playsnd]
type = playsnd
trigger1 = anim = 16501
trigger1 = animelemtime(2) = 0
value = 5,1

[state 6501, envshake]
type = envshake
trigger1 = anim = 16501
trigger1 = animelemtime(2) = 0
time = 8
freq = 120
ampl = -4
phase = 0

[state 6501, hitdef]
type = hitdef
trigger1 = anim = 16501
trigger1 = animelemtime(2) = 0
id = 6501
attr = a,hp
hitflag = mafdp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
priority = 3,hit
sprpriority = 1
damage = floor(35*root,fvar(1)*root,fvar(2)),2
getpower = 0,0
givepower = 8,5
ground.hittime  = 35
air.hittime = 20
guard.ctrltime = 20
ground.slidetime = 20
pausetime = 8,8
sparkno = s25004
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*0),floor(const(size.yscale)*50)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -8
guard.velocity = -8
air.velocity = -1.5,-3
down.velocity = 0,0
air.fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
guard.cornerpush.veloff = 8
numhits = 3
ownpal = 1

[state 6501, parentvaradd]
type = parentvaradd
trigger1 = movehit = 1
var(14) = 1

[state 6501, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 6501, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 6501, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 6501
ignorehitpause = 1

[state 6501, targetstate]
type = targetstate
trigger1 = numtarget(6501) > 0
trigger1 = target(6501),alive
trigger1 = movehit = 1
value = 5005+(target(6501),statetype=a)*20
ignorehitpause = 1

[state 6501, changestate]
type = changestate
trigger1 = time > 0
trigger1 = numexplod(6501) = 0
value = 6511
;---------------------------------------------------------------------------
[statedef 6511]
movetype = i
anim = 6511

[state 6511, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6511, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■ティロ・メテオリーテ２
[statedef 6502]
movetype = a
physics = n
anim = 1
sprpriority = 1

[state 6502, varset]
type = varset
trigger1 = time = 0
var(7) = root,var(7)
ignorehitpause = 1

[state 6502, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6502, changeanim]
type = changeanim
trigger1 = anim != 16502
trigger1 = time = var(7)*20
value = 16502
elem = 1

[state 6502, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 6502, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6502, playsnd]
type = playsnd
trigger1 = time = 0
value = 5,0
channel = 1

[state 6502, explod]
type = explod
trigger1 = time = 0
anim = 6502
id = 6502
pos = floor(const(size.xscale)*0),floor(const(size.yscale)*0)
postype = p1
facing = 1
bindtime = 1
removetime = 30+var(7)*20
scale = const(size.xscale),const(size.yscale)
sprpriority = var(2)
ownpal = 1
removeongethit = 1
pausemovetime = 40

[state 6502, playsnd]
type = playsnd
trigger1 = anim = 16502
trigger1 = animelemtime(2) = 0
value = 5,1

[state 6502, envshake]
type = envshake
trigger1 = anim = 16502
trigger1 = animelemtime(2) = 0
time = 8
freq = 120
ampl = -4
phase = 0

[state 6502, hitdef]
type = hitdef
trigger1 = anim = 16502
trigger1 = animelemtime(2) = 0
id = 6502
attr = a,hp
hitflag = mafdp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
priority = 3,hit
sprpriority = 1
damage = floor(35*root,fvar(1)*root,fvar(2)),2
getpower = 0,0
givepower = 8,5
ground.hittime  = 35
air.hittime = 20
guard.ctrltime = 20
ground.slidetime = 20
pausetime = 8,8
sparkno = s25004
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*0),floor(const(size.yscale)*50)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -8
guard.velocity = -8
air.velocity = -1.5,-3
down.velocity = 0,0
air.fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
guard.cornerpush.veloff = 8
numhits = 3
ownpal = 1

[state 6502, parentvaradd]
type = parentvaradd
trigger1 = movehit = 1
var(14) = 1

[state 6502, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 6502, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 6502, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 6502
ignorehitpause = 1

[state 6502, targetstate]
type = targetstate
trigger1 = numtarget(6502) > 0
trigger1 = target(6502),alive
trigger1 = movehit = 1
value = 5005+(target(6502),statetype=a)*20
ignorehitpause = 1

[state 6502, changestate]
type = changestate
trigger1 = time > 0
trigger1 = numexplod(6502) = 0
value = 6512
;---------------------------------------------------------------------------
[statedef 6512]
movetype = i
anim = 6512

[state 6512, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6512, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■ティロ・メテオリーテ３
[statedef 6503]
movetype = a
physics = n
anim = 1
sprpriority = 1

[state 6503, varset]
type = varset
trigger1 = time = 0
var(7) = root,var(7)
ignorehitpause = 1

[state 6503, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6503, changeanim]
type = changeanim
trigger1 = anim != 16503
trigger1 = time = var(7)*20
value = 16503
elem = 1

[state 6503, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 6503, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6503, playsnd]
type = playsnd
trigger1 = time = 0
value = 5,0
channel = 1

[state 6503, explod]
type = explod
trigger1 = time = 0
anim = 6503
id = 6503
pos = floor(const(size.xscale)*0),floor(const(size.yscale)*0)
postype = p1
facing = 1
bindtime = 1
removetime = 30+var(7)*20
scale = const(size.xscale),const(size.yscale)
sprpriority = var(2)
ownpal = 1
removeongethit = 1
pausemovetime = 40

[state 6503, playsnd]
type = playsnd
trigger1 = anim = 16503
trigger1 = animelemtime(2) = 0
value = 5,1

[state 6503, envshake]
type = envshake
trigger1 = anim = 16503
trigger1 = animelemtime(2) = 0
time = 8
freq = 120
ampl = -4
phase = 0

[state 6503, hitdef]
type = hitdef
trigger1 = anim = 16503
trigger1 = animelemtime(2) = 0
id = 6503
attr = a,hp
hitflag = mafdp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
priority = 3,hit
sprpriority = 1
damage = floor(35*root,fvar(1)*root,fvar(2)),2
getpower = 0,0
givepower = 8,5
ground.hittime  = 35
air.hittime = 20
guard.ctrltime = 20
ground.slidetime = 20
pausetime = 8,8
sparkno = s25004
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*0),floor(const(size.yscale)*50)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -8
guard.velocity = -8
air.velocity = -1.5,-3
down.velocity = 0,0
air.fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
guard.cornerpush.veloff = 8
numhits = 3
ownpal = 1

[state 6503, parentvaradd]
type = parentvaradd
trigger1 = movehit = 1
var(14) = 1

[state 6503, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 6503, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 6503, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 6503
ignorehitpause = 1

[state 6503, targetstate]
type = targetstate
trigger1 = numtarget(6503) > 0
trigger1 = target(6503),alive
trigger1 = movehit = 1
value = 5005+(target(6503),statetype=a)*20
ignorehitpause = 1

[state 6503, changestate]
type = changestate
trigger1 = time > 0
trigger1 = numexplod(6503) = 0
value = 6513
;---------------------------------------------------------------------------
[statedef 6513]
movetype = i
anim = 6513

[state 6513, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6513, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■ティロ・メテオリーテ４
[statedef 6504]
movetype = a
physics = n
anim = 1
sprpriority = 1

[state 6504, varset]
type = varset
trigger1 = time = 0
var(7) = root,var(7)
ignorehitpause = 1

[state 6504, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6504, changeanim]
type = changeanim
trigger1 = anim != 16504
trigger1 = time = var(7)*20
value = 16504
elem = 1

[state 6504, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 6504, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6504, playsnd]
type = playsnd
trigger1 = time = 0
value = 5,0
channel = 1

[state 6504, explod]
type = explod
trigger1 = time = 0
anim = 6504
id = 6504
pos = floor(const(size.xscale)*0),floor(const(size.yscale)*0)
postype = p1
facing = 1
bindtime = 1
removetime = 30+var(7)*20
scale = const(size.xscale),const(size.yscale)
sprpriority = var(2)
ownpal = 1
removeongethit = 1
pausemovetime = 40

[state 6504, playsnd]
type = playsnd
trigger1 = anim = 16504
trigger1 = animelemtime(2) = 0
value = 5,1

[state 6504, envshake]
type = envshake
trigger1 = anim = 16504
trigger1 = animelemtime(2) = 0
time = 8
freq = 120
ampl = -4
phase = 0

[state 6504, hitdef]
type = hitdef
trigger1 = anim = 16504
trigger1 = animelemtime(2) = 0
id = 6504
attr = a,hp
hitflag = mafdp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
priority = 3,hit
sprpriority = 1
damage = floor(35*root,fvar(1)*root,fvar(2)),2
getpower = 0,0
givepower = 8,5
ground.hittime  = 35
air.hittime = 20
guard.ctrltime = 20
ground.slidetime = 20
pausetime = 8,8
sparkno = s25004
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*0),floor(const(size.yscale)*50)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -8
guard.velocity = -8
air.velocity = -1.5,-3
down.velocity = 0,0
air.fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
guard.cornerpush.veloff = 8
numhits = 3
ownpal = 1

[state 6504, parentvaradd]
type = parentvaradd
trigger1 = movehit = 1
var(14) = 1

[state 6504, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 6504, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 6504, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 6504
ignorehitpause = 1

[state 6504, targetstate]
type = targetstate
trigger1 = numtarget(6504) > 0
trigger1 = target(6504),alive
trigger1 = movehit = 1
value = 5005+(target(6504),statetype=a)*20
ignorehitpause = 1

[state 6504, changestate]
type = changestate
trigger1 = time > 0
trigger1 = numexplod(6504) = 0
value = 6514
;---------------------------------------------------------------------------
[statedef 6514]
movetype = i
anim = 6514

[state 6514, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6514, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■ティロ・メテオリーテ５
[statedef 6505]
movetype = a
physics = n
anim = 1
sprpriority = 1

[state 6505, varset]
type = varset
trigger1 = time = 0
var(7) = root,var(7)
ignorehitpause = 1

[state 6505, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6505, changeanim]
type = changeanim
trigger1 = anim != 16505
trigger1 = time = var(7)*20
value = 16505
elem = 1

[state 6505, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 6505, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6505, playsnd]
type = playsnd
trigger1 = time = 0
value = 5,0
channel = 1

[state 6505, explod]
type = explod
trigger1 = time = 0
anim = 6505
id = 6505
pos = floor(const(size.xscale)*0),floor(const(size.yscale)*0)
postype = p1
facing = 1
bindtime = 1
removetime = 30+var(7)*20
scale = const(size.xscale),const(size.yscale)
sprpriority = var(2)
ownpal = 1
removeongethit = 1
pausemovetime = 40

[state 6505, playsnd]
type = playsnd
trigger1 = anim = 16505
trigger1 = animelemtime(2) = 0
value = 5,1

[state 6505, envshake]
type = envshake
trigger1 = anim = 16505
trigger1 = animelemtime(2) = 0
time = 8
freq = 120
ampl = -4
phase = 0

[state 6505, hitdef]
type = hitdef
trigger1 = anim = 16505
trigger1 = animelemtime(2) = 0
id = 6505
attr = a,hp
hitflag = mafdp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
priority = 3,hit
sprpriority = 1
damage = floor(35*root,fvar(1)*root,fvar(2)),2
getpower = 0,0
givepower = 8,5
ground.hittime  = 35
air.hittime = 20
guard.ctrltime = 20
ground.slidetime = 20
pausetime = 8,8
sparkno = s25004
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*0),floor(const(size.yscale)*50)
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -8
guard.velocity = -8
air.velocity = -1.5,-3
down.velocity = 0,0
air.fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
guard.cornerpush.veloff = 8
numhits = 3
ownpal = 1

[state 6505, parentvaradd]
type = parentvaradd
trigger1 = movehit = 1
var(14) = 1

[state 6505, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 6505, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 6505, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 6505
ignorehitpause = 1

[state 6505, targetstate]
type = targetstate
trigger1 = numtarget(6505) > 0
trigger1 = target(6505),alive
trigger1 = movehit = 1
value = 5005+(target(6505),statetype=a)*20
ignorehitpause = 1

[state 6505, changestate]
type = changestate
trigger1 = time > 0
trigger1 = numexplod(6505) = 0
value = 6515
;---------------------------------------------------------------------------
[statedef 6515]
movetype = i
anim = 6515

[state 6515, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6515, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■ティロ・テンペスタ
[statedef 6650]
movetype = a
physics = n
anim = 6650
;velset = 50,0

[state 6650, velset]
type = velset
trigger1 = time = 1
x = 50

[state 6650, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6650, hitby]
type = hitby
trigger1 = 1
value = sca,ap

[state 6650, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6650, playsnd]
type = playsnd
trigger1 = time = 0
value = 5,0
channel = 1

[state 6650, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = -90,-75

[state 6650, hitdef]
type = hitdef
trigger1 = time = 1
id = 6650
attr = a,hp
hitflag = mafp
guardflag = m
affectteam = e
animtype = hard
ground.type = high
priority = 3,hit
sprpriority = 1
damage = floor(22*root,fvar(1)*root,fvar(2)),3
getpower = 0,0
givepower = 8,5
ground.hittime  = 60
air.hittime = 60
guard.ctrltime = 60
ground.slidetime = 60
pausetime = 8,8
sparkno = s25003
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*0),floor(const(size.yscale)*var(1))
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -4
guard.velocity = -2
air.velocity = -3,-5
;down.velocity = 0,0
air.fall = 1
fall.recovertime = 90
envshake.time = 4
envshake.freq = 45
envshake.ampl = 5
guard.cornerpush.veloff = 8
ownpal = 1

[state 6650, parentvaradd]
type = parentvaradd
trigger1 = movehit = 1
var(14) = 1

[state 6650, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 6650, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 6650, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 6650
ignorehitpause = 1

[state 6650, targetstate]
type = targetstate
trigger1 = numtarget(6650) > 0
trigger1 = target(6650),alive
trigger1 = movehit = 1
value = 5005+(target(6650),statetype=a)*20
ignorehitpause = 1

[state 6650, velset]
type = velset
trigger1 = movecontact
x = 0

[state 6650, destroyself]
type = destroyself
trigger1 = frontedgedist < -30
trigger2 = movecontact > 60
;===========================================================================
;■ティロ・テンペスタ・フィニッシュ
[statedef 6651]
movetype = a
physics = n
anim = 6650
;velset = 50,0

[state 6651, velset]
type = velset
trigger1 = time = 1
x = 50

[state 6651, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6651, hitby]
type = hitby
trigger1 = 1
value = sca,ap

[state 6651, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6651, playsnd]
type = playsnd
trigger1 = time = 0
value = 5,0
channel = 1

[state 6651, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = -90,-75

[state 6651, hitdef]
type = hitdef
trigger1 = time = 1
id = 6651
attr = a,hp
hitflag = mafdp
guardflag = m
affectteam = e
animtype = hard
ground.type = high
priority = 3,hit
sprpriority = 1
damage = floor(22*root,fvar(1)*root,fvar(2)),3
getpower = 0,0
givepower = 8,5
ground.hittime  = 60
air.hittime = 60
guard.ctrltime = 60
ground.slidetime = 60
pausetime = 8,8
sparkno = s25003
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*0),floor(const(size.yscale)*var(1))
hitsound = s-1,0
guardsound = s2,0
ground.velocity = -17,-5
guard.velocity = -2
air.velocity = -17,-5
fall = 1
fall.recover = 0
fall.recovertime = 999
envshake.time = 4
envshake.freq = 45
envshake.ampl = 5
guard.cornerpush.veloff = 8
ownpal = 1

[state 6651, parentvaradd]
type = parentvaradd
trigger1 = movehit = 1
var(14) = 1

[state 6651, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 6651, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 6651, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 6651
ignorehitpause = 1

[state 6651, targetstate]
type = targetstate
trigger1 = numtarget(6651) > 0
trigger1 = target(6651),alive
trigger1 = movehit = 1
value = 5005+(target(6651),statetype=a)*20
ignorehitpause = 1

[state 6651, velset]
type = velset
trigger1 = movecontact
x = 0

[state 6651, destroyself]
type = destroyself
trigger1 = frontedgedist < -30
trigger2 = movecontact > 60
;===========================================================================
;■ティロ・フィナーレ・ガンファイア
[statedef 7000]
movetype = a
physics = n
anim = 27000
sprpriority = 3

[state 7000, bindtoparent]
type = bindtoparent
trigger1 = 1
time = 1
facing = 1
pos = floor(const(size.xscale)*164),-floor(const(size.yscale)*1)

[state 7000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7000, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 7000, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7000, playsnd]
type = playsnd
trigger1 = time = 1
value = 5,23

[state 7000, bgpalfx]
type = bgpalfx
trigger1 = time = 1
time = 6
add = 256,256,256

[state 7000, bgpalfx]
type = bgpalfx
trigger1 = movehit = 1
time = 12
add = (root,var(21)),(root,var(22)),(root,var(23))

[state 7000, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 7000
attr = a,hp
hitflag = mafdp
guardflag = m
affectteam = e
animtype = hard
ground.type = high
priority = 5,hit
sprpriority = 4
damage = floor(425*root,fvar(1)*root,fvar(2))+floor((root,fvar(27)=1.0)*99999),20;◆
getpower = 0,0
givepower = 20,5
ground.hittime  = 60
air.hittime = 60
guard.ctrltime = 60
ground.slidetime = 60
pausetime = 10,10
sparkno = s25002
guard.sparkno = s25030
sparkxy = floor(const(size.xscale)*0),floor(const(size.yscale)*50)
hitsound = s5,24
guardsound = s2,0
ground.velocity = -20,-5.5
guard.velocity = -15
air.velocity =  -20,-5.5
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 40
envshake.freq = 60
envshake.ampl = 4
envshake.phase = 4
guard.cornerpush.veloff = 8

[state 7000, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 7000, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 7000, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 7000
ignorehitpause = 1

[state 7000, targetstate]
type = targetstate
trigger1 = numtarget(7000) > 0
trigger1 = target(7000),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 7000, parentvarset]
type = parentvarset
trigger1 = movehit
trigger1 = roundstate = 3
var(36) = 1
ignorehitpause = 1

[state 7000, destroyself]
type = destroyself
trigger1 = root,movetype = h
trigger2 = animtime = 0
;===========================================================================
;■ソル・レヴァンテ・砲台
[statedef 7100]
movetype = i
physics = n
anim = 7100
sprpriority = 0

[state 7100, bindtoroot]
type = bindtoroot
trigger1 = root,stateno = 3320
facing = 1
pos = floor(const(size.xscale)*0),floor(const(size.yscale)*80)
ignorehitpause = 1

[state 7100, explod]
type = explod
trigger1 = time = 0
anim = 13300
id = 13300
pos = floor(const(size.xscale)*0),floor(const(size.yscale)*0)
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 1
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 7100, playsnd]
type = playsnd
trigger1 = time = 10
value = 4,1;5,21

[state 7100, changestate]
type = changestate
trigger1 = root,movetype = h
trigger2 = root,stateno != [3300,3320]
value = 7101
;---------------------------------------------------------------------------
[statedef 7101]
anim = 7101

[state 7101, explod]
type = explod
trigger1 = time = 15
anim = 13301
id = 13301
pos = floor(const(size.xscale)*0),floor(const(size.yscale)*0)
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 1
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 7101, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■ソル・レヴァンテ・ガンファイア
[statedef 7110]
movetype = a
physics = n
anim = 27100
sprpriority = 3

[state 7110, bindtoparent]
type = bindtoparent
trigger1 = time < 3
time = 1
facing = 1
pos = floor(const(size.xscale)*77),floor(const(size.yscale)*11)

[state 7110, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7110, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 7110, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7110, playsnd]
type = playsnd
trigger1 = time = 1
value = 5,23

[state 7110, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 7110
attr = a,hp
hitflag = mafdp
guardflag = m
affectteam = e
animtype = hard
ground.type = high
priority = 5,hit
sprpriority = 4
damage = floor(300*root,fvar(1)*root,fvar(2)),20
getpower = 0,0
givepower = 20,5
ground.hittime  = 60
air.hittime = 60
guard.ctrltime = 60
ground.slidetime = 60
pausetime = 10,10
sparkno = s25002
guard.sparkno = s25030
sparkxy = floor(const(size.xscale)*0),floor(const(size.yscale)*0)
hitsound = s5,24
guardsound = s2,0
ground.velocity = -20,-5.5
guard.velocity = -15
air.velocity =  -20,-5.5
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 40
envshake.freq = 60
envshake.ampl = 4
envshake.phase = 4
guard.cornerpush.veloff = 8

[state 7110, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 7110, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 7110, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 7110
ignorehitpause = 1

[state 7110, targetstate]
type = targetstate
trigger1 = numtarget(7110) > 0
trigger1 = target(7110),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 7110, parentvarset]
type = parentvarset
trigger1 = movehit
trigger1 = roundstate = 3
var(36) = 2
ignorehitpause = 1

[state 7110, destroyself]
type = destroyself
trigger1 = root,movetype = h
trigger2 = animtime = 0
;===========================================================================
;■キャロ・ディ・ルナ・列車砲
[statedef 7200]
movetype = a
physics = n
anim = 7201
sprpriority = 0

[state 7200, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 7200, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7200, velset]
type = velset
trigger1 = time = 1
x = 20

[state 7200, playsnd]
type = playsnd
trigger1 = time = 10
value = 6,1

[state 7200, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,7

[state 7200, explod]
type = explod
trigger1 = time%2 = 0
anim = 20100+var(5)
id = 20100
pos = floor(const(size.xscale)*90),floor(const(size.yscale)*0)
postype = p1
random = 50,50
vel = -0.6,-0.1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 7200, hitdef]
type = hitdef
trigger1 = time = 1
id = 7200
attr = a,hp
hitflag = maf
guardflag = m
affectteam = e
animtype = hard
ground.type = high
priority = 5,hit
sprpriority = 0
damage = floor(200*root,fvar(1)*root,fvar(2)),20
getpower = 0,0
givepower = 20,5
ground.hittime  = 60
air.hittime = 60
guard.ctrltime = 60
ground.slidetime = 60
pausetime = 10,10
sparkno = s25002
guard.sparkno = s25030
sparkxy = floor(const(size.xscale)*0),-floor(const(size.yscale)*60)
hitsound = s6,0
guardsound = s2,1
ground.velocity = -1.5,-5
guard.velocity = -5
air.velocity = -1.5,-5
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 40
envshake.freq = 60
envshake.ampl = 4
envshake.phase = 4
guard.cornerpush.veloff = 8
kill = 0
guard.kill = 0
fall.kill = 0

[state 7200, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 7200, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 7200, targetdrop]
type = null;targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 7200
ignorehitpause = 1

[state 7200, targetstate]
type = targetstate
trigger1 = numtarget(7200) > 0
trigger1 = target(7200),alive
trigger1 = movehit = 1
value = 3460
ignorehitpause = 1

[state 7200, changestate]
type = changestate
trigger1 = time = 40
value = 7210
;---------------------------------------------------------------------------
[statedef 7210]
movetype = i
physics = n
anim = 7200
velset = -5,0

[state 7210, velset]
type = velset
trigger1 = rootdist x > 0
x = 0

[state 7210, posset]
type = posset
trigger1 = vel x = 0
x = root,pos x

[state 7210, changestate]
type = changestate
trigger1 = numhelper(7250)
value = 7220
;---------------------------------------------------------------------------
[statedef 7220]
movetype = i
physics = n
anim = 7210
velset = 0,0

[state 7220, posset]
type = posset
trigger1 = 1
x = root,pos x

[state 7220, explod]
type = explod
trigger1 = time = 0
anim = 7230
id = 7230
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 1
ownpal = 1

[state 7220, changestate]
type = changestate
trigger1 = root,stateno != 3430
value = 7230
;---------------------------------------------------------------------------
[statedef 7230]
velset = 0,0

[state 7230, velset]
type = velset
trigger1 = time = 30
x = 10

[state 7230, playsnd]
type = playsnd
trigger1 = time = 30
value = 6,2

[state 7230, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,7

[state 7230, explod]
type = explod
trigger1 = time > 30
trigger1 = time%2 = 0
anim = 20100+var(5)
id = 20100
pos = floor(const(size.xscale)*90),floor(const(size.yscale)*0)
postype = p1
random = 50,50
vel = -0.6,-0.1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 7230, destroyself]
type = destroyself
trigger1 = frontedgedist < -350
trigger2 = time > 300
;===========================================================================
;■キャロ・ディ・ルナ・ガンファイア
[statedef 7250]
movetype = a
physics = n
anim = 27200
sprpriority = 3
velset = 45,-5

[state 7250, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7250, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 7250, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7250, playsnd]
type = playsnd
trigger1 = time = 1
value = 5,23

[state 7250, veladd]
type = veladd
trigger1 = 1
y = 0.5

[state 7250, hitdef]
type = hitdef
trigger1 = time = 1
id = 7250
attr = a,hp
hitflag = mafdp
guardflag = m
affectteam = e
animtype = hard
ground.type = high
priority = 5,hit
sprpriority = 4
damage = floor(450*root,fvar(1)*root,fvar(2)),20
getpower = 0,0
givepower = 20,5
ground.hittime  = 60
air.hittime = 60
guard.ctrltime = 60
ground.slidetime = 60
pausetime = 10,10
sparkno = s25002
guard.sparkno = s25030
sparkxy = floor(const(size.xscale)*0),floor(const(size.yscale)*0)
hitsound = s5,24
guardsound = s2,0
ground.velocity = -20,-8.5
guard.velocity = -15
air.velocity =  -20,-8.5
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 40
envshake.freq = 60
envshake.ampl = 4
envshake.phase = 4
guard.cornerpush.veloff = -8

[state 7250, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 7250, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 7250, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 7250
ignorehitpause = 1

[state 7250, targetstate]
type = targetstate
trigger1 = numtarget(7250) > 0
trigger1 = target(7250),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 7250, changestate]
type = changestate
trigger1 = pos y > 0
value = 7260
;---------------------------------------------------------------------------
[statedef 7260]
movetype = a
anim = 31400
velset = 0,0

[state 7260, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7260, playsnd]
type = playsnd
trigger1 = time = 1
value = 6,3

[state 7260, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 7260, bgpalfx]
type = bgpalfx
trigger1 = time = 1
time = 60
add = 256,256,256

[state 7260, allpalfx]
type = allpalfx
trigger1 = time = 1
time = 60
add = (root,var(21)),(root,var(22)),(root,var(23))

[state 7260, envshake]
type = envshake
trigger1 = time = 1
time = 120
freq = 60
ampl = -4
phase = 4

[state 7260, hitdef]
type = hitdef
trigger1 = time = 1
id = 7260
attr = a,hp
hitflag = mafdp
guardflag = m
affectteam = e
animtype = hard
ground.type = high
priority = 5,hit
sprpriority = 4
damage = floor(300*root,fvar(1)*root,fvar(2)),20
getpower = 0,0
givepower = 20,5
ground.hittime  = 60
air.hittime = 60
guard.ctrltime = 60
ground.slidetime = 60
pausetime = 10,10
sparkno = s25002
guard.sparkno = s25030
sparkxy = floor(const(size.xscale)*0),-floor(const(size.yscale)*50)
hitsound = s5,24
guardsound = s2,0
ground.velocity = 0,-15
guard.velocity = 0
air.velocity =  0,-15
fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 40
envshake.freq = 60
envshake.ampl = 4
envshake.phase = 4
guard.cornerpush.veloff = -8

[state 7260, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 7260, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 7260, destroyself]
type = destroyself
trigger1 = time > 60
;===========================================================================
;■ガラッシア・無限波動砲
[statedef 7300]
movetype = a
physics = n
anim = 7300
velset = 2,0
sprpriority = -2

[state 7300, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7300, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7300, playsnd]
type = playsnd
trigger1 = time = 1
value = 7,3

[state 7300, playsnd]
type = playsnd
trigger1 = time = 1
value = 7,0
channel = 1

[state 7300, palfx]
type = palfx
trigger1 = time < 20
time = 9
add = (root,var(21)),(root,var(22)),(root,var(23))

;■ホバー
[state 7300, explod]
type = explod
triggerall = numexplod(27320) = 0
trigger1 = time = 1
anim = 27320
id = 27320
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = -2
ownpal = 1

;■ホバー
[state 7300, explod]
type = explod
triggerall = numexplod(27321) = 0
trigger1 = time = 1
anim = 27321
id = 27321
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = -2
ownpal = 1

;■マジカルタキオン粒子
[state 7300, explod]
type = explod
triggerall = numexplod(27300) = 0
trigger1 = time = 60
anim = 27300
id = 27300
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1

[state 7300, explod]
type = explod
triggerall = numexplod(27301) = 0
trigger1 = time = 60
anim = 27301
id = 27301
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1

;■松本メーター
[state 7300, explod]
type = explod
triggerall = numexplod(27310) = 0
trigger1 = time = 60
anim = 27310
id = 27310
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1

[state 7300, explod]
type = explod
triggerall = numexplod(27311) = 0
trigger1 = time = 60
anim = 27311
id = 27311
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1

[state 7300, explod]
type = explod
triggerall = numexplod(27312) = 0
trigger1 = time = 60
anim = 27312
id = 27312
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1

[state 7300, explod]
type = explod
triggerall = numexplod(27313) = 0
trigger1 = time = 60
anim = 27313
id = 27313
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1

[state 7300, explod]
type = explod
triggerall = numexplod(27314) = 0
trigger1 = time = 60
anim = 27314
id = 27313
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1

[state 7300, explod]
type = explod
triggerall = numexplod(27315) = 0
trigger1 = time = 60
anim = 27315
id = 27315
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1

[state 7300, explod]
type = explod
triggerall = numexplod(27316) = 0
trigger1 = time = 60
anim = 27316
id = 27316
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1

[state 7300, explod]
type = explod
triggerall = numexplod(27317) = 0
trigger1 = time = 60
anim = 27317
id = 27317
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1

[state 7300, changestate]
type = changestate
trigger1 = rootdist x <= 0
value = 7310
;---------------------------------------------------------------------------
[statedef 7310]
velset = 0,0
sprpriority = -2

[state 7310, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7310, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7310, changestate]
type = changestate
trigger1 = rootdist y <= 20
value = 7320

[state 7310, changestate]
type = changestate
trigger1 = time > 240
value = 7350
;---------------------------------------------------------------------------
[statedef 7320]
velset = 0,0
anim = 7320
velset = 0,0
sprpriority = -2

[state 7320, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7320, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7320, posset]
type = posset
trigger1 = 1
x = root,pos x
y = root,pos y

[state 7320, changestate]
type = changestate
trigger1 = animtime = 0
value = 7330
;---------------------------------------------------------------------------
[statedef 7330]
velset = 0,0
anim = 7300
sprpriority = -2

[state 7330, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7330, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7330, posset]
type = posset
trigger1 = 1
x = root,pos x
y = root,pos y

[state 7330, changestate]
type = changestate
trigger1 = time = 300
value = 7340
;---------------------------------------------------------------------------
[statedef 7340]
velset = 0,0
sprpriority = -2

[state 7340, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7340, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7340, posset]
type = posset
trigger1 = 1
x = root,pos x
y = root,pos y

[state 7340, stopsnd]
type = stopsnd
trigger1 = time = 61
channel = 1

[state 7340, helper]
type = helper
trigger1 = time = 60
helpertype = normal
name = "fire1"
id = 7500
stateno = 7500
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
;supermovetime = 999
;pausemovetime = 999

[state 7340, helper]
type = helper
trigger1 = time = 60
helpertype = normal
name = "fire2"
id = 7501
stateno = 7501
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
;supermovetime = 999
;pausemovetime = 999

[state 7340, helper]
type = helper
trigger1 = root,fvar(26) = 1.0;◆
trigger1 = time = 60
helpertype = normal
name = "fire-c1"
id = 7502
stateno = 7501
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
;supermovetime = 999
;pausemovetime = 999

[state 7340, helper]
type = helper
trigger1 = root,fvar(26) = 1.0;◆
trigger1 = time = 60
helpertype = normal
name = "fire-c2"
id = 7503
stateno = 7501
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
;supermovetime = 999
;pausemovetime = 999

[state 7340, removeexplod]
type = removeexplod
trigger1 = time = 60
id = 27300

[state 7340, removeexplod]
type = removeexplod
trigger1 = time = 60
id = 27301

[state 7340, changestate]
type = changestate
trigger1 = numhelper(7500)
trigger1 = helper(7500),stateno = 7520
value = 7350
;---------------------------------------------------------------------------
[statedef 7350]
movetype = i
anim = 7350
sprpriority = -2

[state 7350, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7350, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7350, removeexplod]
type = removeexplod
trigger1 = time = 20

[state 7350, playsnd]
type = playsnd
trigger1 = time = 20
value = 7,2
channel = 1

[state 7350, explod]
type = explod
trigger1 = time = 20
anim = 27350
id = 27350
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 1
ownpal = 1

[state 7350, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■ガラッシア・ガンファイア・甲
[statedef 7500]
movetype = a
physics = n
anim = 27500
sprpriority = 0

[state 7500, changeanim]
type = changeanim
trigger1 = anim = 27500
trigger1 = animtime = 0
value = 27510

[state 7500, bindtoparent]
type = bindtoparent
trigger1 = 1
time = -1
facing = 1
pos = floor(const(size.xscale)*116),-floor(const(size.yscale)*0)

[state 7500, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7500, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 7500, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7500, playsnd]
type = playsnd
trigger1 = time = 1
value = 7,1

[state 7500, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = -15,15

[state 7500, varrandom]
type = varrandom
trigger1 = 1
v = 6
range = -15,15

[state 7500, hitdef]
type = hitdef
trigger1 = anim = 27510
id = 7500
attr = a,hp
hitflag = mafdp
guardflag = m
affectteam = e
animtype = hard
ground.type = high
priority = 5,hit
sprpriority = 5
damage = 1,time%2=0
getpower = 0,0
givepower = 1,0
ground.hittime  = 60
air.hittime = 60
guard.ctrltime = 60
ground.slidetime = 60
pausetime = 1,1
sparkno = s25002
guard.sparkno = s25030
sparkxy = floor(const(size.xscale)*var(5)),floor(const(size.yscale)*var(6))
hitsound = s-1,0
guardsound = s-1,0
ground.velocity = -2,-5.5
guard.velocity = -1
air.velocity =  -2,-5.5
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 40
envshake.freq = 60
envshake.ampl = 4
envshake.phase = 4
kill = time > 400

[state 7500, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 7500
ignorehitpause = 1

[state 7500, targetstate]
type = targetstate
trigger1 = numtarget(7500) > 0
trigger1 = target(7500),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 7500, changestate]
type = changestate
trigger1 = root,movetype = h
trigger2 = time > 418
value = 7520
;===========================================================================
;■ガラッシア・ガンファイア・乙
[statedef 7501]
movetype = a
physics = n
anim = 27500
sprpriority = 0

[state 7501, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[state 7501, changeanim]
type = changeanim
trigger1 = anim = 27500
trigger1 = animtime = 0
value = 27510

[state 7501, bindtoparent]
type = bindtoparent
trigger1 = 1
time = -1
facing = 1
pos = floor(const(size.xscale)*116),-floor(const(size.yscale)*0)

[state 7501, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7501, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 7501, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7501, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = -15,15

[state 7501, varrandom]
type = varrandom
trigger1 = 1
v = 6
range = -15,15

[state 7501, hitdef]
type = hitdef
trigger1 = anim = 27510
id = 7501
attr = a,hp
hitflag = mafdp
guardflag = m
affectteam = e
animtype = hard
ground.type = high
priority = 5,hit
sprpriority = 5
damage = 1,0
getpower = 0,0
givepower = 0,0
ground.hittime  = 60
air.hittime = 60
guard.ctrltime = 60
ground.slidetime = 60
pausetime = 1,1
sparkno = s25002
guard.sparkno = s25030
sparkxy = floor(const(size.xscale)*var(5)),floor(const(size.yscale)*var(6))
hitsound = s-1,0
guardsound = s-1,0
ground.velocity = -2,-5.5
guard.velocity = -1
air.velocity =  -2,-5.5
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 900
envshake.time = 40
envshake.freq = 60
envshake.ampl = 4
envshake.phase = 4
kill = time > 400
numhits = 0

[state 7501, targetdrop]
type = targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 7501
ignorehitpause = 1

[state 7501, targetstate]
type = targetstate
trigger1 = numtarget(7501) > 0
trigger1 = target(7501),alive
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 7501, destroyself]
type = destroyself
trigger1 = root,movetype = h
trigger2 = time > 418
;---------------------------------------------------------------------------
[statedef 7520]
movetype = i
anim = 27520
sprpriority = 1

[state 7520, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7520, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 7520, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7520, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■透過演出補助
[statedef 7900]
type = a
movetype = i
physics = n
sprpriority = -5
anim = 1

[state 7900, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7900, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 7900, destroyself]
type = destroyself
trigger1 = time > 77+root,var(38)*30
trigger2 = root,stateno != 3200
ignorehitpause = 1
;===========================================================================
;===========================================================================
;■光の花
[statedef 20000]
type = a
movetype = i
physics = n
anim = 20000
sprpriority = 0

[state 20000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 20000, varset]
type = varset
trigger1 = time < 1
var(1) = root,facing

[state 20000, velset]
type = velset
trigger1 = time = 0
x = -(rootdist x)*0.006
y = -(rootdist y-75*const(size.yscale))*0.006

[state 20000, angledraw]
type = angledraw
trigger1 = 1
ignorehitpause = 1

[state 20000, angleadd]
type = angleadd
trigger1 = 1
value = -0.3*var(1)
ignorehitpause = 1

[state 20000, trans]
type = trans
trigger1 = 1
trans = add
ignorehitpause = 1

[state 20000, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■花魔法陣
[statedef 20100]
type = a
movetype = i
physics = n
anim = 1
sprpriority = 0

[state 20100, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[state 20100, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,7

[state 20100, explod]
type = explod
trigger1 = time = 0
trigger2 = time = 7
trigger2 = random < 300
anim = 20100+var(1)
id = 20100
pos = floor(const(size.xscale)*random*0.03),floor(const(size.yscale)*random*0.03)
postype = p1
facing = 1
vel = 0.1,0.1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 20100, explod]
type = explod
trigger1 = time = 2
trigger2 = time = 5
trigger2 = random < 30
anim = 20100+var(1)
id = 20100
pos = floor(const(size.xscale)*random*0.03),-floor(const(size.yscale)*random*0.03)
postype = p1
facing = 1
vel = 0.1,-0.1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 20100, explod]
type = explod
trigger1 = time = 4
trigger2 = time = 3
trigger2 = random < 300
anim = 20100+var(1)
id = 20100
pos = -floor(const(size.xscale)*random*0.03),floor(const(size.yscale)*random*0.03)
postype = p1
facing = 1
vel = -0.1,0.1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 20100, explod]
type = explod
trigger1 = time = 6
trigger2 = time = 1
trigger2 = random < 300
anim = 20100+var(1)
id = 20100
pos = -floor(const(size.xscale)*random*0.03),-floor(const(size.yscale)*random*0.03)
postype = p1
facing = 1
vel = -0.1,-0.1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 20100, destroyself]
type = destroyself
trigger1 = time > 60
;===========================================================================
;■ティロ・ヴォレー・ホライゾン射出フロント
[statedef 21000]
anim = 1
sprpriority = 0

[state 21000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 21000, varset]
type = varset
trigger1 = time = 0
var(7) = root,var(7)
ignorehitpause = 1

[state 21000, parentvarset];▼AI
type = parentvarset
trigger1 = var(46) != 0
var(46) = var(46)
persistent = 0
ignorehitpause = 1

[state 21000, varset]
type = varset
trigger1 = time = 0
var(2) = 3
ignorehitpause = 1

[state 21000, helper]
type = helper
trigger1 = time = 6
helpertype = normal
name = "musket 1"
id = 6001
stateno = 6000
pos = -floor(const(size.xscale)*45),-floor(const(size.yscale)*110)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21000, helper]
type = helper
trigger1 = time = 9
helpertype = normal
name = "musket 2"
id = 6002
stateno = 6000
pos = -floor(const(size.xscale)*70),-floor(const(size.yscale)*65)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21000, helper]
type = helper
trigger1 = time = 12
helpertype = normal
name = "musket 3"
id = 6003
stateno = 6000
pos = -floor(const(size.xscale)*40),-floor(const(size.yscale)*20)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21000, parentvaradd]
type = parentvaradd
trigger1 = var(14) != 0
var(14) = var(14)

[state 21000, varset]
type = varset
trigger1 = var(14) != 0
var(14) = 0

[state 21000, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 21000, destroyself]
type = destroyself
trigger1 = time > 200
;===========================================================================
;■ティロ・ヴォレー・ホライゾン射出バック
[statedef 21010]
anim = 1
sprpriority = 0

[state 21010, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 21010, varset]
type = varset
trigger1 = time = 0
var(7) = root,var(7)
ignorehitpause = 1

[state 21010, varset]
type = varset
trigger1 = time = 0
var(2) = 2
ignorehitpause = 1

[state 21010, helper]
type = helper
trigger1 = time = 15
helpertype = normal
name = "musket 4"
id = 6004
stateno = 6000
pos = floor(const(size.xscale)*40),-floor(const(size.yscale)*100)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21010, helper]
type = helper
trigger1 = time = 18
helpertype = normal
name = "musket 5"
id = 6005
stateno = 6000
pos = floor(const(size.xscale)*30),-floor(const(size.yscale)*60)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21010, helper]
type = helper
trigger1 = time = 21
helpertype = normal
name = "musket 6"
id = 6006
stateno = 6000
pos = floor(const(size.xscale)*65),-floor(const(size.yscale)*35)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21010, parentvaradd]
type = parentvaradd
trigger1 = var(14) != 0
var(14) = var(14)

[state 21010, varset]
type = varset
trigger1 = var(14) != 0
var(14) = 0

[state 21010, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 21010, destroyself]
type = destroyself
trigger1 = time > 200
;===========================================================================
;■ティロ・ヴォレー・フェイント射出フロント
[statedef 21030]
anim = 1
sprpriority = 0

[state 21030, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 21030, varset]
type = varset
trigger1 = time = 0
var(2) = 3
ignorehitpause = 1

[state 21030, helper]
type = helper
trigger1 = time = 6
helpertype = normal
name = "musket 1"
id = 6031
stateno = 6030
pos = -floor(const(size.xscale)*45),-floor(const(size.yscale)*110)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21030, helper]
type = helper
trigger1 = time = 9
helpertype = normal
name = "musket 2"
id = 6032
stateno = 6030
pos = -floor(const(size.xscale)*70),-floor(const(size.yscale)*65)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21030, helper]
type = helper
trigger1 = time = 12
helpertype = normal
name = "musket 3"
id = 6033
stateno = 6030
pos = -floor(const(size.xscale)*40),-floor(const(size.yscale)*20)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21030, posadd]
type = posadd
trigger1 = time = 70
x = -floor(const(size.xscale)*70)
y = -floor(const(size.yscale)*70)

[state 21030, changestate]
type = changestate
trigger1 = time = 70
value = 20100

[state 21030, destroyself]
type = destroyself
trigger1 = time > 160
;===========================================================================
;■ティロ・ヴォレー・フェイント射出バック
[statedef 21035]
anim = 1
sprpriority = 0

[state 21035, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 21035, varset]
type = varset
trigger1 = time = 0
var(2) = 2
ignorehitpause = 1

[state 21035, helper]
type = helper
trigger1 = time = 15
helpertype = normal
name = "musket 4"
id = 6034
stateno = 6030
pos = floor(const(size.xscale)*40),-floor(const(size.yscale)*100)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21035, helper]
type = helper
trigger1 = time = 18
helpertype = normal
name = "musket 5"
id = 6035
stateno = 6030
pos = floor(const(size.xscale)*30),-floor(const(size.yscale)*60)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21035, helper]
type = helper
trigger1 = time = 21
helpertype = normal
name = "musket 6"
id = 6036
stateno = 6030
pos = floor(const(size.xscale)*65),-floor(const(size.yscale)*35)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21035, posadd]
type = posadd
trigger1 = time = 70
x = floor(const(size.xscale)*70)
y = -floor(const(size.yscale)*70)

[state 21035, changestate]
type = changestate
trigger1 = time = 70
value = 20100

[state 21035, destroyself]
type = destroyself
trigger1 = time > 160
;===========================================================================
;■ティロ・ヴォレー・クォート射出フロント
[statedef 21100]
anim = 1
sprpriority = 0

[state 21100, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 21100, varset]
type = varset
trigger1 = time = 0
var(7) = root,var(7)
ignorehitpause = 1

[state 21100, varset]
type = varset
trigger1 = time = 0
var(2) = 3
ignorehitpause = 1

[state 21100, helper]
type = helper
trigger1 = time = 6
helpertype = normal
name = "musket 1"
id = 6101
stateno = 6100
pos = -floor(const(size.xscale)*45),-floor(const(size.yscale)*110)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21100, helper]
type = helper
trigger1 = time = 9
helpertype = normal
name = "musket 2"
id = 6102
stateno = 6100
pos = -floor(const(size.xscale)*70),-floor(const(size.yscale)*65)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21100, helper]
type = helper
trigger1 = time = 12
helpertype = normal
name = "musket 3"
id = 6103
stateno = 6100
pos = -floor(const(size.xscale)*40),-floor(const(size.yscale)*20)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21100, parentvaradd]
type = parentvaradd
trigger1 = var(14) != 0
var(14) = var(14)

[state 21100, varset]
type = varset
trigger1 = var(14) != 0
var(14) = 0

[state 21100, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 21100, destroyself]
type = destroyself
trigger1 = time > 160
;===========================================================================
;■ティロ・ヴォレー・クォート射出バック
[statedef 21110]
anim = 1
sprpriority = 0

[state 21110, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 21110, varset]
type = varset
trigger1 = time = 0
var(7) = root,var(7)
ignorehitpause = 1

[state 21110, varset]
type = varset
trigger1 = time = 0
var(2) = 2
ignorehitpause = 1

[state 21110, helper]
type = helper
trigger1 = time = 15
helpertype = normal
name = "musket 4"
id = 60104
stateno = 6100
pos = floor(const(size.xscale)*40),-floor(const(size.yscale)*100)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21110, helper]
type = helper
trigger1 = time = 18
helpertype = normal
name = "musket 5"
id = 6105
stateno = 6100
pos = floor(const(size.xscale)*60),-floor(const(size.yscale)*50)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21110, helper]
type = helper
trigger1 = time = 21
helpertype = normal
name = "musket 6"
id = 6106
stateno = 6100
pos = floor(const(size.xscale)*45),-floor(const(size.yscale)*5)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 211100, parentvaradd]
type = parentvaradd
trigger1 = var(14) != 0
var(14) = var(14)

[state 21110, varset]
type = varset
trigger1 = var(14) != 0
var(14) = 0

[state 21110, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 21110, destroyself]
type = destroyself
trigger1 = time > 160
;===========================================================================
;■グランディーネ射出１
[statedef 21200]
anim = 1
sprpriority = 0

[state 21200, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 21200, varset]
type = varset
trigger1 = time = 0
var(2) = 2
ignorehitpause = 1

[state 21200, helper]
type = helper
trigger1 = time = 6
helpertype = normal
name = "musket 1"
id = 6201
stateno = 6200
pos = -floor(const(size.xscale)*20),-floor(const(size.yscale)*20)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21200, helper]
type = helper
trigger1 = time = 9
helpertype = normal
name = "musket 2"
id = 6202
stateno = 6200
pos = -floor(const(size.xscale)*50),-floor(const(size.yscale)*55)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21200, helper]
type = helper
trigger1 = time = 12
helpertype = normal
name = "musket 3"
id = 6203
stateno = 6200
pos = -floor(const(size.xscale)*80),-floor(const(size.yscale)*25)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21200, parentvaradd]
type = parentvaradd
trigger1 = var(14) != 0
var(14) = var(14)

[state 21200, varset]
type = varset
trigger1 = var(14) != 0
var(14) = 0

[state 21200, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 21200, destroyself]
type = destroyself
trigger1 = time > 160
;===========================================================================
;■グランディーネ射出２
[statedef 21210]
anim = 1
sprpriority = 0

[state 21210, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 21210, varset]
type = varset
trigger1 = time = 0
var(2) = 2
ignorehitpause = 1

[state 21210, helper]
type = helper
trigger1 = time = 6
helpertype = normal
name = "musket 4"
id = 6204
stateno = 6200
pos = floor(const(size.xscale)*20),-floor(const(size.yscale)*20)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21210, helper]
type = helper
trigger1 = time = 9
helpertype = normal
name = "musket 5"
id = 6205
stateno = 6200
pos = floor(const(size.xscale)*50),-floor(const(size.yscale)*55)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21210, helper]
type = helper
trigger1 = time = 12
helpertype = normal
name = "musket 6"
id = 6206
stateno = 6200
pos = floor(const(size.xscale)*80),-floor(const(size.yscale)*25)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 21210, parentvaradd]
type = parentvaradd
trigger1 = var(14) != 0
var(14) = var(14)

[state 21210, varset]
type = varset
trigger1 = var(14) != 0
var(14) = 0

[state 21210, parentvarset]
type = parentvarset
trigger1 = var(15) != 0
var(15) = var(15)

[state 21210, destroyself]
type = destroyself
trigger1 = time > 160
;===========================================================================
;■レガーレ・バインド１
[statedef 21400]
type = a
movetype = i
physics = n
anim = 1

[state 21400, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 21400, varset]
type = varset
trigger1 = time < 3
var(18) = root,var(18)

[state 21400, explod]
type = explod
trigger1 = playeridexist(var(18))
trigger1 = time = 0
anim = 21400
id = 21400
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1

[state 21400, explod]
type = explod
trigger1 = playeridexist(var(18))
trigger1 = time = 0
anim = 21410
id = 21410
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1

[state 21400, playsnd]
type = playsnd
trigger1 = time = 0
value = 1,8

[state 21400, posset]
type = posset
trigger1 = playeridexist(var(18))
trigger1 = playerid(var(18)),movetype = h
trigger1 = playerid(var(18)),stateno != [120,155]
x = (playerid(var(18)),pos x)
y = (playerid(var(18)),pos y)-50

[state 21400, removeexplod]
type = removeexplod
trigger1 = playeridexist(var(18))
trigger1 = playerid(var(18)),stateno != 1490
trigger2 = !playeridexist(var(18))
id = 21400

[state 21400, removeexplod]
type = removeexplod
trigger1 = playeridexist(var(18))
trigger1 = playerid(var(18)),stateno != 1490
trigger2 = !playeridexist(var(18))
id = 21410

[state 21400, destroyself]
type = destroyself
trigger1 = playeridexist(var(18))
trigger1 = playerid(var(18)),stateno != 1490
trigger2 = !playeridexist(var(18))
ignorehitpause = 1
;===========================================================================
;■レガーレ・バインド２
[statedef 21401]
type = a
movetype = i
physics = n
anim = 1

[state 21401, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 21401, varset]
type = varset
trigger1 = time < 3
var(19) = root,var(19)

[state 21401, explod]
type = explod
trigger1 = playeridexist(var(19))
trigger1 = time = 0
anim = 21400
id = 21401
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1

[state 21401, explod]
type = explod
trigger1 = playeridexist(var(19))
trigger1 = time = 0
anim = 21410
id = 21411
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1

[state 21401, playsnd]
type = playsnd
trigger1 = time = 0
value = 1,8

[state 21401, posset]
type = posset
trigger1 = playeridexist(var(19))
trigger1 = playerid(var(19)),movetype = h
trigger1 = playerid(var(19)),stateno != [120,155]
x = (playerid(var(19)),pos x)
y = (playerid(var(19)),pos y)-50

[state 21401, removeexplod]
type = removeexplod
trigger1 = playeridexist(var(19))
trigger1 = playerid(var(19)),stateno != 1490
trigger2 = !playeridexist(var(19))
id = 21401

[state 21401, removeexplod]
type = removeexplod
trigger1 = playeridexist(var(19))
trigger1 = playerid(var(19)),stateno != 1490
trigger2 = !playeridexist(var(19))
id = 21411

[state 21401, destroyself]
type = destroyself
trigger1 = playeridexist(var(19))
trigger1 = playerid(var(19)),stateno != 1490
trigger2 = !playeridexist(var(19))
ignorehitpause = 1
;===========================================================================
;■レガーレ・ガラッシア・バインド１
[statedef 23500]
type = a
movetype = i
physics = n
anim = 1

[state 23500, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 23500, varset]
type = varset
trigger1 = time < 3
var(18) = root,var(18)

[state 23500, explod]
type = explod
trigger1 = playeridexist(var(18))
trigger1 = time = 0
anim = 21400
id = 23500
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1

[state 23500, explod]
type = explod
trigger1 = playeridexist(var(18))
trigger1 = time = 0
anim = 21410
id = 23510
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1

[state 23500, playsnd]
type = playsnd
trigger1 = time = 0
value = 1,8

[state 23500, posset]
type = posset
trigger1 = playeridexist(var(18))
trigger1 = playerid(var(18)),movetype = h
trigger1 = playerid(var(18)),stateno != [120,155]
x = (playerid(var(18)),pos x)
y = (playerid(var(18)),pos y)-50

[state 23500, removeexplod]
type = removeexplod
trigger1 = playeridexist(var(18))
trigger1 = playerid(var(18)),stateno != 3590
trigger2 = !playeridexist(var(18))
id = 23500

[state 23500, removeexplod]
type = removeexplod
trigger1 = playeridexist(var(18))
trigger1 = playerid(var(18)),stateno != 3590
trigger2 = !playeridexist(var(18))
id = 23510

[state 23500, destroyself]
type = destroyself
trigger1 = playeridexist(var(18))
trigger1 = playerid(var(18)),stateno != 3590
trigger2 = !playeridexist(var(18))
ignorehitpause = 1
;===========================================================================
;■レガーレ・ガラッシア・バインド２
[statedef 23501]
type = a
movetype = i
physics = n
anim = 1

[state 23501, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 23501, varset]
type = varset
trigger1 = time < 3
var(19) = root,var(19)

[state 23501, explod]
type = explod
trigger1 = playeridexist(var(19))
trigger1 = time = 0
anim = 21400
id = 23501
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1

[state 23501, explod]
type = explod
trigger1 = playeridexist(var(19))
trigger1 = time = 0
anim = 21410
id = 23511
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 1

[state 23501, playsnd]
type = playsnd
trigger1 = time = 0
value = 1,8

[state 23501, posset]
type = posset
trigger1 = playeridexist(var(19))
trigger1 = playerid(var(19)),movetype = h
trigger1 = playerid(var(19)),stateno != [120,155]
x = (playerid(var(19)),pos x)
y = (playerid(var(19)),pos y)-50

[state 23501, removeexplod]
type = removeexplod
trigger1 = playeridexist(var(19))
trigger1 = playerid(var(19)),stateno != 3590
trigger2 = !playeridexist(var(19))
id = 23501

[state 23501, removeexplod]
type = removeexplod
trigger1 = playeridexist(var(19))
trigger1 = playerid(var(19)),stateno != 3590
trigger2 = !playeridexist(var(19))
id = 23511

[state 23501, destroyself]
type = destroyself
trigger1 = playeridexist(var(19))
trigger1 = playerid(var(19)),stateno != 3590
trigger2 = !playeridexist(var(19))
ignorehitpause = 1
;===========================================================================
;===========================================================================
;■マギカブート結界
[statedef 32400]
type = a
movetype = i
physics = n
anim = 32400
sprpriority = -3

[state 32400, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = nofg
ignorehitpause = 1

[state 32400, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
[statedef 65000]
movetype = i

[state 65000, stopsnd]
type = stopsnd
trigger1 = 1
channel = 1

[state 65000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[state 65000, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa

[state 65000, destroyself]
type = destroyself
trigger1 = time = 100