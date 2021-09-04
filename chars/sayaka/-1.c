;===========================================================================
;������-1 states������
;===========================================================================
[remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| default values |-------------------------------------------------------

[defaults]
command.time = 15
command.buffer.time = 1

;-| ai activation |---------------------------------------------------------
[command]
name = "ai1"
command = DF, B, DB, D, DF, F, B, D, DB, x
time = 1

[command]
name = "ai2"
command = DF, B, DB, D, DF, F, B, D, DB, y
time = 1

[command]
name = "ai3"
command = DF, B, DB, D, DF, F, B, D, DB, z
time = 1

[command]
name = "ai4"
command = DF, B, DB, D, DF, F, B, D, DB, a
time = 1

[command]
name = "ai5"
command = DF, B, DB, D, DF, F, B, D, DB, b
time = 1

[command]
name = "ai6"
command = DF, B, DB, D, DF, F, B, D, DB, c
time = 1

[command]
name = "ai7"
command = DF, B, DB, D, DF, F, B, D, DB, x+y
time = 1

[command]
name = "ai8"
command = DF, B, DB, D, DF, F, B, D, DB, y+z
time = 1

[command]
name = "ai9"
command = DF, B, DB, D, DF, F, B, D, DB, z+x
time = 1

[command]
name = "ai10"
command = DF, B, DB, D, DF, F, B, D, DB, a+b
time = 1

[command]
name = "ai11"
command = DF, B, DB, D, DF, F, B, D, DB, b+c
time = 1

[command]
name = "ai12"
command = DF, B, DB, D, DF, F, B, D, DB, c+a
time = 1

[command]
name = "ai13"
command = DF, B, DB, D, DF, F, B, D, DB, x+a
time = 1

[command]
name = "ai14"
command = DF, B, DB, D, DF, F, B, D, DB, x+b
time = 1

[command]
name = "ai15"
command = DF, B, DB, D, DF, F, B, D, DB, x+c
time = 1

[command]
name = "ai16"
command = DF, B, DB, D, DF, F, B, D, DB, y+a
time = 1

[command]
name = "ai17"
command = DF, B, DB, D, DF, F, B, D, DB, y+b
time = 1

[command]
name = "ai18"
command = DF, B, DB, D, DF, F, B, D, DB, y+c
time = 1

[command]
name = "ai19"
command = DF, B, DB, D, DF, F, B, D, DB, z+a
time = 1

[command]
name = "ai20"
command = DF, B, DB, D, DF, F, B, D, DB, z+b
time = 1

[command]
name = "ai21"
command = DF, B, DB, D, DF, F, B, D, DB, z+c
time = 1

[command]
name = "ai22"
command = DF, B, DB, D, DF, F, B, D, DB, x+y+z
time = 1

[command]
name = "ai23"
command = DF, B, DB, D, DF, F, B, D, DB, x+y+a
time = 1

[command]
name = "ai24"
command = DF, B, DB, D, DF, F, B, D, DB, x+y+b
time = 1

[command]
name = "ai25"
command = DF, B, DB, D, DF, F, B, D, DB, x+y+c
time = 1

[command]
name = "ai26"
command = DF, B, DB, D, DF, F, B, D, DB, x+a+z
time = 1

[command]
name = "ai27"
command = DF, B, DB, D, DF, F, B, D, DB, x+b+z
time = 1

[command]
name = "ai28"
command = DF, B, DB, D, DF, F, B, D, DB, x+c+z
time = 1

[command]
name = "ai29"
command = DF, B, DB, D, DF, F, B, D, DB, a+y+z
time = 1

[command]
name = "ai30"
command = DF, B, DB, D, DF, F, B, D, DB, b+y+z
time = 1

[command]
name = "ai31"
command = DF, B, DB, D, DF, F, B, D, DB, c+y+z
time = 1

[command]
name = "ai32"
command = DF, B, DB, D, DF, F, B, D, DB, a+b+c
time = 1

;-| hypers |--------------------------------------------------------

[command]
name = "affettuoso1"
command = ~D, DB, B, x+a
time = 30

[command]
name = "affettuoso2"
command = ~D, DB, B, y+b
time = 30

[command]
name = "affettuoso3"
command = ~D, DB, B, z+c
time = 30

[command]
name = "grandioso1"
command = ~D, DF, F, x+a
time = 30

[command]
name = "grandioso2"
command = ~D, DF, F, y+b
time = 30

[command]
name = "grandioso3"
command = ~D, DF, F, z+c
time = 30

[command]
name = "arioso1"
command = ~D, DB, B, F, x
time = 30

[command]
name = "arioso2"
command = ~D, DB, B, F, y
time = 30

[command]
name = "arioso3"
command = ~D, DB, B, F, z
time = 30

[command]
name = "sforzando1"
command = ~D, DF, F, D, DF, F, x
time = 30

[command]
name = "sforzando2"
command = ~D, DF, F, D, DF, F, y
time = 30

[command]
name = "sforzando3"
command = ~D, DF, F, D, DF, F, z
time = 30

[command]
name = "tempestoso1"
command = ~D, DB, B, D, DB, B, a
time = 30

[command]
name = "tempestoso2"
command = ~D, DB, B, D, DB, B, b
time = 30

[command]
name = "tempestoso3"
command = ~D, DB, B, D, DB, B, c
time = 30


;-| specials |------------------------------------------------------

[command]
name = "oratorio1"
command = ~D, DF, F, x

[command]
name = "oratorio2"
command = ~D, DF, F, y

[command]
name = "oratorio3"
command = ~D, DF, F, z

[command]
name = "scherzo1"
command = ~D, DF, F, a

[command]
name = "scherzo2"
command = ~D, DF, F, b

[command]
name = "scherzo3"
command = ~D, DF, F, c

[command]
name = "aero1"
command = ~D, DB, B, a

[command]
name = "aero2"
command = ~D, DB, B, b

[command]
name = "aero3"
command = ~D, DB, B, c

[command]
name = "aria"
command = ~D, D, s

;-| ex |---------------------------------------------------------

[command]
name = "ppp"
command = x+y

[command]
name = "ppp"
command = x+z

[command]
name = "ppp"
command = y+z

[command]
name = "ppp"
command = x+y+z

[command]
name = "kkk"
command = a+b

[command]
name = "kkk"
command = a+c

[command]
name = "kkk"
command = b+c

[command]
name = "kkk"
command = a+b+c

[Command]
name = "sjump-n"
command = $D, U
time = 10

[Command]
name = "sjump-f"
command = $D, UF
time = 10

[Command]
name = "sjump-b"
command = $D, UB
time = 10

;-| original command |------------------------------------------------------
[command]
name = "hold_s"
command = /s
time = 1

[command]
name = "sdown"
command = /D
time = 1

[command]
name = "sdownfwd"
command = /DF
time = 1

[command]
name = "sdownback"
command = /DB
time = 1

[command]
name = "u"
command = /U
time = 1

[command]
name = "uf"
command = /UF
time = 1

[command]
name = "ub"
command = /UB
time = 1

;-| double tap |-----------------------------------------------------------
[command]
name = "ff"     ;required (do not remove)
command = F, F
time = 10

[command]
name = "bb"     ;required (do not remove)
command = B, B
time = 10

;-| 2/3 button combination |-----------------------------------------------
[command]
name = "recovery";required (do not remove)
command = x+y
time = 1

[command]
name = "p+k"
command = x+a
time = 1

[command]
name = "p+k"
command = y+b
time = 1

[command]
name = "p+k"
command = z+c
time = 1

;-| dir + button |----------------------------------------------------------
[command]
name = "fwd_a"
command = /F,a
time = 1

[command]
name = "fwd_b"
command =/F,b
time = 1

name = "fwd_c"
command = /F,c
time = 1

[command]
name = "fwd_x"
command = /F,x
time = 1

[command]
name = "fwd_s"
command = /F,s
time = 1

[command]
name = "fwd_y"
command = /F,y
time = 1

[command]
name = "fwd_z"
command = /F,z
time = 1

[command]
name = "back_a"
command = /B,a
time = 1

[command]
name = "back_b"
command = /B,b
time = 1

[command]
name = "back_c"
command = /B,c
time = 1

[command]
name = "back_x"
command = /B,x
time = 1

[command]
name = "back_y"
command = /B,y
time = 1

[command]
name = "back_z"
command = /B,z
time = 1

[command]
name = "down_a"
command = /$D,a
time = 1

[command]
name = "down_b"
command = /$D,b
time = 1

[command]
name = "down_c"
command = /$D,c
time = 1

[command]
name = "down_x"
command = /$D,x
time = 1

[command]
name = "down_y"
command = /$D,y
time = 1

[command]
name = "down_z"
command = /$D,z
time = 1

;-| single button |---------------------------------------------------------
[command]
name = "a"
command = a
time = 1

[command]
name = "b"
command = b
time = 1

[command]
name = "c"
command = c
time = 1

[command]
name = "x"
command = x
time = 1

[command]
name = "y"
command = y
time = 1

[command]
name = "z"
command = z
time = 1

[command]
name = "start"
command = s
time = 1

;-| dir |--------------------------------------------------------------
[command]
name = "fwd"
command = $F
time = 1

[command]
name = "back"
command = $B
time = 1

[command]
name = "up"
command = $U
time = 1

[command]
name = "down"
command = $D
time = 1

;-| hold dir |--------------------------------------------------------------
[command]
name = "holdfwd";required (do not remove)
command = /$F
time = 1

[command]
name = "holdback";required (do not remove)
command = /$B
time = 1

[command]
name = "holdup" ;required (do not remove)
command = /$U
time = 1

[command]
name = "holddown";required (do not remove)
command = /$D
time = 1

[statedef -1]
;===========================================================================
;�����K�E�Z��
;===========================================================================
;���E�C���悹�ăO�����f�B�I�[�\
[state -1, grandioso]
type = changestate
value = 3200
triggerall = command = "grandioso1" || command = "grandioso2" || command = "grandioso3"
triggerall = statetype = a
triggerall = power >= 3000
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = stateno = [400,450]
trigger2 = movecontact
;---------------------------------------------------------------------------
;�����`�����ɃA���I�[�\
[state -1, arioso]
type = changestate
value = 3100
triggerall = command = "arioso1" || command = "arioso2" || command = "arioso3"
triggerall = statetype != a
triggerall = power >= 1000
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;���������߂ăX�t�H���c�@���h
[state -1, sforzando]
type = changestate
value = 3000
triggerall = command = "sforzando1" || command = "sforzando2" || command = "sforzando3"
triggerall = statetype != a
triggerall = power >= 1000
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;���N�z���e���y�X�g�[�\
[state -1, tempestoso]
type = changestate
value = 3300
triggerall = command = "tempestoso1" || command = "tempestoso2" || command = "tempestoso3"
triggerall = statetype != a
triggerall = power >= 1000
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;���N���ׂɃA�t�F�b�g�D�I�[�\
[state -1, affettuoso]
type = changestate
value = 3400
triggerall = command = "affettuoso1" || command = "affettuoso2" || command = "affettuoso3"
triggerall = statetype != a
triggerall = power >= 1000
triggerall = var(40) = 2
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;===========================================================================
;���K�E�Z��
;===========================================================================
;�������̃I���g���I�P
[state -1, oratorio1]
type = changestate
value = 1000
triggerall = command = "oratorio1"
triggerall = statetype != a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]		;�ʏ�Z
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;�������̃I���g���I�Q
[state -1, oratorio1]
type = changestate
value = 1030
triggerall = command = "oratorio2"
triggerall = statetype != a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;�������̃I���g���I�R
[state -1, oratorio1]
type = changestate
value = 1060
triggerall = command = "oratorio3"
triggerall = statetype != a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;�������̃I���g���I�󒆂P
[state -1, oratorio mid air1]
type = changestate
value = 1100
triggerall = command = "oratorio1"
triggerall = statetype = a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = stateno = [400,450]
trigger2 = (stateno != 420) && (stateno != 450)
trigger2 = movecontact
;---------------------------------------------------------------------------
;�������̃I���g���I�󒆂Q
[state -1, oratorio mid air2]
type = changestate
value = 1130
triggerall = command = "oratorio2"
triggerall = statetype = a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = stateno = [400,450]
trigger2 = (stateno != 420) && (stateno != 450)
trigger2 = movecontact
;---------------------------------------------------------------------------
;�������̃I���g���I�󒆂R
[state -1, oratorio mid air3]
type = changestate
value = 1160
triggerall = command = "oratorio3"
triggerall = statetype = a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = stateno = [400,450]
trigger2 = (stateno != 420) && (stateno != 450)
trigger2 = movecontact
;---------------------------------------------------------------------------
;���e�x��X�P���c�H�P
[state -1, scherzo1]
type = changestate
value = 1200
triggerall = command = "scherzo1"
triggerall = statetype != a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;���e�x��X�P���c�H�Q
[state -1, scherzo1]
type = changestate
value = 1210
triggerall = command = "scherzo2"
triggerall = statetype != a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;���e�x��X�P���c�H�R
[state -1, scherzo1]
type = changestate
value = 1220
triggerall = command = "scherzo3"
triggerall = statetype != a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;���ؘR����̃A���A
[state -1, aria]
type = changestate
value = 1500
triggerall = command = "aria"
triggerall = statetype != a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = movecontact
;---------------------------------------------------------------------------
;���G�A���_�C�u
[state -1, aero dive]
type = changestate
value = 80
triggerall = command = "aero1" || command = "aero2" || command = "aero3"
triggerall = var(50) = 0
trigger1 = var(9) = 1
trigger1 = ctrl
;---------------------------------------------------------------------------
;���ւ��剻
[state -1, hecho]
type = changestate
value = 197
triggerall = (command = "hold_s") && (command = "p+k")
triggerall = statetype != a
triggerall = var(40) = 0
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [195,199]
trigger4 = stateno = [200,350]
trigger4 = roundstate > 2		;���E���h�O�̂�
;===========================================================================
;���V�X�e����
;===========================================================================
;���K�[�h�L�����Z��
[state -1, guard cancel attack]
type = changestate
value = 2000
triggerall = command = "kkk"
triggerall = statetype != a
triggerall = power >= 1000
triggerall = var(50) = 0
trigger1 = stateno = [150,155]
ignorehitpause = 1
;---------------------------------------------------------------------------
;���}�M�J�u�[�g
[state -1, magica boot]
type = changestate
value = 900+(command="holdfwd")
triggerall = command = "ppp"
triggerall = power >= 1000
triggerall = var(8) > 0
triggerall = var(50) = 0
trigger1 = stateno = [200,499]
trigger1 = movecontact
trigger2 = stateno = [501,503]
trigger2 = movecontact
trigger3 = (stateno = 551) && (animelemtime(7) >= 0)
trigger4 = stateno = [1000,1999]
trigger4 = prevstateno != [3210,3230]
;===========================================================================
;�������Z��
;===========================================================================
;���u���[�A�[��
[state -1, blue-r]
type = changestate
value = 500
triggerall = command = "recovery"
triggerall = (command = "holdfwd") || (command = "holdback")
triggerall = statetype = s
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = stateno = 197
trigger2 = time > 10
;---------------------------------------------------------------------------
;���K�E�V��\����
[state -1, cc sword]
type = changestate
value = 550
triggerall = command = "recovery"
triggerall = (command = "holdfwd") || (command = "holdback")
triggerall = statetype = a
triggerall = var(50) = 0
trigger1 = ctrl
;===========================================================================
;���⏕�����
;===========================================================================
;���_�b�V��
[state -1, run fwd]
type = changestate
value = 100
triggerall = command = "ff"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 197
trigger2 = time > 10
;---------------------------------------------------------------------------
;���o�b�N�X�e�b�v
[state -1, step back]
type = changestate
value = 105
triggerall = command = "bb"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 197
trigger2 = time > 10
;---------------------------------------------------------------------------
;���󒆃_�b�V��
[state -1, air dash fwd]
type = changestate
value = 110
triggerall = command = "ff"
triggerall = var(10) > 0
triggerall = var(50) = 0
trigger1 = stateno != 110
trigger1 = statetype = a
trigger1 = ctrl
;---------------------------------------------------------------------------
;���󒆃o�b�N�_�b�V��
[state -1, air dash back]
type = changestate
value = 115
triggerall = command = "bb"
triggerall = var(10) > 0
triggerall = var(50) = 0
trigger1 = stateno != 115
trigger1 = statetype = a
trigger1 = ctrl
;---------------------------------------------------------------------------
;���X�[�p�[�W�����v
[state -1, super jump]
type = changestate
value = 60
triggerall = (command = "sjump-n") || (command = "sjump-f") || (command = "sjump-b")
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 197
trigger2 = time > 10
;---------------------------------------------------------------------------
;���G�A�W�����v
[state -1, triple jump]
type = changestate
value = 45
triggerall = command = "up"
triggerall = var(10) > 0
triggerall = var(50) = 0
trigger1 = statetype = a
trigger1 = time >= 10
trigger1 = ctrl
;---------------------------------------------------------------------------
;���W�����v�L�����Z��
[state -1, jump]
type = changestate
value = 40
triggerall = command = "up" || command = "holdup" || var(7)
triggerall = movehit
triggerall = var(10) > 0
triggerall = var(50) = 0
trigger1 = stateno = [200,350]
trigger1 = (stateno != 252) && (stateno != 350)
ignorehitpause = 1
;---------------------------------------------------------------------------
;���G�A�W�����v�L�����Z��
[state -1, dowble jump]
type = changestate
value = 45
triggerall = command = "up" || var(7)
triggerall = movehit
triggerall = var(10) > 0
triggerall = var(50) = 0
trigger1 = stateno = [400,450]
trigger1 = (stateno != 420) && (stateno != 450)
ignorehitpause = 1
;===========================================================================
;������Z��
;===========================================================================
;��������
[state -1, matagi shooting sword]
type = changestate
value = 460
triggerall = command = "down_c"
triggerall = var(50) = 0
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = [400,450]
trigger2 = (stateno != 420) && (stateno != 450)
trigger2 = movecontact
;===========================================================================
; �ʏ�Z
;===========================================================================
;���������p���`�E���ガ
[state -1, standing jab]
type = changestate
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = stateno = 197
trigger2 = time > 10
;---------------------------------------------------------------------------
;���������p���`�Eikuzo�a��
[state -1, standing strong]
type = changestate
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = (stateno != 210) && (stateno != 310)
trigger2 = (stateno != 220) && (stateno != 320)
trigger2 = (stateno != 240) && (stateno != 342)
trigger2 = (stateno != 252) && (stateno != 350)
trigger2 = movecontact
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;��������p���`�E�g���a��
[state -1, standing fierce]
type = changestate
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = (stateno != 220) && (stateno != 320)
trigger2 = (stateno != 252) && (stateno != 350)
trigger2 = movecontact
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;���������L�b�N�E��a��
[state -1, standing short]
type = changestate
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 300
trigger2 = movecontact || (animelemtime(4) > 0)
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;���������L�b�N�E���ʊ���
[state -1, standing forward]
type = changestate
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = (stateno != 220) && (stateno != 320)
trigger2 = (stateno != 240) && (stateno != 342)
trigger2 = (stateno != 252) && (stateno != 350)
trigger2 = movecontact
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;��������L�b�N�E�C����
[state -1, standing roundhouse]
type = changestate
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = (stateno != 252) && (stateno != 350)
trigger2 = movecontact
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;�����Ⴊ�ݏ��p���`�E���ガ
[state -1, crouching jab]
type = changestate
value = 300
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 197
trigger2 = time > 10
;---------------------------------------------------------------------------
;�����Ⴊ�ݒ��p���`�E���鐅����
[state -1, crouching strong]
type = changestate
value = 310
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = (stateno != 210) && (stateno != 310)
trigger2 = (stateno != 220) && (stateno != 320)
trigger2 = (stateno != 240) && (stateno != 342)
trigger2 = (stateno != 252) && (stateno != 350)
trigger2 = movecontact
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;�����Ⴊ�ݑ�p���`�E�C�]�a��
[state -1, crouching fierce]
type = changestate
value = 320
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = (stateno != 220) && (stateno != 320)
trigger2 = (stateno != 252) && (stateno != 350)
trigger2 = movecontact
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;�����Ⴊ�ݏ��L�b�N�E���Ⴊ�݂�a��
[state -1, crouching short]
type = changestate
value = 330
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 300
trigger2 = movecontact
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;�����Ⴊ�ݒ��L�b�N�E�g����
[state -1, crouching forward]
type = changestate
value = 340
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = (stateno != 220) && (stateno != 320)
trigger2 = (stateno != 240) && (stateno != 342)
trigger2 = (stateno != 252) && (stateno != 350)
trigger2 = movecontact
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;�����Ⴊ�ݑ�L�b�N�E�^��a��
[state -1, crouching roundhouse]
type = changestate
value = 350
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = (stateno != 252) && (stateno != 350)
trigger2 = movecontact
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;���W�����v���p���`�E�O�����a��
[state -1, jumping jab]
type = changestate
value = 400
triggerall = command = "x"
triggerall = var(50) = 0
trigger1 = statetype = a
trigger1 = ctrl
;---------------------------------------------------------------------------
;���W�����v���p���`�E�t���C���O�}�[���C�h�`��
[state -1, jumping strong]
type = changestate
value = 410
triggerall = command = "y"
triggerall = var(50) = 0
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = [400,450]
trigger2 = (stateno != 410) && (stateno != 420)
trigger2 = (stateno != 440) && (stateno != 450)
trigger2 = movecontact
;---------------------------------------------------------------------------
;���W�����v��p���`�E��ԗ֎a��
[state -1, jumping fierce]
type = changestate
value = 420
triggerall = command = "z" || command = "c"
triggerall = var(50) = 0
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = [400,450]
trigger2 = (stateno != 420) && (stateno != 450)
trigger2 = movecontact
;---------------------------------------------------------------------------
;���W�����v���L�b�N�E�C�i�d�}�a��
[state -1, jumping short]
type = changestate
value = 430
triggerall = command = "a"
triggerall = var(50) = 0
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
;---------------------------------------------------------------------------
;���W�����v���L�b�N�E�΂ߕԂ�
[state -1, jumping forward]
type = changestate
value = 440
triggerall = command = "b"
triggerall = var(50) = 0
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = [400,450]
trigger2 = (stateno != 420)
trigger2 = (stateno != 440) && (stateno != 450)
trigger2 = movecontact
;---------------------------------------------------------------------------
;������
[state -1, taunt]
type = changestate
value = 195
triggerall = command = "start"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;����������������������������������������������������������������������������
;===========================================================================
;��AI ACTIVATION SWITCH��
;===========================================================================
[state -1, ai]
type = helper
triggerall = numhelper(9990) = 0
triggerall = var(51) = 0
trigger1 = command = "ai1"
trigger2 = command = "ai2"
trigger3 = command = "ai3"
trigger4 = command = "ai4"
trigger5 = command = "ai5"
trigger6 = command = "ai6"
trigger7 = command = "ai7"
trigger8 = command = "ai8"
trigger9 = command = "ai9"
trigger10 = command = "ai10"
trigger11 = command = "ai11"
trigger12 = command = "ai12"
trigger13 = command = "ai13"
trigger14 = command = "ai14"
trigger15 = command = "ai15"
trigger16 = command = "ai16"
trigger17 = command = "ai17"
trigger18 = command = "ai18"
trigger19 = command = "ai19"
trigger20 = command = "ai20"
trigger21 = command = "ai21"
trigger22 = command = "ai22"
trigger23 = command = "ai23"
trigger24 = command = "ai24"
trigger25 = command = "ai25"
trigger26 = command = "ai26"
trigger27 = command = "ai27"
trigger28 = command = "ai28"
trigger29 = command = "ai29"
trigger30 = command = "ai30"
trigger31 = command = "ai31"
trigger32 = command = "ai32"
trigger33 = var(52) = 1
helpertype = normal
name = "sayaka ai"
pos = -160,0
postype = front
facing = facing
id = 9990
stateno = 9990
pausemovetime = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal = 1
;===========================================================================
;�����ϐ���
;===========================================================================
;�����Z�b�g
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = (movetype = h) && (stateno != [130,155])
trigger2 = var(53) = 1
trigger2 = (vel y > 0)
trigger3 = var(53) = [20,22]
trigger3 = (pos y = 0) && (time > 5)
trigger4 = var(53) = [30,31]
trigger4 = (pos y = 0)
trigger5 = var(53) = 40
trigger5 = (stateno = 420) || (stateno = [200,399]) || ((numenemy = 1) && ((enemy,pos y = 0) || (enemy,movetype = a)))
trigger6 = var(53) = [50,51]
trigger6 = var(9) = 0
trigger7 = var(53) = 60
trigger7 = stateno = [0,101]
trigger8 = var(53) = [100,101]
trigger8 = (vel y < 0) || ((numenemy = 1) && (enemy,movetype != h)) || ((numenemy = 1) && (enemy,statetype = l)) || ((stateno = 200) && (animelemtime(4) = [0,3])) 
trigger9 = var(53) = 102
trigger9 = stateno = 200
trigger9 = animelemtime(3) > 0
trigger10 = var(53) = 102
trigger10 = (numenemy = 1) && (enemy,movetype != h)
trigger11 = var(53) = 102
trigger11 = (stateno = 350) && (time > 1); && movehit
trigger11 = var(8) := 0					;���`�F�b�N
trigger12 = var(53) = 102
trigger12 = (stateno = 3300)
trigger13 = var(53) = 103
trigger13 = (numenemy = 1) && (enemy,movetype != h)
trigger14 = var(53) = 104
trigger14 = pos y = 0
trigger15 = var(50) = 1
trigger15 = random <= 50*var(50);250
trigger16 = var(50) = 2
trigger16 = random <= 10*var(50);50
trigger17 = var(50) = 3
trigger17 = random <= 5*var(50);25
trigger18 = var(50) = 4
trigger18 = random <= 1*var(50);5
var(53) = 0

;�����������X�J�鑊��
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = 467
var(53) = 40

;���X�[�p�[�W�����v�E���[�h
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = 60
var(53) = 50+(var(1)<50)

;���X�e�b�v�E���[�h
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = 106
trigger1 = p2bodydist x > 120
var(53) = 60

;���X�t�H���c�@���h�E���i�q�b�g
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = (var(50) = 5) || (random <= 80*var(50));400
trigger1 = var(14) <= 1
trigger1 = stateno = 3000
trigger1 = movehit
var(53) = 105

;���A���I�[�\�E�P�̃q�b�g
[state -1, varset]
type = null;varset
triggerall = var(50) != 0
triggerall = (var(50) = 5) || (random <= 80*var(50));400
trigger1 = stateno = 3110
trigger1 = movehit
var(53) = 102

;���K�[�h�L�����Z���E�C���^�[�o��
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = 2000
var(55) = 3500-100*var(50)

[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = var(55) > 0
var(55) = -1
ignorehitpause = 1

;�����G�Z�E�C���^�[�o��
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = 3000
trigger2 = stateno = 3100
var(56) = 600

[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = var(56) > 0
var(56) = -1
ignorehitpause = 1

;�������E�C���^�[�o��
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = [195,199]
trigger1 = time < 5
var(57) = 500

[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = var(57) > 0
var(57) = -1
ignorehitpause = 1

;���������G�F������
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = numenemy
trigger1 = enemy,roundsexisted = 0
trigger1 = roundstate < 2
trigger2 = (stateno = 500) || (stateno = 550)
trigger2 = movehit
var(54) = 0

;�������͂ߖh�~
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = [200,350]
trigger1 = p2statetype != l
trigger1 = movecontact
var(48) = 30

[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = [400,450]
trigger1 = p2statetype != l
trigger1 = movecontact
var(48) = 90

[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = var(48) > 0
var(48) = -1
ignorehitpause = 1

;���ݐϊĎ�
[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = p2movetype = a
var(49) = 1

[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = p2movetype != a
var(49) = 0

;���X�P���c�H�E�R�}���h�Ǘ�
[state -1, varset]
type = varset
triggerall = var(50) > 1
triggerall = (var(50) = 5) || (random <= 80*var(50));400
trigger1 = stateno = 1200
var(7) = 2-(p2statetype=a)*2

[state -1, varset]
type = varset
triggerall = var(50) > 1
triggerall = (var(50) = 5) || (random <= 80*var(50));400
trigger1 = stateno = 1210
var(7) = 3-(p2statetype=a)*3
;===========================================================================
;�����������
;===========================================================================
;�����p���`
[state -1, jab]
type = changestate
value = 200+(var(2)%3=0)*100
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
triggerall = p2bodydist x < 50
trigger1 = random <= 20*var(50)+(var(50)=4)*100+(var(50)=5)*200;100+100/200
trigger1 = prevstateno = [130,155]			;���K�[�h�q�b�g�Ď�
;---------------------------------------------------------------------------
;�����L�b�N
[state -1, short]
type = changestate
value = 230+(var(2)%3=0)*100
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
trigger1 = p2bodydist x = [50,100]
trigger1 = random <= 20*var(50)+(var(50)=4)*100+(var(50)=5)*200;100+100/200
trigger1 = prevstateno = [130,155]			;���K�[�h�q�b�g�Ď�
;---------------------------------------------------------------------------
;�����L�b�N
[state -1, forward]
type = changestate
value = 240+(var(2)%2=0)*100
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
trigger1 = p2bodydist x = [50,140]
trigger1 = random <= 10*var(50)+(var(50)=4)*50+(var(50)=5)*100;50+50/100
trigger1 = prevstateno = [130,155]			;���K�[�h�q�b�g�Ď�
;---------------------------------------------------------------------------
;�����Ⴊ�ݑ�L�b�N
[state -1, crouching roundhouse]
type = changestate
value = 350
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
trigger1 = p2bodydist x = [120,220]
trigger1 = random <= 15*var(50);75
trigger1 = prevstateno = [130,155]			;���K�[�h�q�b�g�Ď�
;---------------------------------------------------------------------------
;���������߂ăX�t�H���c�@���h
[state -1, sforzando]
type = changestate
value = 3000
triggerall = var(50) != 0
triggerall = var(56) = 0
triggerall = power > 1000
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101) || ((stateno = 5120) && (animtime = 0))
triggerall = statetype != a
triggerall = p2movetype = a
trigger1 = p2bodydist x = [-5,100]
trigger1 = var(49) = [(20-(prevstateno=[150,155])*16),30]
trigger1 = p2dist y > -60
trigger1 = random <= 10*var(50);50
;---------------------------------------------------------------------------
;�����`�����ɃA���I�[�\
[state -1, arioso]
type = changestate
value = 3100
triggerall = var(50) > 2
triggerall = var(56) = 0
triggerall = power > 1000
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101) || ((stateno = 5120) && (animtime = 0))
triggerall = statetype != a
triggerall = p2movetype = a
trigger1 = p2bodydist x > -5
trigger1 = var(49) = [(20-(prevstateno=[150,155])*16),30]
trigger1 = p2statetype != a
trigger1 = random <= 5*var(50);25
;---------------------------------------------------------------------------
;���K�[�h�L�����Z��
[state -1, guard cancel attack]
type = changestate
value = 2000
triggerall = var(50) > 2
triggerall = var(55) = 0
triggerall = power > 1000
triggerall = alive && numenemy
triggerall = stateno = [150,153]
triggerall = statetype != a
triggerall = time < 10
triggerall = life < p2life || life < lifemax/3
trigger1 = p2bodydist x = [-5,80]
trigger1 = p2dist y > -80
trigger1 = backedgedist < 160
trigger1 = random <= 5*var(50);25
ignorehitpause = 1
;===========================================================================
;���R���������
;===========================================================================
;���K�[�h
[state -1, guard]
type = changestate
value = 120
triggerall = var(50) != 0
triggerall = var(53) != 30
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = inguarddist
triggerall = stateno != 105
triggerall = stateno != 81
triggerall = stateno != [110,115]
triggerall = random <= 40*var(58)*var(50)
trigger1 = enemynear,hitdefattr = sca, aa
trigger2 = enemynear,hitdefattr = sca, ap
trigger3 = enemynear,numproj || (enemynear,numhelper && p2movetype != h)
;===========================================================================
;���_�b�V��(ai)
[state -1, run fwd]
type = changestate
value = 101
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = ctrl || ((stateno = 21) && (anim = 21) && (time > 100))
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = stateno != [100,101]
trigger1 = p2bodydist x > 100
trigger1 = p2movetype != a
trigger1 = random <= 50*var(50);250
trigger2 = p2movetype = h 				;�����肪�n���炢�A���I�R��
trigger2 = p2statetype = s || p2statetype = c
trigger2 = random <= 100*var(50);500
trigger3 = ctrl 					;������������
trigger3 = var(53) = 105
trigger3 = p2bodydist x > 40
trigger3 = var(53) := 101
trigger4 = p2dist x = [-30,30]
trigger4 = p2statetype = l
trigger4 = roundstate = 2
trigger4 = random <= 30*var(50);150
;===========================================================================
;���^�b�O�p�G���g����
;===========================================================================
;������
[state -1, assist & attack]
type = changestate
value = ifelse(((power<1000)||var(56)),1000,(3000+(p2bodydist x>80)*100))
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = p2movetype = a
triggerall = p2bodydist x > -30
triggerall = p2bodydist y > -30
triggerall = numpartner
trigger1 = partner,time > 6
trigger1 = partner,alive
trigger1 = partner,movetype = h
trigger1 = var(30) != 120
trigger1 = partner,statetype != l
triggerall = random <= (60-(var(56)!=0)*40)*var(50);300
;---------------------------------------------------------------------------
;�����E
[state -1, escape]
type = changestate
value = 60+(var(1)<10)*45
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = ctrl || (stateno = 21) || (stateno = 101) || ((stateno = 5120) && (animtime = 0))
trigger1 = prevstateno != 105
trigger1 = numenemy = 2
trigger1 = enemy(0),alive
trigger1 = enemy(1),alive
trigger1 = ((enemy(0),pos x > pos x) && (enemy(1),pos x < pos x)) || ((enemy(0),pos x < pos x) && (enemy(1),pos x > pos x))
trigger1 = random <= 100*var(50);500
;---------------------------------------------------------------------------
;���N�z���e���y�X�g�[�\
[state -1, tempestoso]
type = changestate
value = 3300
triggerall = var(50) != 0
triggerall = var(53) = 0 || var(53) = 60
triggerall = prevstateno != 3300
triggerall = power >= 1000
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = ctrl || (stateno = 21) || (stateno = 106) || ((stateno = 220) && movehit)
triggerall = (p2statetype = s || p2statetype = c) 
trigger1 = var(12) = 300
trigger1 = var(30) = 3030
trigger1 = random <= 40*var(50);200
;===========================================================================
;���t���[�G���g����
;===========================================================================
;���N���ׂɃA�t�F�b�g�D�I�[�\
[state -1, affettuoso]
type = changestate
value = 3400
triggerall = var(50) > 2
triggerall = var(40) = 2
triggerall = power >= 1000
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = ctrl
trigger1 = p2bodydist x < 120
trigger1 = prevstateno = [120,155]			;���K�[�h
trigger1 = random <= 20*var(50);100
trigger2 = ctrl || ((stateno = 5120) && (animtime = 0))
trigger2 = p2movetype != h
trigger2 = p2bodydist x = [-50,100]
trigger2 = random <= 10*var(50);50
trigger3 = var(53) = 0
trigger3 = (stateno = 200) || (stateno = 300)
trigger3 = p2statetype != a
trigger3 = moveguarded
trigger3 = random <= 5*var(50);25
;---------------------------------------------------------------------------
;���u���[�A�[��
[state -1, blue-r]
type = changestate
value = 500
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(54) <= 5				;�������ϐ��̂��鑊��̓p�X
triggerall = var(48) = 0				;���֎~���O���N���A
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = numtarget = 0
triggerall = enemynear,ctrl
triggerall = (p2bodydist x = [0,30]) && (p2movetype != a)
triggerall = (ctrl && var(27) = 0) || ((stateno = 101) && time >= 10)
triggerall = (p2statetype = s || p2statetype = c)
trigger1 = random <= 30*var(50);150
;---------------------------------------------------------------------------
;�����p���`
[state -1, jab]
type = changestate
value = 200+(var(1)<30)*30
triggerall = var(50) != 0
triggerall = var(53) < 100
triggerall = alive && numenemy
triggerall = (ctrl && var(27) = 0) || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = (p2statetype = s || p2statetype = c) 
trigger1 = p2bodydist x = [-50,65]
trigger1 = p2movetype != a
trigger1 = random <= ((p2movetype=h)*70*var(50))+30*var(50);350+150
;---------------------------------------------------------------------------
;���K�E�V��\����
[state -1, cc sword]
type = changestate
value = 550
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = roundstate = 2
triggerall = numtarget = 0
triggerall = enemynear,hitover
triggerall = ctrl
triggerall = var(54) <= 5				;�������ϐ��̂��鑊��̓p�X
trigger1 = p2movetype != a
trigger1 = p2bodydist x = [-50,70]
trigger1 = p2bodydist y = [-70,10]
trigger1 = time > 10 || life < 300
trigger1 = random <= 30*var(50);150
;===========================================================================
;���W�����v�R���r�l�[�V������
;===========================================================================
;���W�����v
[state -1, jump]
type = changestate
value = 41
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = ctrl || (stateno = 21) || ((stateno = 101) && (time > 100))
trigger1 = p2movetype != a
trigger1 = p2bodydist x > 70
trigger1 = random <= 20*var(50);100
trigger1 = var(53) := 20
trigger2 = p2statetype = l
trigger2 = p2bodydist x < 80
trigger2 = (enemynear,time > 30) || (p2stateno = 5120)
trigger2 = random <= 50*var(50);250
trigger2 = var(53) := 21

;�������̃I���g���I�󒆂Q
[state -1, oratorio mid air2]
type = changestate
value = 1130
triggerall = var(50) != 0
triggerall = var(53) = 20
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
trigger1 = ((p2statetype = a) && (enemynear,time > 20)) || (enemynear,pos y < -80)
trigger1 = pos y < -60
trigger1 = p2bodydist x > 100
trigger1 = random <= 60*var(50);300

;���󒆃_�b�V��
[state -1, air dash fwd]
type = changestate
value = 110
triggerall = var(2) > 180
triggerall = var(50) > 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = (var(50) = 5) || (random <= 80*var(50));400
trigger1 = var(53) = 20
trigger1 = var(10) = 2					;��1st�W�����v
trigger1 = p2movetype != a
trigger1 = pos y < -50
trigger1 = ctrl
trigger2 = var(53) = 21
trigger2 = var(10) = 2					;��1st�W�����v�߂��胂�[�h
trigger2 = pos y < -60
trigger2 = ctrl
trigger2 = var(53) := 22

;���󒆃o�b�N�_�b�V��
[state -1, air dash back]
type = changestate
value = 115-(p2bodydist x>-20)*5
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = var(53) = 22
triggerall = ctrl
triggerall = var(10) = 1				;��2nd�W�����v
triggerall = (var(50) = 5) || (random <= 80*var(50));400
trigger1 = stateno != 110 
trigger1 = (time > 6) || (p2stateno = 5120)
trigger2 = ((stateno = 110) && (time >= 5))
trigger2 = (p2statetype != l) || ((p2stateno = 5120) && (time > 16))
trigger2 = p2bodydist x < -80

;���W�����v���L�b�N�E�߂���
[state -1, jumping forward]
type = changestate
value = 440
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = (var(50) = 5) || (random <= 80*var(50));400
trigger1 = var(53) = 22
trigger1 = var(10) = 0					;��2nd�W�����v
trigger1 = (p2statetype != l) || (p2stateno = 5120)
trigger1 = pos y > -100
trigger1 = ctrl

;���W�����v���p���`
[state -1, jumping jab]
type = changestate
value = 400
triggerall = var(50) != 0
triggerall = var(53) = 20
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = prevstateno != 465
triggerall = (var(50) = 5) || (random <= 80*var(50));400
trigger1 = p2statetype = a
trigger1 = p2bodydist x = [-50,70]
trigger1 = p2bodydist y = [-40,60]
trigger1 = (time > (27-var(50)*3)) || p2movetype = h || life < 300
trigger1 = var(53) := 0
trigger2 = p2statetype != a
trigger2 = p2bodydist x < 90
trigger2 = stateno != 400
trigger2 = ((stateno = 110) && (time >= 12-(var(10)=0)*6)) || ((prevstateno = 110) && ctrl)

;���W�����v���L�b�N
[state -1, jumping short]
type = changestate
value = 430
triggerall = var(50) != 0
triggerall = var(53) = 20
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype != a
triggerall = (var(50) = 5) || (random <= 80*var(50));400
trigger1 = vel y >= 0
trigger1 = pos y < -55
trigger1 = stateno = 400
trigger1 = movehit

;���W�����v���p���`
[state -1, jumping strong]
type = changestate
value = 410
triggerall = var(50) != 0
triggerall = var(53) = 20
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = (var(50) = 5) || (random <= 80*var(50));400
trigger1 = (stateno = 400) || (stateno = 430)
trigger1 = movecontact >= 1+(moveguarded&&(var(10)=0))*3

;���W�����v���L�b�N
[state -1, jumping forward]
type = changestate
value = 440
triggerall = var(50) != 0
triggerall = var(53) = 20
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = (var(50) = 5) || (random <= 80*var(50));400
trigger1 = p2statetype != a
trigger1 = stateno = 410
trigger1 = movecontact
trigger1 = pos y < -70

;��������
[state -1, matagi shooting sword]
type = changestate
value = 460
triggerall = var(50) > 3
triggerall = var(53) = 20
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = var(10) != 0				;������\
triggerall = (var(50) = 5) || (random <= 80*var(50));400
trigger1 = stateno = 410
trigger1 = p2statetype != a
trigger1 = movecontact

;���󒆃_�b�V��
[state -1, air dash fwd]
type = changestate
value = 110
triggerall = var(50) != 0
triggerall = var(53) = 20
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = (var(50) = 5) || (random <= 80*var(50));400
trigger1 = prevstateno = 465
trigger1 = stateno = 50
trigger1 = time > 2
trigger1 = ctrl
;===========================================================================
;���X�e�b�v�R���r�l�[�V������
;===========================================================================
;���o�b�N�X�e�b�v
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = ctrl || (stateno = 21) || (stateno = 101) || ((stateno = 5120) && (animtime = 0))
triggerall = prevstateno != 106
trigger1 = p2dist x > 60
trigger1 = p2statetype != a
trigger1 = p2statetype != l
trigger1 = random <= 10*var(50);50
trigger1 = var(53) := 60
trigger2 = var(12) = 300
trigger2 = var(30) = [3000,3030]
trigger2 = random <= 40*var(50);200
trigger2 = var(53) := 60

;���������߂ăX�t�H���c�@���h
[state -1, sforzando]
type = changestate
value = 3000+(p2bodydist x>80)*100
triggerall = var(50) != 0
triggerall = var(53) = 60
triggerall = var(56) = 0
triggerall = power >= 1500
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = stateno = 106
triggerall = time > 3
trigger1 = p2statetype != a
trigger1 = p2movetype = a
trigger1 = random <= 10*var(50)+20*var(50)*((backedgebodydist<50)&&(p2bodydist x<100));50+100

;�������̃I���g���I
[state -1, oratorio]
type = changestate
value = 1000+(p2bodydist y<-70)*30
triggerall = var(50) != 0
triggerall = var(53) = 60
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = stateno = 106
trigger1 = random <= 30*var(50);150

;�������̃I���g���I�R
[state -1, oratorio3]
type = changestate
value = 1060
triggerall = var(50) != 0
triggerall = var(53) = 60
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = stateno = 106
triggerall = p2movetype != a
triggerall = life > 300					;���]�T������Ƃ�
trigger1 = p2dist x > 160
trigger2 = p2statetype = l
triggerall = random <= 20*var(50);100

;���e�x��X�P���c�H�P
[state -1, scherzo1]
type = changestate
value = 1200
triggerall = var(50) != 0
triggerall = var(53) = 60
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = stateno = 106
trigger1 = p2bodydist x > 80
trigger1 = p2statetype != a
trigger1 = random <= 20*var(50);100

;���N�z���e���y�X�g�[�\
[state -1, tempestoso]
type = changestate
value = 3300
triggerall = var(50) != 0
triggerall = var(53) = 60
triggerall = power >= 1000
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = stateno = 106
trigger1 = p2bodydist x > 80
trigger1 = p2statetype != a
trigger1 = p2movetype = a
trigger1 = random <= 40*var(50);200

;���ؘR����̃A���A
[state -1, aria]
type = changestate
value = 1500
triggerall = var(50) != 0
triggerall = var(53) = 60
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = stateno = 106
trigger1 = p2bodydist x > 120
trigger1 = p2statetype != a
trigger1 = p2movetype != a
trigger1 = random <= 20*var(50);100
;===========================================================================
;���X�[�p�[�W�����v�R���r�l�[�V������
;===========================================================================
;���X�[�p�[�W�����v
[state -1, super jump]
type = changestate
value = 60
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = ctrl || (stateno = 21) || (stateno = 101)
trigger1 = p2bodydist x = [-30,30]
trigger1 = p2statetype != a
trigger1 = random <= 8*var(50);40
trigger1 = var(7) := ifelse(frontedgedist>160,1,(random<600)-1)
trigger2 = p2dist x > 160
trigger2 = p2statetype != a
trigger2 = random <= 8*var(50);40
;---------------------------------------------------------------------------
;�����[�h�P
;---------------------------------------------------------------------------
;���󒆃_�b�V��
[state -1, air dash fwd]
type = changestate
value = 110
triggerall = var(50) != 0
triggerall = var(53) = 50
triggerall = var(9) = 1
triggerall = var(10) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
triggerall = (var(50) = 5) || (random <= 80*var(50));400
trigger1 = pos y < -200

;��������
[state -1, matagi shooting sword]
type = changestate
value = 460
triggerall = var(50) != 0
triggerall = var(53) = 50
triggerall = var(9) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl || ((stateno = 110) && (time >= 3))
triggerall = (var(50) = 5) || (random <= 80*var(50));400
trigger1 = p2dist x = [-20,20]
trigger2 = prevstateno = 465
trigger2 = p2dist x = [-50-50*(p2statetype=l),50+50*(p2statetype=l)]

;���W�����v��p���`
[state -1, jumping fierce]
type = changestate
value = 420
triggerall = var(50) != 0
triggerall = var(53) = 50
triggerall = var(9) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
triggerall = (var(50) = 5) || (random <= 80*var(50));400
trigger1 = p2dist x = [-100,100]
trigger1 = p2dist y = [-100,100]
trigger1 = vel y > 0
trigger1 = p2movetype = a

;�������̃I���g���I�󒆂Q
[state -1, oratorio mid air2]
type = changestate
value = 1130
triggerall = var(50) != 0
triggerall = var(53) = 50
triggerall = var(9) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
trigger1 = pos y < -60
trigger1 = p2statetype = a
trigger1 = p2dist y = [-40,40]
trigger1 = random <= 60*var(50);300
;---------------------------------------------------------------------------
;�����[�h�Q
;---------------------------------------------------------------------------
;���󒆃o�b�N�_�b�V��
[state -1, air dash back]
type = changestate
value = 115
triggerall = var(50) != 0
triggerall = var(53) = 51
triggerall = var(9) = 1
triggerall = var(10) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
triggerall = stateno != [80,81]
triggerall = prevstateno != [80,81]
triggerall = (var(50) = 5) || (random <= 80*var(50));400
trigger1 = p2bodydist x = [-100,100]
trigger1 = pos y < -280

;���G�A���_�C�u
[state -1, aero dive]
type = changestate
value = 80
triggerall = var(50) != 0
triggerall = var(53) = 51
triggerall = var(9) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
triggerall = stateno != 115
triggerall = stateno != 81
triggerall = prevstateno != [80,81]
triggerall = (vel y > 0) || (random <= 60*var(50));300
trigger1 = ((p2dist x < 140) && (pos y = [-200,-180])) || (pos y < -280)
trigger1 = var(7) := (p2dist x=[120,309])*3+(p2dist x>310)*15

;���W�����v���p���`
[state -1, jumping strong]
type = changestate
value = 410
triggerall = var(50) != 0
triggerall = var(53) = 51
triggerall = var(9) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = random <= 80*var(50);400
triggerall = p2movetype != a
triggerall = (var(50) = 5) || (random <= 80*var(50));400
trigger1 = p2statetype != a
trigger1 = stateno = 81
trigger1 = ctrl
trigger1 = pos y = [-230,-200]

;���W�����v���p���`
[state -1, jumping jab]
type = changestate
value = 400
triggerall = var(50) != 0
triggerall = var(53) = 51
triggerall = var(9) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = random <= 80*var(50);400
triggerall = stateno = 81
triggerall = ctrl
trigger1 = p2bodydist x = [-60,60]
trigger2 = p2bodydist y = [-180,-160]
trigger3 = pos y = [-200,-180]

;���W�����v��p���`
[state -1, jumping fierce]
type = changestate
value = 420
triggerall = var(50) != 0
triggerall = var(53) = 51
triggerall = var(9) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = random <= 80*var(50);400
triggerall = stateno = 81
triggerall = ctrl
trigger1 = p2statetype = a
trigger1 = pos y = [-250,-220]

;��������
[state -1, matagi shooting sword]
type = changestate
value = 460
triggerall = var(50) != 0
triggerall = var(53) = 51
triggerall = var(9) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = random <= 80*var(50);400
trigger1 = stateno = 81
trigger1 = ctrl
trigger1 = p2dist x = [-20,20]
trigger2 = ctrl
trigger2 = prevstateno = 465
trigger2 = p2dist x = [-50-50*(p2statetype=l),50+50*(p2statetype=l)]
trigger2 = random <= 150*var(50);750

;�������̃I���g���I�󒆂Q
[state -1, oratorio mid air2]
type = changestate
value = 1130
triggerall = var(50) != 0
triggerall = var(53) = 51
triggerall = var(9) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
trigger1 = pos y < -60
trigger1 = p2statetype = a
trigger1 = p2dist y = [-40,40]
trigger1 = random <= 60*var(50);300
;===========================================================================
;���n��R���{��
;===========================================================================
;�����p���`
[state -1, jab]
type = changestate
value = 200+(p2statetype=c)*100
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = (ctrl && var(27) = 0) || (stateno = 101)
triggerall = statetype != a
trigger1 = var(53) = 102				;���X�P���c�H�R���n��q�b�g
trigger1 = p2statetype = s || p2statetype = c 
trigger1 = p2bodydist x = [-50,50]
trigger1 = random <= 160*var(50);800
;---------------------------------------------------------------------------
;�����L�b�N
[state -1, short]
type = changestate
value = 230+(statetype=c)*100
triggerall = var(50) != 0
triggerall = var(53) != [100,101]
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = (stateno = 200) || (stateno = 300)
trigger1 = movecontact
trigger1 = random <= 100*var(50);500
;---------------------------------------------------------------------------
;�����p���`
[state -1, strong]
type = changestate
value = 210+(statetype=c)*100
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = p2bodydist x < 60
triggerall = statetype != a
trigger1 = (stateno = 230) || (stateno = 330)
trigger1 = movehit = [1,10]
trigger1 = random <= 100*var(50);500
trigger2 = (stateno = 200) || (stateno = 230) || (stateno = 300) || (stateno = 330)
trigger2 = moveguarded
trigger2 = random <= 20*var(50);100
;---------------------------------------------------------------------------
;�����L�b�N
[state -1, forward]
type = changestate
value = 240+(p2bodydist x>60)*100
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype != a
trigger1 = (stateno = 210) || (stateno = 310)
trigger1 = movehit = [1,10]
trigger1 = random <= 100*var(50);500
trigger2 = (stateno = 230) || (stateno = 330)
trigger2 = movehit = [1,10]
trigger2 = random <= 100*var(50);500
trigger3 = (stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 300) || (stateno = 330)
trigger3 = moveguarded
trigger3 = random <= 30*var(50);150
;---------------------------------------------------------------------------
;��������p���`
[state -1, standing fierce]
type = changestate
value = 220
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = (stateno = 240) || (stateno = 342)
trigger1 = movehit = [1,10]
trigger1 = random <= 150*var(50);750
trigger2 = (stateno = 240) || (stateno = 342)
trigger2 = moveguarded
trigger2 = random <= 30*var(50);150
trigger3 = (stateno = 210) || (stateno = 310)
trigger3 = p2statetype = a
trigger3 = movehit = [1,10]
trigger3 = random <= 100*var(50);500
;---------------------------------------------------------------------------
;�����`�����ɃA���I�[�\
[state -1, arioso]
type = changestate
value = 3100+(roundstate!=2)*200
triggerall = var(50) != 0
triggerall = power >= 1000
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = var(53) = 102				;���X�P���c�H�n��R���{
trigger1 = var(8) = 0					;���}�M�J�u�[�g�����~�b�g
trigger1 = (stateno = 220)
trigger1 = movehit = [1,10]
trigger1 = random <= (enemynear,life<180)*40*var(50)+(power>2000)*20*var(50)+20*var(50);200+100+100
;---------------------------------------------------------------------------
;���N�z���e���y�X�g�[�\
[state -1, tempestoso]
type = changestate
value = 3300
triggerall = var(50) != 0
triggerall = power >= 1000
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype != a
trigger1 = life > 500					;���]�T������Ƃ�
trigger1 = p2bodydist x > 100				;�����h���I�ȃA��
trigger1 = (stateno = 220)
trigger1 = movehit = [1,5]
trigger1 = random <= 20*var(50);100
trigger2 = life > 500					;���]�T������Ƃ�
trigger2 = p2bodydist x > 50				;�����h���I�ȃA��
trigger2 = (stateno = 350)
trigger2 = moveguarded = [1,5]
trigger2 = random <= 20*var(50);100
trigger3 = var(53) = 102				;���X�P���c�H�n��R���{
trigger3 = var(8) = 0					;���}�M�J�u�[�g�����~�b�g
trigger3 = (stateno = 220)
trigger3 = movehit = [1,10]
trigger3 = random <= (enemynear,life<180)*40*var(50)+(power>2000)*20*var(50)+20*var(50);200+100+100
;---------------------------------------------------------------------------
;���e�x��X�P���c�H�P
[state -1, scherzo1]
type = changestate
value = 1200
triggerall = var(50) != 0
triggerall = var(53) != 102
triggerall = var(8) != 0				;���}�M�J�u�[�g�\
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype != a
trigger1 = (stateno = 220)
trigger1 = movehit = [1,5]
trigger1 = random <= (power<3000)+20*var(50)+20*var(50);100+100
;---------------------------------------------------------------------------
;��������L�b�N
[state -1, standing roundhouse]
type = changestate
value = 250
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = (stateno = 220)
trigger1 = moveguarded
trigger1 = p2statetype = c
trigger1 = random <= 30*var(50);150
;---------------------------------------------------------------------------
;�����Ⴊ�ݑ�L�b�N
[state -1, crouching roundhouse]
type = changestate
value = 350
triggerall = var(50) != 0
triggerall = (var(53) != 102) || ((var(53) = 102) && (var(8) = 0)) || ((ctrl && var(27) = 0) || (stateno = 21)) || numpartner
triggerall = roundstate = 2
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype != a
trigger1 = (stateno = 220)
trigger1 = movehit = [1,5]
trigger1 = random <= 190*var(50);950
trigger2 = (stateno = 210) || (stateno = 220) || (stateno = 240) || (stateno = 342)
trigger2 = moveguarded
trigger2 = random <= 50*var(50);250
trigger3 = var(53) = 102				;���X�P���c�H�n��R���{�Y
trigger3 = ctrl || (stateno = 21)
trigger3 = frontedgedist < 60
trigger3 = prevstateno != 350
trigger3 = (enemynear,pos y > -10) || (p2statetype = l)
trigger3 = random <= 100*var(50);500
;---------------------------------------------------------------------------
;���e�x��X�P���c�H�P�i�t�H���[�j
[state -1, scherzo1]
type = changestate
value = 1200
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = (stateno = 220) || (stateno = 250) || (stateno = 350)
trigger1 = moveguarded
trigger1 = random <= 50*var(50);250
;---------------------------------------------------------------------------
;�������̃I���g���I�R
[state -1, oratorio1]
type = changestate
value = 1060
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = life > 500					;���]�T������Ƃ�
trigger1 = (stateno = 220) || (stateno = 250) || (stateno = 350)
trigger1 = moveguarded
trigger1 = random <= 10*var(50);50
trigger2 = life > 500					;���]�T������Ƃ�
trigger2 = (stateno = 250)
trigger2 = movehit
trigger2 = random <= 50*var(50);250
;---------------------------------------------------------------------------
;���ؘR����̃A���A
[state -1, aria]
type = changestate
value = 1500
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = (stateno = 350)
trigger1 = movehit = [1,10]
trigger1 = frontedgedist > 120
trigger1 = life != lifemax
trigger1 = random <= 30*var(50);150
;---------------------------------------------------------------------------
;�������̃I���g���I�P
[state -1, oratorio1]
type = changestate
value = 1000+(roundstate!=2)*60
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = frontedgedist < 180
trigger1 = (stateno = 350)
trigger1 = p2statetype != l
trigger1 = movehit = [1,10]
trigger1 = random <= 150*var(50);750
trigger2 = (stateno = 220)
trigger2 = p2statetype = a
trigger2 = movehit = [1,10]
trigger2 = random <= 80*var(50);400
;---------------------------------------------------------------------------
;���e�x��X�P���c�H�R
[state -1, scherzo1]
type = changestate
value = 1220
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = (stateno = 350)
trigger1 = movehit = [1,5]
trigger1 = frontedgedist > 120
trigger1 = random <= 100*var(50);500
trigger1 = var(53) := 101				;�����[�h�`�F���W
;---------------------------------------------------------------------------
;���}�M�J�u�[�gN
[state -1, magica boot]
type = changestate
value = 900
triggerall = var(50) > 2
triggerall = var(8) > 0
triggerall = alive && numenemy
triggerall = power >= 1000
triggerall = roundstate = 2
trigger1 = (stateno = 1010)				;���I���g���I�E�z���C�]��
trigger1 = movehit = [5,10];[3,10]
trigger1 = frontedgedist < 12;20
trigger1 = p2bodydist x = [-60,20]
trigger1 = random <= 200*var(50);1000
trigger1 = var(53) := 100				;�����[�h�`�F���W
trigger2 = (stateno = 502)				;���n�㓊��
trigger2 = var(50) > 3					;�����x��4�ȏ�
trigger2 = movehit = 1
trigger2 = random <= (70+(life<lifemax/3)*80)*var(50);350
trigger2 = var(53) := 103				;�����[�h�`�F���W
;---------------------------------------------------------------------------
;���}�M�J�u�[�gD
[state -1, magica boot]
type = changestate
value = 901
triggerall = var(50) > 2
triggerall = var(8) > 0
triggerall = alive && numenemy
triggerall = power >= 1000
triggerall = roundstate = 2
trigger1 = (stateno = 1220)				;���X�P���c�H�R
trigger1 = var(53) = 101
trigger1 = animelemtime(5) = [0,3]
trigger1 = random <= 200*var(50);1000
trigger2 = (stateno = 1220)				;���X�P���c�H�R
trigger2 = var(53) != 101
trigger2 = p2movetype = h
trigger2 = p2stateno != [120,155]
trigger2 = animelemtime(5) = [0,3]
trigger2 = random <= 200*var(50);1000
trigger2 = var(53) := 102				;�����[�h�`�F���W
trigger3 = (stateno = 551)				;���󒆓���
trigger3 = var(50) = 5					;�����x��5
trigger3 = power >= 4000				;���O�����f�B�I�[�\�܂ł�����ꍇ
trigger3 = animelemtime(7) = 1
trigger3 = random <= 150*var(50);750
trigger3 = var(53) := 104				;�����[�h�`�F���W
;---------------------------------------------------------------------------
;���}�M�J�u�[�gN�i�t�H���[�j
[state -1, magica boot]
type = changestate
value = 900
triggerall = var(50) > 2
triggerall = var(8) > 0
triggerall = alive && numenemy
triggerall = power >= 1000
triggerall = roundstate = 2
trigger1 = (stateno = 1010)				;���I���g���I�E�z���C�]��
trigger1 = moveguarded
trigger1 = frontedgedist < 12;20
trigger1 = p2bodydist x = [-50,50]
trigger1 = random <= 100*var(50);500
;---------------------------------------------------------------------------
;�����p���`�i�E���j
[state -1, jab]
type = changestate
value = 200
triggerall = var(50) != 0
triggerall = var(53) = 100
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = (p2bodydist x = [-30,30]) && (p2dist y = [-30,0])
trigger2 = numpartner = 0 
trigger2 = time > 10 
;trigger1 = random <= 170*var(50);850
;---------------------------------------------------------------------------
;�����p���`�i�E���j
[state -1, jab]
type = changestate
value = 200
triggerall = var(50) != 0
triggerall = var(53) = 101
triggerall = alive && numenemy
triggerall = (stateno = 101) || (stateno = 901)
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = (p2bodydist x = [-23,23]) && (p2dist y = [-40,0])
trigger2 = p2dist x < 40
trigger3 = time > 15
;---------------------------------------------------------------------------
;�����p���`�i�E���j
[state -1, jab]
type = changestate
value = 200
triggerall = var(50) != 0
triggerall = var(53) = 105
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = p2dist y = [-40,0]
trigger1 = var(53) := 101
;---------------------------------------------------------------------------
;�����Ⴊ�ݑ�p���`
[state -1, crouching fierce]
type = changestate
value = 320
triggerall = var(50) != 0
triggerall = var(53) = [100,101]
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = (stateno = 200)
trigger1 = movehit = [1,10]
;---------------------------------------------------------------------------
;�����s
[state -1, velset]
type = velset
triggerall = var(53) = 103				;�����o�[���t�ɓ����
triggerall = statetype != a
trigger1 = stateno = 0
trigger2 = stateno = 21
trigger2 = time < 3
x = 0

[state -1, walk]
type = changestate
value = 21
triggerall = var(50) != 0
triggerall = var(53) = 103
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = ctrl
trigger1 = time <= 1
trigger1 = var(53) := 105
;===========================================================================
;���󒆃R���{��
;===========================================================================
;���W�����v���p���`�i�\�����R���{�j
[state -1, jumping jab]
type = changestate
value = 400
triggerall = var(50) != 0
triggerall = var(9) = 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = ctrl
triggerall = ((stateno = 110) && (time >= 3))
triggerall = var(53) = 104				;���󒆓����R���{
triggerall = (var(50) > 3) || (random <= 150*var(50));750
trigger1 = time > 7
trigger2 = p2bodydist x < 30
;---------------------------------------------------------------------------
;���W�����v���p���`�i�\�����R���{�j
[state -1, jumping strong]
type = changestate
value = 410
triggerall = var(50) != 0
triggerall = var(9) = 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = var(53) = 104				;���󒆓����R���{
triggerall = (var(50) > 3) || (random <= 150*var(50));750
trigger1 = stateno = 400
trigger1 = movehit
trigger1 = var(53) := 30
;---------------------------------------------------------------------------
;���W�����v���p���`
[state -1, jumping jab]
type = changestate
value = 400
triggerall = var(50) != 0
triggerall = var(9) = 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = p2bodydist x = [-20,80]
triggerall = p2bodydist y = [-40,60]
triggerall = (var(50) > 3) || (random <= 150*var(50));750
trigger1 = var(10) = 2					;��1st�W�����v
trigger1 = var(53) != 100
trigger1 = ctrl
trigger1 = prevstateno != 465
trigger2 = var(53) = 30
trigger2 = var(10) = 1					;��2nd�W�����v
trigger2 = ((stateno = 110) && (time >= 3))
trigger2 = time > 5
trigger3 = var(10) = 0					;��3rd�W�����v
trigger3 = var(50) > 2					;�����x��3�ȏ�
trigger3 = var(53) < 100
trigger3 = time > 3
trigger3 = ctrl
;---------------------------------------------------------------------------
;���W�����v���L�b�N
[state -1, jumping short]
type = changestate
value = 430
triggerall = var(50) != 0
triggerall = var(9) = 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = (var(50) > 3) || (random <= 150*var(50));750
trigger1 = (var(53) != 30) || (p2bodydist y < -50)
trigger1 = var(10) = 2					;��1st�W�����v
trigger1 = stateno = 400
trigger1 = movecontact
trigger2 = var(10) = 0					;��3rd�W�����v
trigger2 = var(50) > 3					;�����x��4�ȏ�
trigger2 = stateno = 400
trigger2 = movehit > 1
;---------------------------------------------------------------------------
;���W�����v���p���`
[state -1, jumping strong]
type = changestate
value = 410
triggerall = var(50) != 0
triggerall = var(9) = 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = (var(50) > 3) || (random <= 200*var(50));1000
trigger1 = var(10) = 2					;��1st�W�����v
trigger1 = stateno = 430
trigger1 = movehit > 1
trigger2 = var(10) = 1					;��2nd�W�����v
trigger2 = stateno = 400
trigger2 = movehit > 1
trigger3 = var(10) = 0					;��3rd�W�����v
trigger3 = stateno = 430
trigger3 = movehit > 1
trigger4 = var(10) = 0					;��3rd�W�����v
trigger4 = var(50) = 3					;�����x��3�̂Ƃ�
trigger4 = stateno = 400
trigger4 = movehit > 1
;---------------------------------------------------------------------------
;���W�����v���p���`�i�n��t�H���[�j
[state -1, jumping strong]
type = changestate
value = 410
triggerall = var(50) != 0
triggerall = var(9) = 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype != a
trigger1 = var(10) = 2					;��1st�W�����v
trigger1 = stateno = 430
trigger1 = movecontact
trigger1 = random <= 50*var(50);250
;---------------------------------------------------------------------------
;�������̃I���g���I�󒆁i�t�H���[�j
[state -1, oratorio mid air]
type = changestate
value = 1100+(p2bodydist y=[-30,30])*30
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
trigger1 = (stateno = 410) || (stateno = 430)
trigger1 = moveguarded
trigger1 = random <= 80*var(50)+300*(var(53)=40);400+300
;---------------------------------------------------------------------------
;���E�C���悹�ăO�����f�B�I�[�\
[state -1, grandioso]
type = changestate
value = 3200-((var(50)=3)&&(random<300))*2780
triggerall = var(50) != 0
triggerall = var(9) = 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = power >= 3000
triggerall = (var(50) > 3) || (random <= 150*var(50));750
trigger1 = numtarget
trigger1 = target,alive
trigger1 = (var(10) = 0) || (var(53) = 104)		;��3rd�W�����v
trigger1 = stateno = 410
trigger1 = movehit > 1
;trigger1 = (var(50) = 3) || (random <= 180*var(50));900
trigger1 = var(7) := 3
trigger2 = var(50) = 3					;�����x��3��p�R���{
trigger2 = var(10) = 2					;��1st�W�����v
trigger2 = var(14) > 3					;�����E���ł͂Ȃ�
trigger2 = numtarget
trigger2 = target,alive
trigger2 = stateno = 410
trigger2 = movehit
trigger2 = var(7) := 3
trigger3 = var(53) = 40					;���������X���[����
trigger3 = var(10) = 2					;��1st�W�����v
trigger3 = numtarget
trigger3 = target,alive
trigger3 = stateno = 410
trigger3 = movehit
trigger3 = var(7) := 2+(p2bodydist y < -30)
;---------------------------------------------------------------------------
;��������
[state -1, matagi shooting sword]
type = changestate
value = 460
triggerall = var(50) > 2
triggerall = var(53) != 40
triggerall = var(9) = 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a || numenemy = 2
triggerall = (var(50) > 3) || (random <= 150*var(50));750
trigger1 = var(10) = 2					;��1st�W�����v
trigger1 = numtarget
trigger1 = target,alive
trigger1 = stateno = 410
trigger1 = movehit
trigger1 = var(53) := 30
trigger2 = stateno = 430
trigger2 = moveguarded
trigger2 = var(53) := 31
;---------------------------------------------------------------------------
;���󒆃_�b�V��
[state -1, air dash fwd]
type = changestate
value = 110
triggerall = var(50) > 1
triggerall = var(9) = 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a || numenemy = 2
trigger1 = var(10) = 2					;��1st�W�����v
trigger1 = var(53) = [30,31]
trigger1 = stateno = 50
trigger1 = time > 2
trigger1 = ctrl
;---------------------------------------------------------------------------
;���G�A�W�����v
[state -1, air jump]
type = changestate
value = 45
triggerall = var(50) != 0
triggerall = var(9) = 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a || numenemy = 2
trigger1 = var(10) = 1					;��2nd�W�����v
trigger1 = numtarget
trigger1 = target,alive
trigger1 = stateno = 410
trigger1 = movehit
;---------------------------------------------------------------------------
;�������̃I���g���I�󒆂R
[state -1, oratorio mid air3]
type = changestate
value = 1160
triggerall = var(50) != 0
triggerall = var(9) = 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = (var(50) > 3) || (random <= 150*var(50));750
trigger1 = var(10) = 0					;��3rd�W�����v
trigger1 = (stateno = 410)
trigger1 = movehit > 1
trigger1 = random <= 100*var(50)+(enemynear,alive=0)*500;500
trigger2 = var(10) = 2					;��1st�W�����v�A���肪�r���Ŏ���
trigger2 = enemynear,alive = 0
trigger2 = stateno = 410
trigger2 = movehit > 1
trigger3 = var(10) = 1					;��2nd�W�����v�A���肪�r���Ŏ���
trigger3 = enemynear,alive = 0
trigger3 = stateno = 410
trigger3 = movehit = 1
trigger4 = var(50) < 3					;�����S�҃��[�h
trigger4 = var(10) = 2					;��1st�W�����v
trigger4 = numtarget
trigger4 = target,alive
trigger4 = stateno = 410
trigger4 = movehit
;---------------------------------------------------------------------------
;���W�����v��p���`
[state -1, jumping fierce]
type = changestate
value = 420+(p2bodydist y<-20)*740
triggerall = var(50) != 0
triggerall = var(9) = 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a || numenemy = 2
triggerall = (var(50) > 3) || (random <= 200*var(50));1000
trigger1 = var(10) = 0					;��3rd�W�����v���I�R��
trigger1 = (stateno = 410)
trigger1 = movehit > 1
trigger2 = var(53) = 31
trigger2 = var(10) = 1					;��2nd�W�����v
trigger2 = ((stateno = 110) && (time >= 3))
trigger2 = time > 5
trigger3 = var(53) = 40					;���ǌ����s
trigger3 = stateno = 410
trigger3 = movehit > 1
trigger4 = var(53) = 30
trigger4 = var(10) = 1					;��2nd�W�����v�i���s�j
trigger4 = ((stateno = 110) && (time >= 3))
trigger4 = time > 8
trigger5 = var(50) < 3					;�����S�҃��[�h
trigger5 = var(10) = 2					;��1st�W�����v
trigger5 = numtarget
trigger5 = target,alive
trigger5 = stateno = 410
trigger5 = movehit
trigger6 = var(10) = 2					;��1st�W�����v
trigger6 = var(53) = 40
trigger6 = stateno = 410
trigger6 = moveguarded					;���������X�J�肩��̘A�W�A���I�R��
trigger7 = var(53) = 0
trigger7 = var(10) = 2					;��1st�W�����v�i�^�b�O�p�H�j
trigger7 = stateno = 410
trigger7 = movehit > 5
;===========================================================================
;���R���������
;===========================================================================
;���W�����v
[state -3, jump]
type = changestate
value = 41
triggerall = var(50) != 0
triggerall = var(53) != 105
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = (var(12) != 300) || ((var(12) = 300) && (var(30) != [3500,3530]));�}�~����̎ז������Ȃ�
trigger1 = roundstate = 2
trigger1 = var(53) != [100,101]				;���}���W�����v
trigger1 = ctrl || (stateno = 21) || (stateno = 101)
trigger1 = p2statetype = a
trigger1 = p2movetype != a
trigger1 = p2bodydist x = [-10,140]
trigger1 = p2bodydist y = [-140,0]
trigger1 = random <= 50*var(50);250
trigger2 = var(53) = [100,101]				;���ǌ��W�����v
trigger2 = stateno = 320
trigger2 = movehit = [1,10]
trigger2 = random <= 170*var(50);850
trigger3 = (var(12) != 300) || ((var(12) = 300) && (var(30) != [3500,3530]));�}�~����̎ז������Ȃ�
trigger3 = p2statetype != a				;������W�����v
trigger3 = ctrl || (stateno = 21) || (stateno = 101)
trigger3 = enemynear,hitdefattr = sca, at
trigger3 = random <= 40*var(50);200
trigger3 = var(53) := 1
;---------------------------------------------------------------------------
;���o�b�N�X�e�b�v
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = prevstateno != 106
triggerall = backedgedist > 30
trigger1 = p2dist x = [-60,60]
trigger1 = p2movetype = a
trigger1 = random <= 5*var(50);25
trigger2 = p2dist x = [-60,60]
trigger2 = p2stateno = 5120
trigger2 = random <= 60*var(50);300
trigger3 = time > 300					;�����₩��300
trigger3 = random <= 20*var(50);100
trigger4 = (var(12) = 300) && (var(30) = [3500,3530])	;�}�~����̎ז������Ȃ�
trigger4 = stateno = 21
trigger4 = time > 120
trigger4 = random <= 40*var(50);200
;---------------------------------------------------------------------------
;���o�b�N�X�e�b�v�i�ւ�������j
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = stateno = 197
trigger1 = time > 100
trigger1 = random <= 30
;---------------------------------------------------------------------------
;���o�b�N�X�e�b�v�i���E���h�O�j
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) != 0
triggerall = var(27) = 0				;���t�F�C�^���e�B�ł͂Ȃ�
triggerall = var(40) != 1				;���Ԃ����낵�ĂȂ�
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = (stateno = 0) && (anim = 0)
trigger1 = roundstate > 2
trigger1 = frontedgedist < 40
;---------------------------------------------------------------------------
;���N���オ��
[state -1, hit_getup]
type = changestate
value = 5120
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = l
triggerall = stateno = 5110
triggerall = hitover
trigger1 = time > 20
trigger1 = random <= 50*var(50);250
;---------------------------------------------------------------------------
;�����s
[state -1, walk]
type = changestate
value = 21
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = ctrl
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = anim != [100,105]
triggerall = prevstateno != 21
trigger1 = random <= 100-10*var(50);50
;---------------------------------------------------------------------------
;������
[state -1, taunt]
type = changestate
value = 195+(life=lifemax)*2
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(57) = 0
triggerall = var(40) = 0
triggerall = var(37) = 1
triggerall = alive
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = prevstateno != [195,199]
triggerall = life > floor(lifemax*0.6)
trigger1 = time = 3
trigger1 = var(2)%5 = 0
trigger1 = roundstate != 2
trigger1 = matchover != 1
trigger2 = var(50) = 1					;�����S�҃��[�h
trigger2 = life > floor(lifemax*0.7)
trigger2 = random <= 50
trigger3 = roundstate = 2
trigger3 = life > p2life*2				;���������]�T
trigger3 = random <= 30+60*(p2statetype=l)
;---------------------------------------------------------------------------
;���ؘR����̃A���A
[state -1, aria]
type = changestate
value = 1500
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2	
triggerall = statetype != a
triggerall = ctrl || (stateno = 21)
trigger1 = p2bodydist x > 160
trigger1 = p2statetype = l
trigger1 = random <= 30*var(50);150
trigger2 = numenemy > 1
trigger2 = var(0) = 0					;�������U
trigger2 = enemy(0),movetype = h
trigger2 = enemy(1),movetype = h
trigger2 = p2bodydist x > 50
trigger2 = random <= 50*var(50);250
;---------------------------------------------------------------------------
;���u���[�L
[state -1, brake]
type = changestate
value = 0
triggerall = var(50) != 0
triggerall = alive
triggerall = statetype != a
triggerall = prevstateno != 0
triggerall = roundstate != 2
triggerall = stateno = 101
trigger1 = time > 90
trigger2 = p2dist x < 0
ctrl = 1
;---------------------------------------------------------------------------
;��AI���o�p
[state -1, width]
type = width
trigger1 = var(50) != 0
trigger1 = roundstate != 2
edge = 1,1
