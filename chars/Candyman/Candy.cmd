;-| �K�E�Z |----------------------------------------------------------------
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

;-| �Q�񉟂��Z |------------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| �Q�E�R�̓��������Z |--------------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

;-| �����ƃ{�^���ŏo���Z |--------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| �{�^���ݒ�i������Ȃ��j|-----------------------------------------------
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

;-| �������ςȂ��ݒ�i������Ȃ��j|-----------------------------------------
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
;���̋L�q���͐�΂ɏ����Ȃ��ł��������B
[Statedef -1]

;===========================================================================
;�K�E�Z
;---------------------------------------------------------------------------
;�N�b�p�u���X
[State -1, �N�b�p�u���X]
type = ChangeState
value = 1300
triggerall = Command = "Candyball"
trigger1 = StateType != A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;�X�p�C�N�{���o�[
[State -1, �X�p�C�N�{���o�[]
type = ChangeState
value = 1100
triggerall = Command = "Gumballs"
trigger1 = StateType != A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;�X�p�C�N�{���o�[
[State -1, �X�p�C�N�{���o�[]
type = ChangeState
value = 1200
triggerall = Command = "Peppermint"
trigger1 = StateType != A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;�X�p�C�N�{���o�[
[State -1, �X�p�C�N�{���o�[]
type = ChangeState
value = 1400
triggerall = Command = "Homing"
trigger1 = StateType != A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;�e�C���A�^�b�N
[State -1, �e�C���A�^�b�N]
type = ChangeState
value = 3000
triggerall = Command = "Sugar_Rush"
trigger1 = StateType != A
trigger1 = Ctrl
triggerall = power>=1000

;===========================================================================
;����Z
;---------------------------------------------------------------------------

;===========================================================================
;�ʏ�Z
;---------------------------------------------------------------------------
;�����p���`
[State -1, �����p���`]
type = ChangeState
value = 200
triggerall = Command = "x"
trigger1 = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;�����L�b�N
[State -1, �����L�b�N]
type = ChangeState
value = 210
triggerall = Command = "y"
trigger1 = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;���Ⴊ�݃p���`
[State -1, ���Ⴊ�݃p���`]
type = ChangeState
value = 400
triggerall = Command = "x"
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl

;---------------------------------------------------------------------------
;���Ⴊ�݃L�b�N
[State -1, ���Ⴊ�݃L�b�N]
type = ChangeState
value = 410
triggerall = Command = "y"
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl

;---------------------------------------------------------------------------
;�󒆃p���`
[State -1, �󒆃p���`]
type = ChangeState
value = 600
triggerall = Command = "x"
trigger1 = Statetype = A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;�󒆃L�b�N
[State -1, �󒆃L�b�N]
type = ChangeState
value = 610
triggerall = Command = "y"
trigger1 = Statetype = A
trigger1 = Ctrl

;����
[State -1, ����]
type = ChangeState
value = 195
triggerall = Command = "start"
trigger1 = StateType = S
trigger1 = Ctrl
