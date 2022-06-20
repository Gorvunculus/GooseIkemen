[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 0
Velset = 0, 0
ctrl = 0

[State 430, 31sdaa]
type = changeanim
trigger1 = Time = 60
value = 3381

[State 9130, SetFatal]
type = Varset
trigger1 = time = 0
V = 4
value = 1

[State 7200, Helper]
type = Helper
trigger1 = animelemtime(5) = 30 && anim = 3381
id = 7200
name = "THE ROCK"
pos = 0, -225
postype = P2
stateno = 3001;7200
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
persistent = 0

[State 200, 7]
type = changeanim
trigger1 = AnimTime = 0
trigger1 = anim = 3381
value = 0

[State 200, 7]
type = changestate
trigger1 = time = 265
value = 0
ctrl = 1

;---------------------------------------------------------------------------
The Rock
[Statedef 3001];7200
type = A
movetype = A
physics = N
anim = 7200
ctrl = 0
sprpriority = 10

[State 7200, 1]
type = AssertSpecial
trigger1 = time <= 31
flag = noshadow

[State 7200, 1]
type = PalFX
trigger1 = time = 0
time = 30
add = -256, -256, -256
sinadd = 256, 256, 256, 120

[State 7200, pup]
type = PlaySnd
trigger1 = time = 31
value = F5,15
persistent = 0

[State 7200, VelSet]
type = VelSet
trigger1 = time = 31
y = 15

[State 7200, Gravity]
type = VelAdd
trigger1 = time >= 31
y = .5

[State 7200, BoltFat]
type = HitDef
trigger1 = animelem = 3
attr = A, SA                
damage    = 0, 0
animtype = Back
air.animtype = Back                               
guardflag = HL
hitflag = MAF            
priority = 1, Miss
pausetime = 0,1
sparkno = -1
guard.sparkno = -1
hitsound = 5, 0
guardsound = -1, -1             
ground.type = Low
ground.slidetime = 0
ground.hittime  = 1
ground.velocity = 0,0
ground.cornerpush.veloff = 0
fall.recover = 0
fall = 1
p2stateno = 3384


 
[State 7200, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -10
value = 3002;7201

;---------------------------------------------------------------------------
The Rock 2nd State
[Statedef 3002];7201
type = A
movetype = I
physics = N
anim = 7201
ctrl = 0
velset = 0, 0
sprpriority = 10

[State 7200, shake]
type = envshake
trigger1 = time = 0
time = 20
freq = 250
ampl = 10
;================================================================
;Babality
[Statedef 123123]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 0

;Set as a Babality
[State 9130, SetFatal]
type = Varset
trigger1 = time = 1
V = 4
value = 2

;Cover up the transformation
[State 9251,misil]
type = explod
trigger1 = time = 20
anim = F11
postype = p2
pos = 0,10
sprpriority = 2

;Collision Helper
[State 9251,fuego]
type = Helper
trigger1 = time = 20
postype = p1
pos = 56,-60
stateno = 1234

;Camera Stay Still
[State 200, 7]
type = screenbound
trigger1 = time > 70
value = 0

;Done and Done!
[State 200, 7]
type = changestate
trigger1 = time > 140;30
value = 0
ctrl = 1
;-------------------------------
[Statedef 3010]
type    = S
movetype= I
physics = S
;anim = 3001
ctrl = 1

;Camera
[State 200, 7]
type = screenbound
trigger1 = 1
value = 0
;---------------------------
;Making Babies!
[Statedef 1234]
type    = S
movetype= A
physics = S
anim = 3380

;Turn opponent into Baby
[State 1601, Hit]
type = HitDef
trigger1 = !movecontact
attr = S, NA
sparkno = -1
numhits = - 1
p2stateno = 123

;Set Layer
[State 1601, Hit]
type = sprpriority
trigger1 = time=0
value = 2

[State 10000, rakieta]
type = destroyself
trigger1 = animtime = 0
;-------------------------
;Player 2 is a Baby!!
[Statedef 123]
type    = S
movetype= H
physics = S

;Shake
[State 0, EnvShake]
type = EnvShake
trigger1 = time = 1
time = 20
freq = 60
ampl = -4

;Lightning Sound
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = F5,27

;Baby Crying
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 99
value = F5,47

;Baby
[State 9000, 123]
type = Explod
trigger1 = time = 0
anim = 123
postype = p1
pos = 0,10
facing = 1
sprpriority = 2
ownpal = 0

[State 1601, Hit]
type = sprpriority
trigger1 = time=0
value = 1

[State 1200, chau]
type = varset
trigger1 = time = 10
V = 26
value = 1

;Move camera onto to Baby
[State 5, Vel XY]
type = veladd
trigger1 = Time > 10
trigger1 = time < 72
X = -1.5

;Camera stuff
[State 200, 7]
type = screenbound
trigger1 = time > 70
value = 0

[State 45, fff]
type = LifeSet
trigger1 = time = 50
value = 0

[State 1200, chau]
type = posset
trigger1 = time = 99
X = 50

[State 45, 34fff]
type = Selfstate
trigger1 = time = 100
value = 5150
