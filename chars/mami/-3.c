;===========================================================================
;†††-3 states†††
;===========================================================================
[statedef -3]
;---------------------------------------------------------------------------
;■設定ファイル
[state -3, setting]
type = helper
triggerall = numhelper(9999) = 0
trigger1 = var(2) < 100
trigger2 = numhelper(9990) != 0
helpertype = normal
name = "setting"
pos = -160,0
postype = front
facing = facing
id = 9999
stateno = 9999
pausemovetime = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal = 1
;---------------------------------------------------------------------------
;■マギカブート結界
;装填
[state -3, varset]
type = varset
trigger1 = roundstate < 2
trigger2 = playeridexist(var(15)) = 1
trigger2 = playerid(var(15)),movetype != h
;trigger3 = playeridexist(var(15)) = 1
;trigger3 = playerid(var(15)),statetype = l
var(8) = 1
;---------------------------------------------------------------------------
;■へちょキャンセル
[state -3, playsnd]
type = playsnd
trigger1 = prevstateno = 197
trigger1 = time = 1
value = 2,11

[state -3, explod]
type = explod
trigger1 = prevstateno = 197
trigger1 = time = 1
anim = 25500
id = 25500
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
ownpal = 1

[state -3, bgpalfx]
type = bgpalfx
trigger1 = prevstateno = 197
trigger1 = time = 1
time = 6
add = var(21),var(22),var(23)
;invertall = 1
;---------------------------------------------------------------------------
;■ティロ・フィアンマの撃ち方制限
[state -3, varadd]
type = varadd
trigger1 = stateno = 417
trigger1 = time = 3
fvar(10) = 0.03

[state -3, varset]
type = varset
trigger1 = statetype != a
fvar(10) = 0.0
;---------------------------------------------------------------------------
;■ジャンプ入力予約
[state -3, varset]
type = varset
triggerall = command = "up"
triggerall = var(50) = 0
trigger1 = stateno = [200,350]
trigger1 = (stateno != 252) && (stateno != 350)
trigger2 = stateno = [400,450]
trigger2 = (stateno != 420) && (stateno != 450)
var(7) = 1
ignorehitpause = 1

[state -3, varset]
type = varset
triggerall = var(7) != 0
triggerall = var(50) = 0
trigger1 = stateno = 40
trigger2 = stateno = 45
trigger3 = stateno = [200,350]
trigger3 = moveguarded
trigger4 = stateno = [400,450]
trigger4 = moveguarded
var(7) = 0
ignorehitpause = 1
;---------------------------------------------------------------------------
;■リバーサル入力予約
[state -3, varset]
type = varset
trigger1 = stateno = 5110
trigger1 = time < 3
trigger2 = stateno = 5120
trigger2 = var(7) = [1,10]
var(7) = 0

[state -3, varset]
type = null
triggerall = var(50) = 0
triggerall = stateno = [5110,5120]
trigger1 = power >= 1000
trigger1 = command = "tempesta1" || command = "tempesta2" || command = "tempesta3"
trigger1 = var(7) := 3000	;■ティロ・テンペスタ
trigger2 = power >= 1000
trigger2 = command = "meteorite1" || command = "meteorite2" || command = "meteorite3"
trigger2 = var(7) := 3100	;■ティロ・メテオリーテ
trigger3 = power >= 2000
trigger3 = command = "finale1" 
trigger3 = var(7) := 3300	;■ティロ・フィナーレ・ソル・レヴァンテ
trigger4 = power >= 4000
trigger4 = command = "finale2" 
trigger4 = var(7) := 3400	;■ティロ・フィナーレ・キャロ・ディ・ルナ
trigger5 = power >= 5000
trigger5 = command = "finale3" 
trigger5 = var(7) := 3500	;■ティロ・フィナーレ・ガラッシア
trigger6 = command = "miraggio1" || command = "miraggio2" || command = "miraggio3"
trigger6 = var(7) := 1300	;■ティロ・ミラッジオ
trigger7 = command = "volley1" || command = "volley2" || command = "volley3"
trigger7 = var(7) := 1000	;■ティロ・ヴォレー
trigger8 = command = "volley feint"
trigger8 = var(7) := 1030	;■ティロ・ヴォレー・フェイント
trigger9 = command = "ff"
trigger9 = var(7) := 100	;■ダッシュ
trigger10 = command = "bb"
trigger10 = var(7) := 105	;■バックステップ
trigger11 = command = "holdup"
trigger11 = var(7) := 40	;■ジャンプ

;■コマンド格納予約
[state -3, varset]
type = null
triggerall = var(50) = 0
triggerall = stateno = [5110,5120]
trigger1 = command = "meteorite1"
trigger1 = var(6) := 1
trigger2 = command = "meteorite2"
trigger2 = var(6) := 2
trigger3 = command = "meteorite3"
trigger3 = var(6) := 3

trigger4 = command = "miraggio1"
trigger4 = var(6) := 1
trigger5 = command = "miraggio2"
trigger5 = var(6) := 2
trigger6 = command = "miraggio3"
trigger6 = var(6) := 3

trigger7 = command = "volley1"
trigger7 = var(6) := 1
trigger8 = command = "volley2"
trigger8 = var(6) := 2
trigger9 = command = "volley3"
trigger9 = var(6) := 3
;---------------------------------------------------------------------------
;■バミリ固定
[state -3, nothitby]
type = nothitby
trigger1 = roundstate < 2
value = sca,aa

[state -3, playerpush]
type = playerpush
trigger1 = roundstate < 2
value = 0

[state -3, playerpush]
type = playerpush
trigger1 = roundstate > 2
trigger1 = stateno < 40
value = 0
;---------------------------------------------------------------------------
;■コンボ制限
[state -3, varset]
type = varset
trigger1 = var(13) < 2
trigger1 = stateno = [400,499]
trigger1 = movehit
trigger1 = playeridexist(var(15))
trigger1 = playerid(var(15)),statetype != a
var(13) = 1
ignorehitpause = 0

[state -3, varset]
type = varset
triggerall = var(13) = 1
trigger1 = statetype != a
trigger2 = stateno = 40
trigger3 = stateno = 52
var(13) = 2
ignorehitpause = 0

[state -3, varset]
type = varset
trigger1 = stateno = [200,399]
trigger1 = movehit
var(13) = 2
ignorehitpause = 0

[state -3, varset]
type = varset
trigger1 = playeridexist(var(15))
trigger1 = playerid(var(15)),movetype != h
trigger2 = var(15) = 0
var(13) = 0
ignorehitpause = 0
;---------------------------------------------------------------------------
;■コンボヒットカウンタ≒補正係数
[state -3, varset]
type = varset
trigger1 = playeridexist(var(15))
trigger1 = playerid(var(15)),movetype != h
trigger2 = var(15) = 0
var(14) = 0
ignorehitpause = 0

[state -3, varadd]
type = varadd
trigger1 = movehit = 1
var(14) = 1
ignorehitpause = 0
;---------------------------------------------------------------------------
;■汎用コンボはめ制限
[state -3, varadd]
type = varadd
triggerall = movehit = 1
trigger1 = stateno = 251
trigger1 = p2statetype = a
trigger2 = stateno = 215
trigger3 = stateno = 225
trigger4 = stateno = 1400
var(29) = 1
ignorehitpause = 0

[state -3, varset]
type = varset
trigger1 = playeridexist(var(15))
trigger1 = playerid(var(15)),movetype != h
trigger2 = var(15) = 0
var(29) = 0
ignorehitpause = 0
;---------------------------------------------------------------------------
;■コンボ補正値
[state -3, varset]
type = varset
trigger1 = var(14) < 100
fvar(1) = (100-var(14))*0.01

[state -3, varset]
type = varset
trigger1 = var(14) >= 100
fvar(1) = 0.01
;---------------------------------------------------------------------------
;■ソウルジェム補正値（廃止）
[state -3, varset]
type = varset
trigger1 = 1
fvar(2) = 1.00
;---------------------------------------------------------------------------
;■パワー補正値
[state -3, varset]
type = varset
triggerall = var(40) = 0
trigger1 = roundstate = 2
fvar(3) = 1.0+(lifemax-life)*0.000303
;---------------------------------------------------------------------------
;■着地硬直正常化
[state -3, varset]
type = varset
trigger1 = movehit
trigger2 = movetype = h
trigger2 = (stateno != [120,155])
var(31) = 0
;---------------------------------------------------------------------------
;■空中ダッシュ＆ダブルジャンプ装填
[state -3, varset]
type = varset
trigger1 = statetype != a 
trigger1 = ctrl
trigger2 = roundstate = 1
var(10) = 1

[state -3, varadd]
type = varadd
trigger1 = stateno = [110,115]
trigger1 = time = 1
var(10) = -1

[state -3, varadd]
type = varadd
trigger1 = stateno = 45
trigger1 = time = 1
var(10) = -1
;---------------------------------------------------------------------------
;■ハイジャンプ監視
[state -3, varset]
type = varset
trigger1 = roundstate = 1
trigger2 = statetype != a 
trigger2 = ctrl
trigger3 = stateno = 52
var(9) = 0

[state -3, varset]
type = null
trigger1 = stateno = 60
trigger1 = var(9) := 1
;---------------------------------------------------------------------------
;■敵情報取得
[state -3, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state -3, varset]
type = varset
trigger1 = playeridexist(var(15))
var(16) = ceil(playerid(var(15)),pos x)

[state -3, varset]
type = varset
trigger1 = playeridexist(var(15))
var(17) = ceil(playerid(var(15)),pos y)

[state -3, varset]
type = varset
trigger1 = numtarget = 1
var(18) = target,id

[state -3, varset]
type = varset
triggerall = numenemy > 1
trigger1 = uniqhitcount = 2
trigger2 = numtarget(stateno) = 2
var(18) = enemynear(0),id

[state -3, varset]
type = varset
triggerall = numenemy > 1
trigger1 = uniqhitcount = 2
trigger2 = numtarget(stateno) = 2
var(19) = enemynear(1),id

[state -3, varset]
type = varset
trigger1 = ctrl = 1
var(18) = 0

[state -3, varset]
type = varset
trigger1 = ctrl = 1
var(19) = 0
;---------------------------------------------------------------------------
;■味方情報取得
[state -3, varset]
type = varset
trigger1 = numpartner
var(30) = partner,stateno
;---------------------------------------------------------------------------
;■変数のリセット
[state -3, varset];汎用３
type = varset
trigger1 = ctrl
var(7) = 0
;---------------------------------------------------------------------------
;■表示優先度
[state -3, sprpriority]
type = sprpriority
trigger1 = !ishelper
trigger1 = movetype != h
trigger1 = stateno != 3530
value = 2

[state -3, sprpriority]
type = sprpriority
trigger1 = !ishelper
trigger1 = stateno = 3530
value = -1

[state -3, sprpriority]
type = sprpriority
trigger1 = !ishelper
trigger1 = movetype = h
value = -1-(alive=0)*2
;---------------------------------------------------------------------------
;■端
[state -3, width]
type = width
trigger1 = statetype = a
trigger1 = movetype != h
trigger1 = stateno != 450
trigger1 = prevstateno != 450
edge = -1-(2**9!=512),-1-(2**9!=512)

[state -3, width]
type = width
trigger1 = stateno = 450
trigger2 = prevstateno = 450
edge = (2**9!=512),(2**9!=512)
