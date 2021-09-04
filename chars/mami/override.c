;===========================================================================
;������common override������
;===========================================================================
;���j���[�g����
[statedef 0]
type = s
physics = s

[state 0, selfstate]
type = selfstate
trigger1 = !(authorname = "otz-kai")
trigger1 = prevstateno != 0
value = 0

[state 0, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 0, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = prevstateno = 195
value = 0
elem = 7

[state 0, changeanim]
type = changeanim
trigger1 = anim != 0 && anim != 5
trigger2 = anim = 5 && animtime = 0
value = 0

[state 0, posset]
type = posset
trigger1 = pos y != 0
y = 0

[state 0, velset]
type = velset
trigger1 = time = 0
y = 0

[state 0, changestate]
type = changestate
trigger1 = !alive
value = 5050
;---------------------------------------------------------------------------
;�����s
[statedef 20]
type    = s
physics = s

[state 20, changestate]
type = changestate
trigger1 = var(50) != 0
value = 0
ctrl = 1
ignorehitpause = 1

[state 20, velset]
type = velset
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[state 20, velset]
type = velset
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[state 20, changeanim]
type = changeanim
triggerall = vel x > 0
trigger1 = anim != 20 && anim != 5
trigger2 = anim = 5 && animtime = 0
value = 20

[state 20, changeanim]
type = changeanim
triggerall = vel x < 0
trigger1 = anim != 21 && anim != 5
trigger2 = anim = 5 && animtime = 0
value = 21
;---------------------------------------------------------------------------
;�����s(ai)
[statedef 21]
type    = s
physics = s
ctrl = 0

[state 21, velset]
type = velset
trigger1 = time = 0
trigger1 = random = [0,699]
trigger2 = anim = 20
x = const(velocity.walk.fwd.x)

[state 21, velset]
type = velset
trigger1 = time = 0
trigger1 = random = [700,999]
trigger2 = anim = 21
x = const(velocity.walk.back.x)

[state 21, changeanim]
type = changeanim
triggerall = vel x >= 0
trigger1 = anim != 20 && anim != 5
trigger2 = anim = 5 && animtime = 0
value = 20

[state 21, changeanim]
type = changeanim
triggerall = vel x < 0
trigger1 = anim != 21 && anim != 5
trigger2 = anim = 5 && animtime = 0
value = 21

[state 21, changestate]
type = changestate
trigger1 = p2movetype = a
trigger2 = roundstate != 2
trigger2 = time > 200
trigger3 = p2dist x < 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;���W�����v�X�^�[�g
[statedef 40]
type    = s
physics = s
anim = 40
ctrl = 0

[state 40, changestate]
type = changestate
trigger1 = var(50) != 0
value = 0
ctrl = 1
ignorehitpause = 1

[state 40, nothitby]
type = nothitby
trigger1 = 1
value = ,at
ignorehitpause = 1

[state 40, varset]
type = varset
trigger1 = time = 0
sysvar(1) = 0

[state 40, varset]
type = varset
trigger1 = command = "holdfwd"
sysvar(1) = 1

[state 40, varset]
type = varset
trigger1 = command = "holdback"
sysvar(1) = -1

[state 40, helper]
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

[state 40, velset]
type = velset
trigger1 = animtime = 0
x = ifelse(sysvar(1)=0,const(velocity.jump.neu.x),ifelse(sysvar(1)=1,const(velocity.jump.fwd.x),const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[state 40, velset]
type = velset
trigger1 = animtime = 0
trigger1 = prevstateno = 100
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[state 40, changestate]
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
;���W�����v�X�^�[�g(ai)
[statedef 41]
type    = s
physics = s
anim = 40
ctrl = 0

[state 41, nothitby]
type = nothitby
trigger1 = 1
value = ,at
ignorehitpause = 1

[state 41, varset]
type = varset
trigger1 = time = 0
trigger2 = var(53) = 1
sysvar(1) = 0

[state 41, varset]
type = varset
trigger1 = var(53) = 0
trigger1 = random = [0,699]
trigger2 = var(53) != 0
trigger2 = var(53) != 1
trigger2 = var(53) != 50
trigger2 = var(53) != 57
trigger3 = p2movetype = h
sysvar(1) = 1

[state 41, varset]
type = varset
trigger1 = var(53) = 0
trigger1 = random = [950,999]
trigger1 = p2movetype != h
trigger2 = var(53) = 50
trigger3 = var(53) = 57
sysvar(1) = -1

[state 41, helper]
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

[state 41, velset]
type = velset
trigger1 = animtime = 0
x = ifelse(sysvar(1)=0,const(velocity.jump.neu.x),ifelse(sysvar(1)=1,const(velocity.jump.fwd.x),const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[state 41, velset]
type = velset
trigger1 = animtime = 0
trigger1 = prevstateno = 100
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[state 41, changestate]
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
;���G�A�W�����v
[statedef 45]
type    = a
physics = n
ctrl = 0
velset = 0,0

[state 45, changeanim]
type = changeanim
trigger1 = selfanimexist(44)
value = 44

[state 45, changeanim]
type = changeanim
trigger1 = !selfanimexist(44)
value = 41

[state 45, varset]
type = varset
trigger1 = time = 0
sysvar(1) = 0

[state 45, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "holdfwd"
trigger2 = var(50) != 0
trigger2 = var(53) = 0
trigger2 = random = [0,699]
trigger3 = var(53) != 0
trigger4 = p2movetype = h
sysvar(1) = 1

[state 45, helper]
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

[state 45, playsnd]
type = playsnd
trigger1 = time = 0
trigger1 = prevstateno = 63
value = 2,14

[state 45, afterimage]
type = afterimage
trigger1 = time = 0
trigger1 = prevstateno = 63
time = 40
length = 16
palcontrast = 192,192,192
paladd = 20,20,20
palmul = 0.7,0.7,0.7
framegap = 4
trans = add1

[state 45, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "holdback"
trigger2 = var(50) != 0
trigger2 = var(53) = 0
trigger2 = random = [950,999]
trigger2 = p2movetype != h
sysvar(1) = -1

[state 45, velset]
type = velset
trigger1 = time = 2
x = ifelse(sysvar(1)=0,0,ifelse(sysvar(1)=1,const(velocity.airjump.fwd.x)*(1.0+(prevstateno=63)*0.3),const(velocity.airjump.back.x)*(1.0+(prevstateno=63)*0.3)))
y = const(velocity.airjump.y)

[state 45, changestate]
type = changestate
trigger1 = time = 2
value = 50
ctrl = 1
;---------------------------------------------------------------------------
;���W�����v�A�b�v
[statedef 50]
type    = a
physics = a

[state 50, varset]
type = varset
trigger1 = time = 0
sysvar(1) = 0

[state 50, changeanim]
type = changeanim
triggerall = time = 0
trigger1 = prevstateno != [415,417]
trigger1 = prevstateno != 1100
trigger1 = prevstateno != 1400
trigger1 = prevstateno != 3200
value = ifelse((vel x)=0,41,ifelse((vel x)>0,42,43))
elem = (prevstateno=[110,115])*9

[state 50, changeanim]
type = changeanim
triggerall = time = 0
trigger1 = prevstateno = [415,417]
trigger2 = prevstateno = 1100
trigger3 = prevstateno = 1400
trigger4 = prevstateno = 3200
value = ifelse((vel x)=0,41,ifelse((vel x)>0,42,43))
elem = ifelse((vel x)=0,7,9)

[state 50, changeanim]
type = changeanim
trigger1 = vel y > -2
trigger1 = selfanimexist(anim + 3)
persistent = 0
value = anim + 3
;---------------------------------------------------------------------------
;���W�����v�_�E��
[statedef 51]
type    = a
physics = a

[state 51, changeanim]
type = changeanim
triggerall = time = 0
trigger1 = prevstateno = 140
value = ifelse((vel x)=0,41,ifelse((vel x)>0,42,43))
elem = ifelse((vel x)=0,7,9)
;---------------------------------------------------------------------------
;���W�����v���n
[statedef 52]
type    = s
physics = s
ctrl = 0
anim = 47

[state 52, helper]
type = helper
triggerall = authorname = "otz-kai" && name = "tomoe mami"
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

[state 52, varadd]
type = varadd
triggerall = authorname = "otz-kai" && name = "tomoe mami"
trigger1 = var(31) > 0
var(31) = -1

[state 52, varset];���R�}���h�i�[�o�O���
type = varset
triggerall = authorname = "otz-kai" && name = "tomoe mami"
trigger1 = prevstateno = 550
var(6) = 0

[state 52, velset]
type = velset
trigger1 = 1
y = 0

[state 52, posset]
type = posset
trigger1 = 1
y = 0

[state 52, selfstate]
type = selfstate
triggerall = time >= 3
trigger1 = !(authorname = "otz-kai") && name != "tomoe mami"
trigger2 = authorname = "otz-kai" && name = "tomoe mami"
trigger2 = var(31) = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;���n�C�W�����v
[statedef 60]
type = a
movetype = i
physics = a
ctrl = 0

[state 60, varset];���ۗ�
type = null;varset
trigger1 = time = 0
var(31) = 12

[state 60, varset]
type = varset
trigger1 = 1
var(10) = 1

[state 60, varset]
type = varset
triggerall = var(50) = 0
trigger1 = command = "sjump-n"
var(7) = 0

[state 60, varset]
type = varset
triggerall = var(50) = 0
trigger1 = command = "sjump-f"
var(7) = 1

[state 60, varset]
type = varset
triggerall = var(50) = 0
trigger1 = command = "sjump-b"
var(7) = -1

[state 60, varset];��AI�E���S���u
type = varset
triggerall = var(50) != 0
trigger1 = var(7) != [-1,1]
trigger1 = time > 3
var(7) = -1

[state 60, varset];��AI
type = varset
triggerall = var(50) != 0
trigger1 = var(53) = 25
var(7) = 1

[state 60, helper]
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

[state 60, afterimage]
type = afterimage
trigger1 = time = 0
time = 30
length = 16
palcontrast = 192,192,192
paladd = 20,20,20
palmul = 0.7,0.7,0.7
framegap = 4
trans = add1

[state 60, changeanim]
type = changeanim
trigger1 = time = 0
value = 60
persistent = 0

[state 60, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,14

[state 60, velset]
type = velset
trigger1 = time = 0
x = ifelse(var(7)=0,0,ifelse(var(7)=1,const(velocity.jump.fwd.x)*1.8,const(velocity.jump.back.x)*1.8))
y = const(velocity.jump.y)*(1.4+(vel x=0)*0.1)

[state 60, changestate]
type = changestate
trigger1 = time = 2
value = 63
;---------------------------------------------------------------------------
[statedef 63]
type = a
movetype = i
physics = a
ctrl = 1

[state 63, veladd]
type = veladd
trigger1 = 1
y = 0.15

[state 63, changeanim]
type = changeanim
trigger1 = time = 0
value = ifelse((vel x)=0,41,ifelse((vel x)>0,42,43))
elem = (prevstateno=[110,115])*3

[state 63, changeanim]
type = changeanim
trigger1 = time > 12
trigger1 = anim = 60
value = 63
persistent = 0
;---------------------------------------------------------------------------
;���_�b�V��
[statedef 100]
type    = s
physics = s
anim = 100

[state 100, changestate]
type = changestate
trigger1 = var(50) != 0
value = 0
ctrl = 1
ignorehitpause = 1

[state 100, assertspecial]
type = assertspecial
trigger1 = 1
flag = nowalk
flag2 = noautoturn

[state 100, assertspecial]
type = assertspecial
trigger1 = time < 10
flag = nostandguard
flag2 = nocrouchguard

[state 100, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,7

[state 100, explod]
type = explod
trigger1 = time%4 = 0
anim = 20100+var(5)
id = 20100
pos = -floor(const(size.xscale)*14),-floor(const(size.yscale)*2)
postype = p1
random = 90,25
vel = -0.6,-0.1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 100, velset]
type = velset
trigger1 = 1
x = const(velocity.run.fwd.x)+(prevstateno=901)*6.0

[state 100, ctrlset]
type = ctrlset
trigger1 = prevstateno = 197
trigger2 = prevstateno = 901
value = 1

[state 100, changestate]
type = changestate
trigger1 = command != "holdfwd"
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;���_�b�V��(ai)
[statedef 101]
type    = s
physics = s
anim = 100
ctrl = 0

[state 101, assertspecial]
type = assertspecial
trigger1 = 1
flag = nowalk
flag2 = noautoturn

[state 101, assertspecial]
type = assertspecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard

[state 101, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,7

[state 101, explod]
type = explod
trigger1 = time%4 = 0
anim = 20100+var(5)
id = 20100
pos = -floor(const(size.xscale)*14),-floor(const(size.yscale)*2)
postype = p1
random = 90,25
vel = -0.6,-0.1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 101, velset]
type = velset
trigger1 = 1
x = const(velocity.run.fwd.x)+(prevstateno=901)*6.0

[state 101, changestate]
type = changestate
trigger1 = time >= 100
trigger2 = p2movetype = a
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;���o�b�N�X�e�b�v
[statedef 105]
type    = a
physics = a
anim = 105
ctrl = 0

[state 105, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 105, nothitby]
type = nothitby
trigger1 = 1
time = 2
value = sca,aa
ignorehitpause = 1

[state 105, varset]
type = varset
trigger1 = 1
var(10) = 0

[state 105, helper]
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

[state 105, velset]
type = velset
trigger1 = time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[state 105, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 106
;---------------------------------------------------------------------------
;���X�e�b�v���n
[statedef 106]
type    = s
physics = s
ctrl = 0
anim = 47

[state 106, velset]
type = velset
trigger1 = time = 0
y = 0

[state 106, posset]
type = posset
trigger1 = time = 0
y = 0

[state 106, helper]
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

[state 106, changestate]
type = changestate
trigger1 = time = 10
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;���󒆃_�b�V��
[statedef 110]
type    = a
physics = n
anim = 110

[state 110, assertspecial]
type = assertspecial
trigger1 = 1
flag = noautoturn

[state 110, assertspecial]
type = assertspecial
trigger1 = 1
flag =  noairguard

[state 110, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,7

[state 110, explod]
type = explod
trigger1 = time%2 = 0
anim = 20100+var(5)
id = 20100
pos = -floor(const(size.xscale)*23),-floor(const(size.yscale)*17)
postype = p1
random = 90,25
vel = -0.6,-0.1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 110, velset]
type = velset
trigger1 = time = 0
x = 6+(prevstateno=901)*5.0
y = 0

[state 110, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 110, ctrlset]
type = ctrlset
trigger1 = time >= 3
value = 1

[state 110, changestate]
type = changestate
trigger1 = time >= 20
value = 50
;---------------------------------------------------------------------------
;���󒆃o�b�N�_�b�V��
[statedef 115]
type    = a
physics = n
anim = 115

[state 115, assertspecial]
type = assertspecial
trigger1 = 1
flag = noautoturn

[state 115, assertspecial]
type = assertspecial
trigger1 = time < 10
flag =  noairguard

[state 115, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,7

[state 115, explod]
type = explod
trigger1 = time%2 = 0
anim = 20100+var(5)
id = 20100
pos = floor(const(size.xscale)*15),-floor(const(size.yscale)*6)
postype = p1
random = 90,25
vel = 0.6,-0.1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 115, velset]
type = velset
trigger1 = time = 0
x = -6
y = 0

[state 115, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 115, ctrlset]
type = ctrlset
trigger1 = time >= 3
value = 1

[state 115, changestate]
type = changestate
trigger1 = time >= 20
value = 50
;===========================================================================
;��guard (start)
[statedef 120]
type = u
physics = u

[state 120, ctrlset]
type = ctrlset
trigger1 = var(50) = 0
value = 1

[state 120, changeanim]
type = changeanim
triggerall = !var(50) || (var(50) && !var(9))
trigger1 = time = 0
value = 120 + (statetype = c) + (statetype = a)*2

[state 120, changeanim]
type = changeanim
triggerall = !var(50) || (var(50) && !var(9))
trigger1 = time = 10
trigger2 = prevstateno = [120,155]
value = 130 + (statetype = c) + (statetype = a)*2

[state 120, changeanim]
type = changeanim
triggerall = (var(50) && var(9))
trigger1 = anim != 43
trigger1 = anim != 63
trigger1 = vel y > 0
value = 63

[state 120, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = s
physics = s

[state 120, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = c
physics = c

[state 120, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = a
physics = a

[state 120, statetypeset]
type = statetypeset
triggerall = statetype = s
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2bodydist x > 100
statetype = c
physics = c

[state 120, statetypeset]
type = statetypeset
triggerall = statetype = c
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
statetype = s
physics = s

[state 120, changestate]
type = changestate
trigger1 = animtime = 0
value = 130 + (statetype = c) + (statetype = a)*2

[state 120, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = command != "holdback"
trigger2 = var(50) != 0
trigger2 = time > 10
trigger2 = random < 100
trigger3 = !inguarddist
value = 140
;---------------------------------------------------------------------------
;��stand guard (guarding)
[statedef 130]
type    = s
physics = s

[state 130, changeanim]
type = changeanim
trigger1 = anim != 130
value = 130

[state 130, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2statetype = s
trigger3 = p2bodydist x > 100
value = 131

[state 130, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = command != "holdback"
trigger2 = var(50) != 0
trigger2 = time > 10
trigger2 = random < 100
trigger3 = !inguarddist
value = 140
;---------------------------------------------------------------------------
;��crouch guard (guarding)
[statedef 131]
type    = c
physics = c

[state 131, changeanim]
type = changeanim
trigger1 = anim != 131
value = 131

[state 131, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
value = 130

[state 131, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = command != "holdback"
trigger2 = var(50) != 0
trigger2 = time > 10
trigger2 = random < 100
trigger3 = !inguarddist
value = 140
;---------------------------------------------------------------------------
;��air guard (guarding)
[statedef 132]
type    = a
physics = n

[state 132,  changeanim]
type = changeanim
triggerall = !var(50) || (var(50) && !var(9))
trigger1 = anim != 132
value = 132

[state 132, veladd]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 132, varset]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[state 132, velset]
type = velset
trigger1 = sysvar(0)
y = 0

[state 132, posset]
type = posset
trigger1 = sysvar(0)
y = 0

[state 132, changestate]
type = changestate
triggerall = sysvar(0)
triggerall = inguarddist
trigger1 = var(50) = 0
trigger1 = command = "holdback"
trigger2 = var(50) != 0
value = 130

[state 132, changestate]
type = changestate
trigger1 = sysvar(0)
value = 52

[state 132, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = command != "holdback"
trigger2 = var(50) != 0
trigger2 = time > 10
trigger2 = random < 100
trigger3 = !inguarddist
value = 140
;---------------------------------------------------------------------------
;��guard (end)
[statedef 140]
type = u
physics = u
ctrl = 1

[state 140, changeanim]
type = changeanim
triggerall = !var(50) || (var(50) && !var(9))
trigger1 = time = 0
value = 140 + (statetype = c) + (statetype = a)*2

[state 140, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = s
physics = s

[state 140, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = c
physics = c

[state 140, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = a
physics = a

[state 140, statetypeset]
type = statetypeset
triggerall = statetype = s
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2bodydist x > 100
statetype = c
physics = c

[state 140, statetypeset]
type = statetypeset
triggerall = statetype = c 
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
statetype = s
physics = s
;---------------------------------------------------------------------------
;��sguardhit (shaking)
[statedef 150]
type    = s
movetype= h
physics = n
velset = 0,0

[state 150, changeanim]
type = changeanim
trigger1 = 1
value = 150

[state 150, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = hitshakeover
value = 151 + 2*(command = "holddown")

[state 150, changestate]
type = changestate
trigger1 = var(50) != 0
trigger1 = hitshakeover
value = 151 + 2*(p2statetype = c || p2bodydist x > 100)

[state 150, statetypeset]
type = statetypeset
triggerall = statetype = s 
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2bodydist x > 100
statetype = c
physics = c

[state 150, statetypeset]
type = statetypeset
triggerall = statetype = c
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
statetype = s
physics = s
;---------------------------------------------------------------------------
;��sguardhit2 (knocked back)
[statedef 151]
type    = s
movetype= h
physics = s
anim = 150

[state 151, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1

[state 151, velset]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0

[state 151, ctrlset]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1

[state 151, statetypeset]
type = statetypeset
triggerall = statetype = s 
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2bodydist x > 100
statetype = c
physics = c

[state 151, statetypeset]
type = statetypeset
triggerall = statetype = c 
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
statetype = s
physics = s

[state 151, changestate]
type = changestate
trigger1 = hitover
value = 130
ctrl = 1
;---------------------------------------------------------------------------
;��cguardhit (shaking)
[statedef 152]
type    = c
movetype= h
physics = n
velset = 0,0

[state 152, changeanim]
type = changeanim
trigger1 = 1
value = 151

[state 152, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = hitshakeover
value = 151 + 2*(command = "holddown")

[state 152, changestate]
type = changestate
trigger1 = var(50) != 0
trigger1 = hitshakeover
value = 153

[state 152, statetypeset]
type = statetypeset
triggerall = statetype = s
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2bodydist x > 100
statetype = c
physics = c

[state 152, statetypeset]
type = statetypeset
triggerall = statetype = c 
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
statetype = s
physics = s
;---------------------------------------------------------------------------
;��cguardhit2 (knocked back)
[statedef 153]
type    = c
movetype= h
physics = c
anim = 151

[state 153, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1

[state 153, velset]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0

[state 153, ctrlset]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1

[state 153, statetypeset]
type = statetypeset
triggerall = statetype = s
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2bodydist x > 100
statetype = c
physics = c

[state 153, statetypeset]
type = statetypeset
triggerall = statetype = c 
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
statetype = s
physics = s

[state 153, changestate]
type = changestate
trigger1 = hitover
value = 131
ctrl = 1
;---------------------------------------------------------------------------
;��aguardhit (shaking)
[statedef 154]
type    = a
movetype= h
physics = n
velset = 0,0

[state 154, changeanim]
type = changeanim
trigger1 = 1
value = 152

[state 154, changestate]
type = changestate
trigger1 = hitshakeover
value = 155
;---------------------------------------------------------------------------
;��aguardhit2 (knocked away)
[statedef 155]
type    = a
movetype= h
physics = n
anim = 152

[state 155, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1
y = 1

[state 155, veladd]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 155, ctrlset]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1

[state 155, varset]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[state 155, velset]
type = velset
trigger1 = sysvar(0)
y = 0

[state 155, posset]
type = posset
trigger1 = sysvar(0)
y = 0

[state 155, changestate]
type = changestate
triggerall = sysvar(0)
triggerall = inguarddist
trigger1 = var(50) = 0
trigger1 = command = "holdback"
trigger2 = var(50) != 0
value = 130

[state 155, changestate]
type = changestate
trigger1 = sysvar(0)
value = 52
;===========================================================================
;��hita_fall (knocked up, falling)
[statedef 5050]
type    = a
movetype= h
physics = n

[state 5050, changeanim]
type = changeanim
trigger1 = animtime = 0
trigger1 = anim = 5035
trigger2 = time = 0
trigger2 = anim != 5035
trigger2 = (anim != [5051, 5059]) && (anim != [5061, 5069])
trigger2 = anim != 5090
value = 5050

[state 5050, changeanim]
type = changeanim
trigger1 = anim = [5050,5059]
trigger1 = vel y >= ifelse(anim = 5050, 1, -2)
trigger1 = selfanimexist(anim+10)
value = anim+10
persistent = 0

[state 5050, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5050, selfstate]
type = selfstate
triggerall = vel y > 0
triggerall = pos y >= -20
triggerall = alive
triggerall = canrecover
trigger1 = !(authorname = "otz-kai")
trigger1 = (command = "x") || (command = "y") || (command = "z") || (command = "a") || (command = "b") || (command = "c") || (name = "recovery") || (name = "training")
trigger2 = (authorname = "otz-kai") && (var(50) = 0)
trigger2 = command = "recovery"
trigger3 = (authorname = "otz-kai") && (var(50) != 0)
trigger3 = random <= 50*var(50)
value = 5200

[state 5050, selfstate]
type = selfstate
triggerall = vel y > -1
triggerall = alive
triggerall = canrecover
trigger1 = !(authorname = "otz-kai")
trigger1 = (command = "x") || (command = "y") || (command = "z") || (command = "a") || (command = "b") || (command = "c") || (name = "recovery") || (name = "training")
trigger2 = (authorname = "otz-kai") && (var(50) = 0)
trigger2 = command = "recovery"
trigger3 = (authorname = "otz-kai") && (var(50) != 0)
trigger3 = random <= 50*var(50)
value = 5210

[state 5050, selfstate]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100
;---------------------------------------------------------------------------
;��hit_airfallrecover
[statedef 5210]
type    = a
movetype= i
physics = n
anim = 5210
ctrl = 0

[state 5210, palfx]
type = palfx
trigger1 = time = 0
time = 20
add = 128,128,128

[state 5210, nothitby]
type = nothitby
trigger1 = time = 0
value = sca
time = 20

[state 5210, posfreeze]
type = posfreeze
trigger1 = time = 0
value = 4

[state 5210, turn]
type = turn
trigger1 = time = 0
trigger1 = p2dist x < -20

[state 5210, velmul] 
type = velmul
trigger1 = time = 4
x = .8
y = .8

[state 5210, veladd]
type = veladd
trigger1 = time = 4
y = -4.5

[state 5210, velmul] 
type = velmul
trigger1 = time = 4
trigger1 = vel y > 0
y = .5

[state 5210, veladd]
type = veladd
trigger1 = time = 4
trigger1 = vel y > -3
y = -2

[state 5210, veladd]
type = veladd
trigger1 = time = 4
trigger1 = vel y > -2
y = -1

[state 5210, veladd]
type = veladd
triggerall = time = 4
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2dist x > 120
y = 1.5

[state 5210, veladd]
type = veladd
triggerall = time = 4
trigger1 = var(50) = 0
trigger1 = command = "holdup"
trigger2 = var(50) != 0
trigger2 = p2dist x < 120
y = -2

[state 5210, velmul]
type = velmul
triggerall = time = 4
trigger1 = var(50) = 0
trigger1 = command = "holdfwd"
trigger2 = var(50) != 0
trigger2 = backedgedist < 100
x = 1

[state 5210, veladd]
type = veladd
triggerall = time = 4
trigger1 = var(50) = 0
trigger1 = command = "holdback"
trigger2 = var(50) != 0
trigger2 = backedgedist > 200
x = -1

[state 5210, ctrlset]
type = ctrlset
trigger1 = time = 20
value = 1

[state 5210, veladd]
type = veladd
trigger1 = time >= 4
y = .35

[state 5210, selfstate]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 52
ctrl = 1
;===========================================================================
;���q�b�g�V�F�C�N�n��J�X�^��
[statedef 5005]
type    = s
movetype= h
physics = n
velset = 0,0

[state 5005, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 5005, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = gethitvar(animtype) != [3,5]
value = ifelse((gethitvar(groundtype) = 1),5000,5010) + gethitvar(animtype)

[state 5005, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = gethitvar(animtype) = [3,5]
value = 5030

[state 5005, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (gethitvar(animtype) = [4,5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 5005, changeanim]
type = changeanim
trigger1 = time > 0
value = anim

[state 5005, statetypeset]
type = statetypeset
trigger1 = time = 0
trigger1 = gethitvar(yvel) != 0 || gethitvar(fall)
trigger2 = pos y != 0
statetype = a

[state 5005, changestate]
type = changestate
trigger1 = hitshakeover
trigger1 = gethitvar(yvel) = 0 && !gethitvar(fall)
value = 5006

[state 5005, changestate]
type = changestate
trigger1 = hitshakeover
value = 5030
;---------------------------------------------------------------------------
[statedef 5006]
type    = s
movetype= h
physics = s

[state 5006, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1

[state 5006, changeanim]
type = changeanim
trigger1 = animtime = 0
value = 5005 + gethitvar(animtype) + (gethitvar(groundtype)=2)*10

[state 5006, velmul]
type = velmul
trigger1 = time >= gethitvar(slidetime)
x = .6

[state 5006, velset]
type = velset
trigger1 = hitover
x = 0

[state 5006, defencemulset]
type = defencemulset
trigger1 = hitover
value = 1

[state 5006, selfstate]
type = selfstate
trigger1 = hitover
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;���q�b�g�V�F�C�N�󒆃J�X�^��
[statedef 5025]
type    = a
movetype= h
physics = n
velset = 0,0

[state 5025, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 5025, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = gethitvar(animtype) != [3,5]
value = ifelse((gethitvar(airtype) = 1),5000,5010) + gethitvar(animtype)

[state 5025, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = gethitvar(animtype) = [3,5]
value = 5030

[state 5025, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (gethitvar(animtype) = [4,5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 5025, changeanim]
type = changeanim
trigger1 = time > 0
value = anim

[state 5025, changestate]
type = changestate
trigger1 = hitshakeover
value = 5030
;---------------------------------------------------------------------------
[statedef 5030]
type    = a
movetype= h
physics = n
ctrl = 0

[state 5030, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5030, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1
y = 1

[state 5030, selfstate]
type = selfstate
triggerall = !hitfall
trigger1 = hitover
trigger2 = vel y > 0
trigger2 = pos y >= 10
value = 5040

[state 5030, changestate]
type = changestate
triggerall = hitfall
trigger1 = hitover
trigger2 = vel y > 0
trigger2 = pos y >= 10
value = 5050

[state 5030, changestate]
type = changestate
trigger1 = animtime = 0
value = 5035
;---------------------------------------------------------------------------
[statedef 5035]
type    = a
movetype= h
physics = n

[state 5035, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = selfanimexist(5035)
trigger1 = anim != [5051,5059]
trigger1 = anim != 5090
value = 5035

[state 5035, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5035, selfstate]
type = selfstate
triggerall = !hitfall
trigger1 = hitover
trigger2 = vel y > 0
trigger2 = pos y >= 10
trigger3 = time = 0
trigger3 = anim != 5035
trigger4 = hitover || (authorname = "otz-kai")
trigger4 = animtime = 0
value = 5040

[state 5035, changestate]
type = changestate
triggerall = hitfall
trigger1 = hitover
trigger2 = animtime = 0
trigger3 = vel y > 0
trigger3 = pos y >= 10
trigger4 = time = 0
trigger4 = anim != 5035
value = 5050
;---------------------------------------------------------------------------
;�����A�i�s�����p�j
[statedef 5040]
type    = a
movetype= h
physics = n

[state 5040, selfstate]
type = selfstate
trigger1 = !alive
value = 5050

[state 5040, changeanim]
type = changeanim
trigger1 = animtime = 0
trigger1 = anim != 5040
trigger2 = time = 0
trigger2 = anim != 5035
value = 5040

[state 5040, ctrlset]
type = ctrlset
trigger1 = hitover
value = 1

[state 5040, statetypeset]
type = statetypeset
trigger1 = hitover
movetype = i

[state 5040, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5040, selfstate]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 52
;---------------------------------------------------------------------------
;���q�b�g�V�F�C�N�g���b�v�J�X�^��
[statedef 5075]
type    = a
movetype= h
physics = n
velset = 0,0

[state 5075, changeanim ]
type = changeanim 
trigger1 = 1
value = 5070

[state 5075, changestate]
type = changestate
trigger1 = hitshakeover
value = 5076
;---------------------------------------------------------------------------
[statedef 5076]
type    = a
movetype= h
physics = n

[state 5076, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1
y = 1

[state 5076, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5076, selfstate]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 15
value = 5110
;---------------------------------------------------------------------------
;���n�ʌ���
[statedef 5100]
type    = l
movetype= h
physics = n

[state 5100, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 5100, velset]
type = velset
trigger1 = time = 0
trigger1 = gethitvar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[state 5100, fallenvshake]
type = fallenvshake
trigger1 = time = 0

[state 5100, varset]
type = varset
trigger1 = time = 0
sysvar(1) = floor(vel y)

[state 5100, changeanim]
type = changeanim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !selfanimexist(5100 + (anim % 10))
value = 5100

[state 5100, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = selfanimexist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[state 5100, posset]
type = posset
trigger1 = time = 0
y = 0

[state 5100, velset]
type = velset
trigger1 = time = 0
y = 0

[state 5100, velmul]
type = velmul
trigger1 = time = 0
x = 0.75

[state 5100, selfstate]
type = selfstate
trigger1 = time = 0
trigger1 = gethitvar(fall.yvel) = 0
value = 5110

[state 5100, gamemakeanim]
type = gamemakeanim
trigger1 = time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[state 5100, hitfalldamage]
type = hitfalldamage
trigger1 = time = 3

[state 5100, playsnd]
type = playsnd
trigger1 = time = 1
value = f7, (sysvar(1) > 5) + (sysvar(1) > 14)

[state 5100, posfreeze]
type = posfreeze
trigger1 = 1

[state 5100, selfstate]
type = selfstate
trigger1 = animtime = 0
trigger2 = time > 20
value = 5101
;---------------------------------------------------------------------------
;���_�E��
[statedef 5110]
type    = l
movetype= h
physics = n

[state 5110, screenbound]
type = screenbound
trigger1 = !(authorname = "otz-kai") && name != "tomoe mami"
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 5110, fallenvshake]
type = fallenvshake
trigger1 = time = 0

[state 5110, changeanim]
type = changeanim
persistent = 0
trigger1 = selfanimexist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[state 5110, changeanim]
type = changeanim
triggerall = time = 0
triggerall = anim != [5110,5119]
trigger1 = anim != [5161,5169]
trigger2 = !selfanimexist(5170 + (anim % 10))
value = 5170

[state 5110, changeanim]
type = changeanim
triggerall = time = 0
triggerall = anim != [5110,5119]
trigger1 = anim = [5161,5169]
trigger1 = selfanimexist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[state 5110, hitfalldamage]
type = hitfalldamage
trigger1 = time = 0

[state 5110, posset]
type = posset
trigger1 = time = 0
y = 0

[state 5110, varset]
type = varset
trigger1 = time = 0
trigger1 = gethitvar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[state 5110, playsnd]
type = playsnd
trigger1 = authorname = "otz-kai" && name = "tomoe mami"
trigger1 = time = 0
trigger1 = !sysvar(0)
value = f7,(sysvar(1)>5)+(sysvar(1)>14)

[state 5110, gamemakeanim]
type = gamemakeanim
trigger1 = authorname = "otz-kai" && name = "tomoe mami"
trigger1 = time = 0
trigger1 = !sysvar(0)
value = 60+(sysvar(1)>5)+(sysvar(1)>14)
pos = 0,0
under = sysvar(1) <= 14

[state 5110, velset]
type = velset
trigger1 = time = 0
y = 0

[state 5110, changeanim]
type = changeanim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = selfanimexist(5110 + (anim % 10))
trigger1 = animtime = 0
trigger2 = sysvar(0) ;sysvar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[state 5110, changeanim]
type = changeanim
persistent = 0
triggerall = anim != [5111,5119]
trigger1 = animtime = 0
trigger2 = sysvar(0) ;sysvar(0) = 1 avoids hit ground frame
value = 5110

[state 5110, changestate]
type = changestate
triggerall = !alive
trigger1 = animtime = 0
trigger2 = sysvar(0) ;sysvar(0) = 1 avoids hit ground frame
trigger3 = anim = [5110,5119]
value = 5150

[state 5110, varset]
type = varset
trigger1 = sysvar(0)
trigger1 = time = 0
sysvar(0) = 0

[state 5110, velmul]
type = velmul
trigger1 = 1
x = 0.85
;---------------------------------------------------------------------------
;���N���オ��
[statedef 5120]
type    = l
movetype= i
physics = n

[state 5120, changeanim]
type = changeanim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !selfanimexist(5120 + (anim % 10))
value = 5120

[state 5120, changeanim]
type = changeanim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = selfanimexist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[state 5120, velset]
type = velset
trigger1 = time = 0
x = 0

[state 5120, nothitby]
type = nothitby
trigger1 = 1
value = sca
time = 1

[state 5120, hitfallset]
type = hitfallset
trigger1 = animtime = 0
value = 1

[state 5120, nothitby]
type = nothitby
trigger1 = animtime = 0
value = , nt,st,ht
time = 2

[state 5120, nothitby]
type = nothitby
trigger1 = animtime = 0
value2 = sca
time = 1

[state 5120, changestate]
type = changestate
trigger1 = var(7) != 0
trigger1 = animtime = 0
value = var(7)

[state 5120, changestate]
type = changestate
trigger1 = var(7) = 0
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;�����d����
[statedef 5696]
type    = a
movetype= h
physics = n
velset = 0,0

[state 5696, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 5696, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = selfanimexist(7696)
value = 7696

[state 5696, palfx]
type = palfx
trigger1 = time = 0
trigger1 = !selfanimexist(7696)
time = gethitvar(hittime)+gethitvar(hitshaketime)
add = 25,75,125
ignorehitpause = 1

[state 5696, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = !selfanimexist(7696)
trigger1 = gethitvar(animtype) != [3,5]
value = ifelse((gethitvar(airtype) = 1),5000,5010) + gethitvar(animtype)

[state 5696, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = !selfanimexist(7696)
trigger1 = gethitvar(animtype) = [3,5]
value = 5030

[state 5696, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (gethitvar(animtype) = [4,5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 5696, changeanim]
type = changeanim
trigger1 = time > 0
value = anim

[state 5696, changestate]
type = changestate
trigger1 = hitshakeover
value = 5030
;===========================================================================
;�����ł�����
[statedef 5697]
type    = a
movetype= h
physics = n
velset = 0,0

[state 5697, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 5697, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = selfanimexist(7697)
value = 7697

[state 5697, palfx]
type = palfx
trigger1 = time = 0
trigger1 = !selfanimexist(7697)
time = gethitvar(hittime)+gethitvar(hitshaketime)
add = -100,-125,-125
ignorehitpause = 1

[state 5697, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = !selfanimexist(7697)
trigger1 = gethitvar(animtype) != [3,5]
value = ifelse((gethitvar(airtype) = 1),5000,5010) + gethitvar(animtype)

[state 5697, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = !selfanimexist(7697)
trigger1 = gethitvar(animtype) = [3,5]
value = 5030

[state 5697, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (gethitvar(animtype) = [4,5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 5697, changeanim]
type = changeanim
trigger1 = time > 0
value = anim

[state 5697, changestate]
type = changestate
trigger1 = hitshakeover
value = 5030
;===========================================================================
;���t�@�C�i���_�E��
[statedef 5150]
type = l
movetype= h
physics = n
sprpriority = -3
velset = 0,0

[state 5150, assertspecial]
type = assertspecial
trigger1 = matchover
trigger1 = authorname = "otz-kai" && name = "tomoe mami"
flag = roundnotover

[state 5150, screenbound]
type = screenbound
trigger1 = teammode = simul
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 5150, nothitby]
type = nothitby
trigger1 = 1
value = sca
time = 1

[state 5150, changeanim]
type = changeanim
triggerall = time = 0
triggerall = selfanimexist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !selfanimexist(5140 + (anim % 10))
value = 5140

[state 5150, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = selfanimexist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[state 5150, changeanim]
type = changeanim
persistent = 0
trigger1 = matchover = 1
trigger1 = anim = [5140,5149]
trigger1 = selfanimexist(anim+10)
value = anim+10

[state 5150, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = anim != [5140,5159]
trigger1 = anim != [5110,5119]
value = 5110

[state 5150, velmul]
type = velmul
trigger1 = 1
x = 0.85

[state 5150, velset]
type = velset
trigger1 = vel x < 0.05
persistent = 0
x = 0

[state 5150, changestate]
type = changestate
triggerall = authorname = "otz-kai" && name = "tomoe mami"
triggerall = roundstate > 3
triggerall = time > 60
trigger1 = matchover
trigger2 = teammode = turns
value = 5155
;===========================================================================
;���t�@�C�i���_�E���E�ϐg����
[statedef 5155]
type = l
sprpriority = -3

[state 5155, assertspecial]
type = assertspecial
trigger1 = time < 350
flag = roundnotover

[state 5155, screenbound]
type = screenbound
trigger1 = teammode = simul
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 5155, nothitby]
type = nothitby
trigger1 = 1
value = sca
time = 1

[state 5155, playsnd]
type = playsnd
trigger1 = time = 0
value = 11,30
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 5155, changeanim]
type = changeanim
trigger1 = time = 120
value = 5150

[state 5155, playsnd]
type = playsnd
trigger1 = time = 206
value = 4,11

[state 5155, changeanim]
type = changeanim
trigger1 = time = 206
value = 5155

[state 5155, explod]
type = explod
trigger1 = time = 120
anim = 15155
id = 15155
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
ownpal = 1
;===========================================================================
;�����蕉��
[statedef 170]
type = s
ctrl = 0
anim = 170
velset = 0,0

[state 170, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -floor(const(size.xscale)*4)

[state 170, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = -floor(const(size.xscale)*6)
;===========================================================================
;�����Ԑ؂�
[statedef 175]
type = s
ctrl = 0
anim = 170
velset = 0,0

[state 175, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -floor(const(size.xscale)*4)

[state 175, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = -floor(const(size.xscale)*6)
;===========================================================================
;������
[statedef 180]
type = s
velset = 0,0

[state 180, assertspecial]
type = assertspecial
trigger1 = 1
flag = roundnotover

[state 180, posset]
type = posset
trigger1 = time = 0
y = 0

;���������񂪖\��
[state 180, changestate]
type = changestate
trigger1 = numpartner
trigger1 = var(12) = 200
trigger1 = partner,var(40) = 1
value = 680

;���p�[�g�i�[����
[state 180, changestate]
type = changestate
trigger1 = !matchover
trigger1 = numpartner
trigger1 = partner,alive
value = 181

;���R�X�v��
[state 180, changestate]
type = changestate
triggerall = random < 100
trigger1 = var(24) = 1
value = 630

;������
[state 180, changestate]
type = changestate
trigger1 = matchover
value = 600

;���ėp
[state 180, changestate]
type = changestate
trigger1 = time = 0
value = 620-((var(11)=0)&&(var(3)<(lifemax*0.3)))*10
;===========================================================================
;�������i�p�[�g�i�[�p���O�j
[statedef 181]
type = s
ctrl = 0

[state 181, assertspecial]
type = assertspecial
trigger1 = 1
flag = roundnotover

[state 181, changeanim]
type = changeanim
trigger1 = anim != 0
value = 0

[state 181, varset]
type = varset
trigger1 = time = 0
var(7) = 100;�f�t�H���g

;���p�[�g�i�[�E���ڂ܂ǂ�
[state 181, varset]
type = null
triggerall = numpartner
triggerall = time = 1
triggerall = var(12) = 100
trigger1 = partner,var(5) = 350
trigger1 = var(7) := 84
trigger2 = partner,var(5) = 351
trigger2 = var(7) := 96
trigger3 = partner,var(5) = 352
trigger3 = var(7) := 120
trigger4 = partner,var(5) = 353
trigger4 = var(7) := 132
trigger5 = partner,var(5) = 354
trigger5 = var(7) := 162
trigger6 = partner,var(5) = 355
trigger6 = var(7) := 90
trigger7 = partner,var(5) = 356
trigger7 = var(7) := 120
trigger8 = partner,var(5) = 357
trigger8 = var(7) := 120
trigger9 = partner,var(5) = 358
trigger9 = var(7) := 162
trigger10 = partner,var(5) = 390
trigger10 = var(7) := 204

;���J�C�x���g
[state 181, changestate]
type = changestate
trigger1 = var(12) = 100
trigger1 = time > 1
trigger1 = time = var(7)
trigger1 = var(30) = 650
value = 650

[state 181, changestate]
type = changestate
trigger1 = var(12) = 100
trigger1 = time > 1
;trigger1 = time = var(7);�}�~�����s
trigger1 = var(30) = 651
value = 651

;���p�[�g�i�[�E�������₩
[state 181, varset]
type = null
triggerall = numpartner
triggerall = time = 1
triggerall = var(12) = 200
triggerall = partner,var(7) = 1
trigger1 = var(7) := 174

[state 181, varset]
type = null
triggerall = numpartner
triggerall = time = 1
triggerall = var(12) = 200
triggerall = partner,var(7) = 0
triggerall = partner,var(3) = partner,lifemax
trigger1 = partner,var(5) = 40
trigger1 = var(7) := 138
trigger2 = partner,var(5) = 41
trigger2 = var(7) := 156
trigger3 = partner,var(5) = 42
trigger3 = var(7) := 234
trigger4 = partner,var(5) = 43
trigger4 = var(7) := 270

[state 181, varset]
type = null
triggerall = numpartner
triggerall = time = 1
triggerall = var(12) = 200
triggerall = partner,var(7) = 0
triggerall = partner,var(3) != partner,lifemax
trigger1 = partner,var(5) = 350
trigger1 = var(7) := 138
trigger2 = partner,var(5) = 351
trigger2 = var(7) := 168
trigger3 = partner,var(5) = 352
trigger3 = var(7) := 210
trigger4 = partner,var(5) = 353
trigger4 = var(7) := 114
trigger5 = partner,var(5) = 354
trigger5 = var(7) := 156
trigger6 = partner,var(5) = 355
trigger6 = var(7) := 168
trigger7 = partner,var(5) = 356
trigger7 = var(7) := 78
trigger8 = partner,var(5) = 357
trigger8 = var(7) := 120
trigger9 = partner,var(5) = 358
trigger9 = var(7) := 132
trigger10 = partner,var(5) = 359
trigger10 = var(7) := 138
trigger11 = partner,var(5) = 360
trigger11 = var(7) := 144
trigger12 = partner,var(5) = 361
trigger12 = var(7) := 150
trigger13 = partner,var(5) = 362
trigger13 = var(7) := 150
trigger14 = partner,var(5) = 363
trigger14 = var(7) := 156
trigger15 = partner,var(5) = 364
trigger15 = var(7) := 162
trigger16 = partner,var(5) = 365
trigger16 = var(7) := 180
trigger17 = partner,var(5) = 366
trigger17 = var(7) := 234
trigger18 = partner,var(5) = 367
trigger18 = var(7) := 246
trigger19 = partner,var(5) = 390
trigger19 = var(7) := 186
trigger20 = partner,var(5) = 391
trigger20 = var(7) := 240
trigger21 = partner,var(5) = 392
trigger21 = var(7) := 108

;���J�C�x���g
[state 181, changestate]
type = changestate
trigger1 = var(12) = 200
trigger1 = time > 1
;trigger1 = time = var(7)+20;�}�~�����s
trigger1 = var(30) = 650
value = 660

[state 181, changestate]
type = changestate
trigger1 = var(12) = 200
trigger1 = time > 1
trigger1 = time = var(7)+20
trigger1 = var(30) = 651
value = 661

;���R�X�v��
[state 181, changestate]
type = changestate
triggerall = var(24) = 1
triggerall = time > 1
triggerall = time = 100
triggerall = random < 100
trigger1 = var(12) != [100,200]
trigger2 = var(12) = [100,200]
trigger2 = var(30) != [650,651];�J���t���O
value = 630

[state 181, changestate];���ڂ��񂪊댯�������Ƃ�
type = changestate
triggerall = numpartner
trigger1 = time > 1
trigger1 = time = var(7)+10
trigger1 = var(12) = 100
trigger1 = partner,var(3) < partner,lifemax*0.3
value = 610

[state 181, changestate]
type = changestate
triggerall = time > 1
triggerall = time = var(7)+10
trigger1 = var(12) != [100,200]
trigger2 = var(12) = [100,200]
trigger2 = var(30) != [650,651];�J���t���O
value = 620-((var(11)=0)&&(var(3)<(lifemax*0.3)))*10
;===========================================================================
;���J�C�x���g�i�������񂪖\���j
[statedef 680]
ctrl = 0
anim = 680

[state 680, assertspecial]
type = assertspecial
trigger1 = time < 60+matchover*60+120+var(6)
flag = roundnotover

[state 680, varrandom]
type = varrandom
trigger1 = time = 0
v = 5
range = 280,282

[state 680, varset]
type = null
trigger1 = var(5) = 280
trigger1 = var(6) := 96
trigger2 = var(5) = 281
trigger2 = var(6) := 210
trigger3 = var(5) = 282
trigger3 = var(6) := 216

[state 680, playsnd]
type = playsnd
trigger1 = time = 60+matchover*60
value = 10,var(5)
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 680, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -floor(const(size.xscale)*4)

[state 680, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = -floor(const(size.xscale)*6)
;===========================================================================
;�������E�����i�ϐg�����j
[statedef 600]
type = s
ctrl = 0
anim = 600

[state 600, assertspecial]
type = assertspecial
trigger1 = time < 160+120+var(6)+var(7)+(var(12)=200)*60
flag = roundnotover

[state 600, varset]
type = varset
trigger1 = numpartner
trigger1 = time = 0
var(7) = 0;60;�f�t�H���g

[state 600, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 4,10

;��vs���ڂ܂ǂ�
[state 600, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 100
trigger1 = var(5) := 120
trigger1 = var(6) := 426

;��vs�������₩
[state 600, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 200
trigger1 = var(5) := 220
trigger1 = var(6) := 402

;��vs���q�ǎq
[state 600, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 400
trigger1 = var(5) := 420
trigger1 = var(6) := 192

;��vs�Ŕ��قނ�
[state 600, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 500
trigger1 = var(5) := 520
trigger1 = var(6) := 426

;��vs���َq�̖���
[state 600, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 700
trigger1 = var(5) := 720
trigger1 = var(6) := 246

;���p�[�g�i�[�E���ڂ܂ǂ�
[state 600, varset]
type = null
triggerall = numpartner
triggerall = partner,alive
triggerall = time = 1
triggerall = var(11) = 0
triggerall = var(12) = 100
trigger1 = partner,var(5) = 370
trigger1 = var(7) := 132+30
trigger2 = partner,var(5) = 371
trigger2 = var(7) := 150+30
trigger3 = partner,var(5) = 372
trigger3 = var(7) := 156+30
trigger4 = partner,var(5) = 373
trigger4 = var(7) := 162+30
trigger5 = partner,var(5) = 374
trigger5 = var(7) := 192+30
trigger6 = partner,var(5) = 375
trigger6 = var(7) := 228+30
trigger7 = partner,var(5) = 376
trigger7 = var(7) := 240+30

[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 100
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 171-(partner,var(3)<partner,lifemax*0.5),173

[state 600, varset]
type = null
trigger1 = var(5) = 170
trigger1 = var(6) := 186
trigger2 = var(5) = 171
trigger2 = var(6) := 120
trigger3 = var(5) = 172
trigger3 = var(6) := 138
trigger4 = var(5) = 173
trigger4 = var(6) := 222

;���p�[�g�i�[�E�������₩
[state 600, varset]
type = null
triggerall = numpartner
triggerall = partner,alive
triggerall = time = 1
triggerall = var(11) = 0
triggerall = var(12) = 200
trigger1 = partner,var(5) = 9
trigger1 = var(7) := 90+60
trigger2 = partner,var(5) = 1
trigger2 = var(7) := 66+60
trigger3 = partner,var(5) = 2
trigger3 = var(7) := 186+60

[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 200
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 271-(partner,var(3)<partner,lifemax*0.5),272

[state 600, varset]
type = null
trigger1 = var(5) = 270
trigger1 = var(6) := 186
trigger2 = var(5) = 271
trigger2 = var(6) := 120
trigger3 = var(5) = 272
trigger3 = var(6) := 126

;���p�[�g�i�[�E���q�ǎq
[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 400
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 470,474

[state 600, varset]
type = null
trigger1 = var(5) = 470
trigger1 = var(6) := 96
trigger2 = var(5) = 471
trigger2 = var(6) := 108
trigger3 = var(5) = 472
trigger3 = var(6) := 150
trigger4 = var(5) = 473
trigger4 = var(6) := 180
trigger5 = var(5) = 474
trigger5 = var(6) := 222

;���p�[�g�i�[�E�Ŕ��قނ�
[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 500
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 570,575

[state 600, varset]
type = null
trigger1 = var(5) = 570
trigger1 = var(6) := 108
trigger2 = var(5) = 571
trigger2 = var(6) := 120
trigger3 = var(5) = 572
trigger3 = var(6) := 150
trigger4 = var(5) = 573
trigger4 = var(6) := 186
trigger5 = var(5) = 574
trigger5 = var(6) := 216
trigger6 = var(5) = 575
trigger6 = var(6) := 252

;���m�[�}���p�[�g�i�[
[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 0
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 86,88

[state 600, varset]
type = null
trigger1 = var(5) = 86
trigger1 = var(6) := 96
trigger2 = var(5) = 87
trigger2 = var(6) := 138
trigger3 = var(5) = 88
trigger3 = var(6) := 240

;���p�[�g�i�[�Ȃ�
[state 600, varrandom]
type = varrandom
triggerall = time = 0
triggerall = var(11) = 0
trigger1 = numpartner = 0
trigger2 = numpartner
trigger2 = partner,alive = 0
v = 5
range = 0,5

[state 600, varset]
type = null
trigger1 = var(5) = 0
trigger1 = var(6) := 114
trigger2 = var(5) = 1
trigger2 = var(6) := 138
trigger3 = var(5) = 2
trigger3 = var(6) := 144
trigger4 = var(5) = 3
trigger4 = var(6) := 156
trigger5 = var(5) = 4
trigger5 = var(6) := 168
trigger6 = var(5) = 5
trigger6 = var(6) := 186

[state 600, playsnd]
type = playsnd
trigger1 = time = 160+var(7)
value = 10,var(5)
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 600, explod]
type = explod
trigger1 = animelemtime(3) = 0
anim = 10600
id = 10600
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
;===========================================================================
;�������P�i���g�j
[statedef 610]
ctrl = 0
anim = 610

[state 610, assertspecial]
type = assertspecial
trigger1 = time < 3+120+var(6)
flag = roundnotover

;��vs���ڂ܂ǂ�
[state 610, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 100
trigger1 = var(5) := 110
trigger1 = var(6) := 210

;��vs�������₩
[state 610, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 200
trigger1 = var(5) := 210
trigger1 = var(6) := 150

;��vs���q�ǎq
[state 610, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 400
trigger1 = var(5) := 410
trigger1 = var(6) := 216

;��vs�Ŕ��قނ�
[state 610, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 500
trigger1 = var(5) := 510
trigger1 = var(6) := 138

;��vs���َq�̖���
[state 610, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 700
trigger1 = var(5) := 710
trigger1 = var(6) := 168

[state 610, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 100
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 151,152

;���p�[�g�i�[�E���ڂ܂ǂ�;�����̎���莭�ڂ���D��
[state 610, varset]
type = varset
triggerall = time = 0
trigger1 = var(12) = 100
trigger1 = numpartner
trigger1 = partner,alive
trigger1 = partner,var(3) < partner,lifemax*0.5
var(5) = 150

[state 610, varset]
type = null
trigger1 = var(5) = 150
trigger1 = var(6) := 192
trigger2 = var(5) = 151
trigger2 = var(6) := 102
trigger3 = var(5) = 152
trigger3 = var(6) := 204

;���p�[�g�i�[�E�������₩
[state 610, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 200
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 250,252

[state 610, varset]
type = null
trigger1 = var(5) = 250
trigger1 = var(6) := 90
trigger2 = var(5) = 251
trigger2 = var(6) := 132
trigger3 = var(5) = 252
trigger3 = var(6) := 192

;���p�[�g�i�[�E���q�ǎq
[state 610, varset]
type = varset
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 400
trigger1 = numpartner
trigger1 = partner,alive
var(5) = 450

[state 610, varset]
type = null
trigger1 = var(5) = 450
trigger1 = var(6) := 90

;���p�[�g�i�[�E�Ŕ��قނ�
[state 610, varset]
type = varset
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 500
trigger1 = numpartner
trigger1 = partner,alive
var(5) = 550

[state 610, varset]
type = null
trigger1 = var(5) = 550
trigger1 = var(6) := 120

;���m�[�}���p�[�g�i�[
[state 610, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 0
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 80,82

[state 610, varset]
type = null
trigger1 = var(5) = 80
trigger1 = var(6) := 72
trigger2 = var(5) = 81
trigger2 = var(6) := 72
trigger3 = var(5) = 82
trigger3 = var(6) := 102

;���p�[�g�i�[�Ȃ�
[state 610, varrandom]
type = varrandom
triggerall = time = 0
triggerall = var(11) = 0
trigger1 = numpartner = 0
trigger2 = numpartner
trigger2 = partner,alive = 0
v = 5
range = 10,12

[state 610, varset]
type = null
trigger1 = var(5) = 10
trigger1 = var(6) := 150
trigger2 = var(5) = 11
trigger2 = var(6) := 222
trigger3 = var(5) = 12
trigger3 = var(6) := 246

[state 610, playsnd]
type = playsnd
trigger1 = time = 3
value = 10,var(5)
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 610, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -floor(const(size.xscale)*4)

[state 610, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = -floor(const(size.xscale)*6)
;===========================================================================
;�������Q�i�����j
[statedef 620]
ctrl = 0
anim = 620

[state 620, assertspecial]
type = assertspecial
trigger1 = time < 3+120+var(6)
flag = roundnotover

;��vs���ڂ܂ǂ�
[state 620, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 100
trigger1 = var(5) := 110
trigger1 = var(6) := 210

;��vs�������₩
[state 620, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 200
trigger1 = var(5) := 210
trigger1 = var(6) := 150

;��vs���q�ǎq
[state 620, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 400
trigger1 = var(5) := 410
trigger1 = var(6) := 216

;��vs�Ŕ��قނ�
[state 620, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 500
trigger1 = var(5) := 510
trigger1 = var(6) := 138

;��vs���َq�̖���
[state 620, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 700
trigger1 = var(5) := 710
trigger1 = var(6) := 168

;���p�[�g�i�[�E���ڂ܂ǂ�
[state 620, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 100
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 153,156

[state 620, varset]
type = null
trigger1 = var(5) = 153
trigger1 = var(6) := 72
trigger2 = var(5) = 154
trigger2 = var(6) := 114
trigger3 = var(5) = 155
trigger3 = var(6) := 186
trigger4 = var(5) = 156
trigger4 = var(6) := 288

;���p�[�g�i�[�E�������₩
[state 620, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 200
trigger1 = numpartner
trigger1 = partner,var(5) = [353,355]
trigger1 = partner,alive
v = 5
range = 253,255

[state 620, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 200
trigger1 = numpartner
trigger1 = partner,var(5) != [353,355]
trigger1 = partner,alive
v = 5
range = 256,260-((partner,var(7)=1)||(partner,var(3)=partner,lifemax))*2;�����w�A�������Ƃꏜ�O

[state 620, varset]
type = null
trigger1 = var(5) = 253
trigger1 = var(6) := 204
trigger2 = var(5) = 254
trigger2 = var(6) := 120
trigger3 = var(5) = 255
trigger3 = var(6) := 204
trigger4 = var(5) = 256
trigger4 = var(6) := 126
trigger5 = var(5) = 257
trigger5 = var(6) := 126
trigger6 = var(5) = 258
trigger6 = var(6) := 222
trigger7 = var(5) = 259
trigger7 = var(6) := 204
trigger8 = var(5) = 260
trigger8 = var(6) := 282

;���p�[�g�i�[�E���q�ǎq
[state 620, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 400
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 451,454

[state 620, varset]
type = null
trigger1 = var(5) = 451
trigger1 = var(6) := 60
trigger2 = var(5) = 452
trigger2 = var(6) := 90
trigger3 = var(5) = 453
trigger3 = var(6) := 114
trigger4 = var(5) = 454
trigger4 = var(6) := 126

;���p�[�g�i�[�E�Ŕ��قނ�
[state 620, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 500
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 551,556

[state 620, varset]
type = null
trigger1 = var(5) = 551
trigger1 = var(6) := 60
trigger2 = var(5) = 552
trigger2 = var(6) := 114
trigger3 = var(5) = 553
trigger3 = var(6) := 150
trigger4 = var(5) = 554
trigger4 = var(6) := 192
trigger5 = var(5) = 555
trigger5 = var(6) := 198
trigger6 = var(5) = 556
trigger6 = var(6) := 246

;���m�[�}���p�[�g�i�[
[state 620, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 0
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 83,85

[state 620, varset]
type = null
trigger1 = var(5) = 83
trigger1 = var(6) := 66
trigger2 = var(5) = 84
trigger2 = var(6) := 72
trigger3 = var(5) = 85
trigger3 = var(6) := 84

;���p�[�g�i�[�Ȃ�
[state 620, varrandom]
type = varrandom
triggerall = time = 0
triggerall = var(11) = 0
trigger1 = numpartner = 0
trigger2 = numpartner
trigger2 = partner,alive = 0
v = 5
range = 20,23

[state 620, varset]
type = null
trigger1 = var(5) = 20
trigger1 = var(6) := 120
trigger2 = var(5) = 21
trigger2 = var(6) := 222
trigger3 = var(5) = 22
trigger3 = var(6) := 234
trigger4 = var(5) = 23
trigger4 = var(6) := 258

[state 620, playsnd]
type = playsnd
trigger1 = time = 3
value = 10,var(5)
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)
;===========================================================================
;�������i�R�X�v���ϐg�j
[statedef 630]
type = s
ctrl = 0
anim = 630

[state 630, assertspecial]
type = assertspecial
trigger1 = 1
flag = roundnotover

[state 630, explod]
type = explod
trigger1 = animelemtime(5) = 0
anim = 10630
id = 10630
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 630, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 2,3

[state 630, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 3
value = 4,0

[state 630, palfx]
type = palfx
trigger1 = animelemtime(7) = 20
time = 60
sinadd = 255,255,255,120
ignorehitpause = 1

[state 630, palfx]
type = palfx
trigger1 = animelemtime(7) = 50
time = 20
add = 255,255,255
ignorehitpause = 1

[state 630, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 1,9+matchover

[state 630, changestate]
type = changestate
trigger1 = animtime = 0
value = 630+var(5)
;---------------------------------------------------------------------------
;���R�X�v���P�E�܂ǂ����}�M�J�|�[�^�u���E�A�C�h��
[statedef 631]
anim = 631

[state 631, assertspecial]
type = assertspecial
trigger1 = time < 400
flag = roundnotover

[state 631, explod]
type = explod
trigger1 = time = 10
anim = 10822
id = 10822
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 631, playsnd]
type = playsnd
trigger1 = time = 10
value = 4,1

[state 631, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,30
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)
;---------------------------------------------------------------------------
;���R�X�v���Q�EMagiccraft�E���َq�̖����p�[�J�[
[statedef 632]
anim = 632

[state 632, assertspecial]
type = assertspecial
trigger1 = time < 350
flag = roundnotover

[state 632, explod]
type = explod
trigger1 = time = 10
anim = 10822
id = 10822
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 632, playsnd]
type = playsnd
trigger1 = time = 10
value = 4,1

[state 632, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,31
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)
;---------------------------------------------------------------------------
;���R�X�v���R�E���[�\�������_�R���{�E�`�A���[�_�[
[statedef 633]
anim = 633

[state 633, assertspecial]
type = assertspecial
trigger1 = time < 350
flag = roundnotover

[state 633, explod]
type = explod
trigger1 = time = 10
anim = 10822
id = 10822
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 633, playsnd]
type = playsnd
trigger1 = time = 10
value = 4,1

[state 633, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,32
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)
;---------------------------------------------------------------------------
;���R�X�v���S�E��Ԃ����|�X�^�[�E�����̂���l
[statedef 634]
anim = 634

[state 634, assertspecial]
type = assertspecial
trigger1 = time < 350
flag = roundnotover

[state 634, explod]
type = explod
trigger1 = time = 10
anim = 10822
id = 10822
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 634, playsnd]
type = playsnd
trigger1 = time = 10
value = 4,1

[state 634, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,33
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)
;---------------------------------------------------------------------------
;���R�X�v���T�EKalafina�A���o���W���P�b�g
[statedef 635]
anim = 635

[state 635, assertspecial]
type = assertspecial
trigger1 = time < 350
flag = roundnotover

[state 635, explod]
type = explod
trigger1 = time = 10
anim = 10822
id = 10822
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 635, playsnd]
type = playsnd
trigger1 = time = 10
value = 4,1

[state 635, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,34
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)
;---------------------------------------------------------------------------
;���R�X�v���U�EANIPLEX+�n���E�B��
[statedef 636]
anim = 636

[state 636, assertspecial]
type = assertspecial
trigger1 = time < 350
flag = roundnotover

[state 636, explod]
type = explod
trigger1 = time = 10
anim = 10822
id = 10822
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 636, playsnd]
type = playsnd
trigger1 = time = 10
value = 4,1

[state 636, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,35
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)
;---------------------------------------------------------------------------
;���R�X�v���V�Eearth�R���{
[statedef 637]
anim = 637

[state 637, assertspecial]
type = assertspecial
trigger1 = time < 350
flag = roundnotover

[state 637, explod]
type = explod
trigger1 = time = 10
anim = 10822
id = 10822
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 637, playsnd]
type = playsnd
trigger1 = time = 10
value = 4,1

[state 637, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,36
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)
;---------------------------------------------------------------------------
;���R�X�v���W�E���t���N�K�L�C���R���E����
[statedef 638]
anim = 638

[state 638, assertspecial]
type = assertspecial
trigger1 = time < 350
flag = roundnotover

[state 638, explod]
type = explod
trigger1 = time = 10
anim = 10822
id = 10822
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 638, playsnd]
type = playsnd
trigger1 = time = 10
value = 4,1

[state 638, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,37
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)
;---------------------------------------------------------------------------
;���R�X�v���X�E���t�j���[�C���[�J�[�h�E���W
[statedef 639]
anim = 639

[state 639, assertspecial]
type = assertspecial
trigger1 = time < 350
flag = roundnotover

[state 639, explod]
type = explod
trigger1 = time = 10
anim = 10822
id = 10822
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 639, playsnd]
type = playsnd
trigger1 = time = 10
value = 4,1

[state 639, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,38
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)
;---------------------------------------------------------------------------
;���R�X�v���P�O�E�܂ǂ����}�M�Jplus�E�E�F�f�B���O�h���X
[statedef 640]
anim = 640

[state 640, assertspecial]
type = assertspecial
trigger1 = time < 750
flag = roundnotover

[state 640, explod]
type = explod
trigger1 = time = 10
anim = 10822
id = 10822
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 640, explod]
type = explod
trigger1 = time = 0
anim = 10640
id = 10640
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 2
ownpal = 1

[state 640, playsnd]
type = playsnd
trigger1 = time = 10
value = 4,1

[state 640, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,39
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)
;---------------------------------------------------------------------------
;���J�C�x���g�E�܂ǂ����}�~�E��D����
[statedef 650]
ctrl = 0
anim = 620

[state 650, assertspecial]
type = assertspecial
trigger1 = time < 120+var(6)
flag = roundnotover

[state 650, varrandom]
type = varrandom
trigger1 = time = 0
v = 5
range = 190,192

[state 650, varset]
type = null
trigger1 = var(5) = 190
trigger1 = var(6) := 174
trigger2 = var(5) = 191
trigger2 = var(6) := 234
trigger3 = var(5) = 192
trigger3 = var(6) := 312

[state 650, playsnd]
type = playsnd
trigger1 = time = 3
value = 10,var(5)
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)
;---------------------------------------------------------------------------
;���J�C�x���g�E�܂ǂ����}�~�E��ԑ�؂ȁE�E��
[statedef 651]
ctrl = 0
anim = 611

[state 651, assertspecial]
type = assertspecial
trigger1 = time < 120+550
flag = roundnotover

[state 651, playsnd]
type = playsnd
trigger1 = time = 3
value = 10,193
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 651, playsnd]
type = playsnd
trigger1 = time = 258+108+20
value = 10,194
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 651, changeanim]
type = changeanim
trigger1 = time = 258+108+40
value = 612

[state 651, playsnd]
type = playsnd
trigger1 = time = 258+108+48+48+40
value = 10,195
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 651, posadd]
type = posadd
trigger1 = anim = 611
trigger1 = animelemtime(2) = 0
x = -floor(const(size.xscale)*4)

[state 651, posadd]
type = posadd
trigger1 = anim = 611
trigger1 = animelemtime(3) = 0
x = -floor(const(size.xscale)*6)
;---------------------------------------------------------------------------
;���J�C�x���g�E���₩���}�~�E�K�E�Z�`����
[statedef 660]
ctrl = 0
anim = 620

[state 650, assertspecial]
type = assertspecial
trigger1 = time < 120+var(6)
flag = roundnotover

[state 660, varset]
type = varset
trigger1 = time = 0
var(5) = 290

[state 660, varset]
type = null
trigger1 = var(5) = 290
trigger1 = var(6) := 366

[state 660, playsnd]
type = playsnd
trigger1 = time = 3
value = 10,var(5)
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)
;---------------------------------------------------------------------------
;���J�C�x���g�E���₩���}�~�E��D����
[statedef 661]
ctrl = 0
anim = 620

[state 661, assertspecial]
type = assertspecial
trigger1 = time < 120+var(6)
flag = roundnotover

[state 661, varrandom]
type = varrandom
trigger1 = time = 0
v = 5
range = 291,293

[state 661, varset]
type = null
trigger1 = var(5) = 291
trigger1 = var(6) := 114
trigger2 = var(5) = 292
trigger2 = var(6) := 114
trigger3 = var(5) = 293
trigger3 = var(6) := 162

[state 661, playsnd]
type = playsnd
trigger1 = time = 3
value = 10,var(5)
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)
;===========================================================================
;���C���g��
[statedef 190]
type = s
ctrl = 0
anim = 1

[state 190, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

;��vs���ڂ܂ǂ�
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 100
value = 8100+(random<500)

;��vs�������₩
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 200
value = 8200

;��vs���q�ǎq
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 400
value = 8400

;��vs�Ŕ��قނ�
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 500
value = 8500

;��vs���َq�̖���
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 700
value = 8700

;���p�[�g�i�[���ڂ܂ǂ�
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(12) = 100
value = 8130+floor(random/167);;0-5

;���p�[�g�i�[�������₩
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(12) = 200
value = 8230+floor(random/250);;0-3;+floor(random/200);;0-4���ۗ�

;���p�[�g�i�[���q�ǎq
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(12) = 400
value = 8430+floor(random/200);;0-4

;���p�[�g�i�[�Ŕ��قނ�
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(12) = 500
value = 8530+floor(random/200);;0-4

;�����m�F�p�[�g�i�[����
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = numpartner
value = 870+floor(random/112);;0-8

;���ėp
[state 190, changestate]
type = changestate
trigger1 = time = 1
value = 800+floor(random/125);;0-7
;===========================================================================
;���C���g�����O�w������ƈ�d���x
[statedef 800]
type = s
anim = 800

[state 800, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 800, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,50
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 800, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 150
value = 802

[state 800, changeanim]
type = changeanim
trigger1 = time = 135
trigger2 = time = 245
value = 800

[state 800, changestate]
type = changestate
trigger1 = time = 275
value = 820
;===========================================================================
;���C���g�����P�w���������ł����x
[statedef 801]
type = s
anim = 800

[state 801, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 801, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,51
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 801, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 120
value = 802

[state 801, changeanim]
type = changeanim
trigger1 = time = 100
trigger2 = time = 200
value = 800

[state 801, changestate]
type = changestate
trigger1 = time = 220
value = 820
;===========================================================================
;���C���g�����Q�w�{�C�ł������x
[statedef 802]
type = s
anim = 810

[state 802, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 802, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,52
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 802, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 120
value = 812

[state 802, changeanim]
type = changeanim
trigger1 = time = 95
trigger2 = time = 240
value = 810

[state 802, changestate]
type = changestate
trigger1 = time = 260
value = 820
;===========================================================================
;���C���g�����R�w���̖��@�������Ă�����x
[statedef 803]
type = s
anim = 830

[state 803, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 803, explod]
type = explod
trigger1 = anim = 830
trigger1 = animelemtime(4) = 0
anim = 10830
id = 10830
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 803, explod]
type = explod
trigger1 = anim = 830
trigger1 = animelemtime(9) = 0
anim = 10831
id = 10831
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 803, explod]
type = explod
trigger1 = anim = 832
trigger1 = animelemtime(2) = 0
anim = 10832
id = 10832
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 803, playsnd]
type = playsnd
trigger1 = anim = 830
trigger1 = animelemtime(3) = 0
value = 2,3

[state 803, playsnd]
type = playsnd
trigger1 = anim = 830
trigger1 = animelemtime(3) = 3
value = 4,0

[state 803, playsnd]
type = playsnd
trigger1 = anim = 830
trigger1 = animelemtime(6) = 0
value = 4,1

[state 803, playsnd]
type = playsnd
trigger1 = time = 100
value = 10,53
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 803, changeanim]
type = changeanim
trigger1 = anim = 830
trigger1 = animtime = 0
value = 831

[state 803, changeanim]
type = changeanim
trigger1 = time = 160+60
value = 832

[state 803, changestate]
type = changestate
trigger1 = anim = 832
trigger1 = animtime = 0
value = 0
;===========================================================================
;���C���g�����S�w���̏o�Ԃˁx
[statedef 804]
type = s
anim = 810

[state 804, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 804, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,54
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 804, changeanim]
type = changeanim
trigger1 = time = 60
value = 812

[state 804, changeanim]
type = changeanim
trigger1 = time = 120
value = 810

[state 804, changestate]
type = changestate
trigger1 = time = 140
value = 820
;===========================================================================
;���C���g�����T�w�_�����l���͓������Ȃ����x
[statedef 805]
type = s
anim = 830

[state 805, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 805, explod]
type = explod
trigger1 = anim = 830
trigger1 = animelemtime(4) = 0
anim = 10830
id = 10830
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 805, explod]
type = explod
trigger1 = anim = 830
trigger1 = animelemtime(9) = 0
anim = 10831
id = 10831
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 805, explod]
type = explod
trigger1 = anim = 832
trigger1 = animelemtime(2) = 0
anim = 10832
id = 10832
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 805, playsnd]
type = playsnd
trigger1 = anim = 830
trigger1 = animelemtime(3) = 0
value = 2,3

[state 805, playsnd]
type = playsnd
trigger1 = anim = 830
trigger1 = animelemtime(3) = 3
value = 4,0

[state 805, playsnd]
type = playsnd
trigger1 = anim = 830
trigger1 = animelemtime(6) = 0
value = 4,1

[state 805, playsnd]
type = playsnd
trigger1 = time = 100
value = 10,55
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 805, changeanim]
type = changeanim
trigger1 = anim = 830
trigger1 = animtime = 0
value = 831

[state 805, changeanim]
type = changeanim
trigger1 = time = 160+60
value = 832

[state 805, changestate]
type = changestate
trigger1 = anim = 832
trigger1 = animtime = 0
value = 0
;===========================================================================
;���C���g�����U�w�����I�b�P�[��x
[statedef 806]
type = s
anim = 830

[state 806, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 806, explod]
type = explod
trigger1 = anim = 830
trigger1 = animelemtime(4) = 0
anim = 10830
id = 10830
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 806, explod]
type = explod
trigger1 = anim = 830
trigger1 = animelemtime(9) = 0
anim = 10831
id = 10831
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 806, explod]
type = explod
trigger1 = anim = 832
trigger1 = animelemtime(2) = 0
anim = 10832
id = 10832
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 806, playsnd]
type = playsnd
trigger1 = anim = 830
trigger1 = animelemtime(3) = 0
value = 2,3

[state 806, playsnd]
type = playsnd
trigger1 = anim = 830
trigger1 = animelemtime(3) = 3
value = 4,0

[state 806, playsnd]
type = playsnd
trigger1 = anim = 830
trigger1 = animelemtime(6) = 0
value = 4,1

[state 806, playsnd]
type = playsnd
trigger1 = time = 100
value = 10,56
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 806, changeanim]
type = changeanim
trigger1 = anim = 830
trigger1 = animtime = 0
value = 832

[state 806, changestate]
type = changestate
trigger1 = anim = 832
trigger1 = animtime = 0
value = 0
;===========================================================================
;���C���g�����V�w���U�ŕЕt�����x
[statedef 807]
type = s
anim = 810

[state 807, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 807, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,57
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 807, changeanim]
type = changeanim
trigger1 = time = 60
value = 812

[state 807, changeanim]
type = changeanim
trigger1 = time = 135
value = 810

[state 807, changestate]
type = changestate
trigger1 = time = 150
value = 820
;===========================================================================
;���C���g���������w�܂����āI�x�i�T�C�}�����[�h�j
[statedef 870]
type = s
anim = 810

[state 870, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 870, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,70
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 870, changeanim]
type = changeanim
trigger1 = time = 60
value = 812

[state 870, changeanim]
type = changeanim
trigger1 = time = 105
value = 810

[state 870, changestate]
type = changestate
trigger1 = time = 110
value = 820
;===========================================================================
;���C���g���������w���܂����I�x�i�T�C�}�����[�h�j
[statedef 871]
type = s
anim = 810

[state 871, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 871, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,71
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 871, changeanim]
type = changeanim
trigger1 = time = 60
value = 812

[state 871, changeanim]
type = changeanim
trigger1 = time = 105
value = 810

[state 871, changestate]
type = changestate
trigger1 = time = 110
value = 820
;===========================================================================
;���C���g���������w���ł��������x
[statedef 872]
type = s
anim = 830

[state 872, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 872, explod]
type = explod
trigger1 = anim = 830
trigger1 = animelemtime(4) = 0
anim = 10830
id = 10830
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 872, explod]
type = explod
trigger1 = anim = 830
trigger1 = animelemtime(9) = 0
anim = 10831
id = 10831
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 872, explod]
type = explod
trigger1 = anim = 832
trigger1 = animelemtime(2) = 0
anim = 10832
id = 10832
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 872, playsnd]
type = playsnd
trigger1 = anim = 830
trigger1 = animelemtime(3) = 0
value = 2,3

[state 872, playsnd]
type = playsnd
trigger1 = anim = 830
trigger1 = animelemtime(3) = 3
value = 4,0

[state 872, playsnd]
type = playsnd
trigger1 = anim = 830
trigger1 = animelemtime(6) = 0
value = 4,1

[state 872, playsnd]
type = playsnd
trigger1 = time = 100
value = 10,72
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 872, changeanim]
type = changeanim
trigger1 = anim = 830
trigger1 = animtime = 0
value = 832

[state 872, changestate]
type = changestate
trigger1 = anim = 832
trigger1 = animtime = 0
value = 0
;===========================================================================
;���C���g���������w����΂�܂��傤�ˁx�i�T�C�}�����[�h�j
[statedef 873]
type = s
anim = 810

[state 873, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 873, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,73
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 873, changeanim]
type = changeanim
trigger1 = time = 60
value = 812

[state 873, changeanim]
type = changeanim
trigger1 = time = 125
value = 810

[state 873, changestate]
type = changestate
trigger1 = time = 140
value = 820
;===========================================================================
;���C���g���������w�W�����܂��傤�x�i�T�C�}�����[�h�j
[statedef 874]
type = s
anim = 815

[state 874, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 874, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,74
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 874, changeanim]
type = changeanim
trigger1 = time = 60
value = 817

[state 874, changeanim]
type = changeanim
trigger1 = time = 125
value = 815

[state 874, changestate]
type = changestate
trigger1 = time = 140
value = 820
;===========================================================================
;���C���g���������w�������ɂȂ��x�i�T�C�}�����[�h�j
[statedef 875]
type = s
anim = 815

[state 875, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 875, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,75
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 875, changeanim]
type = changeanim
trigger1 = time = 60
value = 817

[state 875, changeanim]
type = changeanim
trigger1 = time = 135
value = 815

[state 875, changestate]
type = changestate
trigger1 = time = 150
value = 820
;===========================================================================
;���C���g���������w�����܂ł�x�i�T�C�}�����[�h�j
[statedef 876]
type = s
anim = 815

[state 876, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 876, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,76
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 876, changeanim]
type = changeanim
trigger1 = time = 60
value = 817

[state 876, changeanim]
type = changeanim
trigger1 = time = 115
value = 815

[state 876, changestate]
type = changestate
trigger1 = time = 140
value = 820
;===========================================================================
;���C���g���������w�����̎艺�����A���ăg�R�ˁx�i�T�C�}�����[�h�j
[statedef 877]
type = s
anim = 800

[state 877, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 877, playsnd]
type = playsnd
trigger1 = time = 60+90
value = 10,77
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 877, changeanim]
type = changeanim
trigger1 = time = 60+90
trigger2 = time = 150+90
value = 802

[state 877, changeanim]
type = changeanim
trigger1 = time = 135+90
trigger2 = time = 205+90
value = 800

[state 877, changestate]
type = changestate
trigger1 = time = 240+90
value = 820
;===========================================================================
;���C���g���������w���Ȃ苭�����͂̔g������x�i�T�C�}�����[�h�j
[statedef 878]
type = s
anim = 815

[state 878, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 878, playsnd]
type = playsnd
trigger1 = time = 60+90
value = 10,78
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 878, changeanim]
type = changeanim
trigger1 = time = 60+90
value = 817

[state 878, changeanim]
type = changeanim
trigger1 = time = 170+90
value = 815

[state 878, changestate]
type = changestate
trigger1 = time = 200+90
value = 820
;===========================================================================
;���C���g���������w���ڂ���I�H�x�ivs���ڂ܂ǂ��j
[statedef 8100]
type = s
anim = 815

[state 8100, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8100, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,100
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8100, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 100
value = 817

[state 8100, changeanim]
type = changeanim
trigger1 = time = 80
trigger2 = time = 160
value = 815

[state 8100, changestate]
type = changestate
trigger1 = time = 200+120
value = 820
;===========================================================================
;���C���g���������w�ǂ�����ł��������x�ivs���ڂ܂ǂ��j
[statedef 8101]
type = s
anim = 830

[state 8101, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8101, explod]
type = explod
trigger1 = anim = 830
trigger1 = animelemtime(4) = 0
anim = 10830
id = 10830
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 8101, explod]
type = explod
trigger1 = anim = 830
trigger1 = animelemtime(9) = 0
anim = 10831
id = 10831
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 8101, explod]
type = explod
trigger1 = anim = 832
trigger1 = animelemtime(2) = 0
anim = 10832
id = 10832
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 8101, playsnd]
type = playsnd
trigger1 = anim = 830
trigger1 = animelemtime(3) = 0
value = 2,3

[state 8101, playsnd]
type = playsnd
trigger1 = anim = 830
trigger1 = animelemtime(3) = 3
value = 4,0

[state 8101, playsnd]
type = playsnd
trigger1 = anim = 830
trigger1 = animelemtime(6) = 0
value = 4,1

[state 8101, playsnd]
type = playsnd
trigger1 = time = 100
value = 10,101
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8101, changeanim]
type = changeanim
trigger1 = anim = 830
trigger1 = animtime = 0
value = 831

[state 8101, changeanim]
type = changeanim
trigger1 = time = 160+20
value = 832

[state 8101, changestate]
type = changestate
trigger1 = anim = 832
trigger1 = animtime = 0
value = 0
;===========================================================================
;���C���g���������w��낵���ˁA���ڂ���x�i�p�[�g�i�[�F���ڂ܂ǂ��j
[statedef 8130]
type = s
anim = 810

[state 8130, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8130, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8330
trigger1 = var(7) := 96
trigger2 = var(30) = 8331
trigger2 = var(7) := 96
trigger3 = var(30) = 8332
trigger3 = var(7) := 102
trigger4 = var(30) = 8333
trigger4 = var(7) := 108
trigger5 = var(30) = 8334
trigger5 = var(7) := 114
trigger6 = var(30) = 8335
trigger6 = var(7) := 120
trigger7 = var(30) = 8336
trigger7 = var(7) := 126
trigger8 = var(30) = 8337
trigger8 = var(7) := 132

[state 8130, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,130
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8130, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
trigger2 = time = 105+var(7)
value = 812

[state 8130, changeanim]
type = changeanim
trigger1 = time = 100+var(7)
trigger2 = time = 160+var(7)
value = 810

[state 8130, changestate]
type = changestate
trigger1 = time = 190+var(7)
value = 820
;===========================================================================
;���C���g���������w���ڂ���A���ނ�ˁx�i�p�[�g�i�[�F���ڂ܂ǂ��j
[statedef 8131]
type = s
anim = 810

[state 8131, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8131, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8330
trigger1 = var(7) := 96
trigger2 = var(30) = 8331
trigger2 = var(7) := 96
trigger3 = var(30) = 8332
trigger3 = var(7) := 102
trigger4 = var(30) = 8333
trigger4 = var(7) := 108
trigger5 = var(30) = 8334
trigger5 = var(7) := 114
trigger6 = var(30) = 8335
trigger6 = var(7) := 120
trigger7 = var(30) = 8336
trigger7 = var(7) := 126
trigger8 = var(30) = 8337
trigger8 = var(7) := 132

[state 8131, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,131
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8131, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
trigger2 = time = 105+var(7)
value = 812

[state 8131, changeanim]
type = changeanim
trigger1 = time = 95+var(7)
trigger2 = time = 160+var(7)
value = 810

[state 8131, changestate]
type = changestate
trigger1 = time = 190+var(7)
value = 820
;===========================================================================
;���C���g���������w�����������Ƃ���͌������Ȃ����̂ˁx�i�p�[�g�i�[�F���ڂ܂ǂ��j
[statedef 8132]
type = s
anim = 810

[state 8132, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8132, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8330
trigger1 = var(7) := 96
trigger2 = var(30) = 8331
trigger2 = var(7) := 96
trigger3 = var(30) = 8332
trigger3 = var(7) := 102
trigger4 = var(30) = 8333
trigger4 = var(7) := 108
trigger5 = var(30) = 8334
trigger5 = var(7) := 114
trigger6 = var(30) = 8335
trigger6 = var(7) := 120
trigger7 = var(30) = 8336
trigger7 = var(7) := 126
trigger8 = var(30) = 8337
trigger8 = var(7) := 132

[state 8132, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,132
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8132, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
value = 812

[state 8132, changeanim]
type = changeanim
trigger1 = time = 170+var(7)
value = 810

[state 8132, changestate]
type = changestate
trigger1 = time = 200+var(7)
value = 820
;===========================================================================
;���C���g���������w�����Ƃ��������́x�i�p�[�g�i�[�F���ڂ܂ǂ��j
[statedef 8133]
type = s
anim = 810

[state 8133, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8133, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8330
trigger1 = var(7) := 96
trigger2 = var(30) = 8331
trigger2 = var(7) := 96
trigger3 = var(30) = 8332
trigger3 = var(7) := 102
trigger4 = var(30) = 8333
trigger4 = var(7) := 108
trigger5 = var(30) = 8334
trigger5 = var(7) := 114
trigger6 = var(30) = 8335
trigger6 = var(7) := 120
trigger7 = var(30) = 8336
trigger7 = var(7) := 126
trigger8 = var(30) = 8337
trigger8 = var(7) := 132

[state 8133, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,133
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8133, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
trigger2 = time = 155+var(7)
value = 812

[state 8133, changeanim]
type = changeanim
trigger1 = time = 140+var(7)
trigger2 = time = 255+var(7)
value = 810

[state 8133, changestate]
type = changestate
trigger1 = time = 280+var(7)
value = 820
;===========================================================================
;���C���g���������w���@�����R���r�����L�O��x�i�p�[�g�i�[�F���ڂ܂ǂ��j
[statedef 8134]
type = s
anim = 810

[state 8134, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8134, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8330
trigger1 = var(7) := 96
trigger2 = var(30) = 8331
trigger2 = var(7) := 96
trigger3 = var(30) = 8332
trigger3 = var(7) := 102
trigger4 = var(30) = 8333
trigger4 = var(7) := 108
trigger5 = var(30) = 8334
trigger5 = var(7) := 114
trigger6 = var(30) = 8335
trigger6 = var(7) := 120
trigger7 = var(30) = 8336
trigger7 = var(7) := 126
trigger8 = var(30) = 8337
trigger8 = var(7) := 132

[state 8134, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,134
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8134, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
trigger2 = time = 155+var(7)
value = 812

[state 8134, changeanim]
type = changeanim
trigger1 = time = 140+var(7)
trigger2 = time = 295+var(7)
value = 810

[state 8134, changestate]
type = changestate
trigger1 = time = 320+var(7)
value = 820
;===========================================================================
;���C���g���������w���������Ă��A�M���͎�������x�i�p�[�g�i�[�F���ڂ܂ǂ��j
[statedef 8135]
type = s
anim = 815

[state 8135, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8135, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8330
trigger1 = var(7) := 96
trigger2 = var(30) = 8331
trigger2 = var(7) := 96
trigger3 = var(30) = 8332
trigger3 = var(7) := 102
trigger4 = var(30) = 8333
trigger4 = var(7) := 108
trigger5 = var(30) = 8334
trigger5 = var(7) := 114
trigger6 = var(30) = 8335
trigger6 = var(7) := 120
trigger7 = var(30) = 8336
trigger7 = var(7) := 126
trigger8 = var(30) = 8337
trigger8 = var(7) := 132

[state 8135, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,135
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8135, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
trigger2 = time = 130+var(7)
value = 817

[state 8135, changeanim]
type = changeanim
trigger1 = time = 120+var(7)
trigger2 = time = 240+var(7)
value = 815

[state 8135, changestate]
type = changestate
trigger1 = time = 270+var(7)
value = 820
;===========================================================================
;���C���g���������w�N���̂��߂Ɋ肤���́A���h�Ȏ����Ǝv����x�ivs�������₩�j
[statedef 8200]
type = s
anim = 815

[state 8200, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8200, playsnd]
type = playsnd
trigger1 = time = 60+120
value = 10,200
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8200, changeanim]
type = changeanim
trigger1 = time = 60+120
trigger2 = time = 170+120
value = 817

[state 8200, changeanim]
type = changeanim
trigger1 = time = 150+120
trigger2 = time = 270+120
value = 815

[state 8200, changestate]
type = changestate
trigger1 = time = 300+120
value = 820
;===========================================================================
;���C���g���������w��������A���ނ�ˁx�i�p�[�g�i�[�F�������₩�j
[statedef 8230]
type = s
anim = 810

[state 8230, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8230, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8330
trigger1 = var(7) := 84
trigger2 = var(30) = 8331
trigger2 = var(7) := 144
trigger3 = var(30) = 8332
trigger3 = var(7) := 150
trigger4 = var(30) = 8333
trigger4 = var(7) := 150
trigger5 = var(30) = 8334
trigger5 = var(7) := 180

[state 8230, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,230
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8230, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
trigger2 = time = 105+var(7)
value = 812

[state 8230, changeanim]
type = changeanim
trigger1 = time = 95+var(7)
trigger2 = time = 160+var(7)
value = 810

[state 8230, changestate]
type = changestate
trigger1 = time = 190+var(7)
value = 820
;===========================================================================
;���C���g���������w�M���̃o�b�N�A�b�v�͎������邩��x�i�p�[�g�i�[�F�������₩�j
[statedef 8231]
type = s
anim = 810

[state 8231, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8231, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8330
trigger1 = var(7) := 84
trigger2 = var(30) = 8331
trigger2 = var(7) := 144
trigger3 = var(30) = 8332
trigger3 = var(7) := 150
trigger4 = var(30) = 8333
trigger4 = var(7) := 150
trigger5 = var(30) = 8334
trigger5 = var(7) := 180

[state 8231, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,231
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8231, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
trigger2 = time = 185+var(7)
value = 812

[state 8231, changeanim]
type = changeanim
trigger1 = time = 170+var(7)
trigger2 = time = 245+var(7)
value = 810

[state 8231, changestate]
type = changestate
trigger1 = time = 260+var(7)
value = 820
;===========================================================================
;���C���g���������w����A���C���X�ˁx�i�p�[�g�i�[�F�������₩�j
[statedef 8232]
type = s
anim = 810

[state 8232, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8232, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8330
trigger1 = var(7) := 84
trigger2 = var(30) = 8331
trigger2 = var(7) := 144
trigger3 = var(30) = 8332
trigger3 = var(7) := 150
trigger4 = var(30) = 8333
trigger4 = var(7) := 150
trigger5 = var(30) = 8334
trigger5 = var(7) := 180

[state 8232, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,232
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8232, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
trigger2 = time = 100+var(7)
value = 812

[state 8232, changeanim]
type = changeanim
trigger1 = time = 80+var(7)
trigger2 = time = 180+var(7)
value = 810

[state 8232, changestate]
type = changestate
trigger1 = time = 200+var(7)
value = 820
;===========================================================================
;���C���g���������w������U���邩��x�i�p�[�g�i�[�F�������₩�j
[statedef 8233]
type = s
anim = 815

[state 8233, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8233, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8330
trigger1 = var(7) := 84
trigger2 = var(30) = 8331
trigger2 = var(7) := 144
trigger3 = var(30) = 8332
trigger3 = var(7) := 150
trigger4 = var(30) = 8333
trigger4 = var(7) := 150
trigger5 = var(30) = 8334
trigger5 = var(7) := 180

[state 8233, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,233
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8233, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
trigger2 = time = 150+var(7)
value = 817

[state 8233, changeanim]
type = changeanim
trigger1 = time = 135+var(7)
trigger2 = time = 250+var(7)
value = 815

[state 8233, changestate]
type = changestate
trigger1 = time = 270+var(7)
value = 820
;===========================================================================
;���C���g���������w����������ˁx�i�p�[�g�i�[�F�������₩�j�����g�p
[statedef 8234]
type = s
anim = 810

[state 8234, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8330
trigger1 = var(7) := 84
trigger2 = var(30) = 8331
trigger2 = var(7) := 144
trigger3 = var(30) = 8332
trigger3 = var(7) := 150
trigger4 = var(30) = 8333
trigger4 = var(7) := 150
trigger5 = var(30) = 8334
trigger5 = var(7) := 180

[state 8234, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8234, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,234
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8234, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
value = 813

[state 8234, changeanim]
type = changeanim
trigger1 = time = 110+var(7)
trigger2 = time = 230+var(7)
trigger3 = time = 270+var(7)
value = 812

[state 8234, changeanim]
type = changeanim
trigger1 = time = 90+var(7)
trigger2 = time = 195+var(7)
trigger3 = time = 250+var(7)
trigger4 = time = 370+var(7)
value = 810

[state 8234, changestate]
type = changestate
trigger1 = time = 400+var(7)
value = 820
;===========================================================================
;���C���g���������w���Ȃ����A���q����x�ivs���q�ǎq�j
[statedef 8400]
type = s
anim = 815

[state 8400, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8400, playsnd]
type = playsnd
trigger1 = time = 60+90
value = 10,400
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8400, changeanim]
type = changeanim
trigger1 = time = 60+90
trigger2 = time = 120+90
value = 817

[state 8400, changeanim]
type = changeanim
trigger1 = time = 100+90
trigger2 = time = 160+90
value = 815

[state 8400, changestate]
type = changestate
trigger1 = time = 180+90
value = 820
;===========================================================================
;���C���g���������w���q����A���񂾂�x�i�p�[�g�i�[�F���q�ǎq�j
[statedef 8430]
type = s
anim = 815

[state 8430, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8430, playsnd]
type = playsnd
trigger1 = time = 60+90
value = 10,430
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8430, changeanim]
type = changeanim
trigger1 = time = 60+90
trigger2 = time = 105+90
value = 817

[state 8430, changeanim]
type = changeanim
trigger1 = time = 95+90
trigger2 = time = 160+90
value = 815

[state 8430, changestate]
type = changestate
trigger1 = time = 190+90
value = 820
;===========================================================================
;���C���g���������w�������A���q����x�i�p�[�g�i�[�F���q�ǎq�j
[statedef 8431]
type = s
anim = 810

[state 8431, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8431, playsnd]
type = playsnd
trigger1 = time = 60+90
value = 10,431
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8431, changeanim]
type = changeanim
trigger1 = time = 60+90
trigger2 = time = 105+90
value = 812

[state 8431, changeanim]
type = changeanim
trigger1 = time = 95+90
trigger2 = time = 150+90
value = 810

[state 8431, changestate]
type = changestate
trigger1 = time = 170+90
value = 820
;===========================================================================
;���C���g���������w���̓�l�Ȃ�A�����Ƒ��v��x�i�p�[�g�i�[�F���q�ǎq�j
[statedef 8432]
type = s
anim = 810

[state 8432, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8432, playsnd]
type = playsnd
trigger1 = time = 60+90
value = 10,432
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8432, changeanim]
type = changeanim
trigger1 = time = 60+90
trigger2 = time = 135+90
value = 812

[state 8432, changeanim]
type = changeanim
trigger1 = time = 120+90
trigger2 = time = 210+90
value = 810

[state 8432, changestate]
type = changestate
trigger1 = time = 230+90
value = 820
;===========================================================================
;���C���g���������w���҂��Ă��x�i�p�[�g�i�[�F���q�ǎq�j
[statedef 8433]
type = s
anim = 810

[state 8433, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8433, playsnd]
type = playsnd
trigger1 = time = 60+90
value = 10,433
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8433, changeanim]
type = changeanim
trigger1 = time = 60+90
value = 812

[state 8433, changeanim]
type = changeanim
trigger1 = time = 120+90
value = 810

[state 8433, changestate]
type = changestate
trigger1 = time = 150+90
value = 820
;===========================================================================
;���C���g���������w��l����l�̂ق������S�x�i�p�[�g�i�[�F���q�ǎq�j
[statedef 8434]
type = s
anim = 810

[state 8434, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8434, playsnd]
type = playsnd
trigger1 = time = 60+90
value = 10,434
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8434, changeanim]
type = changeanim
trigger1 = time = 60+90
trigger2 = time = 165+90
value = 812

[state 8434, changeanim]
type = changeanim
trigger1 = time = 140+90
trigger2 = time = 240+90
value = 810

[state 8434, changestate]
type = changestate
trigger1 = time = 260+90
value = 820
;===========================================================================
;���C���g���������w�Ŕ�����A���Ȃ��E�E�x�ivs�Ŕ��قނ�j
[statedef 8500]
type = s
anim = 815

[state 8500, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8500, playsnd]
type = playsnd
trigger1 = time = 60+120
value = 10,500
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8500, changeanim]
type = changeanim
trigger1 = time = 60+120
trigger2 = time = 140+120
value = 817

[state 8500, changeanim]
type = changeanim
trigger1 = time = 120+120
trigger2 = time = 200+120
value = 815

[state 8500, changestate]
type = changestate
trigger1 = time = 220+120
value = 820
;===========================================================================
;���C���g���������w�Ŕ�����A���ނ�ˁx�i�p�[�g�i�[�F�Ŕ��قނ�j
[statedef 8530]
type = s
anim = 815

[state 8530, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8530, playsnd]
type = playsnd
trigger1 = time = 60+120
value = 10,530
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8530, changeanim]
type = changeanim
trigger1 = time = 60+120
trigger2 = time = 105+120
value = 817

[state 8530, changeanim]
type = changeanim
trigger1 = time = 95+120
trigger2 = time = 160+120
value = 815

[state 8530, changestate]
type = changestate
trigger1 = time = 190+120
value = 820
;===========================================================================
;���C���g���������w�Ŕ�����A�C�����Ăˁx�i�p�[�g�i�[�F�Ŕ��قނ�j
[statedef 8531]
type = s
anim = 815

[state 8531, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8531, playsnd]
type = playsnd
trigger1 = time = 60+120
value = 10,531
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8531, changeanim]
type = changeanim
trigger1 = time = 60+120
trigger2 = time = 105+120
value = 817

[state 8531, changeanim]
type = changeanim
trigger1 = time = 95+120
trigger2 = time = 170+120
value = 815

[state 8531, changestate]
type = changestate
trigger1 = time = 200+120
value = 820
;===========================================================================
;���C���g���������w�Ŕ�����A�����͂���������H�x�i�p�[�g�i�[�F�Ŕ��قނ�j
[statedef 8532]
type = s
anim = 810

[state 8532, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8532, playsnd]
type = playsnd
trigger1 = time = 60+120
value = 10,532
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8532, changeanim]
type = changeanim
trigger1 = time = 60+120
trigger2 = time = 110+120
value = 812

[state 8532, changeanim]
type = changeanim
trigger1 = time = 105+120
trigger2 = time = 185+120
value = 810

[state 8532, changestate]
type = changestate
trigger1 = time = 200+120
value = 820
;===========================================================================
;���C���g���������w�C�����Ă����܂��傤�H�x�i�p�[�g�i�[�F�Ŕ��قނ�j
[statedef 8533]
type = s
anim = 810

[state 8533, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8533, playsnd]
type = playsnd
trigger1 = time = 60+120
value = 10,533
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8533, changeanim]
type = changeanim
trigger1 = time = 60+120
value = 812

[state 8533, changeanim]
type = changeanim
trigger1 = time = 140+120
value = 810

[state 8533, changestate]
type = changestate
trigger1 = time = 180+120
value = 820
;===========================================================================
;���C���g���������w���̂����炢�͑��v�H�x�i�p�[�g�i�[�F�Ŕ��قނ�j
[statedef 8534]
type = s
anim = 810

[state 8534, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8534, playsnd]
type = playsnd
trigger1 = time = 60+120
value = 10,534
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8534, changeanim]
type = changeanim
trigger1 = time = 60+120
value = 812

[state 8534, changeanim]
type = changeanim
trigger1 = time = 160+120
value = 810

[state 8534, changestate]
type = changestate
trigger1 = time = 180+120
value = 820
;===========================================================================
;���C���g���������w���炵�����������ǁx�ivs���َq�̖����j
[statedef 8700]
type = s
anim = 850

[state 8700, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8700, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,700
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 8700, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 160
value = 852

[state 8700, changeanim]
type = changeanim
trigger1 = time = 145
trigger2 = time = 240
value = 851

[state 8700, changestate]
type = changestate
trigger1 = time = 260
value = 820
;===========================================================================
[statedef 820]
type = s
physics = n
anim = 805

[state 820, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 820, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 4,0

[state 820, helper]
type = helper
trigger1 = animelemtime(3) = 0
helpertype = normal
name = "soul gem"
stateno = 10001
id = 10001
pos = -floor(const(size.xscale)*1),-floor(const(size.yscale)*115)
postype = p1
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 820, varadd]
type = varadd
trigger1 = animelemtime(4) > 0
trigger1 = var(6) < 255
var(6) = 5

[state 820, palfx]
type = palfx
trigger1 = 1
time = 1
add = var(6),var(6),var(6)

[state 820, changestate]
type = changestate
trigger1 = animtime = 0
value = 821
;---------------------------------------------------------------------------
[statedef 821]
anim = 820

[state 821, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 821, varset]
type = varset
trigger1 = time = 0
var(6) = 250

[state 821, varadd]
type = varadd
trigger1 = var(6) > 0
var(6) = -10

[state 821, palfx]
type = palfx
trigger1 = var(6) > 0
time = 1
add = var(6),var(6),var(6)

[state 821, explod]
type = explod
trigger1 = time = 0
anim = 10820
id = 10820
pos = 0,0
postype = p1
facing = 1
bindtime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 821, explod]
type = explod
trigger1 = animelemtime(3) = 0
anim = 10821
id = 10821
pos = 0,0
postype = p1
facing = 1
bindtime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 821, explod]
type = explod
trigger1 = animelemtime(6) = 0
anim = 10822
id = 10822
pos = 0,0
postype = p1
facing = 1
bindtime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 821, explod]
type = explod
trigger1 = animelemtime(14) = 0
anim = 10823
id = 10823
pos = 0,0
postype = p1
facing = 1
bindtime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 821, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,7

[state 821, explod]
type = explod
trigger1 = animelemtime(10) = 0
anim = 20100+var(5)
id = 20100
pos = floor(const(size.xscale)*9),floor(const(size.yscale)*1)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 821, explod]
type = explod
trigger1 = animelemtime(11) = 0
anim = 20100+var(5)
id = 20100
pos = -floor(const(size.xscale)*2),floor(const(size.yscale)*4)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 821, explod]
type = explod
trigger1 = animelemtime(13) = 0
anim = 20100+var(5)
id = 20100
pos = -floor(const(size.xscale)*30),-floor(const(size.yscale)*6)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 821, explod]
type = explod
trigger1 = animelemtime(14) = 0
anim = 20100+var(5)
id = 20100
pos = -floor(const(size.xscale)*44),-floor(const(size.yscale)*12)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 821, explod]
type = explod
trigger1 = animelemtime(15) = 0
anim = 20100+var(5)
id = 20100
pos = -floor(const(size.xscale)*39),-floor(const(size.yscale)*16)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 2
ownpal = 1

[state 821, explod]
type = explod
trigger1 = animelemtime(16) = 0
anim = 20100+var(5)
id = 20100
pos = -floor(const(size.xscale)*21),-floor(const(size.yscale)*15)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 2
ownpal = 1

[state 821, explod]
type = explod
trigger1 = animelemtime(18) = 0
anim = 20100+var(5)
id = 20100
pos = -floor(const(size.xscale)*7),-floor(const(size.yscale)*13)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 2
ownpal = 1

[state 821, explod]
type = explod
trigger1 = animelemtime(19) = 0
anim = 20100+var(5)
id = 20100
pos = floor(const(size.xscale)*12),-floor(const(size.yscale)*10)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 2
ownpal = 1

[state 821, explod]
type = explod
trigger1 = animelemtime(20) = 0
anim = 20100+var(5)
id = 20100
pos = floor(const(size.xscale)*20),floor(const(size.yscale)*2)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 821, removeexplod]
type = removeexplod
trigger1 = animelemtime(22) = 0
id = 20100

[state 821, helper]
type = helper
trigger1 = animelemtime(22) > 0
trigger1 = animelemtime(22) < 11
helpertype = normal
name = "shining flower a"
stateno = 20000
id = 20000
pos = floor(const(size.xscale)*random*0.1),floor(const(size.yscale)*random*0.1)-floor(30*const(size.yscale))
postype = p1
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = (1.2-(var(5)*0.1))*const(size.xscale)
size.yscale = (1.2-(var(5)*0.1))*const(size.yscale)

[state 821, helper]
type = helper
trigger1 = animelemtime(22) > 0
trigger1 = animelemtime(22) < 11
helpertype = normal
name = "shining flower b"
stateno = 20000
id = 20000
pos = floor(const(size.xscale)*random*0.1),-floor(const(size.yscale)*random*0.1)-floor(30*const(size.yscale))
postype = p1
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = (1.2-(var(5)*0.1))*const(size.xscale)
size.yscale = (1.2-(var(5)*0.1))*const(size.yscale)

[state 821, helper]
type = helper
trigger1 = animelemtime(22) > 0
trigger1 = animelemtime(22) < 11
helpertype = normal
name = "shining flower c"
stateno = 20000
id = 20000
pos = -floor(const(size.xscale)*random*0.1),floor(const(size.yscale)*random*0.1)-floor(30*const(size.yscale))
postype = p1
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = (1.2-(var(5)*0.1))*const(size.xscale)
size.yscale = (1.2-(var(5)*0.1))*const(size.yscale)

[state 821, helper]
type = helper
trigger1 = animelemtime(22) > 0
trigger1 = animelemtime(22) < 11
helpertype = normal
name = "shining flower d"
stateno = 20000
id = 20000
pos = -floor(const(size.xscale)*random*0.1),-floor(const(size.yscale)*random*0.1)-floor(30*const(size.yscale))
postype = p1
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = (1.2-(var(5)*0.1))*const(size.xscale)
size.yscale = (1.2-(var(5)*0.1))*const(size.yscale)

[state 821, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(6) = 0
trigger3 = animelemtime(11) = 0
trigger4 = animelemtime(16) = 0
value = 4,1

[state 821, playsnd]
type = playsnd
trigger1 = animelemtime(11) = 0
value = 4,2

[state 821, playsnd]
type = playsnd
trigger1 = animelemtime(20) = 0
value = 4,3

[state 821, palfx]
type = palfx
trigger1 = animelemtime(20) = 0
time = 16
add = 120,120,80
ignorehitpause = 1

[state 821, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
;===========================================================================
;-| initialize |--------------------------------------------------------
;===========================================================================
;��������
[statedef 5900]
type = s

[state 5900, varrangeset]
type = varrangeset
trigger1 = roundsexisted = 0
value = 0

[state 5900, varrangeset]
type = varrangeset
trigger1 = roundsexisted = 0
fvalue = 0

;---------------------------------------------------------------------------
;���G�R�[�h�擾
[state 5900, varset]
type = varset
triggerall = var(11) = 0
trigger1 = numenemy > 0
trigger1 = enemy(0),authorname = "otz-kai" && enemy(0),name = "kaname madoka"
trigger2 = numenemy > 1
trigger2 = enemy(1),authorname = "otz-kai" && enemy(1),name = "kaname madoka"
trigger3 = numenemy > 2
trigger3 = enemy(2),authorname = "otz-kai" && enemy(2),name = "kaname madoka"
trigger4 = numenemy > 3
trigger4 = enemy(3),authorname = "otz-kai" && enemy(3),name = "kaname madoka"
var(11) = 100

[state 5900, varset]
type = varset
triggerall = var(11) = 0
trigger1 = numenemy > 0
trigger1 = enemy(0),authorname = "otz-kai" && enemy(0),name = "miki sayaka"
trigger2 = numenemy > 1
trigger2 = enemy(1),authorname = "otz-kai" && enemy(1),name = "miki sayaka"
trigger3 = numenemy > 2
trigger3 = enemy(2),authorname = "otz-kai" && enemy(2),name = "miki sayaka"
trigger4 = numenemy > 3
trigger4 = enemy(3),authorname = "otz-kai" && enemy(3),name = "miki sayaka"
var(11) = 200

[state 5900, varset]
type = varset
triggerall = var(11) = 0
trigger1 = numenemy > 0
trigger1 = enemy(0),name = "sakura kyoko" || enemy(0),name = "kyoko sakura" || enemy(0),name = "kyoko_sakura" || enemy(0),name = "kyouko sakura"
trigger2 = numenemy > 1
trigger2 = enemy(1),name = "sakura kyoko" || enemy(1),name = "kyoko sakura" || enemy(1),name = "kyoko_sakura" || enemy(1),name = "kyouko sakura"
trigger3 = numenemy > 2
trigger3 = enemy(2),name = "sakura kyoko" || enemy(2),name = "kyoko sakura" || enemy(2),name = "kyoko_sakura" || enemy(2),name = "kyouko sakura"
trigger4 = numenemy > 3
trigger4 = enemy(3),name = "sakura kyoko" || enemy(3),name = "kyoko sakura" || enemy(3),name = "kyoko_sakura" || enemy(3),name = "kyouko sakura"
var(11) = 400

[state 5900, varset]
type = varset
triggerall = var(11) = 0
trigger1 = numenemy > 0
trigger1 = enemy(0),name = "akemi-homura"
trigger2 = numenemy > 1
trigger2 = enemy(1),name = "akemi-homura"
trigger3 = numenemy > 2
trigger3 = enemy(2),name = "akemi-homura"
trigger4 = numenemy > 3
trigger4 = enemy(3),name = "akemi-homura"
var(11) = 500

[state 5900, varset]
type = varset
triggerall = var(11) = 0
trigger1 = numenemy > 0
trigger1 = enemy(0),name = "homura & friends"
trigger2 = numenemy > 1
trigger2 = enemy(1),name = "homura & friends"
trigger3 = numenemy > 2
trigger3 = enemy(2),name = "homura & friends"
trigger4 = numenemy > 3
trigger4 = enemy(3),name = "homura & friends"
var(11) = 590

[state 5900, varset]
type = varset
triggerall = var(11) = 0
trigger1 = numenemy > 0
trigger1 = enemy(0),authorname = "mrclmndks" && enemy(0),name = "charlotte"
trigger2 = numenemy > 1
trigger2 = enemy(1),authorname = "mrclmndks" && enemy(1),name = "charlotte"
trigger3 = numenemy > 2
trigger3 = enemy(2),authorname = "mrclmndks" && enemy(2),name = "charlotte"
trigger4 = numenemy > 3
trigger4 = enemy(3),authorname = "mrclmndks" && enemy(3),name = "charlotte"
var(11) = 700
;---------------------------------------------------------------------------
;�������R�[�h�擾
[state 5900, varset]
type = varset
triggerall = var(12) = 0
triggerall = numpartner
trigger1 = partner,authorname = "otz-kai" && partner,name = "kaname madoka"
var(12) = 100

[state 5900, varset]
type = varset
triggerall = var(12) = 0
triggerall = numpartner
trigger1 = partner,authorname = "otz-kai" && partner,name = "miki sayaka"
var(12) = 200

[state 5900, varset]
type = varset
triggerall = var(12) = 0
triggerall = numpartner
trigger1 = partner,name = "sakura kyoko"
trigger2 = partner,name = "kyoko sakura"
trigger3 = partner,name = "sakura-kyoko"
trigger4 = partner,name = "kyoko_sakura"
var(12) = 400

[state 5900, varset]
type = varset
triggerall = var(12) = 0
triggerall = numpartner
trigger1 = partner,name = "akemi-homura"
var(12) = 500
;---------------------------------------------------------------------------
;���p���b�g�萔
[state 5900, color default]
type = null
trigger1 = palno = 1 || palno = 4
trigger1 = var(21) := 120
trigger1 = var(22) := 90
trigger1 = var(23) := 10

[state 5900, color moon light]
type = null
trigger1 = palno = 2 || palno = 5
trigger1 = var(21) := 120
trigger1 = var(22) := 55
trigger1 = var(23) := 10

[state 5900, color morning grow]
type = null
trigger1 = palno = 3 || palno = 6
trigger1 = var(21) := 110
trigger1 = var(22) := 120
trigger1 = var(23) := 75

[state 5900, color rose wine]
type = null
trigger1 = palno = 10
trigger1 = var(21) := 120
trigger1 = var(22) := 10
trigger1 = var(23) := 75

[state 5900, color mint]
type = null
trigger1 = palno = 11
trigger1 = var(21) := 10
trigger1 = var(22) := 90
trigger1 = var(23) := 120

[state 5900, color platinum]
type = null
trigger1 = palno = 12
trigger1 = var(21) := 120
trigger1 = var(22) := 130
trigger1 = var(23) := 100

[state 5900, color dt killer1]
type = null
trigger1 = palno = 7
trigger1 = var(21) := 110
trigger1 = var(22) := 120
trigger1 = var(23) := 75

[state 5900, color dt killer2]
type = null
trigger1 = palno = 8
trigger1 = var(21) := 120
trigger1 = var(22) := 55
trigger1 = var(23) := 10

[state 5900, color dt killer3]
type = null
trigger1 = palno = 9
trigger1 = var(21) := 130
trigger1 = var(22) := 120
trigger1 = var(23) := 100
;---------------------------------------------------------------------------
[state 5900, changestate]
type = changestate
trigger1 = roundno = 1
trigger2 = teammode = turns
trigger2 = roundsexisted = 0
trigger3 = var(11) != 0
trigger3 = numenemy
trigger3 = enemy,roundsexisted = 0
value = 190
