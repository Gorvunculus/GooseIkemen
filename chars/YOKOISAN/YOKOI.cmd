;===========================================================================
; CMD file for Ralf
;===========================================================================

;-| Super Motions |---------------------------------------------------------




[Command]
name = "ロボット家族"
command = D, B, D, B, a
Time = 25


[Command]
name = "ロボット家族"
command = D, B, D, B, b
Time = 25


[Command]
name = "朱乃先輩"
command = D, D, x
Time = 25

[Command]
name = "アーシア"
command = D, D, a
Time = 25


[Command]
name = "息吹きSP"
command = D, F, D, F, b
Time = 25

[Command]
name = "息吹きSP"
command = D, F, D, F, a
Time = 25


[Command]
name = "baribari_x"
command = D, B, D, B, x
Time = 25


[Command]
name = "baribari_y"
command = D, B, D, B, y
Time = 25

[Command]
name = "baribari_xy"
command = D, F, D, F, x+y
Time = 25


[Command]
name = "ドミノ"
command = D, B, D, F, x+y
Time = 25
[Command]
name = "ドミノ"
command = D, DB, D, F, x+y
Time = 25
[Command]
name = "ドミノ"
command = D, B, DF, F, x+y
Time = 25



[Command]
name = "静電気"
command = D, B, D, F, a
Time = 25


[Command]
name = "静電気"
command = D, DB, D, F, a
Time = 25


[Command]
name = "静電気"
command = D, B, D, F, b
Time = 25


[Command]
name = "静電気"
command = D, B, DF, F, b
Time = 25





[Command]
name = "雪ウサギ"
command = D, F, D, F, x
Time = 25

[Command]
name = "雪ウサギ"
command = D, DF, F, D, DF, F, x
Time = 25

[Command]
name = "雪ウサギ"
command = D, F, D, F, y
Time = 25


[Command]
name = "雪ウサギ"
command = D, DF, F, D, DF, F, y
Time = 25




[Command]
name = "ねこ"
command = D, DB, B, F,  x
Time = 25


[Command]
name = "ねこ"
command = D, DB, B, F,  y
Time = 25



;-| Special Motions |-------------------------------------------------------



[Command]
name = "福笑い"
command = ~F, D, B, a
time = 20



[Command]
name = "棒倒し"
command = ~F, D, B, y
time = 20

[Command]
name = "関くん"
command = ~F, D, B, x
time = 20

[Command]
name = "tackle_b"
command = ~F, D, B, b
time = 20


[Command]
name = "tackle_b"
command = ~F, DB, B, b
time = 20
[Command]
name = "tackle_b"
command = ~DF, D, B, b
time = 20


[Command]
name = "tackle_b"
command = ~DF, DB, B, b
time = 20






[Command]
name = "guttinggun_x"
command = ~D, DF, F, x

[Command]
name = "guttinggun_y"
command = ~D, DF, F, y

[Command]
name = "bakudan_x"
command = ~F, D, DF, a

[Command]
name = "bakudan_y"
command = ~F, D, DF, b

[Command]
name = "bakudan_air_x"
command = ~D, DB, B, a

[Command]
name = "bakudan_air_y"
command = ~D, DB, B, b

[Command]
name = "tackle_a"
command = ~F, D, B, a
time = 20
[Command]
name = "tackle_a"
command = ~F, DB, B, a
time = 20
[Command]
name = "tackle_a"
command = ~DF, D, B, a
time = 20
[Command]
name = "tackle_a"
command = ~DF, DB, B, a
time = 20








[Command]
name = "valcun_x"
command = ~D, DB, B, x
time = 30


[Command]
name = "valcun_y"
command = ~D, DB, B, y
time = 30




[Command]
name = "息吹き_b"
command = ~D, DF, F, b
time = 30


[Command]
name = "息吹き_a"
command = ~D, DF, F, a
time = 30


[Command]
name = "突進_x"
command = ~30$B, F, x

[Command]
name = "突進_y"
command = ~30$B, F, y

[Command]
name = "argentine"
command = ~B, D, F, a
time = 20
[Command]
name = "argentine"
command = ~B, DB, DF, F, a
time = 20
[Command]
name = "argentine"
command = ~B, D, F, b
time = 20
[Command]
name = "argentine"
command = ~B, DB, DF, F, b
time = 20

;-| Button Combination |----------------------------------------------------

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "by"
command = b+y
time = 1

;-| Dir + Button |----------------------------------------------------------


[Command]
name = "fwd_a"
command = /F,a
time = 1



[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
time = 1

;-| Single Button |---------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Do not remove! |--------------------------------------------------------

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

;AI
[Command]
name = "AI0"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI2"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI3"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI4"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI5"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI6"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI7"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI8"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI9"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI11"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI14"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI16"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name = "AI18"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI19"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI20"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI21"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI22"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI23"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI24"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI25"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI26"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI27"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI28"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI29"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI30"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI31"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI32"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI33"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI34"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI35"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time = 0
[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0
[Command]
name = "AI39"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI40"
command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI41"
command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time = 0
[Command]
name = "AI42"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI43"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
time = 0
[Command]
name = "AI44"
command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
time = 0
[Command]
name = "AI45"
command = z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
time = 0
[Command]
name = "AI46"
command = z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
time = 0
[Command]
name = "AI47"
command = z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI48"
command = z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time = 0
[Command]
name = "AI49"
command = z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time = 0
[Command]
name = "AI50"
command = z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
time = 0

[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1

;===========================================================================

[Statedef -1]

;===========================================================================



;---------------------------------------------------------------------------
; 緊急回避
[State -1]
type = ChangeState
value = ifelse(command != "holdback",810,815)
triggerall = var(59)<=0
triggerall = command = "ax" || command = "z"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; ふっとばし攻撃
[State -1]
type = ChangeState
value = ifelse(statetype != A,300,310)
triggerall = var(59)<=0
triggerall = command = "by" || command = "c"
trigger1 = ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; ガードキャンセル緊急回避
[State -1]
type = ChangeState
value = ifelse(command != "holdback",830,835)
triggerall = var(59)<=0
triggerall = command = "ax" || command = "z"
triggerall = power >= 1000
trigger1 = stateno = [150,153]
;---------------------------------------------------------------------------
; ガードキャンセルふっとばし攻撃  
[State -1]
type = ChangeState
value = 820
triggerall = var(59)<=0
triggerall = command = "by" 
triggerall = power >= 1000
trigger1 = stateno = [150,153]

; ガードキャンセル　牽制攻撃  
;[State -1]
;type = ChangeState
;value = 822
;triggerall = var(59)<=0
;triggerall = command = "c"
;triggerall = power >= 500
;trigger1 = stateno = [150,153]

; 　牽制攻撃
;[State -1]
;type = ChangeState
;value = 824
;triggerall = var(59)<=0
;triggerall = command = "朱乃先輩"
;triggerall =NumHelper(825)<= 0
;triggerall = power >= 500
;trigger1 = ctrl && statetype != A


; 回復　
;[State -1]
;type = ChangeState
;value = 826
;triggerall = var(59)<=0
;triggerall = command = "アーシア"
;triggerall =NumHelper(827)<= 0
;triggerall = power >= 1000
;trigger1 = ctrl && statetype != A




;---------------------------------------------------------------------------
; ドミノ！！
[State -1]
type = ChangeState
value = 3900
triggerall = var(59)<=0
triggerall = command = "ドミノ"
triggerall = Power >= 3000
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = stateno = [200,499]


;------------------------------------------

; ロボット家族
[State -1]
type = ChangeState
value = 3800
triggerall = var(59)<=0
triggerall = command = "ロボット家族"
Trigger1=NumHelper(3801)<= 0
triggerall = Power >= 1000
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = stateno = [200,499]
trigger3 = power >= 2000 && movecontact && StateType = S
trigger3 = stateno = 1030 || stateno = 1035
trigger4 = power >= 2000 && ProjContactTime(1201) = [1,15]
trigger4 = stateno = [1200,1250]

;------------------------------------------


; 静電気
[State -1]
type = ChangeState
value = 3600
triggerall = var(59)<=0
triggerall = command = "静電気"
Triggerall=NumHelper(2000)<= 0
triggerall = Power >= 1000
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = stateno = [200,499]
trigger3 = power >= 2000 && movecontact && StateType = S
trigger3 = stateno = 1030 || stateno = 1035
trigger4 = power >= 2000 && ProjContactTime(1201) = [1,15]
trigger4 = stateno = [1200,1250]



;---------------------------------------------------------------------------
; ねこ
[State -1]
type = ChangeState
value = 3300
triggerall = var(59)<=0
triggerall = command = "ねこ"
Triggerall=NumHelper(2000)<= 0
triggerall = Power >= 2000
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = stateno = [200,499]
trigger3 = power >= 2000 && movecontact && StateType = S
trigger3 = stateno = 1030 || stateno = 1035
trigger4 = power >= 2000 && ProjContactTime(1201) = [1,15]
trigger4 = stateno = [1200,1250]



;---------------------------------------------------------------------------
; 雪ウサギ
[State -1]
type = ChangeState
value = 3100
triggerall = var(59)<=0
triggerall = command = "雪ウサギ"
triggerall = Power >= 1000
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = stateno = [200,499]
trigger3 = power >= 2000 && movecontact && StateType = S
trigger3 = stateno = 1030 || stateno = 1035
trigger4 = power >= 2000 && ProjContactTime(1201) = [1,15]
trigger4 = stateno = [1200,1250]










;---------------------------------------------------------------------------
; 息吹きSP
[State -1]
type = ChangeState
value = 3200
triggerall = var(59)<=0
triggerall = command = "息吹きSP"
triggerall = Power >= 1000
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = stateno = [200,499]
trigger3 = power >= 2000 && movecontact && StateType = S
trigger3 = stateno = 1030 || stateno = 1035
trigger4 = power >= 2000 && ProjContactTime(1201) = [1,15]
trigger4 = stateno = [1200,1250]

;---------------------------------------------------------------------------
; 下敷きSP
[State -1]
type = ChangeState
value = 3000
triggerall = var(59)<=0
triggerall = command = "baribari_x" || command = "baribari_y"
triggerall = Power >= 1000
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = stateno = [200,499]
trigger3 = power >= 2000 && movecontact && StateType = S
trigger3 = stateno = 1030 || stateno = 1035
trigger4 = power >= 2000 && ProjContactTime(1201) = [1,15]
trigger4 = stateno = [1200,1250]



;---------------------------------------------------------------------------
;  関くん(福笑い)
[State -1]
type = ChangeState
value = 2200
triggerall = var(59)<=0
triggerall = command = "福笑い"
Triggerall=NumHelper(2000)<= 0
triggerall = numprojID(1101) = 0;消しゴムのない時
trigger1 = ctrl && statetype != A
trigger2 = (stateno = [200,205]) && AnimElem = 3,< 0
trigger3 = movecontact
trigger3 = (stateno = [200,205]) || stateno = 215 || stateno = 225|| stateno = 235 || stateno = 240
trigger4 = movecontact
trigger4 = stateno = [400,430]
trigger5 = movecontact
trigger5 = stateno = 300
trigger6 = movecontact
trigger6 = stateno =210
trigger7 = movecontact
trigger7 = stateno =220





;---------------------------------------------------------------------------
;  関くん(棒倒し)
[State -1]
type = ChangeState
value = 2100
triggerall = var(59)<=0
triggerall = command = "棒倒し"
Triggerall=NumHelper(2000)<= 0
triggerall = numprojID(1101) = 0;消しゴムのない時
trigger1 = ctrl && statetype != A
trigger2 = (stateno = [200,205]) && AnimElem = 3,< 0
trigger3 = movecontact
trigger3 = (stateno = [200,205]) || stateno = 215 || stateno = 225|| stateno = 235 || stateno = 240
trigger4 = movecontact
trigger4 = stateno = [400,430]
trigger5 = movecontact
trigger5 = stateno = 300
trigger6 = movecontact
trigger6 = stateno =210
trigger7 = movecontact
trigger7 = stateno =220


;---------------------------------------------------------------------------
;  関くん
[State -1]
type = ChangeState
value = 2000
triggerall = var(59)<=0
triggerall = command = "関くん"
Triggerall=NumHelper(2000)<= 0
triggerall = numprojID(1101) = 0;消しゴムのない時
trigger1 = ctrl && statetype != A
trigger2 = (stateno = [200,205]) && AnimElem = 3,< 0
trigger3 = movecontact
trigger3 = (stateno = [200,205]) || stateno = 215 || stateno = 225|| stateno = 235 || stateno = 240
trigger4 = movecontact
trigger4 = stateno = [400,430]
trigger5 = movecontact
trigger5 = stateno = 300
trigger6 = movecontact
trigger6 = stateno =210
trigger7 = movecontact
trigger7 = stateno =220








;---------------------------------------------------------------------------
; 下敷き弱
[State -1]
type = ChangeState
value = 1030
triggerall = var(59)<=0
triggerall = command = "valcun_x"
trigger1 = ctrl && statetype != A
trigger2 = (stateno = [200,205]) && AnimElem = 3,< 0
trigger3 = movecontact
trigger3 = (stateno = [200,205]) || stateno = 215 || stateno = 225|| stateno = 235 || stateno = 240
trigger4 = movecontact
trigger4 = stateno = [400,430]
trigger5 = movecontact
trigger5 = stateno = 300
trigger6 = movecontact
trigger6 = stateno =210
trigger7 = movecontact
trigger7 = stateno =220


;---------------------------------------------------------------------------
; 下敷き強
[State -1]
type = ChangeState
value = 1035
triggerall = var(59)<=0
triggerall = command = "valcun_y"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225|| stateno = 235 || stateno = 240
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300
trigger5 = movecontact
trigger5 = stateno =210
trigger6 = movecontact
trigger6 = stateno =220


;---------------------------------------------------------------------------
; 消しゴム弱
[State -1]
type = ChangeState
value = 1100
triggerall = var(59)<=0
triggerall = command = "guttinggun_x"
triggerall = numprojID(1101) = 0;消しゴムのない時
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225|| stateno = 235 || stateno = 240
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300
trigger5 = movecontact
trigger5 = stateno =210
trigger6 = movecontact
trigger6 = stateno =220


;---------------------------------------------------------------------------
; 消しゴム強
[State -1]
type = ChangeState
value = 1150
triggerall = var(59)<=0
triggerall = command = "guttinggun_y"
triggerall = numprojID(1101) = 0;消しゴムのない時
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 215 || stateno = 225|| stateno = 235 || stateno = 240
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300
trigger5 = movecontact
trigger5 = stateno =210
trigger6 = movecontact
trigger6 = stateno =220



;---------------------------------------------------------------------------
; 息吹き強
[State -1]
type = ChangeState
value = 1250
triggerall = var(59)<=0
triggerall = command = "息吹き_b"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205])  || stateno = 225|| stateno = 235 || stateno = 240
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300
trigger5 = movecontact
trigger5 = stateno =210
trigger6 = movecontact
trigger6 = stateno =220
trigger7 = movecontact
trigger7 = stateno =215 && AnimElem = 5,> 0




;---------------------------------------------------------------------------
; 息吹き弱
[State -1]
type = ChangeState
value = 1200
triggerall = var(59)<=0
triggerall = command = "息吹き_a"
trigger1 = ctrl && statetype != A
trigger2 = movecontact
trigger2 = (stateno = [200,205])  || stateno = 225|| stateno = 235 || stateno = 240
trigger3 = movecontact
trigger3 = stateno = [400,430]
trigger4 = movecontact
trigger4 = stateno = 300
trigger5 = movecontact
trigger5 = stateno =210
trigger6 = movecontact
trigger6 = stateno =220
trigger7 = movecontact
trigger7 = stateno =215 && AnimElem = 5,> 0





;---------------------------------------------------------------------------
; ダイナマイトヘッドバット
[State -1]
type = ChangeState
value = 900
triggerall = var(59)<=0
trigger1 = command = "fwd_y" || command = "back_y"
trigger1 = enemynear,movetype != H
trigger1 = P2BodyDist X < 15
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
; ノーザンライトボム
[State -1]
type = ChangeState
value = 910
triggerall = var(59)<=0
trigger1 = command = "fwd_b" || command = "back_b"
trigger1 = enemynear,movetype != H
trigger1 = P2BodyDist X < 15
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
; 立ち弱P
[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,200,205)
triggerall = var(59)<=0
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
trigger3 = stateno = 400 && AnimElem = 4,> 0
trigger4 = stateno = 205 && AnimElem = 4,> 0
;---------------------------------------------------------------------------
; 立ち強P
[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,210,215)
triggerall = var(59)<=0
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
trigger3 = movecontact
trigger3 = stateno = [200,205]
trigger4 = movecontact
trigger4 = stateno = [220,225]




;---------------------------------------------------------------------------
; 立ち弱K
[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 10,220,225)
triggerall = var(59)<=0
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
trigger3 = NumHelper(3061)= 1
trigger3 = movecontact
trigger3 = stateno = [200,205]
trigger4 = NumHelper(3061)= 1
trigger4 = movecontact
trigger4 = stateno =225









;---------------------------------------------------------------------------
; 立ち強K
[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,230,235)
triggerall = var(59)<=0
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
trigger3 = NumHelper(3061)= 1
trigger3 = movecontact
trigger3 = stateno = [200,205]
trigger4 = NumHelper(3061)= 1
trigger4 = movecontact
trigger4 = stateno = [220,225]
trigger5 = NumHelper(3061)= 1
trigger5 = movecontact
trigger5 = stateno = [210,215]
trigger6 = NumHelper(3061)= 1
trigger6 = movecontact
trigger6 = stateno = 410

;---------------------------------------------------------------------------
; 屈み弱P
[State -1]
type = ChangeState
value = 400
triggerall = var(59)<=0
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
trigger3 = stateno = 400 && AnimElem = 4,> 0
;---------------------------------------------------------------------------
; 屈み強P
[State -1]
type = ChangeState
value = 410
triggerall = var(59)<=0
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 420

;---------------------------------------------------------------------------
; 屈み弱K
[State -1]
type = ChangeState
value = 420
triggerall = var(59)<=0
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
trigger3 = movecontact
trigger3 = stateno = 400


;---------------------------------------------------------------------------
; 屈み強K
[State -1]
type = ChangeState
value = 430
triggerall = var(59)<=0
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 420


;---------------------------------------------------------------------------
; ジャンプ弱P
[State -1]
type = ChangeState
value = ifelse(vel x || Var(3),600,605)
triggerall = var(59)<=0
triggerall = command = "x"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
; ジャンプ強P
[State -1]
type = ChangeState
value = ifelse(vel x || Var(3),610,615)
triggerall = var(59)<=0
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = NumHelper(3061)= 1
trigger2 = movecontact
trigger2 = stateno = [600,605]
trigger3 = NumHelper(3061)= 1
trigger3 = movecontact
trigger3 = stateno = [620,625]

;---------------------------------------------------------------------------
; ジャンプ弱K
[State -1]
type = ChangeState
value = ifelse(vel x || Var(3),620,625)
triggerall = var(59)<=0
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = NumHelper(3061)= 1
trigger2 = movecontact
trigger2 = stateno = [600,605]

;---------------------------------------------------------------------------
; ジャンプ強K
[State -1]
type = ChangeState
value = ifelse(vel x || Var(3),630,635)
triggerall = var(59)<=0
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = NumHelper(3061)= 1
trigger2 = movecontact
trigger2 = stateno = [610,615]
trigger3 = NumHelper(3061)= 1
trigger3 = movecontact
trigger3 = stateno = [620,625]
trigger4 = NumHelper(3061)= 1
trigger4 = movecontact
trigger4 = stateno = [600,605]

;---------------------------------------------------------------------------
; ダッシュ
[State -1]
type = ChangeState
value = 100
triggerall = var(59)<=0
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
; バックステップ
[State -1]
type = ChangeState
value = 105
triggerall = var(59)<=0
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = var(59)<=0
triggerall = command = "start"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
;AI
[State -1,反応速度]
type = VarRandom
trigger1 = GameTime %60= 1
trigger1 = var(59)>0
v = 57
range = (6+((10-var(59))*2)),(6+((10-var(59))*2))*2

[state -3,歩き制御]
type = changestate
value = ifelse(P2statetype=L,0,19)
ctrl = 1
trigger1 = var(59)>0
trigger1 = Stateno=20

[state -3,ジャンプ制御]
Type = ChangeState
value = ifelse(P2statetype=L,0,19)
Ctrl = 1
Trigger1 = var(59)>0
Trigger1 = StateNo = 40 && Prevstateno!=[99,100]





[State -1, ]
type = ChangeState
value = 1200
triggerall = var(59)>9
triggerall = var(31) = 1
triggerall = roundstate = 2
triggerall = random <= (var(59))*150
triggerall = statetype != A
triggerall = Power <= 1000
triggerall = enemynear(floor(fvar(30))),statetype = A
triggerall = enemynear(floor(fvar(30))),statetype != L
triggerall = enemynear(floor(fvar(30))),movetype = H
triggerall = ctrl || stateno = 21 || stateno = 22 || stateno = 100 || stateno = 101
trigger1 = p2bodydist x = [31,60]







;---------------------------------------------------------------------------
;隙突攻撃-------------------------------------------------------------------
[State -1,]
type = ChangeState
value = 100
triggerall = var(59)>3
triggerall = Random < var(59)*100
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = EnemyNear(var(58)),StateType = S
triggerall = EnemyNear(var(58)),StateType != L
triggerall = P2bodydist X > 110 && P2dist X>0
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno = 100
Triggerall = (PrevStateNo=[130,159]) || (Prevstateno = [5000,5029]) || !inguarddist || (EnemyNear(var(58)),hitdefattr!=SCA,AA,AP,AT&&Prevstateno=120&&time>25)
Triggerall = !EnemyNear(var(58)),Ctrl && P2stateno>=200
triggerall = !EnemyNear(var(58)),numproj
triggerall = EnemyNear(var(58)),time >= var(57)
TriggerAll = EnemyNear(var(58)),AnimTime = [-25,-20]
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = (EnemyNear(var(58)),StateNo = [200,649])
Trigger2 = EnemyNear(var(58)),MoveType = A



[State -1, バックステップ]
type = ChangeState
value = 810
triggerall = var(59) > 3
triggerall = roundstate = 2
triggerall = StateType != A
triggerall =backedgebodydist <= 30
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21
triggerall = Random<=var(59)*50
trigger1 = p2bodydist X = [-5,30]
trigger1 = p2statetype = L



[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59) > 3
triggerall = roundstate = 2
triggerall = StateType != A
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21
triggerall = Random<=var(59)*50
trigger1 = p2bodydist X = [-5,30]
trigger1 = p2statetype = L








;

[State -1, ]
type = ChangeState
value = 820
triggerall = var(59) > 8
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = StateType != A
triggerall = Random<=var(59)*50
trigger1 = power >= 3000
trigger1 = p2bodydist X = [31,90]
trigger1 = stateno = [150,153]
trigger1 = p2life<= 50
trigger2 = p2bodydist X = [61,120]
trigger2 = stateno = [150,153]
trigger2 = numproj = 0
trigger2 = power >= 3000
trigger2= life <= 300


; 
[State -1]
type = ChangeState
value = 3900
triggerall = var(59)>5
triggerall = Random < var(59)*50
triggerall = RoundState = 2
triggerall = power >3000
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = P2bodydist X > 120
triggerall = P2BodyDist Y = [-45-floor(10*(EnemyNear(floor(fvar(41))),vel Y)+(10*(10+1)/2)*fvar(40)),0-floor(10*(EnemyNear(floor(fvar(41))),vel Y)+(10*(10+1)/2)*fvar(40))]
;triggerall = P2bodydist Y < -100
triggerall = EnemyNear(var(58)),StateType != L
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21
trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
Trigger2 = EnemyNear(var(58)),MoveType = H



; 
[State -1]
type = ChangeState
value = 3200
triggerall = var(59)>9
triggerall = Random < var(59)*50
triggerall = RoundState = 2
triggerall = power >1000
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = P2bodydist X < 40
triggerall = P2BodyDist Y = [-45-floor(10*(EnemyNear(floor(fvar(41))),vel Y)+(10*(10+1)/2)*fvar(40)),0-floor(10*(EnemyNear(floor(fvar(41))),vel Y)+(10*(10+1)/2)*fvar(40))]
;triggerall = P2bodydist Y < -100
triggerall = EnemyNear(var(58)),StateType != L
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21
trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
Trigger2 = EnemyNear(var(58)),MoveType = H





; ロボ
[State -1,]
type = ChangeState
value = 3800
triggerall = var(59) > 0
triggerall = power >= 1000
triggerall = roundstate = 2
Triggerall=NumHelper(3801)<= 0
triggerall = statetype != A
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21|| (stateno = 51 && animelem = 1, >= 1) || (stateno = 101 && animelem = 1, >= 1 )
triggerall = P2BodyDist X >= 60
triggerall = P2BodyDist Y >= 0
triggerall = !inguarddist
triggerall = P2StateType != A
triggerall = P2MoveType = H
triggerall = P2StateType != L
trigger1 = Var(59) = [6,9]
Trigger1 = Random <= var(59)*20
trigger1 = ProjHitTime(1101) != -1 && ProjHitTime(2000) < 5
trigger2 = Var(59) = [6,9]
trigger2 = ProjHitTime(1151) != -1 && ProjHitTime(1000) < 5
trigger3 = Var(59) >= 10
trigger3 = ProjHitTime(1101) != -1 && ProjHitTime(1220) < 5
trigger4 = Var(59) >= 10
trigger4 = ProjHitTime(1151) != -1 && ProjHitTime(1000) < 5
trigger5 = stateno = 1100
trigger5 = AnimElem = 9, = 1






;--------------------------------------------------
;----------------------------------------------

;ストライカー使用中の動作

;アーシア先輩


; 
[State -1]
type = ChangeState
value = 826
triggerall = var(59)>10
triggerall = fvar(33) >= 1
triggerall = Random < var(59)*100
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = life <= 300
triggerall = StateType != A
triggerall = prevstateno = 3051
triggerall = EnemyNear(var(58)),StateType != L
triggerall = P2bodydist X > 60
;triggerall = enemynear,backedgebodydist <= 30
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = !EnemyNear(var(58)),Ctrl
triggerall = !EnemyNear(var(58)),numproj
trigger1 = (EnemyNear(var(58)),StateNo = [9070,9071])
Trigger2 = EnemyNear(var(58)),MoveType = H
trigger3 = p2life >= 100


; 
[State -1]
type = ChangeState
value = 826
triggerall = var(59)>9
triggerall = fvar(33) >= 2
triggerall = Random < var(59)*200
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = p2StateType = A
triggerall = life <= 500
triggerall = StateType != A
triggerall = prevstateno = 1035
triggerall = EnemyNear(var(58)),StateType != L
triggerall = P2bodydist X = [30,90]
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = !EnemyNear(var(58)),Ctrl
;triggerall = !EnemyNear(var(58)),numproj
trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
Trigger2 = EnemyNear(var(58)),MoveType = H
trigger2 = stateno = 1035 && Animtime=0

[State -1]
type = ChangeState
value = 826
TriggerAll = Var(59) > 5
triggerall = fvar(33) >= 2
triggerall = power >= 1000
triggerall = life <= 500
Triggerall = RoundState = 2
TriggerAll = StateType != A
TriggerAll = P2MoveType != A
Triggerall = !InGuardDist
Triggerall = !Enemy,NumProj
Triggerall = EnemyNear(floor(fvar(31))),Vel X <= 0
triggerall = ctrl ||stateno = 19|| stateno = 20|| stateno = 21 
trigger1 = p2statetype = L
trigger1 = p2bodydist x = [160,340]
trigger2= P2MoveType = H
Trigger2 = P2StateType = A
trigger2 = p2bodydist x = [160,340]



[State -1, ]
type = ChangeState
value = 826
triggerall = fvar(33) >= 2
triggerall = roundstate = 2
triggerall = StateType != A
triggerall = life <= 300
triggerall = NumHelper(827)<= 0
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21
triggerall = Random<=var(59)*50
trigger1 = var(59) > 8
trigger1 = power >= 1000
trigger1 = p2bodydist X = [111,300]
trigger1 =NumHelper(825)>= 1
trigger2 = var(59) > 6
trigger2 = power <= 2000
trigger2 = power >= 1000
trigger2 = p2bodydist X = [161,300]
trigger2 = p2statetype = L

[State -1, ]
type = ChangeState
value = 826
triggerall = roundstate = 2
triggerall = StateType != A
triggerall = life <= 200
triggerall = NumHelper(827)<= 0
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21
triggerall = Random<=var(59)*50
trigger1 = fvar(33) >= 2
trigger1 = var(59) > 8
trigger1 = power >= 2000
trigger1 = p2bodydist X = [111,300]
trigger1 =NumHelper(825)>= 1
trigger2 = fvar(33) >= 1
trigger2 = var(59) > 6
trigger2 = power <= 3000
trigger2 = power >= 1000
trigger2 = p2bodydist X = [161,300]
trigger2 = p2statetype = L





;祐斗先輩






[State -1, ]
type = ChangeState
value = 822
triggerall = var(59) > 7
triggerall = roundstate = 2
triggerall = StateType != A
trigger1 = fvar(32) >= 1
trigger1 = Random<= fvar(32)*5
trigger1 = p2bodydist X = [101,160]
trigger1 = stateno = [150,153]
trigger1 = numproj = 0
trigger1 = power >= 500
trigger2 = fvar(32) >= 2
trigger2 = Random<= fvar(32)*25
trigger2 = p2bodydist X = [101,160]
trigger2 = stateno = [150,153]
trigger2 = numproj = 0
trigger2 = power >= 500




[State -1, ]
type = ChangeState
value = 822
triggerall = var(59) < 7
triggerall = fvar(31) >= 1
triggerall = roundstate = 2
triggerall = StateType != A
triggerall = Random<=var(59)*5
trigger1 = p2bodydist X = [31,110]
trigger1 = p2movetype = A
trigger1 = stateno = [150,153]
trigger1 = life >= 750
trigger1 = power >= 500
trigger1 = backedgebodydist <= 30
trigger2 = p2bodydist X = [31,110]
trigger2 = p2movetype = A
trigger2 = stateno = [150,153]
trigger2 = life <= 250
trigger2 = power <= 1000



[State -1, ]
type = ChangeState
value = 822
triggerall = var(59) > 5
triggerall = fvar(31) >= 2
triggerall = roundstate = 2
triggerall =NumHelper(825)>= 1
triggerall = power >= 500
triggerall = StateType != A
triggerall = Random<=var(59)*50
trigger1 = p2bodydist X = [31,110]
trigger1 = p2movetype = A
trigger1 = stateno = [150,153]


[State -1, ]
type = ChangeState
value = 822
triggerall = var(59) > 1
triggerall = var(59) < 4
triggerall = fvar(31) >= 1
triggerall = roundstate = 2
triggerall = power >= 500
triggerall = life<= 200
triggerall = StateType != A
triggerall = Random<=var(59)*50
trigger1 = p2bodydist X = [31,110]
trigger1 = p2movetype = A
trigger1 = stateno = [150,153]




;朱乃先輩


[State -1]
type = ChangeState
value = 824
TriggerAll = Var(59) > 10
triggerall = fvar(32) >= 1
triggerall =NumHelper(825)<= 0
Triggerall = RoundState = 2
triggerall = power >= 500
TriggerAll = StateType != A
TriggerAll = P2MoveType != A
TriggerAll = P2MoveType != H
TriggerAll = P2StateType != L
Triggerall = !InGuardDist
Triggerall = !Enemy,NumProj
TriggerAll = P2BodyDist X >= 180
Triggerall = EnemyNear(floor(var(58))),Vel X <= 0
triggerall = ctrl ||stateno = 19|| stateno = 20|| stateno = 21 
Trigger1 = Var(59) = [1,3]
Trigger1 = Random <= var(59)*5
Trigger2 = Var(59) = [4,6] 
Trigger2 = Random <= var(59)*14
Trigger3 = Var(59) = [7,9] 
Trigger3 = Random <= var(59)*27
Trigger4 = Var(59) >= 10


; 
[State -1]
type = ChangeState
value = 824
triggerall = var(59)>5
triggerall = fvar(32) >= 2
triggerall =NumHelper(825)<= 0
triggerall = power >= 500
triggerall = Random < var(59)*200
triggerall = RoundState = 2
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = prevstateno = 3051
triggerall = EnemyNear(var(58)),StateType != L
;triggerall = enemynear,backedgebodydist <= 30
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = !EnemyNear(var(58)),Ctrl
;triggerall = !EnemyNear(var(58)),numproj
trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
Trigger2 = EnemyNear(var(58)),MoveType = H
trigger3 = EnemyNear(var(58)),StateNo=9070

; 
[State -1]
type = ChangeState
value = 824
triggerall = var(59)>5
triggerall = fvar(32) >= 2
triggerall =NumHelper(825)<= 0
triggerall = power >= 500
triggerall = Random < var(59)*200
triggerall = RoundState = 2
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = prevstateno = 1013
triggerall = EnemyNear(var(58)),StateType != L
;triggerall = enemynear,backedgebodydist <= 30
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = !EnemyNear(var(58)),Ctrl
;triggerall = !EnemyNear(var(58)),numproj
trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
Trigger2 = EnemyNear(var(58)),MoveType = H



; 
[State -1]
type = ChangeState
value = 824
triggerall = var(59)>5
triggerall = fvar(32) >= 2
triggerall =NumHelper(825)<= 0
triggerall = power >= 500
triggerall = Random < var(59)*200
triggerall = RoundState = 2
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = prevstateno = 1035
triggerall = EnemyNear(var(58)),StateType != L
;triggerall = enemynear,backedgebodydist <= 30
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = !EnemyNear(var(58)),Ctrl
;triggerall = !EnemyNear(var(58)),numproj
trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
Trigger2 = EnemyNear(var(58)),MoveType = H




; 
[State -1]
type = ChangeState
value = 824
triggerall = var(59)>5
triggerall = fvar(32) >= 2
triggerall =NumHelper(825)<= 0
triggerall = power >= 500
triggerall = Random < var(59)*200
triggerall = RoundState = 2
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = prevstateno = 1005
triggerall = EnemyNear(var(58)),StateType != L
;triggerall = enemynear,backedgebodydist <= 30
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = !EnemyNear(var(58)),Ctrl
;triggerall = !EnemyNear(var(58)),numproj
trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
Trigger2 = EnemyNear(var(58)),MoveType = H


; 
[State -1]
type = ChangeState
value = 824
triggerall = var(59)>5
triggerall = fvar(32) >= 2
triggerall =NumHelper(825)<= 0
triggerall = power >= 500
triggerall = Random < var(59)*200
triggerall = RoundState = 2
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = prevstateno = 1051
;triggerall = EnemyNear(var(58)),StateType != L
;triggerall = enemynear,backedgebodydist <= 30
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = !EnemyNear(var(58)),Ctrl
;triggerall = !EnemyNear(var(58)),numproj
trigger1 = EnemyNear(var(58)),StateNo =5110
;Trigger2 = EnemyNear(var(58)),MoveType = H



[State -1, ]
type = ChangeState
value = 824
triggerall = var(59) > 5
triggerall = roundstate = 2
triggerall =NumHelper(825)<= 0
triggerall = StateType != A
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21
trigger1= fvar(32) >= 1
Trigger1 = Random<= fvar(32)*25
trigger1 = p2bodydist X = [161,300]
trigger1 = p2statetype = L
trigger1 = power >= 500
trigger1 = life>= 200
trigger2 = fvar(32) >= 2
trigger2 = p2bodydist X = [151,210]
trigger2 = p2statetype = L
trigger2 = power >= 1500
trigger3 = fvar(32) >= 2
Trigger3 = Random<= fvar(32)*50
trigger3 = p2bodydist X = [141,220]
trigger3 = p2statetype = L
trigger3 = power >= 500
trigger3 = life<= 200





[State -1, ]
type = ChangeState
value = 824
triggerall = var(59) > 5
triggerall = var(59) < 9
triggerall = fvar(32) >= 1
triggerall = roundstate = 2
triggerall =NumHelper(825)<= 0
triggerall = StateType != A
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21
triggerall = Random<=var(59)*50
trigger1 = p2bodydist X = [131,180]
trigger1 = p2statetype = L
trigger1 = power >= 1000



[State -1, ]
type = ChangeState
value = 824
triggerall = fvar(32) >= 2
triggerall = roundstate = 2
triggerall =NumHelper(825)<= 0
TriggerAll = StateType != A
TriggerAll = P2MoveType != A
TriggerAll = P2MoveType != H
TriggerAll = P2StateType != L
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21
triggerall = ((var(59) <=5)&& random <= var(59)*25) || ((var(59) = [6,9]) && random <= var(59)*50) || var(59) >= 10
triggerall = Random<=var(59)*50
trigger1 = p2bodydist X = [161,300]
trigger1 = power >= 500
trigger1 = p2life<= 100
trigger2 = numproj = 0
trigger2 = p2bodydist X = [161,300]
trigger2 = power >= 500
trigger2 = life>= 200




[State -1, ]
type = ChangeState
value = 824
triggerall = fvar(32) = 1
triggerall = roundstate = 2
triggerall =NumHelper(825)<= 0
triggerall = StateType != A
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21
triggerall = ((var(59) <=5)&& random <= var(59)*25) || ((var(59) = [6,9]) && random <= var(59)*50) || var(59) >= 10
trigger1 = p2bodydist X = [141,300]
trigger1 = p2statetype != L
trigger1 = p2movetype != A
trigger1 = power >= 1500
trigger1 = life>= 150





[State -1]
type = ChangeState
value = 3000
triggerall = var(59)>5
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = p2life <= 150
triggerall = Random < var(59)*970
triggerall = StateType != A
trigger1 = stateno = 240
trigger1 = movehit
trigger1 = p2movetype = H


[State -1]
type = ChangeState
value = 1005
triggerall = var(59)>5
triggerall = RoundState = 2
triggerall = Random < var(59)*970
triggerall = StateType != A
trigger1 = stateno = 240
trigger1 = movehit
trigger1 = p2movetype = H





[State -1, ];しゃがみ弱Ｋ
type = ChangeState
value = 420
triggerall = var(59) > 7
triggerall = fvar(32) >= 1
triggerall = roundstate = 2
triggerall = NumHelper(825)>= 1
triggerall = StateType != A
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21
Triggerall = !EnemyNear(var(58)),Ctrl
triggerall = Random<=var(59)*50
trigger1 = p2bodydist X = [18,50]
trigger1 = p2statetype = S
trigger1 = p2statetype != L
trigger1 = p2movetype != A
trigger2 = p2bodydist X = [-5,55]
trigger2 = p2statetype = S
trigger2 = p2statetype != L
trigger2 = p2movetype != A


;小ジャンプ
[State -1]
type = ChangeState
value = ifelse((P2BodyDist X > 60&&(var(55)&15) = 0),39,ifelse(P2BodyDist X > 60,37,39))
triggerall = var(59) > 7
triggerall = RoundState = 2
TriggerAll = StateType != A
TriggerAll = p2StateType != A
triggerall = NumHelper(823)= 1
;triggerall = p2life >= 300
triggerall = EnemyNear(var(58)),StateType != L
triggerall = EnemyNear(var(58)),StateType != A
TriggerAll = (ctrl || (stateno = [100,149])||stateno=19||stateno=21)
TriggerAll = P2BodyDist X = [0,100]
trigger1 = (EnemyNear(var(58)),StateNo != [5000,5002])
trigger2 = stateno = 822 && Animtime=0
trigger2 = prevstateno = 822
trigger3 = enemynear,backedgebodydist <= 30
trigger3 = (EnemyNear(var(58)),StateNo = [5000,5002])
; 
[State -1]
type = ChangeState
value = 3200
triggerall = var(59)>7
triggerall = fvar(31) >= 1
triggerall = Random < var(59)*50
triggerall = RoundState = 2
triggerall = power >1000
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = NumHelper(823)>= 1
triggerall = P2bodydist X =[-10,100]
Triggerall = EnemyNear(var(58)),MoveType = H
triggerall = P2BodyDist Y = [-45-floor(10*(EnemyNear(floor(fvar(41))),vel Y)+(10*(10+1)/2)*fvar(40)),0-floor(10*(EnemyNear(floor(fvar(41))),vel Y)+(10*(10+1)/2)*fvar(40))]
;triggerall = P2bodydist Y < -100
triggerall = EnemyNear(var(58)),StateType != L
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21
trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])




; 
[State -1]
type = ChangeState
value = 2200
triggerall = var(59)>5
triggerall = fvar(31) >= 1
Triggerall=NumHelper(2000)<= 0
triggerall = Random < var(59)*50
triggerall = RoundState = 2
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = P2bodydist X > 61
triggerall = P2BodyDist Y = [-45-floor(10*(EnemyNear(floor(fvar(41))),vel Y)+(10*(10+1)/2)*fvar(40)),0-floor(10*(EnemyNear(floor(fvar(41))),vel Y)+(10*(10+1)/2)*fvar(40))]
;triggerall = P2bodydist Y < -100
triggerall = EnemyNear(var(58)),StateType != L
Triggerall = EnemyNear(var(58)),MoveType = H
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21
;trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = (EnemyNear(var(58)),StateNo = [5000,5002])

; 
[State -1]
type = ChangeState
value = 2100
triggerall = var(59)>5
triggerall = fvar(31) >= 1
triggerall = Random < var(59)*200
triggerall = RoundState = 2
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = NumHelper(823)>= 1
triggerall = P2bodydist X = [-10,60]
triggerall = P2BodyDist Y = [-120-floor(6*(EnemyNear(floor(fvar(41))),vel Y)+(6*(6+1)/2)*fvar(40)),0-floor(6*(EnemyNear(floor(fvar(41))),vel Y)+(6*(6+1)/2)*fvar(40))]
;triggerall = P2bodydist Y > -350
triggerall = EnemyNear(var(58)),StateType != L
triggerall = enemynear,backedgebodydist <= 30
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21
trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
Trigger2 = EnemyNear(var(58)),MoveType = H






; 
[State -1]
type = ChangeState
value =2200
triggerall = var(59)>5
triggerall = fvar(31) >= 1
triggerall = Random < var(59)*200
triggerall = RoundState = 2
triggerall = p2StateType != A
triggerall = StateType != A
Triggerall=NumHelper(2000)<= 0
triggerall = EnemyNear(var(58)),StateType != L
Triggerall = EnemyNear(var(58)),MoveType = H
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21
;trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = (EnemyNear(var(58)),StateNo = [5000,5002])
trigger1  = P2bodydist X = [61,160]
trigger2 = (EnemyNear(var(58)),StateNo = [5000,5002])
trigger2  = P2bodydist X = [150,160]




; 
[State -1]
type = ChangeState
value = 1045
triggerall = var(59)>6
triggerall = fvar(31) >= 1
triggerall = Random < var(59)*200
triggerall = RoundState = 2
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = NumHelper(823)>= 1
triggerall = P2bodydist X = [161,230]
triggerall = P2BodyDist Y = [-120-floor(6*(EnemyNear(floor(fvar(41))),vel Y)+(6*(6+1)/2)*fvar(40)),0-floor(6*(EnemyNear(floor(fvar(41))),vel Y)+(6*(6+1)/2)*fvar(40))]
;triggerall = P2bodydist Y < -300
triggerall = EnemyNear(var(58)),StateType != L
;triggerall = enemynear,backedgebodydist <= 30
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21
Triggerall = !EnemyNear(var(58)),Ctrl
;triggerall = !EnemyNear(var(58)),numproj
;trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
Trigger1 = EnemyNear(var(58)),MoveType = H


; 
[State -1]
type = ChangeState
value = 2200
triggerall = var(59)>7
triggerall = fvar(32) >=1
triggerall = Random < var(59)*200
triggerall = RoundState = 2
triggerall = p2StateType = A
triggerall = StateType != A
Triggerall=NumHelper(2000)<= 0
triggerall = P2bodydist X = [91,160]
;triggerall = P2BodyDist Y = [-250-floor(6*(EnemyNear(floor(fvar(41))),vel Y)+(6*(6+1)/2)*fvar(40)),0-floor(6*(EnemyNear(floor(fvar(41))),vel Y)+(6*(6+1)/2)*fvar(40))]
triggerall = P2bodydist Y < -200
triggerall = EnemyNear(var(58)),StateType != L
;triggerall = enemynear,backedgebodydist <= 30
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = !EnemyNear(var(58)),Ctrl
;triggerall = !EnemyNear(var(58)),numproj
;trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
Trigger1 = EnemyNear(var(58)),MoveType = H

; 
[State -1]
type = ChangeState
value = 1045
triggerall = var(59)>7
triggerall = fvar(32) >= 1
triggerall = Random < var(59)*200
triggerall = RoundState = 2
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = NumHelper(825)>= 1
triggerall = P2bodydist X = [100,200]
triggerall = P2BodyDist Y = [-150-floor(6*(EnemyNear(floor(fvar(41))),vel Y)+(6*(6+1)/2)*fvar(40)),0-floor(6*(EnemyNear(floor(fvar(41))),vel Y)+(6*(6+1)/2)*fvar(40))]
;triggerall = P2bodydist Y > -200
triggerall = EnemyNear(var(58)),StateType != L
;triggerall = enemynear,backedgebodydist <= 30
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = !EnemyNear(var(58)),Ctrl
;triggerall = !EnemyNear(var(58)),numproj
;trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
Trigger1 = EnemyNear(var(58)),MoveType = H


; 
[State -1]
type = ChangeState
value = 3300
triggerall = var(59)>9
triggerall = fvar(31) >= 1
triggerall = power >= 1000
triggerall = Random < var(59)*50
triggerall = RoundState = 2
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = NumHelper(823)>= 1
triggerall = P2bodydist X = [61,100]
triggerall = P2bodydist Y > -200
triggerall = EnemyNear(var(58)),StateType != L
;triggerall = enemynear,backedgebodydist <= 30
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21
Triggerall = !EnemyNear(var(58)),Ctrl
;triggerall = !EnemyNear(var(58)),numproj
;trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
Trigger1 = EnemyNear(var(58)),MoveType = H




; 
[State -1]
type = ChangeState
value = 3300
triggerall = var(59)>9
triggerall = fvar(32) >= 1
triggerall = power >= 1000
triggerall = Random < var(59)*50
triggerall = RoundState = 2
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = NumHelper(825)>= 1
triggerall = P2bodydist X = [61,100]
triggerall = P2bodydist Y > -200
triggerall = EnemyNear(var(58)),StateType != L
;triggerall = enemynear,backedgebodydist <= 30
triggerall = ctrl || stateno = 19|| stateno = 20|| stateno = 21
Triggerall = !EnemyNear(var(58)),Ctrl
;triggerall = !EnemyNear(var(58)),numproj
;trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
Trigger1 = EnemyNear(var(58)),MoveType = H


; 
[State -1]
type = ChangeState
value = 2100
triggerall = var(59)>7
triggerall = fvar(32) >= 1
triggerall = Random < var(59)*200
triggerall = RoundState = 2
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = NumHelper(825)>= 1
triggerall = P2bodydist X < 60
triggerall = P2bodydist Y > -100
triggerall = EnemyNear(var(58)),StateType != L
;triggerall = enemynear,backedgebodydist <= 30
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = !EnemyNear(var(58)),Ctrl
;triggerall = !EnemyNear(var(58)),numproj
;trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
Trigger1 = EnemyNear(var(58)),MoveType = H

;--------------------------------------------------
;--------------------------------------------------



; 立ち強P
[State -1,立ち強P]
type = ChangeState
value = ifelse(P2BodyDist X > 20,1030,215)
triggerall = var(59)>3
triggerall = Random < var(59)*100
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = EnemyNear(var(58)),StateType = S
triggerall = EnemyNear(var(58)),StateType != L
triggerall = P2bodydist X <= 20 && P2dist X>0 && P2stateno>=200
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno = 100
Triggerall = (PrevStateNo=[130,159]) || (Prevstateno = [5000,5029]) || !inguarddist || (EnemyNear(var(58)),hitdefattr!=SCA,AA,AP,AT&&Prevstateno=120&&time>7)
Triggerall = !EnemyNear(var(58)),Ctrl
triggerall = !EnemyNear(var(58)),numproj
triggerall = EnemyNear(var(58)),time >= var(57)
TriggerAll = EnemyNear(var(58)),AnimTime = [-12,-7]
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = (EnemyNear(var(58)),StateNo = [200,649])
Trigger2 = EnemyNear(var(58)),MoveType = A
Trigger3 = EnemyNear(var(58)),MoveType = I

; 屈み強K
[State -1]
type = ChangeState
value = 430
triggerall = var(59)>3
triggerall = Random < var(59)*100
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = EnemyNear(var(58)),StateType != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = P2bodydist X <= 60 && P2dist X>0 && P2stateno>=200
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno = 100
Triggerall = (PrevStateNo=[130,159]) || (Prevstateno = [5000,5029]) || !inguarddist || (EnemyNear(var(58)),hitdefattr!=SCA,AA,AP,AT&&Prevstateno=120&&time>7)
Triggerall = !EnemyNear(var(58)),Ctrl
triggerall = !EnemyNear(var(58)),numproj
triggerall = EnemyNear(var(58)),time >= var(57)
TriggerAll = EnemyNear(var(58)),AnimTime = [-12,-7]
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = (EnemyNear(var(58)),StateNo = [200,649])
Trigger2 = EnemyNear(var(58)),MoveType = A
Trigger3 = EnemyNear(var(58)),MoveType = I

; 屈み強P
[State -1]
type = ChangeState
value = 410
triggerall = var(59)>3
triggerall = Random < var(59)*100
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = EnemyNear(var(58)),StateType != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = P2bodydist X <= 80 && P2dist X>0 && P2stateno>=200
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno = 100
Triggerall = (PrevStateNo=[130,159]) || (Prevstateno = [5000,5029]) || !inguarddist || (EnemyNear(var(58)),hitdefattr!=SCA,AA,AP,AT&&Prevstateno=120&&time>6)
Triggerall = !EnemyNear(var(58)),Ctrl
triggerall = !EnemyNear(var(58)),numproj
triggerall = EnemyNear(var(58)),time >= var(57)
TriggerAll = EnemyNear(var(58)),AnimTime = [-11,-6]
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = (EnemyNear(var(58)),StateNo = [200,649])
Trigger2 = EnemyNear(var(58)),MoveType = A
Trigger3 = EnemyNear(var(58)),MoveType = I

;立ち弱P
[State -1,立ち弱P]
type = ChangeState
value = ifelse(P2BodyDist X > 20,200,215)
triggerall = var(59)>3
triggerall = Random < var(59)*100
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = EnemyNear(var(58)),StateType = S
triggerall = EnemyNear(var(58)),StateType != L
triggerall = P2bodydist X <= 40 && P2dist X>0 && P2stateno>=200
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno = 100
Triggerall = (PrevStateNo=[130,159]) || (Prevstateno = [5000,5029]) || !inguarddist || (EnemyNear(var(58)),hitdefattr!=SCA,AA,AP,AT&&Prevstateno=120&&time>5)
Triggerall = !EnemyNear(var(58)),Ctrl
triggerall = !EnemyNear(var(58)),numproj
triggerall = EnemyNear(var(58)),time >= var(57)
TriggerAll = ((EnemyNear(var(58)),AnimTime = [-5,-2])&&P2BodyDist X <= 20)||((EnemyNear(var(58)),AnimTime = [-6,-3])&&P2BodyDist X > 20)
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = (EnemyNear(var(58)),StateNo = [200,649])
Trigger2 = EnemyNear(var(58)),MoveType = A
Trigger3 = EnemyNear(var(58)),MoveType = I

;屈み弱P
[State -1,屈み弱P]
type = ChangeState
value = 400
triggerall = var(59)>3
triggerall = Random < var(59)*100
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = EnemyNear(var(58)),StateType != A
triggerall = EnemyNear(var(58)),StateType != L
Triggerall = (PrevStateNo=[130,159]) || (Prevstateno = [5000,5029]) || !inguarddist || (EnemyNear(var(58)),hitdefattr!=SCA,AA,AP,AT&&Prevstateno=120&&time>5)
triggerall = P2bodydist X <=20 && P2dist X>0 && P2stateno>=200
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno = 100
Triggerall = !EnemyNear(var(58)),Ctrl
triggerall = !EnemyNear(var(58)),numproj
triggerall = EnemyNear(var(58)),time >= var(57)
TriggerAll = ((EnemyNear(var(58)),AnimTime = [-5,-2])&&P2BodyDist X <= 20)||((EnemyNear(var(58)),AnimTime = [-6,-3])&&P2BodyDist X > 20)
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = (EnemyNear(var(58)),StateNo = [200,649])
Trigger2 = EnemyNear(var(58)),MoveType = A
Trigger3 = EnemyNear(var(58)),MoveType = I

[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,1030,2200)
triggerall = var(59)>3
triggerall = Random < var(59)*100
triggerall = RoundState = 2
triggerall = StateType != A
Triggerall=NumHelper(2000)<= 0
triggerall = EnemyNear(var(58)),StateType = S
triggerall = EnemyNear(var(58)),StateType != L
triggerall = (P2bodydist X = [60,95]) && P2dist X>0 && P2stateno>=200
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno = 100
Triggerall = (PrevStateNo=[130,159]) || (Prevstateno = [5000,5029]) || !inguarddist || (EnemyNear(var(58)),hitdefattr!=SCA,AA,AP,AT&&Prevstateno=120&&time>12)
Triggerall = !EnemyNear(var(58)),Ctrl
triggerall = !EnemyNear(var(58)),numproj
triggerall = EnemyNear(var(58)),time >= var(57)
TriggerAll = EnemyNear(var(58)),AnimTime = [-17,-12]
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = (EnemyNear(var(58)),StateNo = [200,649])
Trigger2 = EnemyNear(var(58)),MoveType = A
Trigger3 = EnemyNear(var(58)),MoveType = I

; 
[State -1]
type = ChangeState
value = 1030
triggerall = var(59)>3
triggerall = Random < var(59)*100
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = EnemyNear(var(58)),StateType = S
triggerall = EnemyNear(var(58)),StateType != L
triggerall = (P2bodydist X = [60,110]) && P2dist X>0 && P2stateno>=200
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno = 100
Triggerall = (PrevStateNo=[130,159]) || (Prevstateno = [5000,5029]) || !inguarddist || (EnemyNear(var(58)),hitdefattr!=SCA,AA,AP,AT&&Prevstateno=120&&time>19)
Triggerall = !EnemyNear(var(58)),Ctrl
triggerall = !EnemyNear(var(58)),numproj
triggerall = EnemyNear(var(58)),time >= var(57)
TriggerAll = EnemyNear(var(58)),AnimTime = [-24,-19]
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = (EnemyNear(var(58)),StateNo = [200,649])
Trigger2 = EnemyNear(var(58)),MoveType = A


[State -1]
type = ChangeState
value = 3300
triggerall = var(59)>5
triggerall = RoundState = 2
triggerall = power >= 2000
triggerall = p2life <= 200
triggerall = Random < var(59)*150
triggerall = StateType != A
triggerall = P2bodydist X = [-5,100]
trigger1 = stateno = 230
trigger1 = movehit





;-----------------------------------------


;浮かし追撃




; 
[State -1]
type = ChangeState
value = 3900
triggerall = var(59)>5
triggerall = Random < var(59)*200
triggerall = RoundState = 2
triggerall = power >= 3000
triggerall = p2StateType = A
Triggerall = p2MoveType = H
triggerall = StateType != A
triggerall = prevstateno = 2200
;triggerall = NumHelper(2000)= 0
triggerall = EnemyNear(var(58)),StateType != L
triggerall = P2bodydist X = [60,90]
triggerall = p2bodydist Y = [-120,-60]
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = !EnemyNear(var(58)),Ctrl
trigger1 = (EnemyNear(var(58)),StateNo = [5000,5300])




; 
[State -1]
type = ChangeState
value = 3300
triggerall = var(59)>5
triggerall = Random < var(59)*200
triggerall = RoundState = 2
triggerall = power >= 2000
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = prevstateno = 2200
triggerall = NumHelper(2000)= 0
triggerall = EnemyNear(var(58)),StateType != L
triggerall = P2bodydist X = [60,90]
;triggerall = p2bodydist Y = [-60,-20]
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = !EnemyNear(var(58)),Ctrl
;triggerall = !EnemyNear(var(58)),numproj
trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
Trigger2 = EnemyNear(var(58)),MoveType = H



; 
[State -1]
type = ChangeState
value = 3200
triggerall = var(59)>5
triggerall = Random < var(59)*200
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = prevstateno = 2200
triggerall = EnemyNear(var(58)),StateType != L
triggerall = P2bodydist X = [30,60]
;triggerall = p2bodydist Y = [-100,-40]
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = !EnemyNear(var(58)),Ctrl
;triggerall = !EnemyNear(var(58)),numproj
trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
Trigger2 = EnemyNear(var(58)),MoveType = H


; 
[State -1]
type = ChangeState
value = 1250
triggerall = var(59)>5
triggerall = Random < var(59)*200
triggerall = RoundState = 2
triggerall = power <= 1000
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = prevstateno = 2200
triggerall = EnemyNear(var(58)),StateType != L
triggerall = P2bodydist X = [60,90]
;triggerall = p2bodydist Y = [-120,-60]
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = !EnemyNear(var(58)),Ctrl
;triggerall = !EnemyNear(var(58)),numproj
trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
Trigger2 = EnemyNear(var(58)),MoveType = H







; 
[State -1]
type = ChangeState
value = 230
triggerall = var(59)>8
triggerall = Random < var(59)*200
triggerall = RoundState = 2
triggerall = p2StateType = A
triggerall = StateType != A
triggerall = prevstateno = 2000
triggerall = EnemyNear(var(58)),StateType != L
triggerall = enemynear,backedgebodydist <= 30
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = !EnemyNear(var(58)),Ctrl
triggerall = !EnemyNear(var(58)),numproj
trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
Trigger2 = EnemyNear(var(58)),MoveType = H




;
[State -1]
type = ChangeState
value = 1100
triggerall = var(59) > 4
triggerall = RoundState = 2
TriggerAll = StateType != A
TriggerAll = p2StateType != A
triggerall = prevstateno = 3000
;triggerall = enemynear,backedgebodydist <= 30
TriggerAll = (ctrl || (stateno = [100,149])||stateno=19||stateno=21)
TriggerAll = P2BodyDist X >60
trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger2 = EnemyNear(var(58)),StateType = L
trigger2 = stateno = 3000&& Animtime=0






;
[State -1]
type = ChangeState
value = 1100
triggerall = var(59) > 4
triggerall = RoundState = 2
TriggerAll = StateType != A
TriggerAll = p2StateType != A
triggerall = prevstateno = 905
;triggerall = enemynear,backedgebodydist <= 30
TriggerAll = (ctrl || (stateno = [100,149])||stateno=19||stateno=21)
TriggerAll = P2BodyDist X >120
trigger1 = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger2 = EnemyNear(var(58)),StateType = L
trigger2 = stateno = 905&& Animtime=0



 
[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,210,215)
triggerall = var(59)>5
triggerall = RoundState = 2
triggerall = Random < var(59)*970
triggerall = StateType != A
trigger1 = stateno = 220
trigger1 = movecontact 
trigger2 = stateno = 225
trigger2 = movecontact 
trigger3 = stateno = 200
trigger3 = movecontact 
trigger4 = stateno = 205
trigger4 = movecontact 



[State -1]
type = ChangeState
value = 3100
triggerall = var(59)>8
triggerall = RoundState = 2
triggerall = power >= 2000
triggerall = Random < var(59)*970
triggerall = StateType != A
trigger1 = stateno = 410
trigger1 = movehit



[State -1]
type = ChangeState
value =  ifelse(P2BodyDist X > 60,3200,3000)
triggerall = var(59)>8
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = Random < var(59)*970
triggerall = StateType != A
trigger1 = stateno = 410
trigger1 = movehit


[State -1]
type = ChangeState
value = 1030
triggerall = var(59)>7
triggerall = RoundState = 2
triggerall = Random < var(59)*970
triggerall = StateType != A
triggerall = enemynear,backedgebodydist <= 30
trigger1 = stateno = 420
trigger1 = movehit


[State -1]
type = ChangeState
value = 2200
triggerall = var(59)>7
triggerall = RoundState = 2
triggerall = Random < var(59)*970
triggerall = StateType != A
trigger1 = stateno = 410
trigger1 = movehit


[State -1]
type = ChangeState
value = 410
triggerall = var(59)>5
triggerall = RoundState = 2
triggerall = Random < var(59)*970
triggerall = StateType != A
trigger1 = stateno = 420
trigger1 = movehit



[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,410,420)
triggerall = var(59)>5
triggerall = RoundState = 2
triggerall = Random < var(59)*970
triggerall = StateType != A
trigger1 = stateno = 400
trigger1 = movecontact 



; 
[State -1]
type = ChangeState
value = ifelse((P2BodyDist X > 60&&(var(55)&15) = 0),1035,ifelse(P2BodyDist X > 60,1200,1200))
triggerall = var(59)>5
triggerall = RoundState = 2
triggerall = Random < var(59)*970
triggerall = StateType != A
triggerall = Power <=1000
trigger1 = stateno = 210
trigger1 = movehit
trigger2 = stateno = 215 && movehit
trigger2 = AnimElem = 5, = 1









; 
[State -1]
type = ChangeState
value = 3300
triggerall = var(59)>5
triggerall = Random < var(59)*100
triggerall = RoundState = 2
Triggerall=NumHelper(2000)<= 0
triggerall = Power >=2000
triggerall = p2life >=800
triggerall = StateType != A
triggerall = EnemyNear(var(58)),StateType = A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = P2bodydist X < 40
triggerall = P2bodydist Y > -70
triggerall = MoveType = A
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = (PrevStateNo=[130,159]) || (Prevstateno = [5000,5029]) || !inguarddist || (EnemyNear(var(58)),hitdefattr!=SCA,AA,AP,AT&&Prevstateno=120&&time>7)
Triggerall = !EnemyNear(var(58)),Ctrl
triggerall = !EnemyNear(var(58)),numproj
triggerall = EnemyNear(var(58)),time >= var(57)
TriggerAll = EnemyNear(var(58)),AnimTime = [-12,-7]
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = (EnemyNear(var(58)),StateNo = [200,649])
Trigger2 = EnemyNear(var(58)),MoveType = A





; 
[State -1]
type = ChangeState
value = 3600
triggerall = var(59)>10
triggerall = Random < var(59)*100
triggerall = RoundState = 2
Triggerall= NumHelper(2000)<= 0
triggerall = Power >=1000
;triggerall = p2life <=500
triggerall = StateType != A
triggerall = EnemyNear(var(58)),StateType = A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = P2bodydist X < 40
triggerall = P2bodydist Y > -70
triggerall = MoveType = A
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = (PrevStateNo=[130,159]) || (Prevstateno = [5000,5029]) || !inguarddist || (EnemyNear(var(58)),hitdefattr!=SCA,AA,AP,AT&&Prevstateno=120&&time>7)
Triggerall = !EnemyNear(var(58)),Ctrl
triggerall = !EnemyNear(var(58)),numproj
triggerall = EnemyNear(var(58)),time >= var(57)
TriggerAll = EnemyNear(var(58)),AnimTime = [-12,-7]
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = (EnemyNear(var(58)),StateNo = [200,649])
Trigger2 = EnemyNear(var(58)),MoveType = A







; 
[State -1]
type = ChangeState
value = 2000
triggerall = var(59)>3
triggerall = Random < var(59)*100
triggerall = RoundState = 2
triggerall = StateType != A
Triggerall=NumHelper(2000)<= 0
triggerall = EnemyNear(var(58)),StateType = A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = (P2bodydist X < 40) && P2dist X>0 && P2stateno>=200
triggerall = P2bodydist Y > -100
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = (PrevStateNo=[130,159]) || (Prevstateno = [5000,5029]) || !inguarddist || (EnemyNear(var(58)),hitdefattr!=SCA,AA,AP,AT&&Prevstateno=120&&time>7)
Triggerall = !EnemyNear(var(58)),Ctrl
triggerall = !EnemyNear(var(58)),numproj
triggerall = EnemyNear(var(58)),time >= var(57)
TriggerAll = EnemyNear(var(58)),AnimTime = [-12,-7]
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = (EnemyNear(var(58)),StateNo = [200,649])
Trigger2 = EnemyNear(var(58)),MoveType = A

; 
[State -1]
type = ChangeState
value = 1030
triggerall = var(59)>3
triggerall = Random < var(59)*100
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = EnemyNear(var(58)),StateType = A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = (P2bodydist X < 40) && P2dist X>0 && P2stateno>=200
triggerall = P2bodydist Y > -100
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = (PrevStateNo=[130,159]) || (Prevstateno = [5000,5029]) || !inguarddist || (EnemyNear(var(58)),hitdefattr!=SCA,AA,AP,AT&&Prevstateno=120&&time>7)
Triggerall = !EnemyNear(var(58)),Ctrl
triggerall = !EnemyNear(var(58)),numproj
triggerall = EnemyNear(var(58)),time >= var(57)
TriggerAll = EnemyNear(var(58)),AnimTime = [-12,-7]
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = (EnemyNear(var(58)),StateNo = [200,649])
Trigger2 = EnemyNear(var(58)),MoveType = A






; なげ
[State -1]
type = ChangeState
value = ifelse(!P2BodyDist X < 15,200,ifelse(Random%2,900,215))
triggerall = var(59)>6
triggerall = Random < var(59)*100
triggerall = RoundState = 2
triggerall = StateType != A  && var(56)!=8
TriggerAll = (EnemyNear(var(58)),vel X=[-4,4]) || P2dist X<15
triggerall = EnemyNear(var(58)),StateType != A
triggerall = EnemyNear(var(58)),StateType != L
triggerall = P2bodydist X <= 30 && P2dist X>0 && P2stateno>=200
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = (PrevStateNo=[130,159]) || (Prevstateno = [5000,5029]) || !inguarddist || (EnemyNear(var(58)),hitdefattr!=SCA,AA,AP,AT)
triggerall = EnemyNear(var(58)),time >= var(57)
TriggerAll = EnemyNear(var(58)),AnimTime = [-3,-1]
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = (EnemyNear(var(58)),StateNo = [200,649])
Trigger2 = EnemyNear(var(58)),MoveType = A
Trigger3 = EnemyNear(var(58)),MoveType = I

;---------------------------------------------------------------------------




;切り替えし



;
[State -3, SN]
type = changestate
value = 3900
triggerall = var(59) > 5
triggerall = !ishelper
TriggerAll = StateType!=A
TriggerAll = RoundState=2
triggerall = power >= 3000
triggerall = p2life <=400
triggerall = enemynear(floor(fvar(30))),statetype != L
TriggerAll = enemyNear(floor(fvar(30))),MoveType=A
triggerall = ctrl || stateno = 19|| stateno = 21 || stateno = 22 || stateno = 100 || stateno = 101 
TriggerAll = EnemyNear(floor(fvar(30))),AnimTime<=-13 
TriggerAll = Enemynear(floor(fvar(30))),Time>=var(33)||(!Time&&var(30)>8)||var(30)>9
Triggerall = P2BodyDist X = [-5,360]
triggerall = P2BodyDist Y >= -35
Triggerall = Random<=(var(30))*100 
Trigger1 = Enemynear(floor(fvar(30))),Time>=var(33)||var(30)>9
Trigger2 = (PrevStateNo=[5200,5210])
Trigger3 = (PrevStateNo=[120,159])
trigger3 = Enemy,NumHelper > 1 || Enemy,NumProj > 1







;雪ウサギ
[State -1]
type = ChangeState
value = 3100
triggerall = var(59)>5
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = S
Triggerall = RoundState=2 && Power>=2000
triggerall = life<lifemax*0.6
triggerall = Power >=3000
triggerall = p2life >=400
triggerall = (power = [2000,2999])||power>=4000||(P2life<((Const(data.attack)+.0)/(Enemynear,Const(data.defence)+.0)*500.0))
Triggerall = P2BodyDist X<=60 && P2dist X>0
Triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = EnemyNear(var(58)),StateType!=A
Triggerall = EnemyNear(var(58)),MoveType=A
Triggerall = EnemyNear(var(58)),AnimTime<=-15||var(59)<7
TriggerAll = EnemyNear(var(58)),Time>=var(57)||(!Time&&var(59)>9)||var(59)>10
Trigger1 = EnemyNear(var(58)),Time>=var(57)||var(59)>10
Trigger1 = Random<=var(59)*60
Trigger2 = (PrevStateNo=[5000,5270])
Trigger2 = Random<=var(59)*100
Trigger3 = (PrevStateNo=[130,159])
Trigger3 = Random<=var(59)*100
trigger4 = var(59)>10
trigger5 = Random < 5







;
[State -1, ]
type = changestate
value = 3300
triggerall = var(59) > 5
triggerall = !ishelper
triggerall = power >= 2000
triggerall = p2life <=600
triggerall = (statetype = S)  || (statetype = C)
triggerall = ((p2bodydist X) - ((enemynear,vel X)*4)) = [0,100]
triggerall = (p2statetype = S)  || (p2statetype = C)
triggerall = (ctrl) || (stateno = [100,101]) || ((stateno = 1111) && time > 6)
triggerall = random < 150*var(59)
trigger1 = p2movetype = A
trigger1 = enemynear,time > 6/var(59)
trigger1 = (enemynear,hitdefattr = SCA,AA,AT,AP) = 0
trigger1 = enemynear,animtime < -8
trigger2 = p2movetype = A
trigger2 = enemynear,time > 6/var(59)
;trigger2 = (enemynear,hitdefattr = SCA,AA,AT,AP) = 0
trigger2 = enemynear,animtime < -8




;
[State -1, ]
type = changestate
value = 3600
triggerall = var(59) > 5
triggerall = !ishelper
triggerall = power >= 1000
triggerall = p2life <=400
triggerall = (statetype = S)  || (statetype = C)
triggerall = ((p2bodydist X) - ((enemynear,vel X)*4)) = [-5,40]
triggerall = (p2statetype = S)  || (p2statetype = C)
triggerall = (ctrl) || (stateno = [100,101]) || ((stateno = 1111) && time > 6)
triggerall = random < 150*var(59)
trigger1 = p2movetype = A
trigger1 = enemynear,time > 6/var(59)
trigger1 = (enemynear,hitdefattr = SCA,AA,AT,AP) = 0
trigger1 = enemynear,animtime < -8
trigger2 = p2movetype = A
trigger2 = enemynear,time > 6/var(59)
;trigger2 = (enemynear,hitdefattr = SCA,AA,AT,AP) = 0
trigger2 = enemynear,animtime < -8







;切り替えし
;雪ウサギ
[State -1]
type = ChangeState
value = 3100
triggerall = var(59)>5
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = S
Triggerall = RoundState=2 && Power>=2000
triggerall = power >= 3000
triggerall = life<lifemax*0.6
triggerall = (power = [2000,2999])||power>=4000||(P2life<((Const(data.attack)+.0)/(Enemynear,Const(data.defence)+.0)*500.0))
Triggerall = P2BodyDist X<=50 && P2dist X>0
Triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = EnemyNear(var(58)),StateType!=A
Triggerall = EnemyNear(var(58)),MoveType=A
Triggerall = EnemyNear(var(58)),AnimTime<=-15||var(59)<7
TriggerAll = EnemyNear(var(58)),Time>=var(57)||(!Time&&var(59)>9)||var(59)>10
Trigger1 = EnemyNear(var(58)),Time>=var(57)||var(59)>10
Trigger1 = Random<=var(59)*60
Trigger2 = (PrevStateNo=[5000,5270])
Trigger2 = Random<=var(59)*100
Trigger3 = (PrevStateNo=[130,159])
Trigger3 = Random<=var(59)*100
trigger4 = var(59)>10
trigger5 = Random < 5




;
[State -1]
type = ChangeState
value = 3100
triggerall = var(59)>5
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = S
Triggerall = RoundState=2
triggerall = life<lifemax*0.6 || power>=2000
triggerall = Power >=3000
Triggerall = P2BodyDist X<=60 && P2dist X>0
Triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = EnemyNear(var(58)),StateType!=A
Triggerall = EnemyNear(var(58)),MoveType=A
Triggerall = EnemyNear(var(58)),AnimTime<=-15||var(59)<7
TriggerAll = EnemyNear(var(58)),Time>=var(57)||(!Time&&var(59)>9)||var(59)>10
Trigger1 = EnemyNear(var(58)),Time>=var(57)||var(59)>10
Trigger1 = Random<=var(59)*60
Trigger2 = (PrevStateNo=[5000,5270])
Trigger2 = Random<=var(59)*100
Trigger3 = (PrevStateNo=[130,159])
Trigger3 = Random<=var(59)*100
trigger4 = var(59)>10
trigger5 = Random < 5




;
[State -1]
type = ChangeState
value = 3100
triggerall = var(59)>5
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = S
Triggerall = RoundState=2
triggerall = life<lifemax*0.6 || power>=2000
triggerall = Power >=1000
triggerall = p2life <=200
Triggerall = P2BodyDist X<=60 && P2dist X>0
Triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = EnemyNear(var(58)),StateType!=A
Triggerall = EnemyNear(var(58)),MoveType=A
Triggerall = EnemyNear(var(58)),AnimTime<=-15||var(59)<7
TriggerAll = EnemyNear(var(58)),Time>=var(57)||(!Time&&var(59)>9)||var(59)>10
Trigger1 = EnemyNear(var(58)),Time>=var(57)||var(59)>10
Trigger1 = Random<=var(59)*60
Trigger2 = (PrevStateNo=[5000,5270])
Trigger2 = Random<=var(59)*100
Trigger3 = (PrevStateNo=[130,159])
Trigger3 = Random<=var(59)*100
trigger4 = var(59)>10
trigger5 = Random < 5



[State -1]
type = ChangeState
value = 3600
triggerall = var(59)>5
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = L
Triggerall = RoundState=2
;triggerall = life<lifemax*0.6 || power>=3000
triggerall = power >= 1000
Triggerall = P2BodyDist X=[120,180]
Triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = EnemyNear(var(58)),StateType!=A
Triggerall = EnemyNear(var(58)),MoveType=A
Triggerall = EnemyNear(var(58)),AnimTime<=-15||var(59)<7
TriggerAll = EnemyNear(var(58)),Time>=var(57)||(!Time&&var(59)>9)||var(59)>10
Trigger1 = EnemyNear(var(58)),Time>=var(57)||var(59)>10
Trigger1 = Random<=var(59)*60



;@
[State -1]
type = ChangeState
value = 3600
triggerall = var(59)>5
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = S
Triggerall = RoundState=2
triggerall = life<lifemax*0.6 || power>=3000
triggerall = power >= 1000
Triggerall = P2BodyDist X<=40 && P2dist X>0
Triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = EnemyNear(var(58)),StateType!=A
Triggerall = EnemyNear(var(58)),MoveType=A
Triggerall = EnemyNear(var(58)),AnimTime<=-15||var(59)<7
TriggerAll = EnemyNear(var(58)),Time>=var(57)||(!Time&&var(59)>9)||var(59)>10
Trigger1 = EnemyNear(var(58)),Time>=var(57)||var(59)>10
Trigger1 = Random<=var(59)*60
Trigger2 = (PrevStateNo=[5000,5270])
Trigger2 = Random<=var(59)*100
Trigger3 = (PrevStateNo=[130,159])
Trigger3 = Random<=var(59)*100
trigger4 = var(59)>10
trigger5 = Random < 5


;@
[State -1]
type = ChangeState
value = 3000
triggerall = var(59)>5
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = S
Triggerall = RoundState=2
triggerall = life<lifemax*0.6 || power>=3000
triggerall = power >= 1000
Triggerall = P2BodyDist X<=60 && P2dist X>0
Triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = EnemyNear(var(58)),StateType!=A
Triggerall = EnemyNear(var(58)),MoveType=A
Triggerall = EnemyNear(var(58)),AnimTime<=-15||var(59)<7
TriggerAll = EnemyNear(var(58)),Time>=var(57)||(!Time&&var(59)>9)||var(59)>10
Trigger1 = EnemyNear(var(58)),Time>=var(57)||var(59)>10
Trigger1 = Random<=var(59)*60
Trigger2 = (PrevStateNo=[5000,5270])
Trigger2 = Random<=var(59)*100
Trigger3 = (PrevStateNo=[130,159])
Trigger3 = Random<=var(59)*100
trigger4 = var(59)>10
trigger5 = Random < 5





; 立ち弱P
[State -1]
type = ChangeState
value = ifelse((P2BodyDist X > 20&&(var(55)&15) = 0),810,ifelse(P2BodyDist X > 20,200,215))
triggerall = var(59)>0
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = A
triggerall = EnemyNear(var(58)),statetype != L
Triggerall = RoundState=2
Triggerall = P2BodyDist X<=40 && P2dist X>0 && P2bodydist Y >-80
Triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Triggerall = EnemyNear(var(58)),MoveType=A
TriggerAll = EnemyNear(var(58)),Time>=var(57)||(!Time&&var(59)>9)||var(59)>10
Trigger1 = (PrevStateNo=[5000,5270])
Trigger1 = Random<=var(59)*100
Trigger2 = (PrevStateNo=[130,159])
Trigger2 = Random<=var(59)*100






[State -1]  ;
type = ChangeState
value = 205
triggerall = var(59)>5
triggerall = statetype != A
triggerall = life <= 300
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
Triggerall = RoundState=2
Triggerall = P2BodyDist X<=30 && P2dist X>0
Triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
TriggerAll = (EnemyNear(var(58)),vel X=[-4,4]) || P2dist X<15
;Triggerall = EnemyNear(var(58)),MoveType=A
Triggerall = EnemyNear(var(58)),AnimTime<=-1||var(59)<7
TriggerAll = (EnemyNear(var(58)),Time=[1+var(57),6+var(57)])||((EnemyNear(var(58)),Time=[1,6])&&!Time&&var(59)>9)||(var(59)>10&&EnemyNear(var(58)),Time=[1,6])
Trigger1 = EnemyNear(var(58)),Time=var(57)||var(59)>10
Trigger1 = Random<=var(59)*60
Trigger2 = (PrevStateNo=[5000,5270])
Trigger2 = Random<=var(59)*100
trigger3 = var(59)>10
trigger4 = Random < 5
Trigger5 = (PrevStateNo=[130,159])
Trigger5 = Random<=var(59)*100

[State -1]  ;1050
type = ChangeState
value = 215
triggerall = var(59)>5
triggerall = statetype != A
triggerall = life >= 300
triggerall = EnemyNear(var(58)),statetype != A
triggerall = EnemyNear(var(58)),statetype != L
Triggerall = RoundState=2
Triggerall = P2BodyDist X<=25 && P2dist X>0
Triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
TriggerAll = (EnemyNear(var(58)),vel X=[-4,4]) || P2dist X<15
;Triggerall = EnemyNear(var(58)),MoveType=A
Triggerall = EnemyNear(var(58)),AnimTime<=-1||var(59)<7
TriggerAll = (EnemyNear(var(58)),Time=[1+var(57),6+var(57)])||((EnemyNear(var(58)),Time=[1,6])&&!Time&&var(59)>9)||(var(59)>10&&EnemyNear(var(58)),Time=[1,6])
Trigger1 = EnemyNear(var(58)),Time=var(57)||var(59)>10
Trigger1 = Random<=var(59)*60
Trigger2 = (PrevStateNo=[5000,5270])
Trigger2 = Random<=var(59)*100
trigger3 = var(59)>10
trigger4 = Random < 5
Trigger5 = (PrevStateNo=[130,159])
Trigger5 = Random<=var(59)*100



[State -1,ジャンプ]
Type     = ChangeState
Value    = 39
TriggerAll = var(59)>3
TriggerAll = StateType!=A
TriggerAll = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
TriggerAll = EnemyNear(var(58)),HitDefAttr=SCA,AT,ST,HT
Triggerall = EnemyNear(var(58)),AnimTime<=-1||var(59)<7
TriggerAll = EnemyNear(var(58)),Time>=var(57)||(!Time&&var(59)>9)||var(59)>10
Trigger1 = EnemyNear(var(58)),Time>=var(57)||var(59)>10
Trigger1 = Random<=var(59)*60
Trigger2 = (PrevStateNo=[5000,5270])
Trigger2 = Random<=var(59)*100
Trigger3 = (PrevStateNo=[130,159])
Trigger3 = Random<=var(59)*100
trigger4 = var(59)>10
trigger5 = Random < 5

[State -1,無敵移動技]
Type = ChangeState
Value = 810
TriggerAll = var(59)>3
TriggerAll = StateType != A
TriggerAll = Enemynear,statetype!=A
TriggerAll = Enemynear,Alive
TriggerAll =  (var(55)&15) = 0
TriggerAll = !EnemyNear,HitDefAttr = SCA,NT,ST,HT
TriggerAll = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno = 100
TriggerAll = P2BodyDist X>180||((EnemyNear,AnimTime=[-35,-33])&&!EnemyNear,Ctrl)||((P2Dist X=[0,90])&&!EnemyNear,Ctrl&&(EnemyNear,AnimTime=[-40,-38]))||((P2Dist X=[95,120])&&!EnemyNear,Ctrl&&(EnemyNear,AnimTime=[-35,-33]))
TriggerAll = InGuardDist && EnemyNear(var(58)),facing + facing = 0
TriggerAll = EnemyNear(var(58)),Time>=var(57)||(!Time&&var(59)>9)||var(59)>10||EnemyNear(var(58)),Ctrl
Trigger1 = EnemyNear(var(58)),Time>=var(57)||var(59)>10
Trigger1 = Random<=var(59)*60
Trigger2 = (PrevStateNo=[5000,5270])
Trigger2 = Random<=var(59)*100
Trigger3 = (PrevStateNo=[130,159])
Trigger3 = Random<=var(59)*100
trigger4 = var(59)>10
trigger5 = Random < 5
Trigger6 = EnemyNear(var(58)),Ctrl
Trigger6 = Random<=var(59)*100

;---------------------------------------------------------------------------
;ガードキャンセル-----------------------------------------------------------
;ガードキャンセル緊急回避94移動
[State -1]
type = ChangeState
value = 830
triggerall = var(59)>0
triggerall = power >= 1000 && P2movetype=A
triggerall = stateno = [150,153]
triggerall = EnemyNear(var(58)),statetype != L && !EnemyNear(var(58)),Ctrl
triggerall = (EnemyNear,AnimTime<=-43&&P2dist X = [64,89])||(EnemyNear,AnimTime<=-39&&P2dist X = [95,125])||(EnemyNear,AnimTime<=-50&&P2dist X = [0,63])
trigger1 = P2life<((Const(data.attack)+.0)/(Enemynear,Const(data.defence)+.0)*180.0) && !P2dist X <64
trigger1 = Random<var(59)*50
trigger2 = power>=powermax
trigger2 = Random<var(59)*70

; ガードキャンセルふっとばし攻撃
[State -1]
type = ChangeState
value = 820
triggerall = var(59)>0
TriggerAll = RoundState=2
triggerall = power >= 1000
TriggerAll = EnemyNear,AnimTime<=-15||var(59)<7
TriggerAll = (P2BodyDist X = [25,100])
triggerall = P2statetype!=A || (P2BodyDist Y = [-100,-50])
triggerall = EnemyNear(var(58)),statetype != C
triggerall = EnemyNear(var(58)),statetype != L
triggerall = stateno = [150,153]
triggerall = power>=powermax && Random<var(59)*40
trigger1 = (var(56)=[7,8])
trigger1 = partner,Movetype=H && partner,stateno!=[120,159]
trigger1 = Enemynear(0),Pos X-Enemynear(1),Pos X=[-30,30]

;---------------------------------------------------------------------------
;ガード
[State -1,ガード]
Type = ChangeState
Value = 120
TriggerAll = var(59)>1
triggerall = Roundstate<3
TriggerAll = StateNo!=[120,155]
TriggerAll = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno = 0
TriggerAll = inguarddist || ((Facing*(EnemyNear(var(58)),Facing)*P2Dist X >0)&&P2movetype=A&&var(59)>6)
Trigger1 = Random<=var(59)*60||var(59)>9
Trigger2 = P2BodyDist X>90||EnemyNear(var(58)),Time>50
Trigger2 = Random<=var(59)*150

;---------------------------------------------------------------------------
;起き攻め
;ジャンプ
[State -1]
type = ChangeState
value = 41
TriggerAll = (var(59)>4&&Random < var(59)*70) || fvar(39)
TriggerAll = StateType != A
TriggerAll = Enemynear(var(58)),StateType = L && EnemyNear(var(58)),vel X =0
TriggerAll = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
TriggerAll = P2BodyDist X = [0,20]
Trigger1 = Enemynear(var(58)),StateNo = [5120,5129]
Trigger1 = Enemynear(var(58)),AnimTime = -30

;小ジャンプ
[State -1]
type = ChangeState
value = 39
TriggerAll = (var(59)>4&&Random < var(59)*20) || fvar(39)
TriggerAll = StateType != A
TriggerAll = Enemynear(var(58)),StateType = L && EnemyNear(var(58)),vel X =0
TriggerAll = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
TriggerAll = P2BodyDist X = [0,100]
Trigger1 = Enemynear(var(58)),StateNo = [5120,5129]
Trigger1 = Enemynear(var(58)),AnimTime = -25

;大ジャンプ
[State -1]
type = ChangeState
value = 38
TriggerAll = (var(59)>4&&Random < var(59)*20) || fvar(39)
TriggerAll = StateType != A
TriggerAll = Enemynear(var(58)),StateType = L && EnemyNear(var(58)),vel X =0
TriggerAll = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
TriggerAll = P2BodyDist X = [120,200]
Trigger1 = Enemynear(var(58)),StateNo = [5120,5129]
Trigger1 = Enemynear(var(58)),AnimTime = -30


; ジャンプ強K
[State -1]
type = ChangeState
value = ifelse(vel x || Var(3),615,610)
triggerall = (var(59)>4&&Random<var(59)*100)||fvar(39)
triggerall = RoundState = 2
triggerall = !inguarddist
triggerall = vel Y>0
TriggerAll = Enemynear(var(58)),StateType = L && EnemyNear(var(58)),vel X =0
trigger1 = statetype = A && (ctrl || (stateno = [120,149]))
trigger1 = P2bodydist X <=(50+(vel X *9))

; ジャンプ強P
[State -1]
type = ChangeState
value = ifelse(vel x || Var(3),610,635)
triggerall = (var(59)>4&&Random<var(59)*100)||fvar(39)
triggerall = RoundState = 2
triggerall = !inguarddist
triggerall = vel Y>0 && vel X = 0
TriggerAll = Enemynear(var(58)),StateType = L && EnemyNear(var(58)),vel X =0
trigger1 = statetype = A && (ctrl || (stateno = [120,149]))
trigger1 = P2bodydist X <=30

; ジャンプ弱K
[State -1]
type = ChangeState
value = ifelse(vel x || Var(3),620,625)
triggerall = (var(59)>4&&Random<var(59)*100)||fvar(39)
triggerall = RoundState = 2
triggerall = !inguarddist
triggerall = vel Y>0 && P2dist X<0
TriggerAll = Enemynear(var(58)),StateType = L && EnemyNear(var(58)),vel X =0
trigger1 = statetype = A && (ctrl || (stateno = [120,149]))



; ジャンプ強K
[State -1]
type = ChangeState
value = ifelse(vel x || Var(3),620,625)
triggerall = (var(59)>4&&Random<var(59)*100)||fvar(39)
triggerall = NumHelper(3061)= 1
triggerall = RoundState = 2
triggerall = !inguarddist
triggerall = vel Y>0
TriggerAll = Enemynear(var(58)),StateType = L && EnemyNear(var(58)),vel X =0
trigger1 = statetype = A && (ctrl || (stateno = [120,149]))
trigger1 = P2bodydist X <=(80+(vel X *9))






; ジャンプ強K
[State -1]
type = ChangeState
value = ifelse(vel x || Var(3),615,610)
triggerall = (var(59)>4&&Random<var(59)*100)||fvar(39)
triggerall = NumHelper(3061)= 0
triggerall = RoundState = 2
triggerall = !inguarddist
triggerall = vel Y>0
TriggerAll = Enemynear(var(58)),StateType = L && EnemyNear(var(58)),vel X =0
trigger1 = statetype = A && (ctrl || (stateno = [120,149]))
trigger1 = P2bodydist X <=(50+(vel X *9))

; 
[State -1]
type = ChangeState
value = 2200
TriggerAll = (var(59)>4&&Random < var(59)*20) || fvar(39)
TriggerAll = StateType != A
Triggerall=NumHelper(2000)<= 0
TriggerAll = Enemynear(var(58)),StateType = L && EnemyNear(var(58)),vel X =0
TriggerAll = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
TriggerAll = P2BodyDist X = [30,100]
Trigger1 = Enemynear(var(58)),StateNo = [5120,5129]
Trigger1 = Enemynear(var(58)),AnimTime = [-49,-40]

[State -1]
type = ChangeState
value = 41
TriggerAll = (var(59)>4&&Random < var(59)*100) || fvar(39)
TriggerAll = StateType != A
TriggerAll = Enemynear(var(58)),StateType = L && EnemyNear(var(58)),vel X =0
TriggerAll = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
TriggerAll = P2BodyDist X = [0,40]
Trigger1 = Enemynear(var(58)),StateNo = [5120,5129]
Trigger1 = Enemynear(var(58)),AnimTime >= -20
trigger1 = var(56)=4 || var(56)=8

[State -1]
type = ChangeState
value = ifelse(Enemynear(var(58)),Power<2000,41,105)
TriggerAll = (var(59)>4&&Random < var(59)*100) || fvar(39)
TriggerAll = StateType != A
TriggerAll = Enemynear(var(58)),StateType = L && EnemyNear(var(58)),vel X =0
TriggerAll = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) && backedgebodydist>40
TriggerAll = P2BodyDist X = [0,40]
Trigger1 = Enemynear(var(58)),StateNo = [5120,5129]
Trigger1 = Enemynear(var(58)),AnimTime >= -20

[State -1]
type = ChangeState
value = 810
TriggerAll = (var(59)>4&&Random < var(59)*100) || fvar(39)
TriggerAll =  (var(55)&15) = 0
TriggerAll = StateType != A && EnemyNear(var(58)),vel X =0
TriggerAll = Enemynear(var(58)),StateType = L || Enemynear(var(58)),StateNo = [5120,5129]
TriggerAll = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) && var(56)!=8 && var(56)!=4
Trigger1 = P2BodyDist X = [0,40]
;Trigger1 = Enemynear(var(58)),AnimTime >= -20
trigger1 =  backedgebodydist<20

;---------------------------------------------------------------------------
;目押し
;
[State -1]
type = ChangeState
value = 215
triggerall = (var(59)>6&&Random<var(59)*100)||fvar(39)
triggerall = RoundState = 2
TriggerAll = StateType != A
TriggerAll = Enemynear(var(58)),GetHitVar(hittime)<0||Enemynear(var(58)),ctrl
TriggerAll = EnemyNear(var(58)),Statetype != A
TriggerAll = EnemyNear(var(58)),Statetype != L
TriggerAll = P2dist X >0
triggerall = (EnemyNear(var(58)),StateNo = [120,159])||(EnemyNear(var(58)),PrevStateNo = [120,159])
trigger1 = P2BodyDist X < 15
trigger1 = statetype != A && (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
trigger1 = backedgebodydist<20


;投げ移行歩き
[State -1]
type = ChangeState
value = 18
TriggerAll = (var(59)>6&&Random<=var(59)*100) || fvar(39)
triggerall = RoundSTate = 2 && EnemyNear(var(58)),Movetype = H
triggerall = !inguarddist
Triggerall = EnemyNear(var(58)),Statetype != L && P2statetype!=A
triggerall = statetype != A
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
triggerall = (EnemyNear(var(58)),StateNo = [120,159])
trigger1 = floor(EnemyNear(var(58)),GetHitVar(hittime))>=1+ceil((P2BodyDist X>15)*(P2BodyDist X-15)/2.5)
trigger1 = P2BoDyDist X < 80

;立ち弱P
[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,200,215)
triggerall = (var(59)>3&&Random<var(59)*100)||fvar(39)
triggerall = RoundState = 2
TriggerAll = StateType != A
triggerall = !inguarddist
TriggerAll = EnemyNear(var(58)),Statetype = S
TriggerAll = EnemyNear(var(58)),Movetype = H
TriggerAll = P2bodydist X <=40 && P2dist X >0
triggerall = (EnemyNear(var(58)),StateNo != [120,159])
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) && statetype != A
trigger2 = stateno = 100

;屈み弱P
[State -1]
type = ChangeState
value = 400
triggerall = (var(59)>3&&Random<var(59)*100);||fvar(39)
triggerall = RoundState = 2
TriggerAll = StateType != A
triggerall = !inguarddist
TriggerAll = EnemyNear(var(58)),Statetype != A
TriggerAll = EnemyNear(var(58)),Movetype = H
TriggerAll = P2bodydist X <=20 && P2dist X >0
;triggerall = (EnemyNear(var(58)),StateNo != [120,159])
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) && statetype != A
trigger2 = stateno = 100
trigger3 = stateno = 400 && AnimElem = 4,> 0

;屈み強P
[State -1]
type = ChangeState
value = 410
triggerall = (var(59)>3&&Random<var(59)*100)||fvar(39)
triggerall = RoundState = 2
TriggerAll = StateType != A
triggerall = !inguarddist
TriggerAll = EnemyNear(var(58)),Statetype != A
TriggerAll = EnemyNear(var(58)),Statetype != L
TriggerAll = EnemyNear(var(58)),Movetype = H
TriggerAll = P2bodydist X <=50 && P2dist X >0
triggerall = (EnemyNear(var(58)),StateNo != [120,159])
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = statetype != A && (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
trigger2 = stateno = 100
trigger3 = stateno = 400
trigger3 = movehit


;屈み強K
[State -1]
type = ChangeState
value = 430
triggerall = (var(59)>3&&Random<var(59)*100)||fvar(39)
triggerall = RoundState = 2
TriggerAll = StateType != A
triggerall = !inguarddist
TriggerAll = EnemyNear(var(58)),Statetype != A
TriggerAll = EnemyNear(var(58)),Statetype != L
TriggerAll = EnemyNear(var(58)),Movetype = H
TriggerAll = P2bodydist X <=55 && P2dist X >0
triggerall = (EnemyNear(var(58)),StateNo != [120,159])
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = statetype != A && (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
trigger2 = stateno = 100
;---------------------------------------------------------------------------
;コンボ
;
[State -1]
type = ChangeState
value = ifelse(P2statetype=S&&Random%3=0,3000,3100)
triggerall = (var(59)>4&&Random<var(59)*100)||fvar(39)
triggerall = RoundState = 2
triggerall = life<lifemax*0.6
triggerall = Power >= 2000
triggerall = !inguarddist
triggerall = Enemynear(var(58)),statetype!=A
triggerall = Enemynear(var(58)),statetype!=L
triggerall = Enemynear(var(58)),movetype=H
trigger1 = movehit
trigger1 = stateno = 410


;
[State -1]
type = ChangeState
value = ifelse((Enemynear(var(58)),statetype=S&&Random<500),3300,3300)
triggerall = (var(59)>3&&Random<var(59)*100)||fvar(39)
triggerall = RoundState = 2
triggerall = Power >= 2000
triggerall = !inguarddist
triggerall = (life<lifemax*0.6) || Power>=3000
triggerall = Enemynear(var(58)),statetype!=A
triggerall = Enemynear(var(58)),statetype!=L
triggerall = Enemynear(var(58)),movetype=H
trigger1 = movehit
trigger1 = stateno = [400,420]








[State -1]
type = ChangeState
value = 3000
triggerall = var(59)>5
triggerall = statetype != A
triggerall = EnemyNear(var(58)),statetype = S
Triggerall = RoundState=2
;triggerall = life<lifemax*0.6 || power>=3000
triggerall = power >= 1000
;Triggerall = P2BodyDist X<=50 && P2dist X>0
Triggerall = ctrl 
Triggerall = EnemyNear(var(58)),StateType!=A
Triggerall = EnemyNear(var(58)),MoveType=H
trigger1 = NumHelper(3061)= 1
trigger1 = stateno = 1000 && hitcount=3
trigger1 = movecontact
Trigger1 = Random<=var(59)*500




;　！！
[State -1]
type = ChangeState
value = 3900
triggerall = (var(59)>5&&Random<var(59)*100)||fvar(39)
triggerall = Power >= 3000
triggerall = RoundState = 2
triggerall = p2life<= 500
triggerall = !inguarddist
triggerall = Enemynear(var(58)),life>Enemynear(var(58)),lifemax*0.25
triggerall = statetype != A && Enemynear(var(58)),movetype=H
triggerall = P2bodydist X > 50 && P2dist X>0
trigger1 = Enemynear(var(58)),stateno=[5000,5100]
trigger1 = stateno = 1041 && Animtime=0
trigger2 = stateno = 1005 && hitcount=3 && Animtime=0
trigger3 = stateno = 3000 && Animtime=0
trigger3 = Enemynear(var(58)),stateno=9060
trigger4 = stateno = 3022 && Animtime=0


;
[State -1]
type = ChangeState
value = 3000
triggerall = (var(59)>3&&Random<var(59)*100)||fvar(39)
triggerall = RoundState = 2
triggerall = !inguarddist
triggerall = P2bodydist X <= 70 && Power >=1000
triggerall = P2BodyDist Y = [-65-floor(10*(EnemyNear(floor(fvar(41))),vel Y)+(10*(10+1)/2)*fvar(40)),0-floor(10*(EnemyNear(floor(fvar(41))),vel Y)+(10*(10+1)/2)*fvar(40))]
;triggerall = Enemynear(var(58)),BackEdgeBodyDist<30
triggerall = Enemynear(var(58)),movetype=H
triggerall = Enemynear(var(58)),stateno=[5000,5100]
trigger1 = statetype != A
trigger1 = stateno = 1000 && Animtime=0


;パンチ強
[State -1]
type = ChangeState
value = 3000
triggerall = (var(59)>3&&Random<var(59)*100)||fvar(39)
triggerall = RoundState = 2
triggerall = !inguarddist
triggerall = NumHelper(3061)= 0
triggerall = P2bodydist X <= 50 && Power >=2000
triggerall = Enemynear(var(58)),BackEdgeBodyDist<20
triggerall = Enemynear(var(58)),movetype=H
triggerall = Enemynear(var(58)),stateno=[5000,5100]
trigger1 = statetype != A
trigger1 = stateno = 1041 && Animtime=0







;
[State -1]
type = ChangeState
value = 410
triggerall = var(59)>8
triggerall = RoundState = 2
triggerall = !inguarddist
triggerall = P2bodydist X >= 50 
triggerall = Enemynear(var(58)),stateno=[5000,5100]
trigger1 = statetype != A
trigger1 = stateno = 1200 && Animtime=0
;trigger2 =  movehit
;trigger2 =  stateno = 215
;trigger2 =  AnimElem = 5, = 1


;
[State -1]
type = ChangeState
value = 1200
triggerall = (var(59)>1&&Random<var(59)*100)||fvar(39)
triggerall = RoundState = 2
triggerall = !inguarddist
triggerall = P2bodydist X <= 50 && P2dist X>0
triggerall = Enemynear(var(58)),stateno=[5000,5100]
trigger1 = statetype != A
trigger1 = stateno = 1041 && Animtime=0
trigger2 = movehit=1 && P2bodydist Y > -50
trigger2 = (stateno = [200,205]) 



;立ち弱P
[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,200,205)
triggerall = (var(59)>0&&Random>var(59)*100)||fvar(39)
triggerall = RoundState = 2
triggerall = !inguarddist
triggerall = Enemynear(var(58)),statetype!=L
triggerall = P2bodydist X <=30 && P2dist X >0
trigger1 = stateno = 400 && AnimElem = 4,> 0 && movecontact




;
[State -1]
type = ChangeState
value = 1030
triggerall = var(59)>5
triggerall = RoundState = 2
triggerall = !inguarddist
triggerall = EnemyNear(var(58)),statetype!=L
trigger1 = moveguarded
trigger1 = stateno = 410 || stateno = 430
trigger1 = p2bodydist X = [30,60]


;
[State -1]
type = ChangeState
value = 1035
triggerall = var(59)>5
triggerall = RoundState = 2
triggerall = Power >= 1000
triggerall = p2life<= 30
triggerall = !inguarddist
triggerall = EnemyNear(var(58)),statetype!=L
triggerall = p2bodydist X = [60,90]
trigger1 = moveguarded
trigger1 =  stateno = 215 
trigger1 =  AnimElem = 5, = 1



;
[State -1]
type = ChangeState
value = 1200
triggerall = var(59)>5
triggerall = RoundState = 2
triggerall = !inguarddist
triggerall = EnemyNear(var(58)),statetype=S
triggerall = p2bodydist X = [30,80]
triggerall = Power <=1000
trigger1 = movecontact
trigger1 =  stateno = 215 
trigger1 =  AnimElem = 5, = 1

;
[State -1]
type = ChangeState
value = 1030
triggerall = var(59)>5
triggerall = RoundState = 2
triggerall = !inguarddist
triggerall = EnemyNear(var(58)),statetype!=L
trigger1 = moveguarded
trigger1 = stateno = 430



;
[State -1]
type = ChangeState
value = 1030
triggerall = (var(59)<5&&Random<var(59)*150)||fvar(39)
triggerall = RoundState = 2
triggerall = !inguarddist
triggerall = EnemyNear(var(58)),statetype!=L
trigger1 = movecontact
trigger1 = stateno = 215 
trigger1 =  p2bodydist X = [60,90]
trigger2 = moveguarded
trigger2 =stateno = 410 
trigger2 =  p2bodydist X = [60,90]





;
[State -1]
type = ChangeState
value = ifelse(Random<250,2200,1200)
triggerall = (var(59)>1&&Random<var(59)*60)||(fvar(39)&&Random>500)
triggerall = RoundState = 2
triggerall = !inguarddist
triggerall = EnemyNear(var(58)),statetype!=L
triggerall = Power <=1000
trigger1 = movehit
trigger1 = stateno = 215 
trigger1 = AnimElem = 5, = 1


;
[State -1]
type = ChangeState
value = 1030
triggerall = (var(59)>3&&Random < var(59)*100)||fvar(39)
triggerall = RoundState = 2
triggerall = EnemyNear(var(58)),statetype!=A
triggerall = EnemyNear(var(58)),statetype!=L
triggerall = enemynear(var(58)),stateno != [120,153]
triggerall = p2bodydist X = [40,80]
trigger1 = moveguarded
trigger1 = stateno = 215




;
[State -1]
type = ChangeState
value = 1030
triggerall = (var(59)>3&&Random < var(59)*100)||fvar(39)
triggerall = RoundState = 2
triggerall = EnemyNear(var(58)),statetype!=A
triggerall = EnemyNear(var(58)),statetype!=L
triggerall = enemynear(var(58)),stateno != [120,153]
triggerall = p2bodydist X = [30,60]
trigger1 = moveguarded
trigger1 = stateno = 210



;
[State -1]
type = ChangeState
value = 3100
triggerall = (var(59)>7&&Random < var(59)*100)||fvar(39)
triggerall = RoundState = 2
triggerall = Power >= 2000
triggerall = EnemyNear(var(58)),statetype!=A
triggerall = EnemyNear(var(58)),statetype!=L
triggerall = enemynear(var(58)),stateno != [120,153]
triggerall = p2bodydist X = [60,90]
trigger1 = movehit
trigger1 = stateno = 410











;
[State -1]
type = ChangeState
value = 3200
triggerall = (var(59)>5&&Random < var(59)*100)||fvar(39)
triggerall = RoundState = 2
triggerall = Power >= 1000
triggerall = p2life <= 500
triggerall = EnemyNear(var(58)),statetype!=A
triggerall = EnemyNear(var(58)),statetype!=L
triggerall = enemynear(var(58)),stateno != [120,153]
triggerall = p2bodydist X = [60,120]
trigger1 = movehit
trigger1 = stateno = 410

;
[State -1]
type = ChangeState
value = 1100
triggerall = (var(59)>3&&Random < var(59)*100)||fvar(39)
triggerall = RoundState = 2
triggerall = EnemyNear(var(58)),statetype!=A
triggerall = EnemyNear(var(58)),statetype!=L
triggerall = enemynear(var(58)),stateno != [120,153]
triggerall = p2bodydist X > 121
trigger1 = movehit
trigger1 = stateno = 410







;
[State -1]
type = ChangeState
value = ifelse((Power>2000 && var(56)!=8),3300,3300)
triggerall = (var(59)>3&&Random < var(59)*100)||fvar(39)
triggerall = RoundState = 2
triggerall = Power >= 2000
triggerall = EnemyNear(var(58)),statetype!=A
triggerall = EnemyNear(var(58)),statetype!=L
triggerall = enemynear(var(58)),stateno != [120,153]
triggerall = P2bodydist X <=30 && P2dist X >0
trigger1 = movehit=1 && P2bodydist X>10
trigger1 = stateno = 400
trigger2 = movehit
trigger2 = stateno = 410


;
[State -1]
type = ChangeState
value = ifelse((Power<2000 && var(56)!=8),2200,2200)
triggerall = (var(59)>3&&Random < var(59)*100)||fvar(39)
triggerall = RoundState = 2
triggerall = life  >=500
triggerall = EnemyNear(var(58)),statetype!=A
triggerall = EnemyNear(var(58)),statetype!=L
triggerall = enemynear(var(58)),stateno != [120,153]
triggerall = P2bodydist X <=40 && P2dist X >0
trigger1 = AnimElem = 5, = 1
trigger1 = stateno = 215 
trigger1 = movehit







;---------------------------------------------------------------------------
;タッグ行動-----------------------------------------------------------------
;1対1                      :var(56) = 2
;2対1(向き合った状態)      :var(56) = 3
;2対1(挟んだ状態)          :var(56) = 4
;1対2(向き合った状態)      :var(56) = 5
;1対2(挟まれた状態)        :var(56) = 6
;2対2(向き合った状態)      :var(56) = 7
;2対2(2人挟んだ状態)       :var(56) = 8
;2対2(2人挟まれた状態)     :var(56) = 9
;2対2(自分のみ挟まれた状態):var(56) = 10
;2対2(相方のみ挟まれた状態):var(56) = 11
;@

;小ジャンプ
[State -3,]
type = ChangeState
value = 39
triggerall = (var(59)>2&&Random<var(59)*60)||fvar(39)
triggerall = Roundstate = 2 && P2statetype!=L
triggerall = statetype != A  && P2statetype!=A
triggerall = numpartner
triggerall = P2bodydist X < 50 && P2dist X>0 && P2stateno=[120,159]
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
triggerall = (partner,movetype=A||partner,movecontact) && partner,statetype!=A
trigger1 = var(56)=[3,4]
trigger2 = var(56)=[7,8]
trigger2 = (Enemynear(0),Pos X-Enemynear(1),Pos X) =[30,-30]

;小足
[State -3,]
type = ChangeState
value = 420
triggerall = (var(59)>2&&Random<var(59)*60)||fvar(39)
triggerall = Roundstate = 2 && P2statetype!=L
triggerall = statetype != A  && P2statetype!=A
triggerall = numpartner
triggerall = P2bodydist X < 40 && P2dist X>0 && P2stateno=[120,159]
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
triggerall = (partner,movetype=A||partner,movecontact) && partner,statetype=A
trigger1 = var(56)=[3,4]
trigger2 = var(56)=[7,8]
trigger2 = (Enemynear(0),Pos X-Enemynear(1),Pos X) =[30,-30]



;雪ウサギ
[State -1]
type = ChangeState
value = 3100
triggerall = (var(59)>2&&Random<var(59)*60)||fvar(39)
triggerall = Power >= 1000
triggerall = Roundstate = 2 && P2statetype!=L
triggerall = var(56)=6 || var(56)=[9,10]
triggerall = statetype != A  && P2statetype!=A
triggerall = P2bodydist X < 30 && P2dist X>0 && P2movetype!=H
triggerall = Enemynear(var(58)),Gethitvar(hittime)<0 || Enemynear(var(58)),ctrl || P2stateno=[0,110]
trigger1 = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)







; 
[State -1]
type = ChangeState
value = 2000
triggerall = (var(59)>2&&Random<var(59)*60)||fvar(39)
triggerall = Roundstate = 2 && P2statetype!=L
triggerall = var(56)=6 || var(56)=[9,10]
Triggerall=NumHelper(2000)<= 0
triggerall = numprojID(1101) = 0;消しゴムのない時
triggerall = statetype != A  && P2statetype!=A
triggerall = P2bodydist X < 30 && P2dist X>0 && P2movetype!=H
;triggerall = Enemynear(var(58)),Gethitvar(hittime)<0 || Enemynear(var(58)),ctrl || P2stateno=[0,110]
trigger1 = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)

;投げ
[State -3, Throw]
type = ChangeState
value = 900
triggerall = (var(59)>2&&Random<var(59)*60)||fvar(39)
triggerall = Roundstate = 2 && P2statetype!=L
triggerall = var(56)=6 || var(56)=[9,10]
triggerall = statetype != A  && P2statetype!=A
triggerall = P2bodydist X < 15 && P2dist X>0 && P2movetype!=H
triggerall = Enemynear(var(58)),Gethitvar(hittime)<0 || Enemynear(var(58)),ctrl || P2stateno=[0,110]
trigger1 = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)

;挟みうち狙い大ジャンプ(向き合った状態)
[State -3]
type = ChangeState
value = 37
triggerall = (var(59)>2&&Random<var(59)*40)||fvar(39)
triggerall = Roundstate = 2
triggerall = statetype != A && P2statetype!=A && P2dist X =[0,70]
triggerall = ctrl
triggerall = Enemynear(var(58)),backedgebodydist>20
trigger1 = var(56) = 3
trigger2 = var(56) = 7
trigger2 = P2dist X+abs(Enemynear(0),Pos X-Enemynear(1),Pos X) =[0,70]

; 緊急回避
[State -1]
type = ChangeState
value = 810
triggerall = (var(59)>2&&Random<var(59)*40);||fvar(39)
triggerall = Roundstate = 2 && statetype != A
triggerall = P2dist X = [0,70]
triggerall = (P2movetype=A&&EnemyNear(var(58)),Time>=var(57))||(P2movetype=A&&var(59)>10)||(P2movetype=H||P2statetype=L)
TriggerAll = !EnemyNear,HitDefAttr = SCA,NT,ST,HT
TriggerAll =  (var(55)&15) = 0
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno = 100
triggerall = Enemynear(var(58)),backedgebodydist>20
trigger1 = var(56)=3 || var(56)=6 || var(56)=[9,10]
trigger2 = var(56)=7
trigger2 = P2dist X+abs(Enemynear(0),Pos X-Enemynear(1),Pos X) =[0,70]

;ガードキャンセル緊急回避94移動
[State -1]
type = ChangeState
value = 830
triggerall = var(59)>2
triggerall = var(56)=[9,10]
triggerall = power >= 1000 && P2movetype=A
triggerall = stateno = [150,153]
triggerall = EnemyNear(var(58)),statetype != L && !EnemyNear(var(58)),Ctrl
trigger1 = Random<var(59)*40









;ドミノ　！！(タッグ時)
[State -1]
type = ChangeState
value = 3900
triggerall = var(59)>3
triggerall = var(56)>1
triggerall = RoundState = 2
triggerall = Power >= 3000
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) && statetype != A
triggerall = !inguarddist
triggerall = EnemyNear(var(58)),statetype!=L
triggerall = NumPartner
triggerall = teammode = simul && Enemy,teammode = simul && Partner,Alive
triggerall = (Pos X*facing<Enemynear(0),Pos X*facing)||!Enemynear(0),Alive
triggerall = (Pos X*facing<Enemynear(1),Pos X*facing)||!Enemynear(1),Alive
triggerall = Random < var(59)*25
trigger1 = EnemyNear(var(58)),facing = facing
trigger1 = partner,movetype = H && P2bodydist X = [80,250]
trigger2 = (EnemyNear(var(58)),stateno=[5000,5030])||(enemynear(var(58)),stateno=[120,153])
trigger2 = partner,movetype=A&&P2bodydist X = [40,250]
trigger2 = EnemyNear(var(58)),statetype!=A

;(タッグ時)
[State -1]
type = ChangeState
value = 3000
triggerall = var(59)>3
triggerall = var(56)>1
triggerall = RoundState = 2
triggerall = Power >= 1000
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) && statetype != A
triggerall = !inguarddist
triggerall = NumPartner
triggerall = EnemyNear(var(58)),facing = facing
triggerall = EnemyNear(var(58)),Movetype = A
triggerall = EnemyNear(var(58)),statetype!=L && Partner,Alive
triggerall = EnemyNear(var(58)),Pos Y > -80 && Enemynear(var(58)),vel Y >=0
triggerall = partner,movetype = H && P2bodydist X <= 230
triggerall = (partner,stateno = [5000,5100])|| (partner,StateNo = [120,159])
triggerall = teammode = simul && Enemy,teammode = simul
triggerall = Random < var(59)*35
trigger1 = (Pos X*facing<Enemynear(0),Pos X*facing)||!Enemynear(0),Alive
trigger1 = (Pos X*facing<Enemynear(1),Pos X*facing)||!Enemynear(1),Alive



;
[State -1]
type = ChangeState
value = ifelse(P2bodydist X>160,2200,3900)
triggerall = var(59)>3
triggerall = var(56)>1
Triggerall=NumHelper(2000)<= 0
triggerall = RoundState = 2
triggerall = Power >= 3000
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) && statetype != A
triggerall = !inguarddist
triggerall = EnemyNear(var(58)),statetype!=L
triggerall = NumPartner
triggerall = teammode = simul && Enemy,teammode = simul && Partner,Alive
triggerall = (Pos X*facing<Enemynear(0),Pos X*facing)||!Enemynear(0),Alive
triggerall = (Pos X*facing<Enemynear(1),Pos X*facing)||!Enemynear(1),Alive
triggerall = Random < var(59)*10
triggerall = (EnemyNear(var(58)),StateNo != [120,159])
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = EnemyNear(var(58)),facing = facing
trigger1 = partner,movetype = H && P2bodydist X > 40
trigger2 = EnemyNear(var(58)),movetype = H
trigger2 = partner,movetype=A&&P2bodydist X > 40
trigger2 = EnemyNear(var(58)),statetype!=A


;
[State -1]
type = ChangeState
value = ifelse(P2bodydist X>160,2200,1200)
triggerall = var(59)>3
triggerall = var(56)>1
Triggerall=NumHelper(2000)<= 0
triggerall = Power <=1000
triggerall = RoundState = 2
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) && statetype != A
triggerall = !inguarddist
triggerall = EnemyNear(var(58)),statetype!=L
triggerall = NumPartner
triggerall = teammode = simul && Enemy,teammode = simul && Partner,Alive
triggerall = (Pos X*facing<Enemynear(0),Pos X*facing)||!Enemynear(0),Alive
triggerall = (Pos X*facing<Enemynear(1),Pos X*facing)||!Enemynear(1),Alive
triggerall = Random < var(59)*10
triggerall = (EnemyNear(var(58)),StateNo != [120,159])
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
trigger1 = EnemyNear(var(58)),facing = facing
trigger1 = partner,movetype = H && P2bodydist X > 40
trigger2 = EnemyNear(var(58)),movetype = H
trigger2 = partner,movetype=A&&P2bodydist X > 40
trigger2 = EnemyNear(var(58)),statetype!=A

;(タッグ時)
[State -1]
type = ChangeState
value = 2100
triggerall = var(59)>3
triggerall = var(56)>1
triggerall = RoundState = 2
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) && statetype != A
triggerall = !inguarddist
triggerall = NumPartner
triggerall = EnemyNear(var(58)),Movetype = A
triggerall = EnemyNear(var(58)),statetype!=L && Partner,Alive
triggerall = EnemyNear(var(58)),Pos Y > -70 && Enemynear(var(58)),vel Y >=0
triggerall = partner,movetype = H && P2bodydist X >= 180
triggerall = teammode = simul && Enemy,teammode = simul
triggerall = (Pos X*facing<Enemynear(0),Pos X*facing)||!Enemynear(0),Alive
triggerall = (Pos X*facing<Enemynear(1),Pos X*facing)||!Enemynear(1),Alive
trigger1 = EnemyNear(var(58)),facing = facing
trigger1 = Random < var(59)*50
trigger2 = EnemyNear(var(58)),facing != facing
trigger2 = Random < var(59)*10

;(タッグ時)
[State -1]
type = ChangeState
value = 810
triggerall = (var(59)>2&&Random<var(59)*5)||fvar(39)
triggerall = Roundstate = 2 && P2statetype!=L && P2statetype!=A
triggerall = statetype != A && P2movetype!=H && P2dist X>0
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
trigger1 = (var(56) = [0,3]) || (var(56) = 5) || (var(56) = 7) || (var(56) = 11)
trigger1 = P2BodyDist X >= 200 && !inguarddist && P2StateType != A
trigger1 = Enemynear(var(58)),HitDefAttr = SC,NP,SP,HP || Enemynear(var(58)),NumProj
trigger1 = (P2movetype = A && Enemynear(var(58)),Time>=var(57)) || (P2movetype = A && var(59)>10) || P2movetype!=A

;---------------------------------------------------------------------------
;地上移動関係
[State -1,ダッシュ]
Type     = ChangeState
Value    = 100
Triggerall = var(59)>0
Triggerall = StateType != A
Triggerall = EnemyNear(var(58)),MoveType != A||EnemyNear(var(58)),StateType = L
Triggerall = !inguarddist
Triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
TriggerAll = RoundState=2
triggerall = Power >=2000
trigger1 = Stateno != 100
trigger1 = Random <= var(59)*10
Trigger1 = P2BodyDist X >= 160
trigger2 = Stateno != 100
trigger2 = Random <=50
Trigger2 = P2BodyDist X <= 115


[State -1,]
Type     = ChangeState
Value    = 1100
Triggerall = var(59)>0
Triggerall = StateType != A
Triggerall = EnemyNear(var(58)),MoveType != A||EnemyNear(var(58)),StateType = L
Triggerall = !inguarddist
Triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
TriggerAll = RoundState=2
triggerall = Power <=2000
trigger1 = Stateno != 100
trigger1 = Random <= var(59)*10
Trigger1 = P2BodyDist X >= 160






[State -1,無敵移動技]
Type = ChangeState
Value = 810
TriggerAll = var(59)>3
TriggerAll = StateType != A
TriggerAll = Enemynear,statetype!=A
TriggerAll = Enemynear,Alive
TriggerAll =  (var(55)&15) = 0
TriggerAll = !EnemyNear,HitDefAttr = SCA,NT,ST,HT
TriggerAll = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno = 100
TriggerAll =((P2Dist X=[91,120])&&EnemyNear,Ctrl)
TriggerAll = EnemyNear(var(58)),facing + facing = 0
Trigger1 = Random<=50
Trigger2 = EnemyNear(var(58)),HitDefAttr != SCA, NT, ST, HT
Trigger2 = P2MoveType = A && P2BodyDist X < 0
trigger2 = EnemyNear(var(58)),time >= var(57)||var(59)>10||Random<var(59)*20

[State -1,ｼﾞｬﾝﾌﾟ]
Type     = ChangeState
Value    = ifelse(P2bodydist X>120,38,39)
Triggerall = var(59)>0
TriggerAll = RoundState = 2
Triggerall = StateType != A
Triggerall = EnemyNear(var(58)),StateType != L
Triggerall = EnemyNear(var(58)),StateType != A
Triggerall = EnemyNear(var(58)),MoveType != H
Triggerall = !inguarddist
Triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
trigger1 = Stateno != 100
Trigger1 = EnemyNear(var(58)),MoveType != A
trigger1 = Random <= 30
trigger2 = enemynear(var(58)),movetype = A && enemynear(var(58)),statetype = C
trigger2 = (EnemyNear(var(58)),time >= var(57)&& Random <= 50)
trigger2 = enemynear(var(58)),HitDefAttr = SCA, NA

;前進
[state -3]
type = ChangeState
value = 19
triggerall = var(59)>0
triggerall = roundstate = 2&&Alive&&P2life!=0
triggerall = frontedgebodydist > 0 && P2statetype!=L && P2stateno!=[5100,5120]
triggerall = statetype!=A && (ctrl ||stateno=14||(stateno=21&&time>30))
triggerall = !inguarddist && P2dist X>0 && EnemyNear(var(58)),NumProj = 0
trigger1 = (P2bodydist X > 220) && Random%2=0
trigger2 = (P2bodydist X = [150,220]) && Random%3=0
trigger3 = (P2bodydist X = [90,150]) && Random%4=0
trigger4 = (P2bodydist X < 120) && Random%8=0
trigger5 = (P2bodydist X < 80) && P2movetype=H && Random%2=0

;後退
[state -3]
type = ChangeState
value = 21
triggerall = var(59)>0
triggerall = roundstate = 2&&Alive&&P2life!=0
triggerall = BackEdgeBodyDist >= 20 && P2statetype=L
triggerall = statetype!=A && (ctrl||stateno=14||(stateno=19&&time>10))
triggerall = EnemyNear(var(58)),NumProj = 0 && !inguarddist && P2dist X>0
trigger1 = (P2bodydist X = [40,70]) && Random%2=0

;後退
[state -3]
type = ChangeState
value = 21
triggerall = var(59)>0
triggerall = roundstate = 2&&Alive&&P2life!=0
triggerall = BackEdgeBodyDist >= 20 && P2statetype!=L && P2stateno!=[5100,5120]
triggerall = statetype!=A && (ctrl||stateno=14||(stateno=19&&time>10))
triggerall = EnemyNear(var(58)),NumProj = 0 && !inguarddist && P2dist X>0 && P2movetype!=H
trigger1 = (P2bodydist X = [70,140]) && Random%15=0
trigger2 = (P2bodydist X < 60) && Random%8=0
trigger3 = (P2bodydist X < 60) && Random%6=0 && P2movetype=A && P2statetype!=A

;---------------------------------------------------------------------------
;地上立ち回り技振り
; 挑発
[State -1]
type = ChangeState
value = 195
TriggerAll = RoundState = 2
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),MoveType != H
TriggerAll = EnemyNear(var(58)),MoveType=A||EnemyNear(var(58)),Ctrl
TriggerAll = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno = 100
Trigger1 = var(59)=[1,3]
Trigger1 = Random<=5

[State -1,ぶっぱ]
Type = ChangeState
value = ifelse(Random>500,3100,3000)
TriggerAll = var(59)
TriggerAll = RoundState = 2
TriggerAll = StateType != A && Power >=2000
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType != H
TriggerAll = EnemyNear(var(58)),MoveType=A||EnemyNear(var(58)),Ctrl
TriggerAll = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Trigger1 = var(59)=[1,3]
Trigger1 = Random<=50



[State -1,]
Type = ChangeState
value = 1100
TriggerAll = var(59)>0
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
TriggerAll = RoundState = 2
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType != H
TriggerAll = EnemyNear(var(58)),MoveType!=A
TriggerAll = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
TriggerAll = P2bodydist X > 180
Trigger1 = Random<=var(59)*50

;
[State -1,15]
type = ChangeState
value = ifelse(P2bodydist X>180,1150,2200)
triggerall = var(59)>3
triggerall = RoundState = 2
Triggerall=NumHelper(2000)<= 0
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) && statetype != A
triggerall = !inguarddist
TriggerAll = EnemyNear(var(58)),MoveType!=A
triggerall = EnemyNear(var(58)),statetype!=L
TriggerAll = P2bodydist X> 160
Trigger1 = Random<=var(59)*50

;投げ 1050 ?
;
[State -1]
type = ChangeState
value = 205
triggerall = var(59)>3
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
triggerall = RoundState = 2 && var(56)!=8
triggerall = EnemyNear(var(58)),statetype!=A
triggerall = EnemyNear(var(58)),statetype!=L
triggerall = EnemyNear(var(58)),vel X =[-4,4]
triggerall = enemynear(var(58)),stateno = [120,153]
triggerall = P2bodydist X <=30 && P2dist X >0
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) && statetype != A
trigger1 = Random < var(59)*20 || (var(59)>10&&Random<800)
Trigger2 = (PrevStateNo=[5000,5270]) && var(59)>6 && Random<750

[State -1,投げ対策]
Type = ChangeState
value = 410
TriggerAll = var(59)>0
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
TriggerAll = RoundState = 2
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType != H
TriggerAll = EnemyNear(var(58)),Ctrl||EnemyNear(var(58)),MoveType = A 
TriggerAll = !InGuardDist
TriggerAll = P2BodyDist X = [0,(35+(EnemyNear(var(58)),vel X*3))]
TriggerAll = !P2BodyDist Y && P2dist X >0
TriggerAll = EnemyNear(var(58)),StateType != A
TriggerAll = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)||stateno = 100
Trigger1 = Random <= var(59)*30

; ！
[State -1]
type = ChangeState
value = 3000
triggerall = Power >= 1000
TriggerAll = var(59)>1
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
TriggerAll = RoundState = 2
TriggerAll = StateType != A && P2stateno!=[120,159]
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType = H
TriggerAll = EnemyNear(var(58)),gethitvar(hitcount)=0
TriggerAll = !InGuardDist && Enemynear(var(58)),backedgebodydist<20
triggerAll = P2BodyDist X=[0-((EnemyNear(var(58)),vel X*7)*(EnemyNear(var(58)),Facing*Facing)),40-((EnemyNear(var(58)),vel X*7)*(EnemyNear(var(58)),Facing*Facing))]
TriggerAll = P2BodyDist Y+(EnemyNear(var(58)),vel y*7)-(0.5*EnemyNear(var(58)),GetHitVar(yaccel)*7*8)=[-60,-30]
TriggerAll = EnemyNear(var(58)),StateType=A
Trigger1 = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Trigger1 = Random <= var(59)*10 || (var(59)>10&&Random<600)





[State -1,対空2]
Type = ChangeState
value = 2000
TriggerAll = var(59)>1
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
TriggerAll = RoundState = 2
Triggerall=NumHelper(2000)<= 0
TriggerAll = StateType != A
TriggerAll = stateno != [100,101]
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType != H
TriggerAll = !InGuardDist
triggerall = EnemyNear(var(58)),Pos Y <-30 || var(59)>10
triggerAll = P2BodyDist X=[0-((EnemyNear(var(58)),vel X*8)*(EnemyNear(var(58)),Facing*Facing)),40-((EnemyNear(var(58)),vel X*8)*(EnemyNear(var(58)),Facing*Facing))]
TriggerAll = P2BodyDist Y+(EnemyNear(var(58)),vel y*8)-(0.5*EnemyNear(var(58)),Const(MoveMent.Yaccel)*8*9)=[-100,-20]
TriggerAll = EnemyNear(var(58)),StateType=A
Trigger1 = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Trigger1 = Random <= var(59)*10 || (var(59)>10&&Random<600)








[State -1,対空3]
Type = ChangeState
value = ifelse(Random>500,2000,2100)
TriggerAll = var(59)>1
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
TriggerAll = RoundState = 2
Triggerall=NumHelper(2000)<= 0
TriggerAll = StateType != A
TriggerAll = stateno != [100,101]
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType != H
TriggerAll = !InGuardDist
triggerall = EnemyNear(var(58)),Pos Y <-30 || var(59)>10
triggerAll = P2BodyDist X=[0-((EnemyNear(var(58)),vel X*10)*(EnemyNear(var(58)),Facing*Facing)),40-((EnemyNear(var(58)),vel X*10)*(EnemyNear(var(58)),Facing*Facing))]
TriggerAll = P2BodyDist Y+(EnemyNear(var(58)),vel y*10)-(0.5*EnemyNear(var(58)),Const(MoveMent.Yaccel)*10*11)=[-140,-50]
TriggerAll = EnemyNear(var(58)),StateType=A
Trigger1 = (ctrl || (stateno = [120,149])||stateno=19||stateno=21)
Trigger1 = Random <= var(59)*10 || (var(59)>10&&Random<600)

; 立ち弱K
[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 10,220,225)
triggerall = Var(59)>0
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
triggerall = RoundSTate = 2 && EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),Statetype != A
triggerall = EnemyNear(var(58)),Movetype != H
triggerall = P2BoDyDist X < 10 && P2dist X >0
trigger1 = statetype != A
trigger1 = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno=100
trigger1 = Random < var(59)*100

; 立ち弱P
[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,200,205)
triggerall = Var(59)>0
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
triggerall = RoundSTate = 2 && EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),Statetype != C
TriggerAll = P2BodyDist Y+(EnemyNear(var(58)),vel y*3)-(0.5*EnemyNear(var(58)),Const(MoveMent.Yaccel)*3*4)>-80
triggerall = EnemyNear(var(58)),Movetype != H
triggerall = P2dist X >0
triggerall = statetype != A
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno=100
trigger1 = P2BoDyDist X+Enemynear(var(58)),vel X*1 < 45
trigger1 = Random < var(59)*40
trigger1 = P2BoDyDist X = [45,55]
trigger1 = Random < var(59)*20

; 屈み弱P
[State -1]
type = ChangeState
value = 400
triggerall = Var(59)>0
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
triggerall = RoundSTate = 2 && EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),Statetype != A && P2dist X >0
triggerall = EnemyNear(var(58)),Movetype != H
triggerall = (P2BoDyDist X+Enemynear(var(58)),vel X*1 < 30) || (Random<var(59)*10&&P2BoDyDist X = [20,29])
trigger1 = statetype != A
trigger1 = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno=100
trigger1 = Random < var(59)*50
trigger2 = Random < var(59)*80
trigger2 = stateno = 400 && AnimElem = 4,> 0

; 屈み強P50
[State -1]
type = ChangeState
value = 410
triggerall = Var(59)>0
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
triggerall = RoundSTate = 2 && EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),Statetype != A
triggerall = EnemyNear(var(58)),Movetype != H
triggerall = P2dist X >0
TriggerAll=!InGuardDist
triggerall = statetype != A
triggerall = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno=100
trigger1 = P2BoDyDist X+Enemynear(var(58)),vel X*3 < 50
trigger1 = Random < var(59)*25
trigger2 = P2BoDyDist X = [40,50]
trigger2 = Random < var(59)*10

; 屈み強K60
[State -1]
type = ChangeState
value = 430
triggerall = Var(59)>0
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
triggerall = RoundSTate = 2 && EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),Statetype = S
triggerall = EnemyNear(var(58)),Movetype != H
triggerall = (P2BoDyDist X = [30,60]) && P2dist X >0
TriggerAll=!InGuardDist
trigger1 = statetype != A
trigger1 = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno=100
trigger1 = Random < var(59)*6

; 立ち強K90
[State -1]
type = ChangeState
value = 230
triggerall = Var(59)>0
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
triggerall = RoundSTate = 2 && EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),Statetype = S
triggerall = EnemyNear(var(58)),Movetype != H
triggerall = (P2BoDyDist X = [60,80]) && P2dist X >0
TriggerAll=!InGuardDist
trigger1 = statetype != A
trigger1 = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno=100
trigger1 = Random < var(59)*5

; 立ち強p90 210
[State -1]
type = ChangeState
value = 1030
triggerall = Var(59)>0
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
triggerall = RoundSTate = 2 && EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),Statetype = S
triggerall = EnemyNear(var(58)),Movetype != H
triggerall = (P2BoDyDist X = [70,90]) && P2dist X >0
TriggerAll=!InGuardDist
trigger1 = statetype != A
trigger1 = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno=100
trigger1 = Random < var(59)*5

;弱K50
[State -1]
type = ChangeState
value = ifelse(EnemyNear(var(58)),Statetype = S,220,420)
triggerall = Var(59)>0
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
triggerall = RoundSTate = 2 && EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),Statetype = S
triggerall = EnemyNear(var(58)),Movetype != H
triggerall = (P2BoDyDist X = [30,50]) && P2dist X >0
TriggerAll=!InGuardDist
trigger1 = statetype != A
trigger1 = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno=100
trigger1 = Random < var(59)*7

[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,210,215)
triggerall = Var(59)>0
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
triggerall = RoundSTate = 2 && EnemyNear(var(58)),Statetype != L
triggerall = EnemyNear(var(58)),Statetype = S
triggerall = EnemyNear(var(58)),Movetype != H
triggerall = P2BoDyDist X =[80,95]
TriggerAll = !InGuardDist
trigger1 = statetype != A
trigger1 = (ctrl || (stateno = [120,149])||stateno=19||stateno=21) || stateno=100
trigger1 = Random < var(59)*4

;---------------------------------------------------------------------------
;空中立ち回り技振り

[State -1,]
type = ChangeState
value = ifelse(vel x || Var(3),620,625)
triggerall = var(59)>0
TriggerAll = RoundState = 2
triggerall = NumHelper(3061)= 1
TriggerAll = (ctrl || (stateno = [120,149]))
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType != H
;TriggerAll = !InGuardDist
triggerAll = statetype = A
TriggerAll = P2dist X >0 && vel Y > 0
Trigger1 = P2BodyDist X=[60,90+vel x*10-EnemyNear(var(58)),vel x*9]
Trigger1 = Random<var(59)*100
Trigger1 = P2StateType!=A
Trigger1 = Pos Y+(vel y!=0)*(vel y+Const(MoveMent.Yaccel)*8)*9>-50

[State -1,]
type = ChangeState
value = ifelse(vel x || Var(3),610,615)
triggerall = var(59)>0
TriggerAll = RoundState = 2
triggerall = NumHelper(3061)= 0
TriggerAll = (ctrl || (stateno = [120,149]))
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
TriggerAll = EnemyNear(var(58)),StateType != L
TriggerAll = EnemyNear(var(58)),MoveType != H
;TriggerAll = !InGuardDist
triggerAll = statetype = A
TriggerAll = P2dist X >0 && vel Y > 0
Trigger1 = P2BodyDist X=[-10,50+vel x*10-EnemyNear(var(58)),vel x*9]
Trigger1 = Random<var(59)*100
Trigger1 = P2StateType!=A
Trigger1 = Pos Y+(vel y!=0)*(vel y+Const(MoveMent.Yaccel)*8)*9>-50

[State -1,]
type = ChangeState
value = 310
triggerall = var(59)>0
TriggerAll = RoundState = 2
TriggerAll=EnemyNear(var(58)),StateType != L
TriggerAll=EnemyNear(var(58)),MoveType != H
TriggerAll=!InGuardDist
triggerAll = (ctrl || (stateno = [120,149]))
triggerall = (EnemyNear(var(58)),StateNo != [5100,5270])
triggerAll = statetype = A
TriggerAll = vel Y !=0
TriggerAll = P2dist X >0
trigger1 = Random < var(59)*100
Trigger1 = P2StateType=A
Trigger1 = P2BodyDist X = [-5,((40+vel X*5)+(EnemyNear(var(58)),vel x*5))]
Trigger1 = (P2BodyDist Y+(vel y*5)+(0.5*Const(MoveMent.Yaccel)*4*5))-(P2BodyDist Y+(EnemyNear(var(58)),vel y*5)+(0.5*EnemyNear(var(58)),Const(MoveMent.Yaccel)*4*5))=[-30,30]
