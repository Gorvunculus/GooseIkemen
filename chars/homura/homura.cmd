[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
[Command]
name = "tame2"
command = ~40$B, $F, a+b
time = 25

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+b

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "41236x"
command = ~B, DB, D, DF, F, x
time = 20

[Command]
name = "63214x"
command = ~F, DF, D, DB, B, x
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "tame"
command = ~80$B, $F, a
time = 25

name = "tame"
command = ~80$B, $F, b
time = 25

name = "tame"
command = ~80$B, $F, c
time = 25

[Command]
name = "upper_a"
command = ~F, D, DF, a

[Command]
name = "upper_b"
command = ~F, D, DF, b

[Command]
name = "upper_c"
command = ~F, D, DF, c


[Command]
name = "421_a"
command = ~B, D, DB, a

[Command]
name = "421_b"
command = ~B, D, DB, b

[Command]
name = "421_c"
command = ~B, D, DB, c

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "236x"
command = ~D, DF, F, x

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "DD_a"
command = D, D, a
time = 20

[Command]
name = "DD_b"
command = D, D, b
time = 20

[Command]
name = "DD_c"
command = D, D, c
time = 20

[Command]
name = "ab"
command = a+b


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1
[Command]
name = "holdx";Required (do not remove)
command = /$x
time = 1









;AI起動スイッチ----------------------------------------------------------- 
[Command]
name = "AI00"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0

[Command]
name = "AI01"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0

[Command]
name = "AI02"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0

[Command]
name = "AI03"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0

[Command]
name = "AI04"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0

[Command]
name = "AI05"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0

[Command]
name = "AI06"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0

[Command]
name = "AI07"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0

[Command]
name = "AI08"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0

[Command]
name = "AI09"
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

[Command]
name = "AI51"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,x
time = 0

[Command]
name = "AI52"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,x
time = 0

[Command]
name = "AI53"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0

[Command]
name = "AI54"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,x
time = 0

[Command]
name = "AI55"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,x
time = 0

[Command]
name = "AI56"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,x
time = 0

[Command]
name = "AI57"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,x
time = 0

[Command]
name = "AI58"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,x
time = 0

[Command]
name = "AI59"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,x
time = 0

[Command]
name = "AI60"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,x



;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================


;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;---------------------------------------------

[State -1, Air Run Fwd]
type = ChangeState
value = 110
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 110
;trigger1 = var(0) > -1
;---------------------------------------------

[State -1, Air Run back]
type = ChangeState
value = 115
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 115
;trigger1 = var(0) > -1
;---------------------------------------------------------------------------
[State -1, Warp shot EX]
type = ChangeState
value = 1410
triggerall = var(59) = 0
triggerall = command = "421_c"
triggerall = statetype != A
triggerall = power > 2000
triggerall = var(55) > 300
triggerall = var(54)=0         ;time stop
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger3 = stateno = 231
trigger4 = stateno = [410 , 460 ]
trigger5 = stateno = [1000,1001]
trigger6 = stateno = [1060,1067]

;---------------------------------------------------------------------------
[State -1, Warp shot A]
type = ChangeState
value = 1400
triggerall = var(59) = 0
triggerall = command = "421_a"
triggerall = statetype != A
triggerall = var(54)=0         ;time stop
trigger1 = ctrl = 1
trigger2 = stateno = [200,231];;立ち攻撃キャンセル
trigger2 = movecontact
trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
trigger3 = movecontact
trigger4 = stateno = 460;;エリアル開始キャンセル
trigger5 = stateno = 230
trigger5 = time > 23
trigger6 = stateno = 410
trigger6 = time > 20
trigger7 = stateno = 231
trigger7 = time > 15

;---------------------------------------------------------------------------
[State -1, Warp shot B]
type = ChangeState
value = 1403
triggerall = var(59) = 0
triggerall = command = "421_b"  || command = "421_c"
triggerall = statetype != A
triggerall = var(54)=0         ;time stop
trigger1 = ctrl = 1
trigger2 = stateno = [200,231];;立ち攻撃キャンセル
trigger2 = movecontact
trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
trigger3 = movecontact
trigger4 = stateno = 460;;エリアル開始キャンセル
trigger5 = stateno = 230
trigger5 = time > 23
trigger6 = stateno = 410
trigger6 = time > 20
trigger7 = stateno = 231
trigger7 = time > 15
;---------------------------------------------------------------------------
[State -1, Mortal ex]
type = ChangeState
value = 3020
triggerall = var(59) = 0
triggerall = command = "upper_c"
triggerall = power > 1000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger3 = stateno = 231
trigger4 = stateno = [410 , 460 ]
trigger5 = stateno = [1000,1001]
trigger6 = stateno = [1060,1067]
;---------------------------------------------------------------------------
[State -1, Mortal A]
type = ChangeState
value = 1060
triggerall = var(59) = 0
triggerall = command = "upper_a"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200,231];;立ち攻撃キャンセル
trigger2 = movecontact
trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
trigger3 = movecontact
trigger4 = stateno = 460;;エリアル開始キャンセル
trigger5 = stateno = 230
trigger5 = time > 23
trigger6 = stateno = 410
trigger6 = time > 20
trigger7 = stateno = 231
trigger7 = time > 15
;---------------------------------------------------------------------------
[State -1, Mortal B]
type = ChangeState
value = 1067
triggerall = var(59) = 0
triggerall = command = "upper_b" || command = "upper_c"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200,231];;立ち攻撃キャンセル
trigger2 = movecontact
trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
trigger3 = movecontact
trigger4 = stateno = 460;;エリアル開始キャンセル
trigger5 = stateno = 230
trigger5 = time > 23
trigger6 = stateno = 410
trigger6 = time > 20
trigger7 = stateno = 231
trigger7 = time > 15
;---------------------------------------------------------------------------

[State -1, MG EX]
type = ChangeState
value = 652
triggerall = var(59) = 0
triggerall = command = "QCF_c"
triggerall = statetype = A
triggerall = power > 1000
trigger1 = ctrl = 1
trigger2 = stateno = [600 , 651 ]
trigger3 = stateno = 250
;---------------------------------------------------------------------------

[State -1, MG]
type = ChangeState
value = 650
triggerall = var(59) = 0
triggerall = command = "QCF_a"  ||  command = "QCF_b"  || command = "QCF_c"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = [600 , 640 ]
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = time > 20
;trigger3 = stateno = 250

;---------------------------------------------------------------------------

[State -1, RPG-7 EX]
type = ChangeState
value = 1002
triggerall = var(59) = 0
triggerall = command = "QCF_c"
triggerall = statetype != A
triggerall = power > 1000
trigger1 = ctrl = 1
trigger2 = stateno = [200,231];;立ち攻撃キャンセル
trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
trigger4 = stateno = 460;;エリアル開始キャンセル
trigger5 = stateno = [1000,1001]
trigger6 = stateno = [1060,1067]
;---------------------------------------------------------------------------

[State -1, RPG-7 A]
type = ChangeState
value = 1001
triggerall = var(59) = 0
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200,231];;立ち攻撃キャンセル
trigger2 = movecontact
trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
trigger3 = movecontact
trigger4 = stateno = 460;;エリアル開始キャンセル
trigger5 = stateno = 230
trigger5 = time > 23
trigger6 = stateno = 410
trigger6 = time > 20
trigger7 = stateno = 231
trigger7 = time > 15

;---------------------------------------------------------------------------

[State -1, RPG-7 B]
type = ChangeState
value = 1001
triggerall = var(59) = 0
triggerall = command = "QCF_b"  ||    command = "QCF_c"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200,231];;立ち攻撃キャンセル
trigger2 = movecontact
trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
trigger3 = movecontact
trigger4 = stateno = 460;;エリアル開始キャンセル
trigger5 = stateno = 230
trigger5 = time > 23
trigger6 = stateno = 410
trigger6 = time > 22
trigger7 = stateno = 231
trigger7 = time > 15


;---------------------------------------------------------------------------
[State -1, time stop]
type = ChangeState
value = 3010
triggerall = var(59) = 0
triggerall = command = "63214x"
triggerall = var(54)=0        ;time stop
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, warp fwd]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = command = "x";"421_c"
triggerall = command = "holdfwd"
triggerall = var(54)=0         ;time stop
triggerall = statetype != A
triggerall = stateno != 100
trigger1 = ctrl = 1
;---------------------------------------------------------------------------

[State -1, warp fwd air]
type = ChangeState
value = 1204
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = var(55) > 300
triggerall = var(54)=0         ;time stop
triggerall = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------


;[State -1, warp fwd]
;type = ChangeState
;value = 1207
;triggerall = command = "x";"421_c"
;triggerall = command = "holdfwd"
;triggerall = var(54)=0         ;time stop
;triggerall = statetype != A
;triggerall = stateno != 100
;trigger1 = ctrl = 1


;---------------------------------------------------------------------------

[State -1, warp back]
type = ChangeState
value = 1201
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holdback"
triggerall = var(54)=0         ;time stop
triggerall = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

[State -1, warp down]
type = ChangeState
value = 1202
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(54)=0       ;time stop
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 460

;---------------------------------------------------------------------------

;[State -1, warp fwd air]
;type = ChangeState
;value = 1208
;triggerall = command = "x"
;triggerall = command = "holdfwd"
;triggerall = var(55) > 100
;triggerall = var(54)=0         ;time stop
;triggerall = statetype = A
;trigger1 = ctrl = 1


;---------------------------------------------------------------------------

[State -1, warp back air]
type = ChangeState
value = 1205
triggerall = var(59) = 0
triggerall = var(55) > 100
triggerall = command = "x"
triggerall = command = "holdback"
triggerall = var(54)=0         ;time stop
triggerall = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

[State -1, warp down Air]
type = ChangeState
value = 1203
triggerall = var(59) = 0
triggerall = var(55) > 100
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(54)=0         ;time stop
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 610
trigger2 = time > 17

;---------------------------------------------------------------------------

;[State -1, warp B Air cansel]
;type = ChangeState
;value = 1206
;triggerall = var(55) > 300
;triggerall = command = "421_b"
;triggerall = var(54)=0         ;time stop
;triggerall = statetype = A
;trigger1 = stateno = 610
;trigger1 = time > 12

;---------------------------------------------------------------------------

[State -1, charge]
type = ChangeState
value = 3012
triggerall = var(59) = 0
triggerall = command = "x"
;triggerall = command = "holddown"
;triggerall = NumHelper(3019) = 0         ;time stop
triggerall = statetype != A
triggerall = stateno != 100
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Atemi EX]
type = ChangeState
value = 1101
triggerall = var(59) = 0
triggerall = command = "QCB_c"
triggerall = var(54)=0       ;time stop
triggerall = power > 1000
triggerall = statetype != A
trigger1 =  ctrl = 1

;---------------------------------------------------------------------------
[State -1, Atemi]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = command = "QCB_a"  || command = "QCB_b"  ||command = "QCB_c"
triggerall = var(54)=0        ;time stop
triggerall = statetype != A
trigger1 =  ctrl = 1
;---------------------------------------------------------------------------
[State -1, 22c]
type = ChangeState
value = 1503
triggerall = var(59) = 0
triggerall = command =  "DD_c"
triggerall = statetype != A
triggerall = power > 2000
triggerall = NumHelper(1510) = 0
trigger1 =  ctrl = 1
trigger2 = stateno = [200,231];;立ち攻撃キャンセル
trigger2 = movecontact
trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
trigger3 = movecontact
trigger4 = stateno = 460;;エリアル開始キャンセル
trigger5 = stateno = 230
trigger5 = time > 23
trigger6 = stateno = 410
trigger6 = time > 20
trigger7 = stateno = 231
trigger7 = time > 15
;---------------------------------------------------------------------------
[State -1, 22a]
type = ChangeState
value = 1500
triggerall = var(59) = 0
triggerall =  command = "DD_a"
triggerall = statetype != A
trigger1 =  ctrl = 1
trigger2 = stateno = [200,231];;立ち攻撃キャンセル
trigger2 = movecontact
trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
trigger3 = movecontact
trigger4 = stateno = 460;;エリアル開始キャンセル
trigger5 = stateno = 230
trigger5 = time > 23
trigger6 = stateno = 410
trigger6 = time > 20
trigger7 = stateno = 231
trigger7 = time > 15
;---------------------------------------------------------------------------
[State -1, 22b]
type = ChangeState
value = 1502
triggerall = var(59) = 0
triggerall = command = "DD_b" || command = "DD_c"
triggerall = statetype != A
trigger1 =  ctrl = 1
trigger2 = stateno = [200,231];;立ち攻撃キャンセル
trigger2 = movecontact
trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
trigger3 = movecontact
trigger4 = stateno = 460;;エリアル開始キャンセル
trigger5 = stateno = 230
trigger5 = time > 23
trigger6 = stateno = 410
trigger6 = time > 20
trigger7 = stateno = 231
trigger7 = time > 15
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl



;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = var(54)=0         ;time stop
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
[State -1, air 6C]
type = ChangeState
value = 550
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = NumHelper(251) = 0
triggerall = stateno != 100
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, 4C]
type = ChangeState
value = 262
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holdback"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,300]
trigger2 = movecontact
trigger3 = stateno = [400,430]
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = time > 23
trigger5 = stateno = 410
trigger5 = time > 22
trigger6 = stateno = 231
trigger6 = time > 10

;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, a]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(54)=0         ;time stop
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 5

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, b]
type = ChangeState
value = 300
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(54)=0         ;time stop
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact


;---------------------------------------------------------------------------
[State -1, c]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, c movecontact]
type = ChangeState
value = 231
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = movecontact
trigger1 = stateno = [200 , 210]
trigger2 = stateno = [400 , 430]
trigger3 = stateno = 300
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching a]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(54)=0        ;time stop
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 ||  stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching b]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 ||  stateno = 400
trigger2 = movecontact
trigger3 = stateno = 300
trigger3 = movecontact

;---------------------------------------------------------------------------
[State -1, Crouching 1c]
type = ChangeState
value = 440
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = command = "holdback"
triggerall = NumHelper(441) < 3
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Crouching 3c]
type = ChangeState
value = 460
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
triggerall = var(54)=0         ;time stop
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,300]
trigger2 = movecontact
trigger3 = stateno = [400,430]
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = time > 23
trigger5 = stateno = 410
trigger5 = time > 22
trigger6 = stateno = 231
trigger6 = time > 15

;---------------------------------------------------------------------------
[State -1, Crouching c]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = ProjHit = 1, < 15
trigger2 = stateno = [230,231]
trigger3 = stateno = [200,300]
trigger3 = movecontact
trigger4 = stateno = [400,430]
trigger4 = movecontact


;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump a]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = var(54)=0        ;time stop
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 620
;trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump b]
type = ChangeState
value = 630
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = var(54)=0         ;time stop
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
;trigger2 = movecontact
trigger2 = stateno = 620
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Jump c]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [620 , 630]
trigger2 = movecontact





































































;==============================================================================
;==============================================================================
;AI関連
;==============================================================================

;AIスイッチ--------------------------------
[State AIスイッチON]
Type = VarSet
TriggerAll = !Var(59)
TriggerAll = RoundState = [1,2]
Trigger1 = (Command = "AI00") || (Command = "AI01") || (Command = "AI02") || (Command = "AI03") || (Command = "AI04")
Trigger2 = (Command = "AI05") || (Command = "AI06") || (Command = "AI07") || (Command = "AI08") || (Command = "AI09")
Trigger3 = (Command = "AI10") || (Command = "AI11") || (Command = "AI12") || (Command = "AI13") || (Command = "AI14")
Trigger4 = (Command = "AI15") || (Command = "AI16") || (Command = "AI17") || (Command = "AI18") || (Command = "AI19")
Trigger5 = (Command = "AI20") || (Command = "AI21") || (Command = "AI22") || (Command = "AI23") || (Command = "AI24")
Trigger6 = (Command = "AI25") || (Command = "AI26") || (Command = "AI27") || (Command = "AI28") || (Command = "AI29")
Trigger7 = (Command = "AI30") || (Command = "AI31") || (Command = "AI32") || (Command = "AI33") || (Command = "AI34")
Trigger8 = (Command = "AI35") || (Command = "AI36") || (Command = "AI37") || (Command = "AI38") || (Command = "AI39")
Trigger9 = (Command = "AI40") || (Command = "AI41") || (Command = "AI42") || (Command = "AI43") || (Command = "AI44")
Trigger10 = (Command = "AI45") || (Command = "AI46") || (Command = "AI47") || (Command = "AI48") || (Command = "AI49")
Trigger11 = (Command = "AI50") || (Command = "AI51") || (Command = "AI52") || (Command = "AI53") || (Command = "AI54")
Trigger12 = (Command = "AI55") || (Command = "AI56") || (Command = "AI57") || (Command = "AI58") || (Command = "AI59")
Trigger13 = Command = "AI60"
;Trigger14 = 1	;行頭のセミコロンを外せば常時AI起動になります
var(59) = 1110110
;レベル設定
;一桁目     … ダミー。変更する必要無し。
;二桁目     … タッグスイッチ(1=オン　0=オフ)
;三～四桁目 … ガードレベル設定。高くすればするほどガード精度は上がります。目安としては10レベルが対人最高レベルを想定しており、25程度で最高速度でそれ以上は同じです。
;              1～9に設定の際は01,02のように表記して十の桁を飛ばさないこと。
;五桁目     … 固め、崩し設定(1=対人　0=対AI)
;六、七桁目 … 基本レベル設定。1～10で設定。1～9に設定の際は01,02のように表記して十の桁を飛ばさないこと。

;・設定例
;var(59) = 1110110
;タッグスイッチ  　　　　…　オン
;ガードレベル設定　　　　…　10
;固め、崩し設定       　 …　対人
;AIレベル　　　　　　　　…　10
;
;var(59) = 1005003
;タッグスイッチ  　　　　…　オフ
;ガードレベル設定　　　　…　5
;固め、崩し設定       　 …　AI
;AIレベル　　　　　　　　…　3
;
;var(59) = 1102108
;タッグスイッチ  　　　　…　オン
;ガードレベル設定　　　　…　2
;固め、崩し設定       　 …　対人
;AIレベル　　　　　　　　…　8






;ボイスパッチ設定
[State -1]
type = VarSet
trigger1 = var(57) <= 1
V = 57
Value = 1
;ON  = 1
;OFF = 0


;========================================================================
;AI用ヘルパー召還
;========================================================================
[state -2]
type = Helper
TriggerAll = Var(59) > 0
trigger1 = numhelper(12500) = 0
trigger1 = roundstate = 2
trigger1 = !ishelper
helpertype = normal
name = "AI"
ID = 12500
keyctrl = 0
stateno = 12500
postype = p1
pos = 0,-50
ownpal = 1
supermovetime = 9999999999
pausemovetime = 9999999999




;========================================================================
;コンボ・立ち回り用var管理[var(58)]
;========================================================================
;3Cヒット
[State -1]
type = VarSet
triggerall = (var(59)%100) > 3
triggerall = NumHelper(461) > 0
trigger1 = helper(461),movehit
V = 58 
Value = 1
;EXアサルト後拾い直し
[State -1]
type = VarSet
triggerall = (var(59)%100) > 3
trigger1 = stateno = 652
V = 58 
Value = 2


;迫撃砲設置
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
trigger1 = var(58) = [1,2]
trigger1 = stateno = 1001
V = 58 
Value = 3






;迫撃砲コンボ
[State -1]
type = VarSet
triggerall = (var(59)%100) > 3
triggerall = var(58) != [3,5]
Trigger1 = statetype != A
trigger1 = stateno = 1067
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger1 = prevstateno = 231
trigger1 = time = 3
V = 58 
Value = 4
[State -1]
type = VarAdd
triggerall = var(59) > 3
triggerall = (var(58) = [4,5])
Trigger1 = statetype != A
trigger1 = stateno = 1067
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger1 = prevstateno = 231
trigger1 = time = 4
V = 58 
Value = -1


;EX迫撃砲後
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
trigger1 = stateno = 3020
trigger1 = p2bodydist y < -70
trigger1 = p2movetype = H
trigger2 = stateno = 1060
trigger2 = var(58) = 7
trigger2 = time > 1
trigger2 = (p2bodydist y < -480)
trigger2 = enemynear,vel y < 0
trigger2 = numhelper(1061) < 2
V = 58 
Value = 6
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
trigger1 = stateno = 1060
trigger1 = var(58) = 6
trigger1 = time = 1
trigger1 = numhelper(1061) >= (p2bodydist y < -480)
V = 58 
Value = 7
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
trigger1 = stateno = 1067
trigger1 = var(58) = 7
trigger1 = time = 2
V = 58 
Value = 3



;varリセット
[State -1]
type = VarSet
triggerall = (var(59)%100) > 0
triggerall = var(58) < 100
trigger1 = P2movetype != H || movetype = H && (stateno != [120,155])
trigger2 = stateno = 52 || stateno = 653 || stateno = 610 && power < 850
trigger2 = var(58) = 1
trigger3 = (stateno = 1060 || stateno = 1067 || stateno = 550 || stateno=440)&&(time=1) || stateno = 3020
trigger3 = var(58) = 3
V = 58
Value = 0

;------------------------------------------------------------------------------
;立ち回り
;立ち回り-空ダ
[State -1]
type = VarSet
triggerall = (var(59)%100) > 3
triggerall = var(58) = 0
TriggerAll = !(inguarddist) && (P2movetype!=A)
trigger1 = NumHelper(1510) = 0
Trigger1 = P2movetype != H || (enemynear,stateno = [120,155])
trigger1 = P2bodydist X = [(25-(p2movetype=H||p2statetype=L)*40),100]
trigger1 = P2statetype != L
trigger1 = (statetype != A)
trigger1 = (ctrl) || (StateNo=[100,102])
trigger1 = Random = [85*(var(59)%100),100*(var(59)%100)]
trigger1 = stateno != 102 || (random%12 >= floor(50/var(59)))
trigger1 = gametime%10 <= (var(59)%100)
V = 58
Value = 100



;jA被ガード後
;再度中段
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) = 0
triggerall = floor(var(59)/100%10) = 1
trigger1 = NumHelper(1510) = 0
Trigger1 = gametime%5 = 1
trigger1 = stateno = 620
trigger1 = moveguarded
trigger1 = Random = [0*(var(59)%100),100*(var(59)%100)]
V = 58
Value = 100
;下段
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) = 0
trigger1 = NumHelper(1510) = 0
Trigger1 = gametime%5 = 2
trigger1 = stateno = 620
trigger1 = moveguarded
trigger1 = Random = [0*(var(59)%100),100*(var(59)%100)]
V = 58
Value = 101
;様子見
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) = 0
triggerall = floor(var(59)/100%10) = 1
trigger1 = NumHelper(1510) = 0
Trigger1 = gametime%5 = 3
trigger1 = stateno = 620
trigger1 = moveguarded
trigger1 = Random = [0*(var(59)%100),100*(var(59)%100)]
V = 58
Value = 102
;めくり
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) = 0
triggerall = floor(var(59)/100%10) = 1
trigger1 = NumHelper(1510) = 0
Trigger1 = var(55) > 100
Trigger1 = gametime%5 = 4
trigger1 = stateno = 620
trigger1 = moveguarded
trigger1 = Random = [0*(var(59)%100),100*(var(59)%100)]
V = 58
Value = 103
;投げ
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) = 0
trigger1 = NumHelper(1510) = 0
Trigger1 = gametime%5 = 0
trigger1 = stateno = 620
trigger1 = moveguarded
trigger1 = Random = [0*(var(59)%100),100*(var(59)%100)]
V = 58
Value = 104



;暴れ
[State -1]
type = VarSet
triggerall = (var(59)%100) > 3
triggerall = var(58) = 106
trigger1 = power >= 1000
trigger1 = stateno = [150,155]
trigger1 = time = 1
trigger1 = P2movetype = A
trigger1 = Random = [0*(var(59)%100),60*(var(59)%100)]
Trigger1 = var(58) = 106
trigger1 = P2BodyDist X < 70
trigger1 = (P2bodydist y > -50)&&(enemynear,vel y >= -2) || (P2statetype != A)
trigger1 = (power >= 1000) || (gametime%4=0)
V = 58
Value = 105
;対固め&差込&ホールド
[State -1]
type = VarSet
triggerall = (var(59)%100) > 3
triggerall = var(58) = 0
trigger1 = stateno = [150,155]
trigger1 = P2movetype = A
trigger1 = time = 1
V = 58
Value = 106


;ダッシュワープめくり
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) = 0
triggerall = floor(var(59)/100%10) = 1
trigger1 = NumHelper(1510) = 0
Trigger1 = var(55) > 450
trigger1 = P2BodyDist X = [(-25+35*(p2movetype=H&&(enemynear,stateno!=[120,149]))),40]
trigger1 = Random = [(100-floor(var(55)/7))*(var(59)%100),100*(var(59)%100)]
trigger1 = (enemynear,time <= 3)||(enemynear,ctrl = 1)&&(P2movetype!=A)
trigger1 = (P2bodydist y > -40) && (enemynear,vel y > 0) || (P2statetype != A)
trigger1 = !(enemynear,movecontact) || (P2movetype != A)
trigger1 = (enemynear,facing != facing)&&(enemynear,vel x >= -2) || (p2movetype != A)
trigger1 = p2movetype != H || (enemynear,stateno = [120,155])
trigger1 = enemynear,backedgebodydist > 13
V = 58
Value = 107





;低空アサルトライフル
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) = 0
Triggerall = RoundState = 2
triggerall = statetype != A
triggerall = Ctrl || (stateno=102)
trigger1 = (P2statetype!=A)||(P2BodyDist y > -40)&&(enemynear,vel y > 0)
trigger1 = P2BodyDist X > (65-(p2statetype = L||p2movetype=H)*30)
trigger1 = (Random = [50*(var(59)%100),60*(var(59)%100)])
trigger1 = (var(58) = 0)
trigger1 = statetype != A
trigger1 = p2movetype != H || (enemynear,stateno = [120,155]) || (p2bodydist x > 90) && var(55) < 800
trigger1 = p2statetype = L && (p2bodydist x > 60) && var(55) < 800 || (enemynear,stateno = 5120) || p2statetype != L
trigger1 = numhelper(1061) = 0 || p2statetype = L || p2bodydist x > 140
V = 58
Value = 108




;2A被ガード後
;投げ
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) != 100 && (var(58) != [109,111])
triggerall = floor(var(59)/100%10) = 1
trigger1 = stateno = 400
trigger1 = moveguarded = 1
trigger1 = gametime%6 = 0
V = 58
Value = 109
;固め継続のための微ダッシュ
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) != 100 && (var(58) != [109,111])
triggerall = floor(var(59)/100%10) = 1
trigger1 = stateno = 400
trigger1 = moveguarded = 1
trigger1 = gametime%6 = [1,2]
V = 58
Value = 110
;時止め
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) != 100 && (var(58) != [109,111])
triggerall = floor(var(59)/100%10) = 1
trigger1 = stateno = 400
trigger1 = moveguarded = 1
trigger1 = gametime%6 = [2,3]
trigger1 = power >= 3000
trigger2 = stateno = 1203
trigger2 = random%3 = 0
trigger2 = power >= 3000
trigger2 = p2statetype != A || p2bodydist y > -40 && (enemynear,vel y > 0)
V = 58
Value = 111
;中段
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) != 100 && (var(58) != [109,111])
triggerall = floor(var(59)/100%10) = 1
trigger1 = stateno = 400
trigger1 = moveguarded = 1
trigger1 = gametime%6 = [4,5]
V = 58
Value = 100



;時止め時のコンボ
[State -1]
type = VarSet
triggerall = (var(59)%100) > 3
Trigger1 = p2bodydist y > -40 || p2statetype != A
trigger1 = stateno = 3010
trigger1 = var(54) > 0
trigger1 = Random = [0*(var(59)%100),100*(var(59)%100)]
Trigger2 = statetype != A
trigger2 = P2BodyDist X = [-20,55]
trigger2 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger2 = (var(58) = 113)
trigger2 = var(54) > 0
trigger2 = var(55) < 350
trigger2 = p2statetype != A
V = 58
Value = 112
[State -1]
type = VarSet
triggerall = (var(59)%100) > 3
Trigger1 = (p2bodydist y = [-230,-40]) || p2statetype = C && var(55) >= 350
trigger1 = stateno = 3010
trigger1 = var(54) > 0
trigger1 = Random = [0*(var(59)%100),100*(var(59)%100)]
V = 58
Value = 113




;飛び込み
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) = 0
TriggerAll = !(inguarddist) && (P2movetype!=A)
triggerall = var(55) > 600
triggerall = floor(var(59)/100%10) = 1
trigger1 = NumHelper(1510) = 0
Trigger1 = P2movetype != H || (enemynear,stateno = [120,155])
trigger1 = P2bodydist X = [100,180]
trigger1 = P2statetype != L || (enemynear,stateno = 5120)
trigger1 = (statetype != A)
trigger1 = (ctrl) || (StateNo=102)
trigger1 = (enemynear,facing != facing)
trigger1 = Random = [96*(var(59)%100),100*(var(59)%100)]
V = 58
Value = 114
;普通
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) = 114
triggerall = var(55) > 600
triggerall = floor(var(59)/100%10) = 1
Trigger1 = gametime%7 = 1
trigger1 = Random = [0*(var(59)%100),100*(var(59)%100)]
V = 58
Value = 115
;バックダッシュ
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) = 114
triggerall = var(55) > 600
triggerall = floor(var(59)/100%10) = 1
Trigger1 = gametime%7 = 0
trigger1 = Random = [0*(var(59)%100),100*(var(59)%100)]
V = 58
Value = 116
;ワープ着地
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) = 114
triggerall = var(55) > 600
triggerall = floor(var(59)/100%10) = 1
Trigger1 = var(55) > 100
Trigger1 = gametime%7 = 4 || gametime%7 = 2
trigger1 = Random = [0*(var(59)%100),100*(var(59)%100)]
V = 58
Value = 117
;ワープ後ろ
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) = 114
triggerall = floor(var(59)/100%10) = 1
Trigger1 = var(55) > 600
Trigger1 = gametime%7 = 5 || gametime%7 = 3
trigger1 = Random = [0*(var(59)%100),100*(var(59)%100)]
V = 58
Value = 118
;ワープ後ろ
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) = 114
triggerall = floor(var(59)/100%10) = 1
Trigger1 = var(55) > 600
Trigger1 = gametime%7 = 6
trigger1 = Random = [0*(var(59)%100),100*(var(59)%100)]
V = 58
Value = 119


;端脱出ワープ
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) = 0
triggerall = var(55) > 500
trigger1 = NumHelper(1510) = 0
trigger1 = P2BodyDist X = [40,85]
trigger1 = Random = [60*(var(59)%100),95*(var(59)%100)]
trigger1 = backedgebodydist < 5
trigger1 = P2movetype != H
trigger1 = (P2bodydist y > -85) || (P2statetype != A)
trigger1 = !(enemynear,movecontact) || (P2movetype != A)
trigger1 = (enemynear,facing != facing)&&(enemynear,vel x >= -2)
trigger1 = (enemynear,time <= 3)||(enemynear,ctrl = 1)&&(P2movetype!=A)
trigger2 = NumHelper(1510) = 0
trigger2 = P2BodyDist X = [40,85]
trigger2 = Random = [0*(var(59)%100),100*(var(59)%100)]
trigger2 = backedgebodydist < 15
trigger2 = P2movetype != H
trigger2 = stateno = 5120
trigger2 = animtime >= -2
trigger2 = random%2 = 0
V = 58
Value = 120





;投げ狙い
[State -1]
type = VarSet
triggerall = (var(59)%100) > 6
triggerall = var(58) = 0
trigger1 = stateno = 1060; || stateno = 1067
trigger1 = time = 20
trigger1 = p2statetype = L || (enemynear,stateno = [120,155])
trigger1 = p2bodydist x = [-20,100]
trigger1 = Random = [0*(var(59)%100),100*(var(59)%100)]
trigger1 = gametime%3 = 0
V = 58
Value = 109








;varリセット
[State -1]
type = VarSet
triggerall = (var(59)%100) > 0
triggerall = var(58) >= 100
trigger1 = (stateno = 110) || ((((helper(12500*(numhelper(12500)>0)),var(59))-(enemynear,time)) >= 25) && (p2dist x > 5)) ||(stateno=115) || (movetype=H)&&(stateno!=[120,155]) || stateno = 650
trigger1 = var(58) = 100
trigger2 = (stateno = 400) || ((((helper(12500*(numhelper(12500)>0)),var(59))-(enemynear,time)) >= 25) && (p2dist x > 5)) || (movetype=H)&&(stateno!=[120,155]) || stateno = 650
trigger2 = var(58) = 101
trigger3 = (stateno = 52) || (inguarddist) || (movetype=H)&&(stateno!=[120,155]) || stateno = 650
trigger3 = var(58) = 102
trigger4 = (stateno = 101) || ((((helper(12500*(numhelper(12500)>0)),var(59))-(enemynear,time)) >= 25) && (p2dist x > 5)) || (movetype=H)&&(stateno!=[120,155]) || stateno = 650
trigger4 = var(58) = 103
trigger5 = (stateno = [800,810]) || (movetype=H)&&(stateno!=[120,155]) || stateno = 650
trigger5 = var(58) = 104
trigger6 = (stateno = 3020)||(P2BodyDist X>=70)||(movetype=H)&&(stateno!=[120,155])||(power<1000)||(enemynear,vel x<-1)||(enemynear,time>=20)&&(P2movetype!=A)
trigger6 = var(58) = 105
trigger7 = (P2movetype != A)&&(movetype!=H)&&(prevstateno != [120,155])
trigger7 = var(58) = 106
trigger8 = (stateno = 101) || (movetype=H)&&(stateno!=[120,155]) || (p2bodydist x >= 45)
trigger8 = var(58) = 107
trigger9 = (stateno = 650) || (inguarddist)||(stateno=52) || (movetype=H)&&(stateno!=[120,155])
trigger9 = var(58) = 108
trigger10 = (stateno = [800,810]) || (movetype=H)&&(stateno!=[120,155]) || (numhelper(1061) = 0)&&(p2movetype = H)&&(p2statetype = A) || (ctrl || stateno = 102)&&((enemynear,stateno=150)||(enemynear,stateno=152))&&(enemynear,time <= 2)
trigger10 = var(58) = 109
trigger11 = (stateno = 400)&&(time <= 1) || ((((helper(12500*(numhelper(12500)>0)),var(59))-(enemynear,time)) >= 25) && (p2dist x > 5)) || (movetype=H)&&(stateno!=[120,155])
trigger11 = var(58) = 110
trigger12 = (stateno = 3010) || ((((helper(12500*(numhelper(12500)>0)),var(59))-(enemynear,time)) >= 25) && (p2dist x > 5)) || (movetype=H)&&(stateno!=[120,155])
trigger12 = var(58) = 111
trigger13 = (var(54) = 0)&&((p2movetype!=H)||(enemynear,stateno=[120,155])||(statetype!=A)&&(stateno!=[40,41]))
trigger13 = var(58) = [112,113]
trigger14 = (stateno = 52) || (stateno = 620) || (stateno = [1203,1205]) || (movetype=H)&&(stateno!=[120,149]) || (p2movetype=H)&&(enemynear,stateno!=[120,149])
trigger14 = var(58) = [114,119]
trigger15 = (stateno = 1200) || (movetype=H)&&(stateno!=[120,149]) || (p2movetype=H)&&(enemynear,stateno!=[120,149]) || p2bodydist x < 30
trigger15 = var(58) = 120
V = 58
Value = 0
;------------------------------------------------------------------------------
















;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
triggerall = var(54)=0       ;time stop
triggerall = p2movetype != H
triggerall = p2bodydist X < 5
trigger1 = (enemynear,stateno != [40,45])&&(P2statetype!=A)
trigger1 = P2BodyDist X = [-30,5]
trigger1 = (var(58) = 0)&&(Random = [50*(var(59)%100),90*(var(59)%100)])
trigger1 = p2movetype != H || (enemynear,stateno=[120,149]); || (enemynear,GetHitVar(hittime)<=2)&&(P2movetype=H)&&(P2statetype!=A)&&(var(57) = 104)
trigger1 = (enemynear,vel x = [-4,4]) || (enemynear,stateno < 200)
trigger1 = enemynear,facing != facing
trigger2 = (Random = [0*(var(59)%100),50*(var(59)%100)])
trigger2 = (var(58) = 104) || var(58) = 109
trigger2 = statetype != A
trigger2 = p2movetype != H
trigger2 = enemynear,stateno != [150,155]
trigger2 = P2BodyDist X = [-30,5]


;---------------------------------------------------------------------------
;421C
[State -1, warp A]
type = ChangeState
value = 1200
triggerall = var(54)=0       ;time stop
triggerall = statetype != A
triggerall = stateno != 100
triggerall = ctrl || stateno = 102
TriggerAll = (var(59)%100) > 3
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = var(55) > 500
trigger1 = NumHelper(1510) = 0
trigger1 = P2BodyDist X > 40
trigger1 = Random = [85*(var(59)%100),95*(var(59)%100)]
trigger1 = (enemynear,time <= 3)||(enemynear,ctrl = 1)&&(P2movetype!=A)
trigger1 = P2movetype != H
trigger1 = (P2bodydist y > -40) && (enemynear,vel y > 0) || (P2statetype != A)
trigger1 = !(enemynear,movecontact) || (P2movetype != A)
trigger1 = (enemynear,facing != facing)&&(enemynear,vel x >= -2)
trigger1 = enemynear,backedgebodydist = [15,(180-9*(var(59)%100))]
trigger1 = gametime%10 <= (var(59)%100)
trigger2 = NumHelper(1510) = 0
trigger2 = (P2statetype!=A)||(P2BodyDist y > -40)&&(enemynear,vel y > 0)
trigger2 = P2BodyDist X > 105
trigger2 = (Random = [68*(var(59)%100),70*(var(59)%100)])
trigger2 = (var(58) = 0)
trigger2 = statetype != A
trigger2 = p2movetype != H || (enemynear,stateno = [120,155])
trigger3 = NumHelper(1510) = 0
trigger3 = P2BodyDist X > 80
trigger3 = Random = [45*(var(59)%100),95*(var(59)%100)]
trigger3 = (enemynear,time >= (55-(var(59)%100)*3)) || var(59) = 11
trigger3 = enemynear,animtime < -6
trigger3 = P2movetype != H
trigger3 = (P2bodydist y > -40) && (enemynear,vel y > 0) || (P2statetype != A)
trigger3 = !(enemynear,movecontact) && (P2movetype = A)
trigger3 = (enemynear,facing != facing)&&(enemynear,vel x >= -4)
trigger3 = enemynear,backedgebodydist = [15,90]
trigger4 = NumHelper(1510) != 0
trigger4 = P2BodyDist X < 80+(enemynear,vel x)*6
trigger4 = Random = [45*(var(59)%100),95*(var(59)%100)]
trigger4 = P2movetype != H || (enemynear,stateno = [120,155])
trigger4 = (P2bodydist y > -60) || (enemynear,vel y > -2)
trigger4 = enemynear,vel x >= 0
trigger4 = (enemynear,facing != facing)
trigger4 = frontedgebodydist > 80
trigger5 = NumHelper(1510) = 0
trigger5 = P2BodyDist X > 40
trigger5 = Random = [45*(var(59)%100),95*(var(59)%100)]
trigger5 = numhelper(12500) > 0
trigger5 = helper(12500),var(59) >= (55-(3*(var(59)%100)))
trigger5 = (P2statetype != A)
trigger5 = (P2movetype = A) && !(enemynear,movecontact)
trigger5 = (enemynear,facing != facing)&&(enemynear,vel x >= -2)
trigger5 = enemynear,backedgebodydist = [15,(180-9*(var(59)%100))]
;端脱出
trigger6 = Random = [0*(var(59)%100),100*(var(59)%100)]
trigger6 = var(58) = 120
;暴れ
trigger7 = 0
trigger7 = (var(59)%100) > 5
trigger7 = (statetype != A)&&(ctrl || stateno = 102)
trigger7 = Random = [0*(var(59)%100),100*(var(59)%100)]
Trigger7 = var(58) = 105
trigger7 = P2BodyDist X = [-15,85]
trigger7 = (P2bodydist y > -55)&&(enemynear,vel y > -1.5) || p2statetype != A
trigger7 = gametime%3 != 0
trigger7 = backedgebodydist < 20 || frontedgebodydist > 120
trigger7 = ctrl || stateno = 102



;---------------------------------------------------------------------------
;236C
[State -1, RPG-7 EX]
type = ChangeState
value = 1002
triggerall = statetype != A
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L
triggerall = power > 1000
;暴れ
trigger1 = (var(59)%100) > 5
trigger1 = (statetype != A)&&(ctrl || stateno = 102)
trigger1 = Random = [0*(var(59)%100),100*(var(59)%100)]
Trigger1 = var(58) = 105
trigger1 = P2BodyDist X = [15,55]
trigger1 = (P2bodydist y > -55)&&(enemynear,vel y > -1.5)
trigger1 = gametime%3 != 0
trigger1 = ctrl || stateno = 102
;読み
trigger2 = P2BodyDist X = [15,85]
trigger2 = Random = [90*(var(59)%100),92*(var(59)%100)]
trigger2 = (enemynear,time <= 3)||(enemynear,ctrl = 1)&&(P2movetype!=A)
trigger2 = P2movetype != H
trigger2 = (P2bodydist y > -55)&&(enemynear,vel y > -1.5)
trigger2 = !(enemynear,movecontact) || (P2movetype != A)
trigger2 = (enemynear,facing != facing)&&(enemynear,vel x >= -2)
trigger2 = ctrl  || stateno = 102
trigger2 = var(58) = 0
trigger2 = numhelper(1061) = 0



;trigger1 = ctrl = 1
;trigger2 = stateno = [200,231];;立ち攻撃キャンセル
;trigger2 = movecontact
;trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
;trigger3 = movecontact
;trigger4 = stateno = 460;;エリアル開始キャンセル
;trigger5 = stateno = 230
;trigger5 = time > 20
;trigger6 = stateno = 410
;trigger6 = time > 20
;trigger7 = stateno = 231
;trigger7 = time > 12
;---------------------------------------------------------------------------
[State -1, Atemi EX]
type = ChangeState
value = 1101
triggerall = power > 1000
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = var(54)=0       ;time stop
triggerall = statetype != A
triggerall =  ctrl || stateno = 102
trigger1 = P2BodyDist X = [-25,65]
trigger1 = Random = [90*(var(59)%100),95*(var(59)%100)]
trigger1 = (enemynear,time <= 3)||(enemynear,ctrl = 1)&&(P2movetype!=A)
trigger1 = P2movetype != H
trigger1 = (P2statetype != A)
trigger1 = !(enemynear,movecontact) || (P2movetype != A)
trigger1 = (enemynear,facing != facing)&&(enemynear,vel x >= -2)
trigger1 = numhelper(1061) = 0

;---------------------------------------------------------------------------
;214A
[State -1, Atemi]
type = ChangeState
value = 1100
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = var(54)=0       ;time stop
triggerall = statetype != A
triggerall =  ctrl || stateno = 102
trigger1 = P2BodyDist X = [(-5+(var(59)%100)*4),45]
trigger1 = Random = [(40+((var(59)%100)*5))*(var(59)%100),91*(var(59)%100)]
trigger1 = (enemynear,time <= 2)||(enemynear,ctrl = 1)&&(P2movetype!=A)
trigger1 = P2movetype != H
trigger1 = (P2statetype != A)
trigger1 = !(enemynear,movecontact) || (P2movetype != A)
trigger1 = (enemynear,facing != facing)&&(enemynear,vel x >= -2)
trigger1 = numhelper(1061) = 0

;---------------------------------------------------------------------------
;jC
[State -1, Jump c]
type = ChangeState
value = 610
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L || (enemynear,stateno = 5120)
Triggerall = RoundState = 2
trigger1 = stateno = 630
trigger1 = movecontact
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = (Random = [0*(var(59)%100),50*(var(59)%100)])
trigger2 = (p2movetype = A) || (enemynear,ctrl = 1)&&(var(58) = 0)
trigger2 = (floor(-0.8*(enemynear,animtime)) <= (enemynear,time)) || (enemynear,time <= 3) || (enemynear,ctrl = 1)&&(var(58) = 0) || (vel y = [-1,1])
trigger2 = p2statetype != A
trigger2 = p2bodydist x = [(0-floor((pos y)/2)),(90-floor((pos y)/2))]
trigger2 = pos y < -55
trigger3 = var(58) = 0
trigger3 = stateno = 1210
trigger3 = (time = [2,5])&&(gametime%4 = [0,2]) || time = 6 && !(inguarddist) && p2bodydist x > 60
trigger3 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger3 = p2bodydist x = [(0-floor((pos y)/2)),(90-floor((pos y)/2))]
trigger4 = statetype = A
trigger4 = ctrl
trigger4 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger4 = (var(58) = 112) || var(58) = 113 && p2statetype = C




;trigger1 = statetype = A
;trigger1 = ctrl
;trigger2 = stateno = 600
;trigger3 = stateno = 630
;trigger3 = movecontact
;---------------------------------------------------------------------------
[State -1, Warp shot EX]
type = ChangeState
value = 1410
triggerall = statetype != A
triggerall = power > 2000
triggerall = var(55) > 300
triggerall = var(54)=0         ;time stop
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 =  ctrl || stateno = 102
trigger1 = P2BodyDist X = [75-(p2movetype=H)*20,185]
;trigger1 = Random = [80*(var(59)%100),100*(var(59)%100)]
trigger1 = (enemynear,time <= 3)||(enemynear,ctrl = 1)&&(P2movetype!=A)
trigger1 = P2movetype != H
trigger1 = (P2bodydist y > -50) && (enemynear,vel y > 0) || (P2statetype != A)
trigger1 = !(enemynear,movecontact) || (P2movetype != A)
trigger1 = enemynear,backedgebodydist > 6
trigger1 = numhelper(1061) = 0
trigger2 = 0
trigger2 = stateno = [1060,1067]
trigger2 = P2BodyDist X = [20,130]
trigger2 = Random = [0*(var(59)%100),50*(var(59)%100)]
trigger2 = var(58) = 3
trigger2 = enemynear,vel y > 0
trigger2 = p2bodydist y > -50
trigger2 = time >= 35




;trigger1 = ctrl = 1
;trigger2 = stateno = 230
;trigger3 = stateno = 231
;trigger4 = stateno = [410 , 460 ]
;trigger5 = stateno = [1000,1001]
;trigger6 = stateno = [1060,1067]


;---------------------------------------------------------------------------
;(飛び込み用)
;空中弱パンチ
[State -1, Jump a]
type = ChangeState
value = 620
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L || (enemynear,stateno = 5120)
Triggerall = RoundState = 2
triggerall = var(54)=0       ;time stop
triggerall = statetype = A
triggerall = ctrl
trigger1 = !(inguarddist)
trigger1 = (P2BodyDist y=[-38,(50+(vel y*12))]) || pos y > -75 && p2statetype != A && (vel y >= 0||(stateno=110))
trigger1 = P2BodyDist X = [-45,(40+(vel x*9))]
trigger1 = (Random = [0*(var(59)%100),70*(var(59)%100)])
trigger1 = var(58) = 115

;421B
[State -1]
type = ChangeState
value = 1203
TriggerAll = (var(59)%100) > 0
triggerall = var(55) > 100
Triggerall = RoundState = 2
triggerall = var(54)=0       ;time stop
triggerall = statetype = A
triggerall = ctrl
trigger1 = !(inguarddist)
trigger1 = vel y >= 1.2
trigger1 = (Random = [0*(var(59)%100),70*(var(59)%100)])
trigger1 = var(58) = 117

;421A
[State -1]
type = ChangeState
value = 1205
triggerall = var(54)=0       ;time stop
TriggerAll = (var(59)%100) > 0
triggerall = var(55) > 100
Triggerall = RoundState = 2
triggerall = statetype = A
triggerall = ctrl
trigger1 = !(inguarddist)
trigger1 = vel y >= 1.2
trigger1 = (Random = [0*(var(59)%100),70*(var(59)%100)])
trigger1 = var(58) = 116

;421C
[State -1]
type = ChangeState
value = 1204
triggerall = var(55) > 300
triggerall = var(54)=0       ;time stop
triggerall = statetype = A
triggerall = ctrl = 1
TriggerAll = (var(59)%100) > 0
Triggerall = RoundState = 2
trigger1 = !(inguarddist)
trigger1 = vel y >= 1.2
trigger1 = (Random = [0*(var(59)%100),70*(var(59)%100)])
trigger1 = var(58) = 118


;jC
[State -1, Jump c]
type = ChangeState
value = 610
TriggerAll = (var(59)%100) > 0
Triggerall = RoundState = 2
trigger1 = !(inguarddist)
trigger1 = vel y >= 1.2
trigger1 = (Random = [0*(var(59)%100),70*(var(59)%100)])
trigger1 = var(58) = 119



;------------------------------------------------------------------------------
;タッグ
[State -1]
Type = ChangeState
Value = 120
TriggerAll = (var(59)%100) > 0
TriggerAll = RoundState = 2
TriggerAll = ctrl || stateno = 102
triggerall = floor(var(59)/1000000%10) = 1
Triggerall = (enemynear,teammode = simul)
triggerall = NumEnemy >= 2
Triggerall = numhelper(12500) > 0
Triggerall = inguarddist || ((helper(12500),inguarddist = 1) || p2bodydist x >= 100&&(p2movetype=A))|| (enemynear,numproj > 0)
Triggerall = Random <= (var(59)%100)*(var(59)%100)*10
triggerall = (((helper(12500),var(59))-(enemynear,time)) <= 15) || (enemynear,HitDefAttr != SC,AT)
trigger1 = (enemynear(0),alive = 1) && (enemynear(1),alive = 1)
trigger1 = (enemynear(0),facing = facing)&&(enemynear(1),facing != facing)
trigger1 = (abs((enemynear(1),pos x) - (pos x)) < 85)
trigger2 = (enemynear(0),alive = 1) && (enemynear(1),alive = 1)
trigger2 = (enemynear(0),facing != facing)&&(enemynear(1),facing != facing)
trigger3 = (enemynear(0),alive = 0)
trigger3 = (enemynear(1),facing = facing)
trigger3 = inguarddist || (helper(12500),inguarddist = 1)
trigger4 = (enemynear(1),alive = 0)
trigger4 = (enemynear(0),facing = facing)
trigger4 = inguarddist || (helper(12500),inguarddist = 1)


;シングル用
;guard
[State -1]
Type = ChangeState
Value = 120
TriggerAll = (var(59)%100) > 0
TriggerAll = RoundState = 2
TriggerAll = ctrl || stateno = 102
triggerall = (var(54) = 0)
Trigger1 = (enemynear,teammode = single) || (enemynear,teammode = turns) || (floor(var(59)/1000000%10) = 0)
Trigger1 = numhelper(12500) > 0
Trigger1 = inguarddist || ((helper(12500),inguarddist = 1) || p2bodydist x >= 100&&(p2movetype=A))|| (enemynear,numproj > 0)
Trigger1 = Random <= (var(59)%100)*(var(59)%100)*10
trigger1 = (((helper(12500),var(59))-(enemynear,time)) <= 15) || (enemynear,HitDefAttr != SC,AT) || p2bodydist x >= 65
trigger1 = ((var(58) != [100,104]) || var(58) = 102) && ((var(58) != [105,107])||(var(58) = 106)) && (var(58) != [109,111]) && (var(58) != [114,120]) || (((helper(12500),var(59))-(enemynear,time)) >= 25) && (p2dist x > 5)
Trigger2 = (enemynear,teammode = simul)
Trigger2 = ((enemynear(0),alive = 0) || (enemynear(1),alive = 0))
Trigger2 = numhelper(12500) > 0
Trigger2 = inguarddist || ((helper(12500),inguarddist = 1) || p2bodydist x >= 100&&(p2movetype=A))|| (enemynear,numproj > 0)
Trigger2 = Random <= (var(59)%100)*(var(59)%100)*10
trigger2 = (((helper(12500),var(59))-(enemynear,time)) <= 15) || (enemynear,HitDefAttr != SC,AT) || p2bodydist x >= 65
trigger2 = ((var(58) != [100,104]) || var(58) = 102) && ((var(58) != [105,107])||(var(58) = 106)) && (var(58) != [109,111]) && (var(58) != [114,120]) || (((helper(12500),var(59))-(enemynear,time)) >= 25) && (p2dist x > 5)


;------------------------------------------------------------------------------










;---------------------------------------------------------------------------
[State -1, charge]
type = null;ChangeState
value = 3012
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
;triggerall = var(54)=0       ;time stop
triggerall = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;時止め
[State -1, time stop]
type = ChangeState
value = 3010
triggerall = statetype != A
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = ctrl || stateno = 102
Triggerall = var(55) > 900
Triggerall = power >= 2000
triggerall = var(54)=0
trigger1 = var(58) = 111
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger2 = NumHelper(1510) = 0
trigger2 = (P2statetype!=A)||(P2BodyDist y > (-100-((enemynear,vel y)*10)))
trigger2 = P2BodyDist X > (80-(25*(enemynear,stateno=[120,155]))-(25*((enemynear,vel x<0)&&p2statetype=A)))
trigger2 = (Random = [40*(var(59)%100),((50+((enemynear,stateno=[120,155])*15)+((power>=4000)*15)+(20*((enemynear,vel x<0)&&p2statetype=A))))*(var(59)%100)])
trigger2 = (var(58) = 0)
trigger2 = statetype != A
trigger2 = p2movetype != H || (enemynear,stateno = [120,155])

;===========================================================================
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1


;---------------------------------------------------------------------------
[State -1, 22a]
type = ChangeState
value = 1500
triggerall = (var(59)%100) > 0
triggerall = P2statetype != L || (enemynear,stateno = 5120)
Triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = (var(59)%100) < 7
trigger1 = Ctrl || stateno = 102
trigger1 = (P2statetype!=A)||(P2BodyDist y > -40)&&(enemynear,vel y > 0)
trigger1 = P2BodyDist X = [80,90]
trigger1 = (Random = [50*(var(59)%100),70*(var(59)%100)])
trigger1 = (var(58) = 0)
trigger1 = statetype != A
trigger1 = p2movetype != H || (enemynear,stateno = [120,155])



;trigger1 =  ctrl = 1
;trigger2 = stateno = [200,231];;立ち攻撃キャンセル
;trigger2 = movecontact
;trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
;trigger3 = movecontact
;trigger4 = stateno = 460;;エリアル開始キャンセル
;trigger5 = stateno = 230
;trigger5 = time > 23
;trigger6 = stateno = 410
;trigger6 = time > 20
;trigger7 = stateno = 231
;trigger7 = time > 15
;---------------------------------------------------------------------------
[State -1, 22b]
type = ChangeState
value = 1502
triggerall = (var(59)%100) > 0
triggerall = P2statetype != L || (enemynear,stateno = 5120)
Triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = NumHelper(1510) = 0
trigger1 = Ctrl || stateno = 102
trigger1 = (P2statetype!=A)||(P2BodyDist y > -40)&&(enemynear,vel y > 0)
trigger1 = P2BodyDist X = [190,230]
trigger1 = (Random = [60*(var(59)%100),85*(var(59)%100)])
trigger1 = (var(58) = 0)
trigger1 = statetype != A
trigger1 = p2movetype != H || (enemynear,stateno = [120,155])
trigger1 = numhelper(1061) = 0 || p2statetype = L



;trigger1 =  ctrl = 1
;trigger2 = stateno = [200,231];;立ち攻撃キャンセル
;trigger2 = movecontact
;trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
;trigger3 = movecontact
;trigger4 = stateno = 460;;エリアル開始キャンセル
;trigger5 = stateno = 230
;trigger5 = time > 23
;trigger6 = stateno = 410
;trigger6 = time > 20
;trigger7 = stateno = 231
;trigger7 = time > 15
;---------------------------------------------------------------------------
[State -1, 22c]
type = ChangeState
value = 1503
triggerall = (var(59)%100) > 0
Triggerall = RoundState = 2
triggerall = statetype != A
triggerall = power > 2000
triggerall = NumHelper(1510) = 0
trigger1 = Ctrl || stateno = 102
trigger1 = (var(58)=3)||(P2BodyDist X >= 150-(numhelper(1061) != 0)*25-(p2movetype=H)*20-(p2statetype=L&&(enemynear,stateno != 5120))*45+(enemynear,vel x)*10)
trigger1 = (Random = [60*(var(59)%100),85*(var(59)%100)])
trigger1 = (var(58)=3)||(var(58) = 0)
trigger1 = statetype != A




;trigger1 =  ctrl = 1
;trigger2 = stateno = [200,231];;立ち攻撃キャンセル
;trigger2 = movecontact
;trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
;trigger3 = movecontact
;trigger4 = stateno = 460;;エリアル開始キャンセル
;trigger5 = stateno = 230
;trigger5 = time > 23
;trigger6 = stateno = 410
;trigger6 = time > 20
;trigger7 = stateno = 231
;trigger7 = time > 15
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
[State -1, Warp shot A]
type = ChangeState
value = 1400
triggerall = statetype != A
triggerall = var(54)=0         ;time stop
TriggerAll = (var(59)%100) > 0
Triggerall = RoundState = 2
trigger1 = ctrl || stateno = 102
trigger1 = P2statetype = L
trigger1 = P2BodyDist X < 40
trigger1 = Random = [0*(var(59)%100),75*(var(59)%100)]
trigger1 = backedgebodydist <= 25
trigger2 = NumHelper(1510) = 0
trigger2 = Ctrl || stateno = 102 || stateno = 230 && time > 23
trigger2 = (P2statetype!=A)||(P2BodyDist y > -40)&&(enemynear,vel y > 0)||(p2bodydist x > 110)
trigger2 = P2BodyDist X = [70,115]
trigger2 = (Random = [80*(var(59)%100),95*(var(59)%100)])
trigger2 = (var(58) = 0)
trigger2 = statetype != A
trigger2 = enemynear,backedgebodydist > (45+(NumHelper(1510) != 0)*25)
trigger2 = p2statetype != L || (enemynear,stateno = 5120)
trigger2 = floor(var(59)/100000%10) = 0 || (enemynear,teammode = single) || (enemynear,teammode = turns)




;trigger1 = ctrl = 1
;trigger2 = stateno = [200,231];;立ち攻撃キャンセル
;trigger2 = movecontact
;trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
;trigger3 = movecontact
;trigger4 = stateno = 460;;エリアル開始キャンセル
;trigger5 = stateno = 230
;trigger5 = time > 23
;trigger6 = stateno = 410
;trigger6 = time > 20
;trigger7 = stateno = 231
;trigger7 = time > 15

;---------------------------------------------------------------------------
[State -1, Warp shot B]
type = ChangeState
value = 1403
TriggerAll = (var(59)%100) > 0
Triggerall = RoundState = 2
triggerall = statetype != A
triggerall = var(54)=0         ;time stop
trigger1 = Ctrl || stateno = 102 || stateno = 230 && time > 23
trigger1 = (P2statetype!=A)||(P2BodyDist y > -40)&&(enemynear,vel y > 0)||(p2bodydist x > 110)&&((p2movetype!=H)||(p2bodydist y > -50))
trigger1 = P2BodyDist X = [(115+(enemynear,vel x)*10),(200-(NumHelper(1510) != 0)*30+(enemynear,vel x)*10)]
trigger1 = (Random = [50*(var(59)%100),95*(var(59)%100)])
trigger1 = (var(58) = 0)
trigger1 = statetype != A
trigger1 = enemynear,backedgebodydist > (45+(NumHelper(1510) != 0)*25)
trigger1 = p2statetype != L || (enemynear,stateno = 5120)
trigger1 = floor(var(59)/100000%10) = 0 || (enemynear,teammode = single) || (enemynear,teammode = turns)





;trigger1 = ctrl = 1
;trigger2 = stateno = [200,231];;立ち攻撃キャンセル
;trigger2 = movecontact
;trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
;trigger3 = movecontact
;trigger4 = stateno = 460;;エリアル開始キャンセル
;trigger5 = stateno = 230
;trigger5 = time > 23
;trigger6 = stateno = 410
;trigger6 = time > 20
;trigger7 = stateno = 231
;trigger7 = time > 15
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;623C
[State -1, Mortal ex]
type = ChangeState
value = 3020
TriggerAll = (var(59)%100) > 0
Triggerall = RoundState = 2
triggerall = power > 1000
triggerall = statetype != A
trigger1 = ctrl || stateno = 102
trigger1 = P2BodyDist X = [15,110]
trigger1 = (Random = [0*(var(59)%100),20*(var(59)%100)])
trigger1 = var(58) = 3
trigger1 = (enemynear,teammode = simul) || (enemynear,gethitvar(hitcount) <= 9)
trigger1 = (enemynear(0),alive = 1) && (enemynear(1),alive = 1) || (enemynear,gethitvar(hitcount) <= 9)
trigger1 = floor(var(59)/100000%10) = 1 || (enemynear,gethitvar(hitcount) <= 9)
;trigger2 = floor(var(59)/100000%10) = 0
trigger2 = stateno = 460 && animtime > -5;(-5-(p2bodydist))
trigger2 = Random = [0*(var(59)%100),100*(var(59)%100)]
trigger2 = var(58) = 1
trigger2 = p2bodydist x = [-30,90]
trigger2 = enemynear,life > 100
trigger2 = power >= 1500 || (enemynear,life < 350)
trigger3 = floor(var(59)/100000%10) = 1
trigger3 = stateno = 460 && animtime > -5;(-5-(p2bodydist))
trigger3 = Random = [0*(var(59)%100),100*(var(59)%100)]
trigger3 = var(58) = 1
trigger3 = p2bodydist x = [-30,90]
trigger3 = enemynear,teammode = simul
trigger3 = (enemynear(0),alive = 1) && (enemynear(1),alive = 1)
trigger4 = floor(var(59)/100000%10) = 1
trigger4 = ctrl || stateno = 102
trigger4 = P2BodyDist X = [20,110]
trigger4 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger4 = var(58) = 3
trigger4 = enemynear,teammode = simul
trigger4 = (enemynear(0),alive = 1) && (enemynear(1),alive = 1)



;trigger1 = ctrl = 1
;trigger2 = stateno = 230
;trigger3 = stateno = 231
;trigger4 = stateno = [410 , 460 ]
;trigger5 = stateno = [1000,1001]
;trigger6 = stateno = [1060,1067]
;---------------------------------------------------------------------------
;623A
[State -1, Mortal A]
type = ChangeState
value = 1060
triggerall = statetype != A
triggerall = (var(59)%100) > 0
TriggerAll = RoundState = 2
trigger1 = ctrl || stateno = 102
trigger1 = P2statetype = L && (enemynear,stateno != 5120) || var(58) = 3
trigger1 = P2BodyDist X = [30,130]
trigger1 = Random = [0*(var(59)%100),75*(var(59)%100)]
trigger1 = numhelper(1061) = 0 || var(58) = 3 && ((P2BodyDist X != [-15,60])||(p2bodydist y >= (-60-14*(enemynear,vel y))))
Trigger2 = statetype != A
trigger2 = P2BodyDist X = [-30,55]
trigger2 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger2 = (var(58) = 113)
trigger2 = var(54) > 0
trigger2 = var(55) > (370-(power>=1000 || p2statetype = C)*15-(p2bodydist y < -120||p2statetype = C)*35)
trigger2 = ctrl || stateno = 102
trigger3 = (P2statetype!=A)||(P2BodyDist y > -40)&&(enemynear,vel y > 0)
trigger3 = P2BodyDist X > (25+(8*(var(59)%100)))
trigger3 = (Random = [55*(var(59)%100),70*(var(59)%100)])
trigger3 = (var(58) = 0)
trigger3 = statetype != A
trigger3 = p2movetype != H || (enemynear,stateno = [120,155])
trigger3 = random%10 >= (var(59)%100)
trigger3 = (var(59)%100) <= 8
trigger3 = gametime%2 = 0
trigger3 = ctrl || stateno = 102
trigger4 = ctrl || stateno = 102 || stateno = 230 && (time = [24,25]) && ((p2movetype = H) || ((enemynear,vel x <= 1) || (p2statetype != A))&&(p2bodydist x > 100))
trigger4 = P2statetype != L
trigger4 = P2BodyDist X = [120,215]
trigger4 = Random = [0*(var(59)%100),15*(var(59)%100)]
trigger4 = numhelper(1061) = 0 || stateno = 230
trigger4 = var(58) = 0
trigger4 = (P2statetype!=A)||(P2BodyDist y > -50)&&(enemynear,vel y > 0) || (p2movetype = H)&&((enemynear,vel x < 0)||(enemynear,stateno!=[120,155]))
trigger5 = ctrl || stateno = 102
trigger5 = Random = [0*(var(59)%100),100*(var(59)%100)]
trigger5 = var(58) = 6 && ((enemynear,vel y > -3)||(enemynear,backedgebodydist < 10)) || var(58) = 8
trigger5 = p2bodydist x = [(20-40*(enemynear,backedgebodydist > 10)),50]
; && (enemynear,vel y > -3)





;trigger1 = ctrl = 1
;trigger2 = stateno = [200,231];;立ち攻撃キャンセル
;trigger2 = movecontact
;trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
;trigger3 = movecontact
;trigger4 = stateno = 460;;エリアル開始キャンセル
;trigger5 = stateno = 230
;trigger5 = time > 23
;trigger6 = stateno = 410
;trigger6 = time > 20
;trigger7 = stateno = 231
;trigger7 = time > 15
;---------------------------------------------------------------------------
;623B
[State -1, Mortal B]
type = ChangeState
value = 1067
triggerall = statetype != A
triggerall = (var(59)%100) > 0
TriggerAll = RoundState = 2
trigger1 = ctrl || stateno = 102
trigger1 = P2statetype = L && (enemynear,stateno != 5120) || var(58) = 3 && ((P2BodyDist X != [-15,60])||(p2bodydist y >= (-60-14*(enemynear,vel y))))
trigger1 = P2BodyDist X = [130,165]
trigger1 = Random = [0*(var(59)%100),75*(var(59)%100)]
trigger1 = numhelper(1061) = 0 || var(58) = 3 && ((P2BodyDist X != [-15,60])||(p2bodydist y >= (-60-14*(enemynear,vel y))))
trigger2 = ctrl || stateno = 102
trigger2 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger2 = var(58) = 1
trigger2 = var(54) != 0
trigger2 = numhelper(1061) <= 1
Trigger3 = statetype != A
trigger3 = stateno = 231
trigger3 = time > 15
trigger3 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger3 = prevstateno = 400
trigger3 = (var(59)%100) > 6
trigger4 = (P2statetype!=A)||(P2BodyDist y > -40)&&(enemynear,vel y > 0)
trigger4 = P2BodyDist X > (25+(8*(var(59)%100)))
trigger4 = (Random = [55*(var(59)%100),70*(var(59)%100)])
trigger4 = (var(58) = 0)
trigger4 = statetype != A
trigger4 = p2movetype != H || (enemynear,stateno = [120,155])
trigger4 = random%10 >= (var(59)%100)
trigger4 = (var(59)%100) <= 8
trigger4 = gametime%2 = 1
trigger4 = ctrl = 1
trigger5 = ctrl || stateno = 102 || stateno = 230 && (time = [24,25]) && ((p2movetype = H) || ((enemynear,vel x <= 1) || (p2statetype != A))&&(p2bodydist x > 100))
trigger5 = P2statetype != L
trigger5 = P2BodyDist X = [(110-(p2movetype = H)*60),215]
trigger5 = Random = [0*(var(59)%100),15*(var(59)%100)]
trigger5 = numhelper(1061) = 0 || stateno = 230
trigger5 = var(58) = 0
trigger5 = (P2statetype!=A)||(P2BodyDist y > -50)&&(enemynear,vel y > 0) || (p2movetype = H)&&((enemynear,vel x < 0)||(enemynear,stateno!=[120,155]))
trigger6 = ctrl || stateno = 102
trigger6 = Random = [0*(var(59)%100),100*(var(59)%100)]
trigger6 = var(58) = 7
trigger6 = p2bodydist x < 70
trigger6 = enemynear,vel y > 0
trigger6 = p2bodydist y > -160


;trigger1 = ctrl = 1
;trigger2 = stateno = [200,231];;立ち攻撃キャンセル
;trigger2 = movecontact
;trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
;trigger3 = movecontact
;trigger4 = stateno = 460;;エリアル開始キャンセル
;trigger5 = stateno = 230
;trigger5 = time > 23
;trigger6 = stateno = 410
;trigger6 = time > 20
;trigger7 = stateno = 231
;trigger7 = time > 15
;---------------------------------------------------------------------------
;j236C
[State -1, MG EX]
type = ChangeState
value = 652
triggerall = statetype = A
triggerall = power > 1000
TriggerAll = (var(59)%100) > 3
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = animelemtime(7) >= 2
trigger1 = var(58) = 1 ||  (ProjHit = 1, < 5)&&(prevstateno = 630) || var(58) = 113 && p2statetype != C
trigger1 = stateno = 610
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger1 = p2bodydist y = [-45,55]
Trigger2 = statetype = A
Trigger2 = ctrl
trigger2 = P2BodyDist X = [-15,45]
trigger2 = P2BodyDist y = [-25,55]
trigger2 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger2 = (var(58) = 113) && p2statetype != C



;trigger1 = ctrl = 1
;trigger2 = stateno = [600 , 651 ]
;trigger3 = stateno = 250
;---------------------------------------------------------------------------
;j236ABC
[State -1, MG]
type = ChangeState
value = 650
triggerall = statetype = A
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = var(58) = 108
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger2 = stateno = 620
trigger2 = movecontact = 1
trigger2 = random%5 = 0
trigger2 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger2 = p2statetype != A
trigger2 = pos y > -45
trigger2 = 0
trigger3 = statetype = A
trigger3 = stateno = 610 && time > 20;ctrl
trigger3 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger3 = (var(58) = 112)
Trigger4 = statetype = A
Trigger4 = ctrl
trigger4 = P2BodyDist X = [-15,45]
trigger4 = P2BodyDist y = [-25,55]
trigger4 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger4 = (var(58) = 113) && p2statetype != C



;trigger1 = ctrl = 1
;trigger2 = stateno = [600 , 640 ]
;trigger2 = movecontact
;trigger3 = stateno = 610
;trigger3 = time > 20
;---------------------------------------------------------------------------
;236A
[State -1, RPG-7 A]
type = ChangeState
value = 1001
triggerall = statetype != A
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L || (enemynear,stateno = 5120)
Triggerall = RoundState = 2
trigger1 = (P2statetype!=A)||(P2BodyDist y > -40)&&(enemynear,vel y > 0)||(var(59)%100)<4
trigger1 = P2BodyDist X > (15+(8*(var(59)%100)))
trigger1 = (Random = [30*(var(59)%100),70*(var(59)%100)])
trigger1 = (var(58) = 0)
trigger1 = statetype != A
trigger1 = p2movetype != H || (enemynear,stateno = [120,155])
trigger1 = random%10 >= (var(59)%100)
trigger1 = (var(59)%100) < 10
trigger1 = ctrl = 1
trigger2 = (Random = [30*(var(59)%100),70*(var(59)%100)])
trigger2 = (var(58) = 0)
trigger2 = var(54) != 0
trigger2 = (var(59)%100) < 4
trigger2 = ctrl = 1
trigger3 = stateno = 410
trigger3 = time > 22
trigger3 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger3 = (var(58) = 3)


;trigger1 = ctrl = 1
;trigger2 = stateno = [200,231];;立ち攻撃キャンセル
;trigger2 = movecontact
;trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
;trigger3 = movecontact
;trigger4 = stateno = 460;;エリアル開始キャンセル
;trigger5 = stateno = 230
;trigger5 = time > 23
;trigger6 = stateno = 410
;trigger6 = time > 22
;trigger7 = stateno = 231
;trigger7 = time > 15
;---------------------------------------------------------------------------
;
[State -1, RPG-7 B]
type = null;ChangeState
value = 1001
triggerall = var(59) = 0
triggerall = command = "QCF_b"  ||    command = "QCF_c"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200,231];;立ち攻撃キャンセル
trigger3 = stateno = [400,430];;しゃがみ攻撃キャンセル
trigger4 = stateno = 460;;エリアル開始キャンセル
trigger5 = time > 23
trigger6 = stateno = 410
trigger6 = time > 22
trigger7 = stateno = 231
trigger7 = time > 15

;---------------------------------------------------------------------------
;421A
[State -1, warp B]
type = ChangeState
value = 1201
triggerall = var(54)=0       ;time stop
TriggerAll = (var(59)%100) > 0
Triggerall = RoundState = 2
triggerall = statetype != A
triggerall = ctrl || stateno = 102
triggerall = var(55) > 100
trigger1 = P2statetype = L
trigger1 = P2BodyDist X < 30
trigger1 = Random = [0*(var(59)%100),75*(var(59)%100)]
trigger1 = numhelper(1061) = 0
trigger1 = frontedgebodydist <= 60 || (enemynear,stateno = 5120)
trigger1 = backedgebodydist > 35
Trigger1 = var(55) > 800 || (enemynear,stateno = 5120)&&(p2bodydist x < 20)
trigger2 = Ctrl || stateno = 102
trigger2 = P2BodyDist X = [-20,175]
trigger2 = (Random = [0*(var(59)%100),4*(var(59)%100)])
trigger2 = (var(58) = 0)
trigger2 = statetype != A
trigger2 = p2movetype != H
trigger2 = backedgebodydist > 30
trigger2 = gametime%10 <= (var(59)%100)
trigger3 = NumHelper(1510) != 0
trigger3 = Ctrl || stateno = 102
trigger3 = P2BodyDist X < 120
trigger3 = (Random = [0*(var(59)%100),30*(var(59)%100)])
trigger3 = (var(58) = 0)
trigger3 = statetype != A
trigger3 = p2movetype != H
trigger3 = backedgebodydist > 40

;---------------------------------------------------------------------------
;421B
[State -1, warp C]
type = ChangeState
value = 1202
TriggerAll = (var(59)%100) > 3
Triggerall = RoundState = 2
triggerall = var(54)=0       ;time stop
triggerall = statetype != A
triggerall = var(55) > 100
trigger1 = var(58) = 0
trigger1 = ctrl || stateno = 102
trigger1 = (enemynear,stateno = 5120)&&(enemynear,animtime>=-6)
trigger1 = (P2movetype != A)
trigger1 = (Random = [60*(var(59)%100),100*(var(59)%100)])
trigger1 = p2bodydist x < 50
trigger2 = Ctrl || stateno = 102
trigger2 = (P2statetype!=A)||(P2BodyDist y > -80)&&(enemynear,vel y > 0)
trigger2 = P2BodyDist X = [20,145]
trigger2 = (Random = [0*(var(59)%100),10*(var(59)%100)])
trigger2 = (var(58) = 0)
trigger2 = statetype != A
trigger2 = p2movetype != H
trigger2 = random%20 <= (var(59)%100)


;trigger1 = ctrl = 1
;trigger2 = stateno = 460
;---------------------------------------------------------------------------
;421C
[State -1, warp A air]
type = ChangeState
value = 1204
triggerall = var(55) > 300
triggerall = var(54)=0       ;time stop
triggerall = statetype = A
triggerall = ctrl = 1
TriggerAll = (var(59)%100) > 0
Triggerall = RoundState = 2
trigger1 = var(58) = 0
trigger1 = stateno = 1210
trigger1 = time = 2
trigger1 = gametime%12 = 3
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger1 = prevstateno != 1204
trigger1 = enemynear,backedgebodydist = [10,50]
trigger1 = p2bodydist x > 40
trigger1 = gametime%10 <= (var(59)%100)
;---------------------------------------------------------------------------
;421A
[State -1, warp B air]
type = null;ChangeState
value = 1205
TriggerAll = (var(59)%100) > 0
triggerall = var(55) > 100
Triggerall = RoundState = 2
triggerall = var(54)=0       ;time stop
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = var(55) > 100
trigger1 = var(58) = 0
trigger1 = stateno = 1210
trigger1 = time = [2,5]
trigger1 = gametime%4 = 3
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger1 = prevstateno != 1204

;---------------------------------------------------------------------------
;421B
[State -1, warp C Air]
type = ChangeState
value = 1203
TriggerAll = (var(59)%100) > 6
triggerall = var(55) > 100
Triggerall = RoundState = 2
triggerall = var(54)=0       ;time stop
triggerall = statetype = A
trigger1 = stateno = 610 && time > 17
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger1 = animelemtime(7) >= 2
trigger1 = (p2bodydist y != [-45,55]) || (p2bodydist x > 70) || p2statetype != A || p2movetype != H || (enemynear,stateno=[120,155])
trigger1 = vel x >= 0
trigger1 = p2statetype != A || p2bodydist y > 30

;trigger1 = ctrl = 1
;trigger2 = stateno = 610
;trigger2 = time > 17
;---------------------------------------------------------------------------

;===========================================================================


;===========================================================================

;---------------------------------------------------------------------------
[State -1, 4C]
type = ChangeState
value = 262
TriggerAll = (var(59)%100) > 0
Triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = ctrl || stateno = 102
trigger1 = P2statetype = L
trigger1 = P2BodyDist X < 30
trigger1 = Random = [0*(var(59)%100),75*(var(59)%100)]
trigger1 = numhelper(1061) = 0
trigger1 = frontedgebodydist <= 60 || (enemynear,stateno = 5120)
trigger1 = backedgebodydist > 35
Trigger1 = var(55) < 800 || (enemynear,stateno = 5120)&&(p2bodydist x >= 20)



;trigger1 = statetype = S
;trigger1 = ctrl
;trigger2 = stateno = [200,300]
;trigger2 = movecontact
;trigger3 = stateno = [400,430]
;trigger3 = movecontact
;trigger4 = stateno = 230
;trigger4 = time > 23
;trigger5 = stateno = 410
;trigger5 = time > 22
;trigger6 = stateno = 231
;trigger6 = time > 10
;---------------------------------------------------------------------------
;1C
[State -1, Crouching 1c]
type = ChangeState
value = 440
TriggerAll = (var(59)%100) > 0
Triggerall = RoundState = 2
triggerall = statetype != A
triggerall = ctrl || stateno = 102
triggerall = NumHelper(441) < 3
trigger1 = var(58) = 3 && ((P2BodyDist X != [-15,60])||(p2bodydist y >= (-60-14*(enemynear,vel y))))
trigger1 = P2BodyDist X < (50+(enemynear,backedgebodydist <10)*20)
trigger1 = Random = [0*(var(59)%100),75*(var(59)%100)]
trigger1 = NumHelper(441) = 0
trigger2 = var(58) = 3 && ((P2BodyDist X != [-15,60])||(p2bodydist y >= (-60-14*(enemynear,vel y))))
trigger2 = P2BodyDist X < (50+(enemynear,backedgebodydist <10)*20)
trigger2 = Random = [0*(var(59)%100),75*(var(59)%100)]
trigger2 = NumHelper(441) > 0
trigger2 = (helper(441),parentdist x != [-35,35])
trigger3 = NumHelper(1510) = 0
trigger3 = Ctrl || stateno = 102
trigger3 = (Random = [70*(var(59)%100),85*(var(59)%100)])
trigger3 = (var(58) = 0)
trigger3 = statetype != A
trigger3 = numhelper(1061) = 0 || p2statetype = L
trigger3 = P2BodyDist X >= 150-(numhelper(1061) != 0)*25-(p2movetype=H)*20-(p2statetype=L&&(enemynear,stateno != 5120))*45+(enemynear,vel x)*10
trigger3 = NumHelper(441) = 0
trigger4 = NumHelper(1510) = 0
trigger4 = Ctrl || stateno = 102
trigger4 = (Random = [70*(var(59)%100),85*(var(59)%100)])
trigger4 = (var(58) = 0)
trigger4 = statetype != A
trigger4 = numhelper(1061) = 0 || p2statetype = L
trigger4 = P2BodyDist X >= 150-(numhelper(1061) != 0)*25-(p2movetype=H)*20-(p2statetype=L&&(enemynear,stateno != 5120))*45+(enemynear,vel x)*10
trigger4 = NumHelper(441) > 0
trigger4 = (helper(441),parentdist x != [-35,35])
;---------------------------------------------------------------------------
;6C
[State -1, air 6C]
type = ChangeState
value = 550
TriggerAll = (var(59)%100) > 0
Triggerall = RoundState = 2
triggerall = NumHelper(251) = 0
triggerall = stateno != 100
triggerall = statetype != C
triggerall = Ctrl || (stateno=102)
trigger1 = P2statetype = L && (enemynear,stateno != 5120) || var(58) = 3 && ((P2BodyDist X != [-15,60])||(p2bodydist y >= (-60-14*(enemynear,vel y))))
trigger1 = P2BodyDist X = [-30,60]
trigger1 = Random = [0*(var(59)%100),75*(var(59)%100)]
trigger1 = numhelper(1061) = 0 || var(58) = 3 && ((P2BodyDist X != [-15,60])||(p2bodydist y >= (-60-14*(enemynear,vel y))))
trigger1 = frontedgebodydist = [50,175]
Trigger2 = Ctrl || (stateno=102)
trigger2 = (P2BodyDist y < -70)||(enemynear,vel y < 0)||(p2bodydist x > 95)
trigger2 = P2BodyDist X = [20,255]
trigger2 = (Random = [50*(var(59)%100),(65+10*(p2bodydist x > 95))*(var(59)%100)])
trigger2 = (var(58) = 0)
trigger2 = statetype != A
trigger2 = p2movetype != H || (enemynear,stateno = [120,155]) || p2statetype = L
trigger3 = var(58) = 0
trigger3 = stateno = 1210
trigger3 = (time = [2,5])&&(gametime%4 = [0,2])
trigger3 = (Random = [0*(var(59)%100),50*(var(59)%100)])
trigger3 = p2bodydist x < 50
trigger3 = frontedgebodydist = [40,130]

;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ5A
[State -1, a]
type = ChangeState
value = 200
triggerall = stateno != 100
triggerall = var(54)=0       ;time stop
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
Trigger1 = Ctrl
Trigger1 = statetype != A
trigger1 = (P2statetype!=A)||(P2BodyDist y > -40)&&(enemynear,vel y > 0)
trigger1 = P2BodyDist X = [-20,15]
trigger1 = (Random = [0*(var(59)%100),50*(var(59)%100)])
trigger1 = (var(58) = 0)
Trigger2 = Ctrl || stateno = 102
Trigger2 = statetype != A
trigger2 = (P2statetype!=A)
trigger2 = P2BodyDist X = [-20,15]
trigger2 = (p2movetype=H)&&(enemynear,gethitvar(hittime)<=6)&&(enemynear,stateno!=[120,155])
trigger2 = var(58) = 0



;trigger1 = statetype = S
;trigger1 = ctrl
;trigger2 = stateno = 200
;trigger2 = time > 5
;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ 5B
[State -1, b]
type = ChangeState
value = 300
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = var(54)=0       ;time stop
trigger1 = stateno = 400 || stateno = 200
trigger1 = movehit
trigger1 = P2BodyDist X = [15,50]
trigger1 = p2statetype != A
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])



;trigger1 = statetype = S
;trigger1 = ctrl
;trigger2 = stateno = 200
;trigger2 = movecontact
;trigger3 = stateno = 400
;trigger3 = movecontact
;---------------------------------------------------------------------------
;5C
[State -1, c]
type = ChangeState
value = 230
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L || (enemynear,stateno = 5120)
Triggerall = RoundState = 2
triggerall = stateno != 100
triggerall = statetype != A
triggerall = Ctrl
trigger1 = (P2statetype!=A)||(P2BodyDist y > -40)&&(enemynear,vel y > 0)
trigger1 = P2BodyDist X > (5+(7*(var(59)%100)))
trigger1 = (Random = [50*(var(59)%100),(75-20*(NumHelper(1510) != 0))*(var(59)%100)])
trigger1 = (var(58) = 0)
trigger1 = statetype != A
trigger1 = p2movetype != H || (enemynear,stateno = [120,155])&&(var(55)<500)
trigger1 = numhelper(1061) = 0 || p2statetype = L
Trigger2 = statetype != A
trigger2 = P2BodyDist X < 15;(15+((enemynear,stateno=[150,155])||(p2statetype=A))*15)
trigger2 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger2 = (var(58) = 112)
trigger2 = var(54) > 0
trigger2 = var(55) > 210
;trigger2 = p2statetype != C


;---------------------------------------------------------------------------
;5C
[State -1, c movecontact]
type = ChangeState
value = 231
triggerall = movecontact
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = stateno = 400
trigger1 = movehit
trigger1 = p2statetype = A
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger2 = stateno = 300
trigger2 = movecontact
trigger2 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger2 = (var(59)%100) <= 4




;trigger1 = stateno = [200 , 210]
;trigger2 = stateno = [400 , 430]
;trigger3 = stateno = 300
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
TriggerAll = (var(59)%100) > 0
triggerall = statetype != A
trigger1 = var(54) != 0       ;time stop
trigger1 = var(55) < 120
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger1 = roundstate = 3 && stateno = 0 || ctrl && (enemynear,alive = 0)
trigger2 = ctrl || stateno = 102
trigger2 = numhelper(1510) > 0
trigger2 = helper(1510),time = [300,320]
trigger2 = p2bodydist x > 80
trigger2 = enemynear,life < 220
trigger2 = (Random = [0*(var(59)%100),50*(var(59)%100)])
;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching a]
type = ChangeState
value = 400
triggerall = var(54)=0       ;time stop
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
Trigger1 = Ctrl || stateno = 102
Trigger1 = statetype != A
trigger1 = (P2statetype!=A)||(P2BodyDist y > -30)&&(enemynear,vel y > 0)||(P2BodyDist y=[-30-((enemynear,vel y)*8),-5-((enemynear,vel y)*8)])
trigger1 = P2BodyDist X = [20-(((p2movetype=H&&(enemynear,stateno!=[120,155]))||(enemynear,facing=facing)||(var(58)=110))*45),35]
trigger1 = (Random = [0*(var(59)%100),60*(var(59)%100)]) || var(58) != 0 || (p2movetype=H)&&(enemynear,gethitvar(hittime)=[8,10])
trigger1 = (var(58) = [0,2]) || var(58) = 110 && stateno = 102 && time >= 3 || (var(58) = [4,5])
Trigger2 = Ctrl || stateno = 102
Trigger2 = statetype != A
trigger2 = (P2statetype!=A)||(P2BodyDist y > -30)&&(enemynear,vel y > 0)
trigger2 = P2BodyDist X = [25,55]
trigger2 = (Random = [0*(var(59)%100),9*(var(59)%100)])
trigger2 = (var(58) = 0)
trigger3 = stateno = 200 ||  stateno = 400 && p2statetype != A
trigger3 = movecontact
trigger3 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger3 = P2BodyDist X < 55
trigger3 = (var(58) != [109,111]) && var(58) != 100
Trigger4 = Ctrl || stateno = 102
Trigger4 = statetype != A
trigger4 = (P2statetype!=A)||(P2BodyDist y > -40)&&(enemynear,vel y > 0)||(P2BodyDist y=[-30-((enemynear,vel y)*8),-5-((enemynear,vel y)*8)])&&(p2movetype=H)&&(enemynear,stateno!=[120,155])
trigger4 = P2BodyDist X = [-35,35]
trigger4 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger4 = (var(58) = 101)
Trigger5 = Ctrl || stateno = 102
Trigger5 = statetype != A
trigger5 = (P2BodyDist y=[-30-((enemynear,vel y)*8),-5-((enemynear,vel y)*8)])
trigger5 = P2BodyDist X = [-25,35]
trigger5 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger5 = (var(58) = [0,2]) || (var(58) = [4,5])
trigger5 = p2movetype = H && (enemynear,stateno != [120,155])




;trigger1 = statetype = C
;trigger1 = ctrl
;trigger2 = stateno = 200 ||  stateno = 400
;trigger2 = movecontact
;---------------------------------------------------------------------------
;2B
;しゃがみ強パンチ
[State -1, Crouching b]
type = ChangeState
value = 430
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = 0
Trigger1 = statetype != A
trigger1 = P2BodyDist X < (25+(enemynear,stateno=[150,155])*15)
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger1 = (var(58) = 112)
trigger1 = var(54) > 0
trigger1 = var(55) > 200
trigger1 = p2statetype = C
trigger1 = ctrl || stateno = 102



;trigger1 = statetype = C
;trigger1 = ctrl
;trigger2 = stateno = 200 ||  stateno = 400
;trigger2 = movecontact
;trigger3 = stateno = 300
;trigger3 = movecontact





;---------------------------------------------------------------------------
;3C
[State -1, Crouching 3c]
type = ChangeState
value = 460
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = var(54)=0       ;time stop
trigger1 = stateno = 300
trigger1 = movehit
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger2 = stateno = 230
trigger2 = time = 24
trigger2 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger2 = (var(59)%100) > 6
trigger2 = p2movetype = H && ((enemynear,stateno!=[120,149]) || ((enemynear,vel x <= 2) || (p2statetype != A))&&(p2bodydist x > 50))
trigger2 = (random%5 = 0)



;trigger1 = statetype = C
;trigger1 = ctrl
;trigger2 = stateno = [200,300]
;trigger2 = movecontact
;trigger3 = stateno = [400,430]
;trigger3 = movecontact
;trigger4 = stateno = 230
;trigger4 = time > 23
;trigger5 = stateno = 410
;trigger5 = time > 22
;trigger6 = stateno = 231
;trigger6 = time > 15
;---------------------------------------------------------------------------
;2C
[State -1, Crouching c]
type = ChangeState
value = 410
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger1 = var(58) = 1
trigger1 = var(54) != 0
trigger1 = numhelper(1061) > 1
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = numprojid(410) = 0
Trigger2 = statetype != A
trigger2 = stateno = 230 || (var(59)%100) < 7 && stateno = 231
trigger2 = ProjHit = 1, < 15
trigger2 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger2 = (var(58) = 112) || (var(59)%100) < 7 && stateno = 231
trigger3 = ctrl || stateno = 102
trigger3 = P2BodyDist X = [-15,60]
trigger3 = p2bodydist y = [(-100-14*(enemynear,vel y)),(-40-14*(enemynear,vel y))]
trigger3 = (Random = [0*(var(59)%100),90*(var(59)%100)])
trigger3 = var(58) = 3



;trigger1 = statetype = C
;trigger1 = ctrl
;trigger2 = ProjHit = 1, < 15
;trigger2 = stateno = [230,231]
;trigger3 = stateno = [200,300]
;trigger3 = movecontact
;trigger4 = stateno = [400,430]
;trigger4 = movecontact
;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump a]
type = ChangeState
value = 620
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L || (enemynear,stateno = 5120)
Triggerall = RoundState = 2
triggerall = var(54)=0       ;time stop
triggerall = statetype = A
triggerall = ctrl
trigger1 = var(58) = 1
trigger1 = stateno != 610
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger2 = (P2BodyDist y=[-38,(50+(vel y*12))]) || pos y > -75 && p2statetype != A && (vel y >= 0||(stateno=110))
trigger2 = P2BodyDist X = [-45,(40+(vel x*9))]
trigger2 = (Random = [0*(var(59)%100),70*(var(59)%100)])
trigger2 = (var(58) = 0) || var(58) = 100 || var(58) = 115
Trigger3 = Ctrl && stateno = 1210
trigger3 = vel y > 4
trigger3 = P2BodyDist X = [-35,(40+(vel x*9))]
trigger3 = (Random = [0*(var(59)%100),90*(var(59)%100)])


;---------------------------------------------------------------------------
;jB
[State -1, Jump b]
type = ChangeState
value = 630
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = var(54)=0       ;time stop
trigger1 = movehit
trigger1 = p2statetype = A
trigger1 = stateno = 620
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])




;trigger1 = statetype = A
;trigger1 = ctrl
;trigger2 = stateno = 620
;trigger2 = movecontact
;---------------------------------------------------------------------------





;---------------------------------------------------------------------------
[State -1, Air Run Fwd]
type = ChangeState
value = 110
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 110
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger1 = (var(58) = 100) || var(58) = 102
trigger1 = pos y < floor(-200/(var(59)%100))
trigger2 = var(58) = 0
trigger2 = stateno = 1210
trigger2 = time = 2
trigger2 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger2 = p2bodydist x > 95
;---------------------------------------------------------------------------

[State -1, Air Run back]
type = null;ChangeState
value = 115
triggerall = (var(59)%100) = 0
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 115




;---------------------------------------------------------------------------
;ジャンプ
[State -1]
type = ChangeState
value = 41
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = ctrl || stateno = 102
triggerall = statetype != A
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger1 = var(58) = [115,118]
trigger2 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger2 = (var(58) = 100) || var(58) = 102 || var(58) = 108
Trigger3 = statetype != A
trigger3 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger3 = (var(58) = 112)
trigger3 = var(54) > 0
trigger3 = var(55) < 200
Trigger4 = statetype != A
trigger4 = P2BodyDist X = [-20,55]
trigger4 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger4 = (var(58) = 113)
trigger4 = var(54) > 0
trigger4 = var(55) < 350
trigger5 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger5 = var(58) = 1
trigger5 = (var(59)%100) < 7
trigger5 = enemynear,vel y > 0
Trigger6 = statetype != A
trigger6 = P2BodyDist X = [-30,55]
trigger6 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger6 = (var(58) = 113)
trigger6 = var(54) > 0
trigger6 = var(55) < (370-(power>=1000 || p2statetype = C)*15-(p2bodydist y < -120||p2statetype = C)*35)
trigger6 = ctrl || stateno = 102
trigger6 = p2statetype = C


;---------------------------------------------------------------------------
;空中ジャンプ
[State -1]
type = ChangeState
value = 45
TriggerAll = (var(59)%100) > 0
triggerall = P2statetype != L
Triggerall = RoundState = 2
triggerall = ctrl
triggerall = statetype = A
triggerall = prevstateno = [40,41]
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger1 = var(58) = 113
trigger1 = (vel y > -2)





;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
TriggerAll = (var(59)%100) > 0
Triggerall = RoundState = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = P2statetype = L
trigger1 = P2BodyDist X < 30
trigger1 = Random = [0*(var(59)%100),75*(var(59)%100)]
trigger1 = numhelper(1061) = 0
trigger1 = frontedgebodydist <= 60 || (enemynear,stateno = 5120)
trigger1 = backedgebodydist > 35
Trigger1 = var(55) < 800 || (enemynear,stateno = 5120)&&(p2bodydist x >= 20)
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 102
triggerall = (var(59)%100) > 0
TriggerAll = RoundState = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != [100,102]
trigger1 = NumHelper(1510) = 0
trigger1 = var(58) = 0
trigger1 = ctrl
trigger1 = (P2bodydist x > 85)
trigger1 = (P2movetype != A)
trigger1 = ifelse((P2movetype=H),1,(P2bodydist Y>-120))
trigger1 = var(55) > 600 || p2movetype = H && (enemynear,stateno != [120,155]) || p2bodydist x < 95
trigger1 = (Random = [30*(var(59)%100),100*(var(59)%100)])
trigger2 = var(58) = 0 || ((var(58) = [1,2]) || (var(58) = [4,5]))&&(p2bodydist x > 40)
trigger2 = ctrl
trigger2 = (P2bodydist x > 15)
trigger2 = (P2movetype=H)
trigger2 = enemynear,stateno != [120,155]
trigger2 = (Random = [30*(var(59)%100),100*(var(59)%100)])
trigger3 = NumHelper(1510) = 0
trigger3 = var(58) = 0
trigger3 = ctrl
trigger3 = (enemynear,stateno = 5120);&&(enemynear,backedgebodydist > 20)
trigger3 = (P2movetype != A)
trigger3 = (Random = [30*(var(59)%100),100*(var(59)%100)])
trigger4 = var(58) = 103 || var(58) = 107
trigger4 = p2bodydist x < 45
trigger4 = ctrl
trigger4 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger5 = var(58) = 109 || var(58) = 110 || (var(58) = [112,113])
trigger5 = p2bodydist x > 10
trigger5 = ctrl
trigger5 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger6 = (var(58) = 6)
trigger6 = p2bodydist x > (40-30*(enemynear,backedgebodydist > 10))
trigger6 = ctrl
trigger6 = (Random = [0*(var(59)%100),100*(var(59)%100)])



;---------------------------------------------------------------------------
;歩行
[State -1]
type = ChangeState
value = 20
triggerall = (var(59)%100) > 0
TriggerAll = RoundState = 2
triggerall = stateno != 102
triggerall = anim != [100,110]
triggerall = statetype != A
triggerall = ctrl
trigger1 = ifelse(P2statetype=A,P2bodydist x > 20,1)||(enemynear,stateno = [412,414])
trigger1 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger1 = var(58) != 7
trigger2 = (var(59)%100) > 0
trigger2 = var(58) = 7
trigger2 = (Random = [0*(var(59)%100),100*(var(59)%100)])
trigger2 = p2bodydist x < 40 || p2bodydist x > 65
trigger3 = (var(59)%100) > 0
trigger3 = var(58) = 6
trigger3 = (Random = [0*(var(59)%100),100*(var(59)%100)])








