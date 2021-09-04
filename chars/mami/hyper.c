;===========================================================================
;†††hypers†††
;===========================================================================
;■ティロ・テンペスタ
[statedef 3000]
type = s
movetype = a
physics = s
anim = 3000
velset = 0,0
ctrl = 0

[state 3000, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3000, posadd]
type = posadd
trigger1 = animelemtime(11) = 0
trigger2 = animelemtime(12) = 0
x = -floor(const(size.xscale)*5)

[state 3000, superpause]
type = superpause
trigger1 = animelemtime(3) = 0
time = 84
movetime = 84
anim = s1;s32500
pos = -floor(const(size.xscale)*10),-floor(const(size.yscale)*93)
sound = s2,100
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -1000

[state 3000, explod]
type = explod
trigger1 = animelemtime(12) = 0
anim = 6600
id = 6600
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3000, explod]
type = explod
trigger1 = animelemtime(12) = 0
anim = 6610
id = 6610
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3000, explod]
type = explod
trigger1 = animelemtime(15) = 0
anim = 32500
id = 32500
pos = -floor(const(size.xscale)*10),-floor(const(size.yscale)*93)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1
supermovetime = 100

[state 3000, playsnd]
type = playsnd
trigger1 = animelemtime(15) = 0
value = 2,100

[state 3000, changestate]
type = changestate
trigger1 = animtime = 0
value = 3030
;---------------------------------------------------------------------------
;■ティロ・テンペスタ・連続射撃
[statedef 3030]
anim = 3030

[state 3030, nothitby]
type = nothitby
trigger1 = animelemtime(5) < 0
value = sca,aa
ignorehitpause = 1

[state 3030, removeexplod]
type = removeexplod
trigger1 = time = 0
id = 6600

[state 3030, removeexplod]
type = removeexplod
trigger1 = time = 0
id = 6610

[state 3030, explod]
type = explod
trigger1 = time = 0
anim = 6601
id = 6601
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

[state 3030, explod]
type = explod
trigger1 = time = 0
anim = 6611
id = 6611
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

;■01
[state 3030, explod]
type = explod
trigger1 = animelemtime(1) = 0
anim = 16000
id = 16000
pos = floor(const(size.xscale)*87),-floor(const(size.yscale)*81)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1

[state 3030, explod]
type = explod
trigger1 = animelemtime(2) = 0
anim = 13030
id = 13030
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

;■02
[state 3030, explod]
type = explod
trigger1 = animelemtime(4) = 0
anim = 16000
id = 16000
pos = floor(const(size.xscale)*87),-floor(const(size.yscale)*84)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1

[state 3030, explod]
type = explod
trigger1 = animelemtime(5) = 0
anim = 13031
id = 13031
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

;■03
[state 3030, explod]
type = explod
trigger1 = animelemtime(7) = 0
anim = 16000
id = 16000
pos = floor(const(size.xscale)*87),-floor(const(size.yscale)*82)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1

[state 3030, explod]
type = explod
trigger1 = animelemtime(8) = 0
anim = 13032
id = 13032
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

;■04
[state 3030, explod]
type = explod
trigger1 = animelemtime(9) = 0
anim = 16000
id = 16000
pos = floor(const(size.xscale)*84),-floor(const(size.yscale)*86)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1

[state 3030, explod]
type = explod
trigger1 = animelemtime(11) = 0
anim = 13033
id = 13033
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

;■05
[state 3030, explod]
type = explod
trigger1 = animelemtime(14) = 0
anim = 16000
id = 16000
pos = floor(const(size.xscale)*106),-floor(const(size.yscale)*77)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1

[state 3030, explod]
type = explod
trigger1 = animelemtime(15) = 0
anim = 13034
id = 13034
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

;■06
[state 3030, explod]
type = explod
trigger1 = animelemtime(18) = 0
anim = 16000
id = 16000
pos = floor(const(size.xscale)*83),-floor(const(size.yscale)*85)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1

[state 3030, explod]
type = explod
trigger1 = animelemtime(19) = 0
anim = 13035
id = 13035
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

;■07
[state 3030, explod]
type = explod
trigger1 = animelemtime(21) = 0
anim = 16000
id = 16000
pos = floor(const(size.xscale)*90),-floor(const(size.yscale)*81)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1

[state 3030, explod]
type = explod
trigger1 = animelemtime(22) = 0
anim = 13036
id = 13036
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

;■08
[state 3030, explod]
type = explod
trigger1 = animelemtime(24) = 0
anim = 16000
id = 16000
pos = floor(const(size.xscale)*130),-floor(const(size.yscale)*89)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1

[state 3030, explod]
type = explod
trigger1 = animelemtime(25) = 0
anim = 13037
id = 13037
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

;■09
[state 3030, explod]
type = explod
trigger1 = animelemtime(30) = 0
anim = 16000
id = 16000
pos = floor(const(size.xscale)*84),-floor(const(size.yscale)*80)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1

;■10
[state 3030, explod]
type = explod
trigger1 = animelemtime(30) = 4
anim = 16000
id = 16000
pos = floor(const(size.xscale)*83),-floor(const(size.yscale)*81)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1

[state 3030, explod]
type = explod
trigger1 = animelemtime(31) = 0
anim = 13038
id = 13038
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 3030, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(4) = 0
trigger3 = animelemtime(7) = 0
trigger4 = animelemtime(9) = 0
trigger5 = animelemtime(14) = 0
trigger6 = animelemtime(18) = 0
trigger7 = animelemtime(21) = 0
trigger8 = animelemtime(24) = 0
trigger9 = animelemtime(30) = 0
value = 5,1+(animelemtime(30)=0)

[state 3000, helper]
type = helper
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(4) = 0
trigger3 = animelemtime(7) = 0
trigger4 = animelemtime(9) = 0
trigger5 = animelemtime(14) = 0
trigger6 = animelemtime(18) = 0
trigger7 = animelemtime(21) = 0
trigger8 = animelemtime(24) = 0
trigger9 = animelemtime(30) = 0
helpertype = normal
name = "shot"
id = 6650
stateno = 6650
pos = floor(const(size.xscale)*0),floor(const(size.yscale)*0)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3000, helper]
type = helper
trigger1 = animelemtime(30) = 4
helpertype = normal
name = "finish"
id = 6651
stateno = 6651
pos = floor(const(size.xscale)*0),floor(const(size.yscale)*0)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3030, posadd]
type = posadd
trigger1 = animelemtime(31) = 0
x = -floor(const(size.xscale)*5)

[state 3030, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■ティロ・メテオリーテ
[statedef 3100]
type = a
movetype = a
physics = a
anim = 3100
ctrl = 0

[state 3100, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = -200,200

[state 3100, varset]
type = varset
triggerall = var(50) = 0
triggerall = time = 0
trigger1 = command = "meteorite1"
trigger2 = var(6) = 1
var(7) = 3

[state 3100, varset]
type = varset
triggerall = var(50) = 0
triggerall = time = 0
trigger1 = command = "meteorite2"
trigger2 = var(6) = 2
var(7) = 5

[state 3100, varset]
type = varset
triggerall = var(50) = 0
triggerall = time = 0
trigger1 = command = "meteorite3"
trigger2 = var(6) = 3
var(7) = 7

[state 3100, varset];▼AI・安全装置
type = varset
triggerall = var(50) != 0
trigger1 = var(7) != [3,7]
trigger1 = time > 3
var(7) = 7-(roundstate!=2)*4

[state 3100, varset]
type = varset
trigger1 = 1
var(10) = 1

[state 3100, velset]
type = velset
trigger1 = time = 0
x = const(velocity.jump.fwd.x)*0.8
y = const(velocity.jump.y)*1.4

[state 3100, helper]
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

[state 3100, afterimage]
type = afterimage
trigger1 = time = 0
time = 30
length = 16
palcontrast = 192,192,192
paladd = 20,20,20
palmul = 0.7,0.7,0.7
framegap = 4
trans = add1

[state 3100, playsnd]
type = playsnd
trigger1 = time = 0
value = 9,0
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 3100, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,14

[state 3100, helper]
type = helper
trigger1 = animelemtime(6) = 0
helpertype = normal
name = "muskets 1"
id = 6501
stateno = 6501
pos = floor(const(size.xscale)*0),floor(const(size.yscale)*0)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 40
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3100, helper]
type = helper
trigger1 = animelemtime(6) = 5
helpertype = normal
name = "muskets 2"
id = 6502
stateno = 6502
pos = floor(const(size.xscale)*var(5)),floor(const(size.yscale)*0)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 40
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3100, helper]
type = helper
trigger1 = animelemtime(6) = 10
helpertype = normal
name = "muskets 3"
id = 6503
stateno = 6503
pos = floor(const(size.xscale)*var(5)),floor(const(size.yscale)*0)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 40
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3100, helper]
type = helper
trigger1 = animelemtime(6) = 15
helpertype = normal
name = "muskets 4"
id = 6504
stateno = 6504
pos = floor(const(size.xscale)*var(5)),floor(const(size.yscale)*0)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 40
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3100, helper]
type = helper
trigger1 = animelemtime(6) = 15
helpertype = normal
name = "muskets 5"
id = 6505
stateno = 6505
pos = floor(const(size.xscale)*var(5)),floor(const(size.yscale)*0)
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 40
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3100, poweradd]
type = poweradd
trigger1 = animelemtime(6) = 0 
value = -1000

[state 3100, pause]
type = pause
trigger1 = animelemtime(6) = 0
time = 40
movetime = 40

[state 3100, bgpalfx]
type = bgpalfx
trigger1 = animelemtime(6) = 0
time = 40
add = -128,-128,-128

[state 3100, playsnd]
type = playsnd
trigger1 = animelemtime(6) = 0
value = 2,100

[state 3100, explod]
type = explod
trigger1 = animelemtime(6) = 0
anim = 32500
postype = p1
pos = floor(const(size.xscale)*10),-floor(const(size.yscale)*24)
pausemovetime = 40
sprpriority = 4
ownpal = 1

[state 3100, posfreeze]
type = posfreeze
trigger1 = animelemtime(6) >= 0
trigger1 = animelemtime(7) < 0

[state 3100, velset]
type = velset
trigger1 = animelemtime(7) = 0
y = 0

[state 3100, varset]
type = varset
trigger1 = animelemtime(7) = 0
var(5) = 0

[state 3100, varset]
type = varset
trigger1 = animelemtime(7) = 0
var(6) = 0

[state 3100, ctrlset]
type = ctrlset
trigger1 = animelemtime(8) = 0
value = 1
;===========================================================================
;■ティロ・フィナーレ
[statedef 3200]
type = a
movetype = a
physics = n
anim = 3200+var(38)
ctrl = 0
velset = 0,0

[state 3200, nothitby]
type = nothitby
trigger1 = animelemtime(16) < 0
value = sca,aa
ignorehitpause = 1

[state 3200, explod]
type = explod
trigger1 = animelemtime(1) = 0
anim = 13200
id = 13200
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3200, explod]
type = explod
trigger1 = animelemtime(15) = 35
anim = 13201
id = 13201
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3200, explod]
type = explod
trigger1 = animelemtime(16) = 0
anim = 13202
id = 13202
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3200, explod]
type = explod
trigger1 = animelemtime(14) = 0
anim = 13203
id = 13203
pos = floor(const(size.xscale)*84),-floor(const(size.yscale)*48)
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999

[state 3200 helper]
type = helper
trigger1 = animelemtime(5) = 0
helpertype = normal
name = "pusher"
stateno = 3290
id = 3290
pos = -floor(const(size.xscale)*20),0
postype = p1
facing = 1
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3200, helper]
type = helper
trigger1 = animelemtime(15) = 0+1
helpertype = normal
name = "fire"
id = 7000
stateno = 7000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
supermovetime = 999
pausemovetime = 999

[state 3200, veladd]
type = veladd
trigger1 = animelemtime(5) > 0
trigger1 = animelemtime(9) < 0
x = -2.25+(p2bodydist x>240)*2.25

[state 3200, velset]
type = velset
trigger1 = animelemtime(9) = 0
x = 0

[state 3200, velset]
type = velset
trigger1 = animelemtime(16) < 0
y = 0

[state 3200, velset]
type = velset
trigger1 = animelemtime(16) = 0
x = -3
y = -0.7

[state 3200, playsnd]
type = playsnd
trigger1 = animelemtime(9) = 0
value = 9,902
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 3200, helper]
type = helper
trigger1 = var(38) = 1
trigger1 = animelemtime(11) = 0
helpertype = normal
name = "clear fg"
id = 7900
stateno = 7900
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
trigger1 = animelemtime(11) = 0
id = 30000
postype = left
anim = 30000
sprpriority = 5
supermovetime = 999
removetime = -2
removeongethit = 1
scale = 0.5,0.5
pos = 160,0

[state 3200, explod]
type = explod
trigger1 = var(38) = 1
trigger1 = animelemtime(11) = 0
id = 30100
postype = left
anim = 30100
sprpriority = -5
supermovetime = 999
removetime = -2
removeongethit = 1
scale = 0.5,0.5
pos = 160,0

[state 3200, superpause]
type = superpause
trigger1 = animelemtime(11) = 0
time = 77+var(38)*30
anim = s32500
pos = floor(const(size.xscale)*164),floor(const(size.yscale)*0)
movetime = 77+var(38)*30
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -3000

[state 3200, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 5,20

[state 3200, playsnd]
type = playsnd
trigger1 = animelemtime(8) = 0
value = 5,21

[state 3200, playsnd]
type = playsnd
trigger1 = animelemtime(14) = 0
value = 5,22

[state 3200, envshake]
type = envshake
trigger1 = animelemtime(14) = 0
time = 10
freq = 60
ampl = -4
phase = 4

[state 3200, envshake]
type = envshake
trigger1 = animelemtime(15) = 0
time = 30
freq = 80
ampl = -4
phase = 4

[state 3200, changestate]
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
;■ティロ・フィナーレ・敵バミリ固定
[statedef 3290]
type = a
movetype = i
physics = n
anim = 3990
velset = 0,0

[state 3290, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 3290, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa

[state 3290, playerpush]
type = playerpush
trigger1 = 1
value = 1

[state 3290, veladd]
type = veladd
trigger1 = vel x <= 20
x = 2

[state 3290, destroyself]
type = destroyself
trigger1 = time = 20
trigger2 = root,movetype = h
trigger3 = rootdist x < -200
ignorehitpause = 1
;===========================================================================
;■ティロ・フィナーレ・ソル・レヴァンテ
[statedef 3300]
type = s
movetype = i
physics = s
anim = 40
velset = 0,0
ctrl = 0

[state 3300, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3300, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3320, helper]
type = helper
trigger1 = time = 0
helpertype = normal
name = "sol-cannon"
id = 7100
stateno = 7100
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
supermovetime = 999
pausemovetime = 999

[state 3300, velset]
type = velset
trigger1 = animtime = 0
y = const(velocity.jump.y)*0.95

[state 3300, changestate]
type = changestate
trigger1 = animtime = 0
value = 3310
;---------------------------------------------------------------------------
;■ソル・レヴァンテ・ジャンプ
[statedef 3310]
type = a
movetype = i
physics = n
anim = 41
ctrl = 0

[state 3310, varset]
type = varset
triggerall = var(50) = 0
trigger1 = time = 0
var(7) = 0

[state 3310, varset]
type = varset
triggerall = var(50) = 0
triggerall = var(39) = 0
trigger1 = command = "start" || command = "hold_s"
var(7) = 1

[state 3310, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3310, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[state 3310, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3310, playsnd]
type = playsnd
trigger1 = time = 20
value = 9,903
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 3310, veladd]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 3310, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -80
value = 3320
;---------------------------------------------------------------------------
;■ソル・レヴァンテ・砲撃
[statedef 3320]
type = a
movetype = a
physics = n
velset = 0,0

[state 3320, nothitby]
type = nothitby
trigger1 = roundstate != 2
value = sca,aa
ignorehitpause = 1

[state 3320, changeanim]
type = changeanim
trigger1 = time = 0
value = 3300+(var(39)=1||var(7)=1)*50

[state 3320, changeanim]
type = changeanim
triggerall = anim = 3300+(var(39)=1||var(7)=1)*50
trigger1 = roundstate > 2
trigger1 = time = 60
value = 3301+(var(39)=1||var(7)=1)*50

[state 3320, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 3320, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[state 3320, nothitby]
type = nothitby
trigger1 = time < 50
value = sca,aa
ignorehitpause = 1

[state 3320, posset]
type = posset
trigger1 = 1
y = -floor(const(size.yscale)*80)

[state 3320, superpause]
type = superpause
trigger1 = time = 0
time = 40
movetime = 40
anim = s32500
pos = floor(const(size.xscale)*77),floor(const(size.yscale)*11)
sound = s2,100
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -2000

[state 3320, helper]
type = helper
trigger1 = time = 34+1
helpertype = normal
name = "fire"
id = 7110
stateno = 7110
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
supermovetime = 999
pausemovetime = 999

[state 3320, playsnd]
type = playsnd
trigger1 = var(36) = 2
trigger1 = time = 75
value = 9,ifelse(var(12)=100,102,100+(anim=3351))
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 3320, velset]
type = velset
trigger1 = time = 96+(var(36)=2)*90
y = -3.7

[state 3320, changestate]
type = changestate
trigger1 = time = 96+(var(36)=2)*90
value = 50-var(27)*50
ctrl = 1
;===========================================================================
;■ティロ・フィナーレ・キャロ・ディ・ルナ
[statedef 3400]
type = c
movetype = a
physics = s
anim = 3400
velset = 0,0
ctrl = 0

[state 3400, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3400, superpause]
type = superpause
trigger1 = animelemtime(3) = 0
time = 60
movetime = 60
anim = s32500
pos = -floor(const(size.xscale)*2),-floor(const(size.yscale)*56)
sound = s2,100
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -4000

[state 3400, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 9,200
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 3400, helper]
type = helper
trigger1 = animelemtime(6) = 0
helpertype = normal
name = "luna-cannon"
id = 7200
stateno = 7200
pos = -350,0
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
supermovetime = 999;15
pausemovetime = 999

[state 3400, changestate]
type = changestate
trigger1 = animtime = 0
value = 3410
;---------------------------------------------------------------------------
;■キャロ・ディ・ルナ・大ジャンプ
[statedef 3410]
type = a
movetype = a
physics = n
anim = 3410
velset = 0,-30

[state 3410, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3410, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[state 3410, changestate]
type = changestate
trigger1 = pos y < -500
value = 3420
;---------------------------------------------------------------------------
;■キャロ・ディ・ルナ・空中待機
[statedef 3420]
type = a
movetype = i
physics = n
anim = 1

[state 3420, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3420, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[state 3420, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 3420, velset]
type = velset
trigger1 = time < 120
y = 0

[state 3420, posset]
type = posset
trigger1 = time < 120
y = -floor(const(size.yscale)*500)

[state 3420, changeanim]
type = changeanim
trigger1 = time = 120
value = 41
elem = 7

[state 3420, gravity]
type = gravity
trigger1 = time > 120

[state 3420, changestate]
type = changestate
trigger1 = pos y >= -130
value = 3430
;---------------------------------------------------------------------------
;■キャロ・ディ・ルナ・列車に着地
[statedef 3430]
type = a
movetype = a
anim = 3430

[state 3430, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3430, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[state 3430, posset]
type = posset
trigger1 = 1
y = -floor(const(size.yscale)*130)

[state 3430, velset]
type = velset
trigger1 = 1
y = 0

[state 3430, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 9,904
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 3430, helper]
type = helper
trigger1 = animelemtime(6) = 0
helpertype = normal
name = "fire"
id = 7250
stateno = 7250
pos = floor(const(size.xscale)*103),-floor(const(size.yscale)*16)
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
supermovetime = 999
pausemovetime = 999

[state 3430, explod]
type = explod
trigger1 = animelemtime(6) = 0
anim = 25600
id = 25600
pos = floor(const(size.xscale)*103),-floor(const(size.yscale)*16)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 1

[state 3430, envshake]
type = envshake
trigger1 = animelemtime(6) = 0
time = 10
freq = 60
ampl = -4
phase = 4

[state 3430, velset]
type = velset
trigger1 = animtime = 0
y = -5

[state 3430, changestate]
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 1
;===========================================================================
;■ルナやられ・ヒットシェイク
[statedef 3460]
type    = a
movetype= h
physics = n
velset = 0,0

[state 3460, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3460, changeanim ]
type = changeanim 
trigger1 = 1
value = 5070

[state 3460, changestate]
type = changestate
trigger1 = hitshakeover
value = 3465
;---------------------------------------------------------------------------
[statedef 3465]
type    = a
movetype= h
physics = n

[state 3465, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3465, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1
y = 1

[state 3465, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 3465, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 15
value = 3470
;---------------------------------------------------------------------------
;■ルナやられ・ダウン
[statedef 3470]
type    = l
movetype= h
physics = n
anim = 5100

[state 3470, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3470, changeanim ]
type = changeanim 
trigger1 = anim = 5100
trigger1 = animtime = 0
value = 5110

[state 3470, fallenvshake]
type = fallenvshake
trigger1 = time = 0

[state 3470, hitfalldamage]
type = hitfalldamage
trigger1 = time = 0

[state 3470, posset]
type = posset
trigger1 = time = 0
y = 0

[state 3470, velset]
type = velset
trigger1 = time = 0
y = 0

[state 3470, selfstate]
type = selfstate
triggerall = !alive
trigger1 = anim = 5100
trigger1 = animtime = 0
value = 5150

[state 3470, velmul]
type = velmul
trigger1 = 1
x = 0.85

[state 3470, changestate]
type = changestate
trigger1 = time > 90
value = 3480
;---------------------------------------------------------------------------
;■ルナやられ・起き上がり
[statedef 3480]
type    = l
movetype= h
physics = n
anim = 5120
velset = 0,0

[state 3480, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3480, hitfallset]
type = hitfallset
trigger1 = animtime = 0
value = 1

[state 3480, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa

[state 3480, changestate]
type = changestate
trigger1 = animtime = 0
value = 3490
;---------------------------------------------------------------------------
;■ルナやられ・気絶
[statedef 3490]
type    = s
movetype= h
physics = n
anim = 5300

[state 3490, nothitby]
type = null;nothitby
trigger1 = time < 105
value = sca,aa
ignorehitpause = 1

[state 3490, changeanim]
type = changeanim 
trigger1 = anim = 5300
trigger1 = time = 115
value = 5000

[state 3490, selfstate]
type = selfstate
trigger1 = time > 300
value = 0
ctrl = 1
;===========================================================================
;■ティロ・フィナーレ・ガラッシア
[statedef 3500]
type = s
movetype = a
physics = s
anim = 3500
velset = 0,0
ctrl = 0

[state 3500, width]
type = width
trigger1 = 1
edge = 1,1

[state 3500, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3500, explod]
type = explod
trigger1 = animelemtime(1) = 0
anim = 13500
id = 13500
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
supermovetime = 999
pausemovetime = 999
ownpal = 1

[state 3500, superpause]
type = superpause
trigger1 = animelemtime(2) = 0
time = 40
movetime = 40
anim = s32500
pos = -floor(const(size.xscale)*11),-floor(const(size.yscale)*94)
sound = s2,100
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -5000

[state 3500, changestate]
type = changestate
trigger1 = animtime = 0
value = 3501
;---------------------------------------------------------------------------
[statedef 3501]
type = s
movetype = a
physics = s
anim = 3501

[state 3501, width]
type = width
trigger1 = 1
edge = 1,1

[state 3501, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3501, explod]
type = explod
trigger1 = animelemtime(1) = 0
anim = 13501
id = 13501
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
supermovetime = 999
pausemovetime = 999
ownpal = 1

[state 3501, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = -floor(const(size.xscale)*15)

[state 3501, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = -floor(const(size.xscale)*5)

[state 3501, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 3,6

[state 3501, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,5

[state 3501, explod]
type = explod
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(6) < 0
anim = 20001
id = 20001
pos = floor(const(size.xscale)*0),floor(const(size.yscale)*-70)
postype = p1
facing = 1
vel = -0.45,-0.1
random = 400,30
bindtime = 1
removetime = -2
scale = (1.2-(var(5)*0.1))*const(size.xscale),(1.2-(var(5)*0.1))*const(size.yscale)
sprpriority = -3
ownpal = 1

[state 3501, explod]
type = explod
triggerall = time%2 = 0
trigger1 = animelemtime(1) >= 0
trigger1 = animelemtime(6) < 0
anim = 20001
id = 20102
pos = floor(const(size.xscale)*200),floor(const(size.yscale)*-70)
postype = p1
facing = 1
vel = -0.45,-0.1
random = 200,30
bindtime = 1
removetime = -2
scale = (1.2-(var(5)*0.1))*const(size.xscale),(1.2-(var(5)*0.1))*const(size.yscale)
sprpriority = 3
ownpal = 1

[state 3501, hitdef]
type = hitdef
trigger1 = animelemtime(1) = 0
id = 3500
attr = s,ha
hitflag = maf
guardflag = m
damage = 2,1
priority = 1,miss
sparkno = -1
guard.sparkno = -1
sparkxy = floor(const(size.xscale)*0),-floor(const(size.yscale)*72)
p1sprpriority = 1
hitsound = s-1,0
kill = 0
guard.kill = 0

[state 3501, varset]
type = varset
trigger1 = time = 0
trigger2 = animtime = 0
var(6) = 0

[state 3501, varset]
type = varset
trigger1 = movehit
var(6) = 1

[state 3501, helper]
type = helper
trigger1 = movehit = 1
helpertype = normal
name = "l-bindx"
id = 23500
stateno = 23500
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3501, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(3500) = 2
trigger2 = uniqhitcount = 2
helpertype = normal
name = "l-bindx"
id = 23501
stateno = 23501
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3501, targetdrop]
type = null;targetdrop
trigger1 = numenemy > 1
trigger1 = movehit
excludeid = 3500
ignorehitpause = 1

[state 3501, targetstate]
type = targetstate
trigger1 = numtarget(3500) > 0
trigger1 = target(3500),alive
trigger1 = movehit = 1
value = 3590
ignorehitpause = 1

[state 3501, changestate]
type = changestate
triggerall = roundstate = 2
trigger1 = var(6) = 1
trigger1 = animelemtime(6) > 20
value = 3510

[state 3501, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[statedef 3510]
type = s
movetype = i
physics = s
anim = 3510

[state 3510, targetdrop]
type = targetdrop
trigger1 = numtarget(3500)
trigger1 = time = 0
excludeid = 3500
ignorehitpause = 1

[state 3510, width]
type = width
trigger1 = 1
edge = 1,1

[state 3510, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3510, helper]
type = helper
trigger1 = animelemtime(1) = 0
helpertype = normal
name = "di rosa dell'oro"
id = 7300
stateno = 7300
pos = -300,-100
postype = p1
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
;supermovetime = 999
;pausemovetime = 999

[state 3510, explod]
type = explod
trigger1 = animelemtime(4) = 0
anim = 13510
id = 13510
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 3
supermovetime = 999
pausemovetime = 999
ownpal = 1

[state 3510, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 9,300
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 3510, removeexplod]
type = removeexplod
trigger1 = roundstate = 2
trigger1 = numhelper(7300)
trigger1 = helper(7300),stateno = 7310
trigger2 = animtime = 0
id = 13510

[state 3510, changestate]
type = changestate
trigger1 = roundstate = 2
trigger1 = numhelper(7300)
trigger1 = helper(7300),stateno = 7310
value = 3520

[state 3510, changestate]
type = changestate
trigger1 = animtime = 0
value = 12
ctrl = 1
;---------------------------------------------------------------------------
;■ガラッシア・ジャンプ
[statedef 3520]
type = a
movetype = i
physics = n
anim = 3410
velset = 0,-5

[state 3520, width]
type = width
trigger1 = 1
edge = 1,1

[state 3520, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3520, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3520, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[state 3520 helper]
type = helper
trigger1 = numhelper(3580) = 0
helpertype = normal
name = "rejecter"
stateno = 3580
id = 3580
pos = -floor(const(size.xscale)*20),0
postype = p1
facing = 1
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3520, changestate]
type = changestate
trigger1 = numhelper(7300)
trigger1 = helper(7300),stateno = 7320
value = 3525
;---------------------------------------------------------------------------
;■ガラッシア・ライドオン
[statedef 3525]
type = a
anim = 3525
velset = 0,0

[state 3525, width]
type = width
trigger1 = 1
edge = 1,1

[state 3525, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3525, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[state 3525, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 9,301
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 3525 helper]
type = helper
trigger1 = numhelper(3580) = 0
helpertype = normal
name = "rejecter"
stateno = 3580
id = 3580
pos = -floor(const(size.xscale)*20),0
postype = p1
facing = 1
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3525, changestate]
type = changestate
trigger1 = animtime = 0
value = 3530
;---------------------------------------------------------------------------
;■ガラッシア・スタンバイ
[statedef 3530]
type = a
anim = 3530
velset = 0,0

[state 3530, width]
type = width
trigger1 = 1
edge = 1,1

[state 3530, screenbound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[state 3530, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3530, posset]
type = posset
trigger1 = pos y < -240
y = -240

[state 3530, posset]
type = posset
trigger1 = pos y > -60
y = -60

[state 3530, playsnd]
type = playsnd
trigger1 = time = 270
value = 9,905
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)

[state 3590, posadd]
type = posadd
triggerall = numhelper(7300)
trigger1 = helper(7300),stateno = 7350
y = 60

[state 3530, velset]
type = velset
triggerall = numhelper(7300)
trigger1 = helper(7300),stateno = 7350
y = -5

[state 3530 helper]
type = helper
triggerall = numhelper(7300)
triggerall = helper(7300),stateno != 7350
triggerall = numhelper(3580) < 4;安全装置
trigger1 = time%25 = 0
helpertype = normal
name = "rejecter"
stateno = 3580
id = 3580
pos = -floor(const(size.xscale)*60),0
postype = p1
facing = 1
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3530, changestate]
type = changestate
triggerall = numhelper(7300)
trigger1 = helper(7300),stateno = 7350
value = 50
ctrl = 1
;---------------------------------------------------------------------------
;■ティロ・フィナーレ・ガラッシア・リジェクター
[statedef 3580]
type = a
movetype = i
physics = n
anim = 3990
velset = 0,0

[state 3580, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 3580, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa

[state 3580, playerpush]
type = playerpush
trigger1 = 1
value = 1

[state 3580, veladd]
type = veladd
trigger1 = vel x <= 10
x = 1

[state 3580, destroyself]
type = destroyself
trigger1 = time = 100
trigger2 = root,movetype = h
ignorehitpause = 1
;---------------------------------------------------------------------------
;■レガーレ・ガラッシア・バインドやられ
[statedef 3590]
type    = a
movetype= h
physics = n
velset = 0,0

[state 3590, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3590, nothitby]
type = nothitby
trigger1 = time < 595
value = sca,aa
ignorehitpause = 1

[state 3590, posadd]
type = posadd
trigger1 = time = 0
y = -10

[state 3590, velset]
type = velset
trigger1 = time = [1,1200]
y = 0

[state 3590, posfreeze]
type = posfreeze
trigger1 = time > 0

[state 3590, changeanim]
type = changeanim
trigger1 = 1
value = 5010
ignorehitpause = 1

[state 3590, velset]
type = velset
trigger1 = time > 1200
y = -5

[state 3590, changestate]
type = changestate
trigger1 = time > 1200
trigger2 = roundstate > 2
trigger2 = time > 300
value = 5030

[state 3590, changestate]
type = changestate
trigger1 = alive = 0
value = 5050
