;===========================================================================
;†††-2 states†††
;===========================================================================
[statedef -2]
;---------------------------------------------------------------------------
;■フリータイマー
[state -2, varadd]
type = varadd
trigger1 = roundstate = 2
var(2) = 1
ignorehitpause = 1
;---------------------------------------------------------------------------
;■汎用ランダム値
[state -2, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,99
ignorehitpause = 1
;---------------------------------------------------------------------------
;■バイタリティ監視
[state -2, varset]
type = varset
trigger1 = roundstate <= 3
var(3) = life
;---------------------------------------------------------------------------
;■放置バグ回避
[state -2, selfstate]
type = selfstate
trigger1 = anim = 0
trigger1 = stateno = 0
trigger1 = prevstateno != 0
trigger1 = ctrl
trigger1 = time > 10
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■挑発ボイス（監視）
[state -2, playsnd]
type = playsnd
trigger1 = alive = 1
trigger1 = animelemtime(6) = 0
trigger1 = anim = 195
trigger1 = stateno != 195
value = 10,90
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)
;---------------------------------------------------------------------------
;■ダメージボイス
[state -2, playsnd]
type = playsnd
trigger1 = alive = 1
trigger1 = time = 3
trigger1 = roundstate = 2
trigger1 = movetype = h
trigger1 = var(1) = [0,70]
trigger1 = (stateno != [120,155])
trigger1 = (stateno != [5100,5120]) && (stateno != 5001) && (stateno != 5011)
trigger1 = (stateno != 5030) && (stateno != 5035) && (stateno != 5040) && (stateno != 5050)
trigger1 = (stateno != 5071) && (stateno != 5200) && (stateno != 5201) && (stateno != 5210)
trigger1 = (anim != 5120) && (anim != 9020) && (anim != [66660,66662])
value = 11,1+floor(random/334);;0-2
channel = 11
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)
;---------------------------------------------------------------------------
;■KOボイス
[state -2, varset]
type = varset
trigger1 = alive = 1
trigger1 = var(32) != 0
var(32) = 0

[state -2, varadd]
type = varadd
trigger1 = alive = 0
trigger1 = var(32) < 3
var(32) = 1
ignorehitpause = 1

[state -2, playsnd]
type = playsnd
trigger1 = alive = 0
trigger1 = var(32) = 2
value = 11,20
channel = 10
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)
ignorehitpause = 1
;---------------------------------------------------------------------------
;■起き上がりボイス用
[state -2, varrandom]
type = varrandom
trigger1 = anim = 5120
v = 5
range = 11+(var(11)=[100,300])*4,14+(var(11)=[100,300])*4
ignorehitpause = 1
;---------------------------------------------------------------------------
;■起き上がりに強がりを言う
[state -2, playsnd]
type = playsnd
trigger1 = time = 1
trigger1 = stateno = 5120
trigger1 = var(1) = [0,50+(life<lifemax*0.6)*20]
value = 11,var(5)
channel = 0
freqmul = ifelse(var(33),2-const(size.xscale),1)
;---------------------------------------------------------------------------
;■ヤミ化
[state -2, helper]
type = helper
triggerall = numhelper(15000) = 0
triggerall = (var(41)+var(42)+var(43)+var(44)+var(45)) >= 3
triggerall = roundstate = 2
triggerall = var(2) >= 10
trigger1 = ctrl
helpertype = normal
name = "dark"
pos = -160,0
postype = front
facing = facing
id = 15000
stateno = 15000
pausemovetime = 3
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal = 1

[state -2, palfx]
type = palfx
trigger1 = numhelper(15000) = 1
trigger1 = helper(15000),time = 1
time = 180
sinadd = -200,-200,-200,360
ignorehitpause = 1
persistent = 0

[state -2, varset]
type = varset
triggerall = var(40) = 0
trigger1 = var(46)
var(41) = floor(var(46)/100)
ignorehitpause = 1

[state -2, varset]
type = varset
trigger1 = var(40) != 0
trigger1 = ctrl
var(46) = 0
ignorehitpause = 1

[state -2, varset]
type = varset
triggerall = var(40) = 0
trigger1 = life < floor(lifemax/3)
var(42) = 1
ignorehitpause = 1

[state -2, varset]
type = varset
triggerall = var(40) = 0
trigger1 = roundstate < 2
trigger1 = var(42) = 1
var(42) = 0
ignorehitpause = 1

[state -2, varset]
type = varset
triggerall = var(40) = 0
triggerall = numenemy
triggerall = enemynear,movetype != h
trigger1 = enemynear,stateno >= 2000
trigger1 = statetype != l
trigger1 = movetype = h
trigger1 = stateno != [120,155]
trigger1 = prevstateno != [120,155]
trigger1 = time < 2
trigger2 = enemynear,hitdefattr = sca,ha,ht,hp	;機能しないので
trigger2 = enemynear,movehit
var(43) = 1
ignorehitpause = 1

[state -2, varset]
type = varset
triggerall = var(40) = 0
trigger1 = alive = 0
trigger2 = lose
var(44) = 1
ignorehitpause = 1

[state -2, varset]
type = varset
triggerall = var(40) = 0
trigger1 = numpartner
trigger1 = partner,alive = 0
var(45) = 1
ignorehitpause = 1

[state -2, varset]
type = varset
trigger1 = roundstate < 2
trigger1= var(40) = 2
var(46) = 150
ignorehitpause = 1

[state -2, varset]
type = varset
trigger1 = roundstate < 2
trigger1= var(40) = 1
var(46) = 50
ignorehitpause = 1

[state -2, varset]
type = varset
trigger1 = roundstate < 2
trigger1 = time > 2
trigger1= var(40) != 0
var(40) = 0
ignorehitpause = 1
;===========================================================================
;■チートコード受付
;===========================================================================
;◆体力自動回復
[state -2, lifeadd]
type = lifeadd
triggerall = alive
trigger1 = fvar(20) != 0.0
trigger1 = time%floor(6.0-fvar(20)) = 0
trigger1 = !(movetype = h && time <6)
value = 1

;◆パワー自動増加
[state -2, poweradd]
type = poweradd
triggerall = alive
trigger1 = fvar(21) != 0.0
trigger1 = time%floor(6.0-fvar(21)) = 0
value = 3

;◆常時パワーMAX
[state -2, powerset]
type = powerset
triggerall = alive
trigger1 = fvar(22) = 1.0
value = powermax

;◆開幕パワーセット
[state -2, poweradd]
type = poweradd
triggerall = alive
trigger1 = fvar(23) != 0.0
trigger1 = stateno = 190
value = floor(fvar(23)*1000.0)

;◆開幕ヤミ覚醒
[state -2, varset]
type = varset
triggerall = alive
trigger1 = fvar(24) = 1.0
trigger1 = var(2) = 1
var(46) = 300

;◆アフェットゥオーソが即死攻撃に
[state -2, varset]
type = varset
triggerall = alive
trigger1 = fvar(27) = 1.0
trigger1 = stateno = 3410
var(28) = 1
;===========================================================================
;■デバッグ表示
[state -2, displaytoclipboard]
type = null;displaytoclipboard
trigger1 = 1
text = "pos y: %d / bdist x: %d / bdist y: %d / combo: %d / time: %d\n"
params = floor(pos y),floor(p2bodydist x),floor(p2bodydist y),var(14),var(2)

[state -2, displaytoclipboard];■
type = displaytoclipboard
trigger1 = 1
text = "over magic: %d / danger: %d / wound: %d / lose: %d / friend dead: %d\n"
params = var(41),var(42),var(43),var(44),var(45)

[state -2, appendtoclipboard]
type = null;appendtoclipboard
trigger1 = 1
text = "last target: %d / ai: %d / mboot: %d / mode: %d / s-jump: %d"
params = var(15),var(50),var(8),var(53),var(9)

[state -2, appendtoclipboard];■
type = appendtoclipboard
trigger1 = 1
text = "enemy code: %d / partner code: %d / last target: %d / karma: %d / dark: %d"
params = var(11),var(12),var(15),var(46),var(40)
