;-| 必殺技 |----------------------------------------------------------------
[Command]
name = "Candyball"
command = ~D, DF, F, y

[Command]
name = "Gumballs"
command = ~D, DF, F, x

[Command]
name = "Homing"
command = ~D, DB, B, x

[Command]
name = "Peppermint"
command = ~D, DB, B, y

[Command]
name = "Sugar_Rush"
command = ~D, D, x+y
time = 30

;-| ２回押し技 |------------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| ２・３個の同時押し技 |--------------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

;-| 方向とボタンで出す技 |--------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン設定（いじらない）|-----------------------------------------------
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

;-| 押しっぱなし設定（いじらない）|-----------------------------------------
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

;---------------------------------------------------------------------------
; Statedef -1
;---------------------------------------------------------------------------
;下の記述↓は絶対に消さないでください。
[Statedef -1]

;===========================================================================
;必殺技
;---------------------------------------------------------------------------
;クッパブレス
[State -1, クッパブレス]
type = ChangeState
value = 1300
triggerall = Command = "Candyball"
trigger1 = StateType != A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;スパイクボンバー
[State -1, スパイクボンバー]
type = ChangeState
value = 1100
triggerall = Command = "Gumballs"
trigger1 = StateType != A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;スパイクボンバー
[State -1, スパイクボンバー]
type = ChangeState
value = 1200
triggerall = Command = "Peppermint"
trigger1 = StateType != A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;スパイクボンバー
[State -1, スパイクボンバー]
type = ChangeState
value = 1400
triggerall = Command = "Homing"
trigger1 = StateType != A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;テイルアタック
[State -1, テイルアタック]
type = ChangeState
value = 3000
triggerall = Command = "Sugar_Rush"
trigger1 = StateType != A
trigger1 = Ctrl
triggerall = power>=1000

;===========================================================================
;特殊技
;---------------------------------------------------------------------------

;===========================================================================
;通常技
;---------------------------------------------------------------------------
;立ちパンチ
[State -1, 立ちパンチ]
type = ChangeState
value = 200
triggerall = Command = "x"
trigger1 = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;立ちキック
[State -1, 立ちキック]
type = ChangeState
value = 210
triggerall = Command = "y"
trigger1 = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;しゃがみパンチ
[State -1, しゃがみパンチ]
type = ChangeState
value = 400
triggerall = Command = "x"
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl

;---------------------------------------------------------------------------
;しゃがみキック
[State -1, しゃがみキック]
type = ChangeState
value = 410
triggerall = Command = "y"
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl

;---------------------------------------------------------------------------
;空中パンチ
[State -1, 空中パンチ]
type = ChangeState
value = 600
triggerall = Command = "x"
trigger1 = Statetype = A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;空中キック
[State -1, 空中キック]
type = ChangeState
value = 610
triggerall = Command = "y"
trigger1 = Statetype = A
trigger1 = Ctrl

;挑発
[State -1, 挑発]
type = ChangeState
value = 195
triggerall = Command = "start"
trigger1 = StateType = S
trigger1 = Ctrl
