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
name = "finale1"
command = ~D, DF, F, x+a
time = 30

[command]
name = "finale2"
command = ~D, DF, F, y+b
time = 30

[command]
name = "finale3"
command = ~D, DF, F, z+c
time = 30

[command]
name = "meteorite1"
command = ~D, DB, B, D, DB, B, x
time = 30

[command]
name = "meteorite2"
command = ~D, DB, B, D, DB, B, y
time = 30

[command]
name = "meteorite3"
command = ~D, DB, B, D, DB, B, z
time = 30

[command]
name = "tempesta1"
command = ~D, DB, B, D, DB, B, a
time = 30

[command]
name = "tempesta2"
command = ~D, DB, B, D, DB, B, b
time = 30

[command]
name = "tempesta3"
command = ~D, DB, B, D, DB, B, c
time = 30

;-| specials |------------------------------------------------------

[command]
name = "miraggio1"
command = ~D, DB, B, a

[command]
name = "miraggio2"
command = ~D, DB, B, b

[command]
name = "miraggio3"
command = ~D, DB, B, c

[command]
name = "rondine1"
command = ~D, DF, F, x

[command]
name = "rondine2"
command = ~D, DF, F, y

[command]
name = "rondine3"
command = ~D, DF, F, z

[command]
name = "legare1"
command = ~D, DF, F, a

[command]
name = "legare2"
command = ~D, DF, F, b

[command]
name = "legare3"
command = ~D, DF, F, c

[command]
name = "volley1"
command = ~D, DB, B, x

[command]
name = "volley2"
command = ~D, DB, B, y

[command]
name = "volley3"
command = ~D, DB, B, z

[command]
name = "volley feint"
command = ~D, DB, B, s

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

[command]
name = "lol"
command = x+z

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
;���e�B���E�t�B�i�[���E�K���b�V�A
[state -1, tiro finale galassia]
type = changestate
value = 3500
triggerall = command = "finale3"
triggerall = numhelper(7300) = 0
triggerall = statetype != a
triggerall = power >= 5000
triggerall = var(50) = 0
triggerall = var(28) = 3
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = stateno != [260,299]
trigger3 = stateno != 215
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;���e�B���E�t�B�i�[���E�L�����E�f�B�E���i
[state -1, tiro finale chiaro di luna]
type = changestate
value = 3400
triggerall = command = "finale2"
triggerall = numhelper(7200) = 0
triggerall = statetype != a
triggerall = power >= 4000
triggerall = var(50) = 0
triggerall = var(28) = [2,3]
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = stateno != [260,299]
trigger3 = stateno != 215
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;���e�B���E�t�B�i�[���E�\���E�����@���e
[state -1, tiro finale sol levante]
type = changestate
value = 3300
triggerall = command = "finale1"
triggerall = numhelper(7100) = 0
triggerall = statetype != a
triggerall = power >= 2000
triggerall = var(50) = 0
triggerall = var(28) = [1,3]
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = stateno != [260,299]
trigger3 = stateno != 215
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;���e�B���E�t�B�i�[��
[state -1, tiro finale]
type = changestate
value = 3200
triggerall = command = "finale1" || command = "finale2" || command = "finale3"
triggerall = statetype = a
triggerall = power >= 3000
triggerall = var(50) = 0
triggerall = var(28) = [0,3]
trigger1 = ctrl
trigger2 = (stateno = [400,450])
trigger2 = (stateno != 420) && (stateno != 450)
trigger2 = movecontact
trigger3 = stateno = 1400
trigger3 = movehit
;---------------------------------------------------------------------------
;���e�B���E���e�I���[�e
[state -1, tiro meteorite]
type = changestate
value = 3100
triggerall = command = "meteorite1" || command = "meteorite2" || command = "meteorite3"
triggerall = numhelper(6501) = 0
triggerall = numhelper(6502) = 0
triggerall = numhelper(6503) = 0
triggerall = numhelper(6504) = 0
triggerall = numhelper(6505) = 0
triggerall = statetype != a
triggerall = power >= 1000
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = stateno != [260,299]
trigger3 = stateno != 215
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;���e�B���E�e���y�X�^
[state -1, tiro tempesta]
type = changestate
value = 3000
triggerall = command = "tempesta1" || command = "tempesta2" || command = "tempesta3"
triggerall = statetype != a
triggerall = power >= 1000
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = stateno != [260,299]
trigger3 = stateno != 215
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;===========================================================================
;���K�E�Z��
;===========================================================================
;���e�B���E�~���b�W�I
[state -1, tiro miraggio]
type = changestate
value = 1300
triggerall = command = "miraggio1" || command = "miraggio2" || command = "miraggio3"
triggerall = statetype != a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = stateno != [260,299]
trigger3 = stateno != 215 && stateno != 225
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;���e�B���E�~���b�W�I�E��
[state -1, tiro miraggio in air]
type = changestate
value = 1310
triggerall = command = "miraggio1" || command = "miraggio2" || command = "miraggio3"
triggerall = statetype = a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440
trigger2 = movecontact
;---------------------------------------------------------------------------
;���e�B���E���H���[
[state -1, tiro volley]
type = changestate
value = 1000
triggerall = command = "volley1" || command = "volley2" || command = "volley3"
triggerall = statetype != a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = stateno != [260,299]
trigger3 = stateno != 215 && stateno != 225
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;���e�B���E���H���[�E�t�F�C���g
[state -1, tiro volley feint]
type = changestate
value = 1030
triggerall = command = "volley feint"
triggerall = statetype != a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = stateno != [260,299]
trigger3 = stateno != 215 && stateno != 225
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;���e�B���E���H���[�E��
[state -1, tiro volley in air]
type = changestate
value = 1100
triggerall = command = "volley1" || command = "volley2" || command = "volley3"
triggerall = statetype = a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440
trigger2 = movecontact
;---------------------------------------------------------------------------
;���e�B���E�����f�B�[�l
[state -1, tiro rondine]
type = changestate
value = 1200
triggerall = command = "rondine1" || command = "rondine2" || command = "rondine3"
triggerall = numhelper(6300) = 0
triggerall = statetype = a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440
trigger2 = movecontact
;---------------------------------------------------------------------------
;�����K�[��
[state -1, legare]
type = changestate
value = 1400
triggerall = command = "legare1" || command = "legare2" || command = "legare3"
triggerall = statetype = a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440
trigger2 = movecontact
;---------------------------------------------------------------------------
;���ւ��剻
[state -1, hecho]
type = changestate
value = 197
triggerall = (command = "hold_s") && (command = "p+k")
triggerall = statetype != a
;triggerall = var(40) = 0
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
trigger2 = stateno = 501
trigger2 = movecontact
trigger3 = stateno = [1000,1999]
;===========================================================================
;�������Z��
;===========================================================================
;���т�
[state -1, binta]
type = changestate
value = 500
triggerall = (command = "recovery") || (command = "lol")
triggerall = (command = "holdfwd") || (command = "holdback")
triggerall = statetype = s
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = stateno = 197
trigger2 = time > 10
;---------------------------------------------------------------------------
;���O�����f�B�[�l
[state -1, grandine]
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
trigger2 = stateno = 1400
trigger2 = movehit
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
;���n�C�W�����v
[state -1, high jump]
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
[state -1, air jump]
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
trigger1 = (stateno != 215) && (stateno != 225) && (stateno != 350) && (stateno != 251)
trigger1 = stateno != [266,299]
ignorehitpause = 1
;---------------------------------------------------------------------------
;���G�A�W�����v�L�����Z��
[state -1, jump cancel]
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
; �ʏ�Z
;===========================================================================
;���������p���`�E�t�F�C���f�[��
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
;���������p���`�P�E�X�N�����b�V
[state -1, standing strong1]
type = changestate
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 230 || stateno = 300 || stateno = 330
trigger2 = movecontact
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;���������p���`�Q�E�e�B���E�h���b�g
[state -1, standing strong2]
type = changestate
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(50) = 0
triggerall = stateno = 210
trigger1 = movecontact
trigger2 = animelemtime(4) >= 0
trigger2 = animelemtime(5) < 0
;---------------------------------------------------------------------------
;��������p���`�P�E�T���g�E�}���e�b��
[state -1, standing fierce1]
type = changestate
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != a
triggerall = var(50) = 0
trigger1 = ctrl
trigger2 = stateno = [210,340]
trigger2 = stateno != [260,290]
trigger2 = stateno != 220 && stateno != 251 && stateno != 320
trigger2 = stateno != 240 && stateno != 215 && stateno != 225
trigger2 = movecontact
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;��������p���`�Q�E�e�B���E�t�H���S�[��
[state -1, standing fierce2]
type = changestate
value = 225
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = var(50) = 0
triggerall = stateno = 220
trigger1 = movecontact
;trigger2 = animelemtime(4) > 2
;trigger2 = animelemtime(5) < 15
;---------------------------------------------------------------------------
;���������L�b�N�E�J���V�E�o�b�V
[state -1, standing short]
type = changestate
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 197
trigger2 = time > 10
;---------------------------------------------------------------------------
;���������L�b�N�E�C�[���E�v���~�I
[state -1, standing forward]
type = changestate
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 230 || stateno = 300 || stateno = 330
trigger2 = movecontact
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;��������L�b�N�E���H���e�B�[�`�F
[state -1, standing roundhouse]
type = changestate
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = [210,340]
trigger2 = stateno != [260,290]
trigger2 = stateno != 220 && stateno != 251 && stateno != 320
trigger2 = stateno != 225
trigger2 = movecontact
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;�����Ⴊ�ݏ��p���`�E�u�b�c�X�g�b�N
[state -1, crouching jab]
type = changestate
value = 300
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 300
trigger2 = movecontact || (animelemtime(3) > 0)
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;�����Ⴊ�ݒ��p���`�E���`�F�E�A�t�B���[�g
[state -1, crouching strong]
type = changestate
value = 310
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 230) || (stateno = 300) || (stateno = 330)
trigger2 = movecontact
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;�����Ⴊ�ݑ�p���`�E�}�M�A�E�t���b�^�[��
[state -1, crouching fierce]
type = changestate
value = 320
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,340]
trigger2 = stateno != [260,290]
trigger2 = stateno != 220 && stateno != 251 && stateno != 320
trigger2 = stateno != 240 && stateno != 215 && stateno != 225
trigger2 = movecontact
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;�����Ⴊ�ݏ��L�b�N�E�J���e�B�I�E���K�b�c�F
[state -1, crouching short]
type = changestate
value = 330
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 197
trigger2 = time > 10
;---------------------------------------------------------------------------
;�����Ⴊ�ݒ��L�b�N�E�J���e�B�I�E�X���H���e
[state -1, crouching forward]
type = changestate
value = 340
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 230) || (stateno = 300) || (stateno = 330)
trigger2 = movecontact
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;�����Ⴊ�ݑ�L�b�N�E�J���e�B�I�E���[�r��
[state -1, crouching roundhouse]
type = changestate
value = 350
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,340]
trigger2 = stateno != [260,290]
trigger2 = stateno != 220 && stateno != 251 && stateno != 320
trigger2 = stateno != 215 && stateno != 225
trigger2 = movecontact
trigger3 = stateno = 197
trigger3 = time > 10
;---------------------------------------------------------------------------
;���W�����v���p���`�E�o���b�g��R���|
[state -1, jumping jab]
type = changestate
value = 400
triggerall = command = "x"
triggerall = var(50) = 0
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = prevstateno != 400
trigger2 = movecontact
;---------------------------------------------------------------------------
;���W�����v���p���`�E�A���A�E�X�p�[�_
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
trigger2 = (stateno != 415) && (stateno != 417)
trigger2 = movecontact
;---------------------------------------------------------------------------
;���W�����v���p���`�Q�E�e�B���E�V�G�[��
[state -1, jumping strong2]
type = changestate
value = 415
triggerall = command = "y"
triggerall = var(50) = 0
trigger1 = stateno = 410
trigger1 = animelemtime(1) > 2
;---------------------------------------------------------------------------
;���W�����v���p���`�R�E�e�B���E�t�B�A���}
[state -1, jumping strong3]
type = changestate
value = 417
triggerall = command = "y"
triggerall = var(50) = 0
triggerall = stateno = 415
trigger1 = movecontact
trigger2 = animelemtime(5) > 2
;---------------------------------------------------------------------------
;���W�����v��p���`�E�f�A�E���B�g���A
[state -1, jumping fierce]
type = changestate
value = 420
triggerall = command = "z"
triggerall = var(50) = 0
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = [400,450]
trigger2 = (stateno != 420) && (stateno != 450)
trigger2 = (stateno != 415) && (stateno != 417)
trigger2 = movecontact
;---------------------------------------------------------------------------
;���W�����v���L�b�N�E�J���e�B�I�E�u���C��
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
;���W�����v���L�b�N�E�J���e�B�I�E�g�D�[�m
[state -1, jumping forward]
type = changestate
value = 440
triggerall = command = "b"
triggerall = var(50) = 0
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410) || (stateno = 430)
trigger2 = movecontact
;---------------------------------------------------------------------------
;���W�����v��L�b�N�E�}�M�A�E�g�}���H�[�N
[state -1, jumping roundhouse]
type = changestate
value = 450
triggerall = var(50) = 0
triggerall = command = "c"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = [400,450]
trigger2 = (stateno != 420) && (stateno != 450)
trigger2 = (stateno != 415) && (stateno != 417)
trigger2 = movecontact
;---------------------------------------------------------------------------
;���z�[���[�E�J�f���c�@�P�E�e�B���E���F���[�`�F
[state -1, holy cadenza1]
type = changestate
value = 260
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(50) = 0
trigger1 = stateno = 200
trigger1 = animelemtime(5) < 0
trigger1 = movecontact
;---------------------------------------------------------------------------
;���z�[���[�E�J�f���c�@�Q�E�e�B���E�A���g��
[state -1, holy cadenza2]
type = changestate
value = 263
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(50) = 0
trigger1 = stateno = 260
trigger1 = animelemtime(5) < 0
trigger1 = movecontact
;---------------------------------------------------------------------------
;���z�[���[�E�J�f���c�@�R�E�J���V�E�o�b�V
[state -1, holy cadenza3]
type = changestate
value = 266
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(50) = 0
trigger1 = stateno = 263
trigger1 = animelemtime(6) < 0
trigger1 = movecontact
;---------------------------------------------------------------------------
;���z�[���[�E�J�f���c�@�S�E�J���e�B�I�E�g�����e
[state -1, holy cadenza4]
type = changestate
value = 270
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(50) = 0
trigger1 = stateno = 266
trigger1 = animelemtime(4) < 0
trigger1 = movecontact
;---------------------------------------------------------------------------
;���z�[���[�E�J�f���c�@�T�E�e�B���E�f���B�j�[�^
[state -1, holy cadenza5]
type = changestate
value = 273
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = var(50) = 0
trigger1 = stateno = 270
trigger1 = animelemtime(6) < 0
trigger1 = movecontact
;---------------------------------------------------------------------------
;���z�[���[�E�J�f���c�@�U�E�_�i�b�c�B�I�[�l
[state -1, holy cadenza6]
type = changestate
value = 276
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = var(50) = 0
trigger1 = stateno = 273
trigger1 = animelemtime(7) < 0
trigger1 = movecontact
;---------------------------------------------------------------------------
;���z�[���[�E�J�f���c�@�V�E�e�B���E�g�����o�E�_���A
[state -1, holy cadenza7]
type = changestate
value = 280
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(50) = 0
trigger1 = stateno = 276
trigger1 = animelemtime(6) < 0
trigger1 = movecontact
;---------------------------------------------------------------------------
;������
[state -1, taunt]
type = changestate
value = 195
triggerall = command = "start"
triggerall = var(50) = 0
trigger1 = statetype != a
trigger1 = ctrl
;===========================================================================
;���g���C�����
;===========================================================================
;���O�i
[state -1, hadou-cannon fwd]
type = posadd
x = 0.75
triggerall = var(50) = 0
triggerall = stateno = 3530
triggerall = time < 370
trigger1 = command = "fwd" || command = "holdfwd"

;�����
[state -1, hadou-cannon back]
type = posadd
x = -0.75
triggerall = var(50) = 0
triggerall = stateno = 3530
triggerall = time < 370
trigger1 = command = "back" || command = "holdback"

;���㏸
[state -1, hadou-cannon up]
type = posadd
y = -0.5
triggerall = var(50) = 0
triggerall = stateno = 3530
triggerall = time < 370
triggerall = pos y = [-240,-60]
trigger1 = command = "up" || command = "holdup"

;�����~
[state -1, hadou-cannon down]
type = posadd
y = 0.5
triggerall = var(50) = 0
triggerall = stateno = 3530
triggerall = time < 370
triggerall = pos y = [-240,-60]
trigger1 = command = "down" || command = "holddown"
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
name = "mami ai"
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
triggerall = var(53) != [200,201];�g���C�͗�O
trigger1 = ((movetype = h)&&(stateno != [130,155])) || roundstate < 2
trigger2 = var(53) = 1
trigger2 = ctrl
trigger3 = var(53) = 100
trigger3 = ctrl
trigger4 = var(50) = 1
trigger4 = random <= 50*var(50);250
trigger5 = var(50) = 2
trigger5 = random <= 10*var(50);50
trigger6 = var(50) = 3
trigger6 = random <= 5*var(50);25
trigger7 = var(50) = 4
trigger7 = random <= 1*var(50);5
var(53) = 0

;���e�B���E�t�B�A���}�̌���������
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = statetype != a
var(47) = 3

[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = stateno = 417
trigger1 = time = 3
var(47) = - 1

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
trigger3 = stateno = 3300
trigger4 = stateno = 3400
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
var(57) = 1000

[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = var(57) > 0
var(57) = -1
ignorehitpause = 1

;���e�B���E�~���b�W�I�E�C���^�[�o��
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = [1300,1310]
var(45) = 600-100*var(50)

[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = movetype = h
trigger1 = stateno != [120,155]
trigger1 = prevstateno = [1300,1310]
var(45) = 800-100*var(50)

[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = var(45) > 0
var(45) = -1
ignorehitpause = 1

[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = 1350
;trigger1 = movecontact
var(45) = 0

;���}�M�J�u�[�g�E�t�H���[�E�C���^�[�o��
[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = var(44) > 0
var(44) = -1
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
triggerall = alive && numenemy
trigger1 = p2movetype = a
trigger2 = enemynear,ctrl = 0
trigger2 = p2movetype != h
var(49) = 1

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = alive && numenemy
trigger1 = p2movetype != a
var(49) = 0

;��������P����������Ƃ肠����
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = 200
trigger1 = movecontact
var(53) = 100
;===========================================================================
;�����������
;===========================================================================
;�����Ⴊ�ݏ��p���`
[state -1, crouching jab]
type = changestate
value = 300
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
triggerall = p2bodydist x = [-20,20]
trigger1 = random <= 10*var(50)+(var(50)=4)*50+(var(50)=5)*100;50+50/100
trigger1 = prevstateno = [130,155]			;���K�[�h�q�b�g�Ď�
;---------------------------------------------------------------------------
;�����Ⴊ�ݏ��L�b�N
[state -1, crouching short]
type = changestate
value = 330
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
trigger1 = p2bodydist x = [-20,30]
trigger1 = random <= 10*var(50)+(var(50)=4)*50+(var(50)=5)*100;50+50/100
trigger1 = prevstateno = [130,155]			;���K�[�h�q�b�g�Ď�
;---------------------------------------------------------------------------
;���������L�b�N
[state -1, standing short]
type = changestate
value = 230
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
trigger1 = p2bodydist x  = [-20,50]
trigger1 = random <= 20*var(50)+(var(50)=4)*100+(var(50)=5)*200;100+100/200
trigger1 = prevstateno = [130,155]			;���K�[�h�q�b�g�Ď�
;---------------------------------------------------------------------------
;���e�B���E�~���b�W�I
[state -1, tiro miraggio]
type = changestate
value = 1300
triggerall = var(50) > 2
triggerall = var(45) = 0				;���֎~���O���N���A
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = enemynear,stateno < 3000
trigger1 = p2bodydist x  = [-20,300]
trigger1 = random <= 10*var(50)+(var(50)=4)*25+(var(50)=5)*50;50+25/50
trigger1 = prevstateno = [130,155]			;���K�[�h�q�b�g�Ď�
;---------------------------------------------------------------------------
;���т�
[state -1, binta]
type = changestate
value = 500
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
trigger1 = p2bodydist x  = [-20,25]
trigger1 = random <= 10*var(50)+(var(50)=4)*25+(var(50)=5)*50;50+25/50
trigger1 = prevstateno = [130,155]			;���K�[�h�q�b�g�Ď�
;---------------------------------------------------------------------------
;�����Ⴊ�ݒ��p���`
[state -1, crouching strong]
type = changestate
value = 310
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
trigger1 = p2bodydist x = [-20,70]
trigger1 = random <= 20*var(50)+(var(50)=4)*100+(var(50)=5)*200;100+100/200
trigger1 = prevstateno = [130,155]			;���K�[�h�q�b�g�Ď�
;---------------------------------------------------------------------------
;���������p���`
[state -1, standing strong]
type = changestate
value = 210
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
trigger1 = p2bodydist x = [-20,70]
trigger1 = random <= 10*var(50)+(var(50)=4)*50+(var(50)=5)*100;50+50/100
trigger1 = prevstateno = [130,155]			;���K�[�h�q�b�g�Ď�
;---------------------------------------------------------------------------
;��������p���`
[state -1, standing fierce]
type = changestate
value = 220
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
;triggerall = p2statetype != a
trigger1 = p2bodydist x = [-20,95]
trigger1 = random <= 10*var(50)+(var(50)=4)*20+(var(50)=5)*50;50+100/150
trigger1 = prevstateno = [130,155]			;���K�[�h�q�b�g�Ď�
;---------------------------------------------------------------------------
;���K�[�h�L�����Z��
[state -1, guard cancel attack]
type = changestate
value = 2000
triggerall = var(50) > 2
triggerall = var(55) = 0
triggerall = power > 1000+1500
triggerall = numhelper(6300) = 0
triggerall = alive && numenemy
triggerall = stateno = [150,153]
triggerall = statetype != a
triggerall = time < 10
triggerall = life < p2life || life < lifemax/3
trigger1 = p2bodydist x = [-20,80]
trigger1 = p2dist y > -80
trigger1 = backedgedist < 160
trigger1 = random <= 5*var(50)+80*(life<100)*var(50);25+400
ignorehitpause = 1
;===========================================================================
;���R���������
;===========================================================================
;���K�[�h
[state -1, guard]
type = changestate
value = 120
triggerall = var(50) != 0
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
triggerall = ctrl || ((stateno = 21) && (time > 100))
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = stateno != 101
triggerall = prevstateno != 101
triggerall = (var(12) != 200) || ((var(12) = 200) && (var(30) != [3200,3290]));��������̎ז������Ȃ�
trigger1 = p2movetype != a
trigger1 = p2bodydist x > 100
trigger1 = random <= 50*var(50);250
;===========================================================================
;���W�����v
[state -3, jump]
type = changestate
value = 41
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = prevstateno != 283
trigger1 = ctrl || (stateno = 21) || (stateno = 101)	;���}���W�����v
trigger1 = p2statetype = a
trigger1 = p2movetype != a
trigger1 = p2stateno != 1490
trigger1 = p2bodydist x = [-10,140]
trigger1 = p2bodydist y = [-70,0]
trigger1 = random <= 50*var(50);250
;===========================================================================
;���^�b�O�p�G���g����
;===========================================================================
;������
[state -1, assist & attack]
type = changestate
value = 1000
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = var(49) > 6
triggerall = p2bodydist x > 100
triggerall = p2bodydist y = [-100,0]
triggerall = numpartner
trigger1 = partner,time > 6
trigger1 = partner,alive
trigger1 = partner,movetype = h
trigger1 = var(30) != [120,155]
trigger1 = partner,statetype != l
triggerall = random <= 40*var(50);200
;---------------------------------------------------------------------------
;���o�b�N�X�e�b�v
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(28) = [1,3]
triggerall = statetype != a
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
trigger1 = numpartner > 0
trigger1 = partner,alive = 1
trigger1 = var(12) = 200
trigger1 = var(30) = [3210,3280]
trigger1 = prevstateno != 106
trigger1 = pos x = [partner,pos x-200,partner,pos x+50]
trigger1 = facing = partner,facing
triggerall = random <= 50*var(50);250
;---------------------------------------------------------------------------
;���e�B���E�t�B�i�[���E�\���E�����@���e�i����j
[state -1, tiro finale sol levante]
type = changestate
value = 3300
triggerall = var(50) > 2
triggerall = var(59) = 0
triggerall = var(28) = [1,3]
triggerall = numhelper(7100) = 0
triggerall = power >= 2000
triggerall = statetype != a
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101) || (stateno = 106)
trigger1 = numpartner > 0
trigger1 = partner,alive = 1
trigger1 = var(12) = 200
trigger1 = var(30) = 3290
trigger1 = partner,var(10) = 0
trigger1 = partner,time = [25,35]
trigger1 = facing = partner,facing
triggerall = random <= 50*var(50);250
;===========================================================================
;���t���[�G���g����
;===========================================================================
;���������p���`
[state -1, standing jab]
type = changestate
value = 200
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = p2statetype = s || p2statetype = c
triggerall = p2statetype != a
trigger1 = (p2movetype = h) && (p2stateno != [120,155])
trigger1 = p2bodydist x = [-20,50]
trigger1 = prevstateno = 1000		;����
trigger1 = random <= 100*var(50);500
;---------------------------------------------------------------------------
;���������L�b�N
[state -1, standing short]
type = changestate
value = 230
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = (ctrl) || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = p2statetype != l
triggerall = p2bodydist x = [-20,60]
trigger1 = p2statetype = s || p2statetype = c
trigger2 = p2statetype = a
trigger2 = p2movetype = h
trigger2 = p2bodydist y = [-30,0]
triggerall = random <= 40*var(50)+100*(p2movetype=h)*var(50);200+500

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(53) = 0
trigger1 = p2statetype = a
trigger1 = stateno = 230
trigger1 = movehit = [1,5]
var(53) = 121
;---------------------------------------------------------------------------
;�����Ⴊ�ݒ��p���`
[state -1, crouching strong]
type = changestate
value = 310
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = (ctrl) || (stateno = 11) || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = p2statetype = s || p2statetype = c
trigger1 = p2movetype != a
trigger1 = p2bodydist x = [-20,70]
trigger1 = random <= 30*var(50);150
;---------------------------------------------------------------------------
;���������p���`
[state -1, standing strong]
type = changestate
value = 210
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = p2statetype != a
trigger1 = p2bodydist x > 90
trigger1 = random <= 5*var(50);25
;---------------------------------------------------------------------------
;���e�B���E�h���b�g
[state -1, standing strong2]
type = changestate
value = 215
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = stateno = 210
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = animelemtime(4) > 1
trigger1 = animelemtime(5) < 0
trigger1 = random <= 50*var(50);250
;---------------------------------------------------------------------------
;���т�
[state -1, binta]
type = changestate
value = 500
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = var(54) <= 5				;�������ϐ��̂��鑊��̓p�X
triggerall = var(48) = 0				;���֎~���O���N���A
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = prevstateno != 500
triggerall = p2statetype = s || p2statetype = c
trigger1 = p2movetype != a
trigger1 = p2movetype != h
trigger1 = p2bodydist x = [-20,25]
trigger1 = random <= 50*var(50);250
;---------------------------------------------------------------------------
;���O�����f�B�[�l
[state -1, grandine]
type = changestate
value = 550
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = p2movetype != a
triggerall = (p2movetype != h) || (p2stateno = [120,155])
trigger1 = ctrl
trigger1 = p2bodydist x = [-20,60]
trigger1 = p2bodydist y = [-60,60]
trigger1 = time > 10 || life < 300
trigger1 = random <= 50*var(50);250
;---------------------------------------------------------------------------
;���e�B���E�~���b�W�I
[state -1, tiro miraggio]
type = changestate
value = 1300
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = var(45) = 0				;���֎~���O���N���A
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101) || ((stateno = 5120) && (animtime = 0))
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = p2statetype != l
triggerall = enemynear,stateno < 3000
trigger1 = var(49) > 6
trigger1 = enemynear,movetype = a
trigger1 = inguarddist
trigger1 = random <= 40*var(50);200
trigger2 = enemynear,numproj
trigger2 = inguarddist
trigger2 = random <= 20*var(50);100
trigger3 = p2bodydist x = [-90,450]					;�Q�N��
trigger3 = (stateno = 5120) && (animtime = 0)
trigger3 = random <= 40*var(50)+40*var(50)*(p2movetype=a);200+200
trigger4 = p2bodydist x = [-60,80]					;�΋�
trigger4 = p2bodydist y = [-100,0]
trigger4 = enemynear,vel y > 0
trigger4 = random <= 40*var(50);200
trigger5 = prevstateno = 5001 || prevstateno = 5011 || stateno = 120 || prevstateno = 120
trigger5 = random <= 40*var(50);200
;---------------------------------------------------------------------------
;���e�B���E�~���b�W�I�E��
[state -1, tiro miraggio in air]
type = changestate
value = 1310
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = var(45) = 0				;���֎~���O���N���A
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
trigger1 = stateno = 5210 || prevstateno = 5210 || stateno = 120 || prevstateno = 120
trigger1 = ctrl
triggerall = random <= 40*var(50);200
;---------------------------------------------------------------------------
;���W�����v��p���`
[state -1, jumping fierce]
type = changestate
value = 420
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
trigger1 = ctrl
trigger1 = vel y > 0
trigger1 = p2bodydist x = [-60,60]
trigger1 = p2bodydist y = [-20,60]
triggerall = random <= 60*var(50);300
;---------------------------------------------------------------------------
;���e�B���E�e���y�X�^
[state -1, tiro tempesta]
type = changestate
value = 3000
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = var(56) = 0
triggerall = power > 1000+500
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
triggerall = p2bodydist x = [0,300]
trigger1 = var(49) = [15,30]
trigger1 = ctrl || (stateno = 11) || (stateno = 21) || (stateno = 101)
trigger1 = random <= 30*var(50);150
trigger2 = (stateno = 5120) && (animtime = 0)
trigger2 = p2movetype = a
trigger2 = random <= 70*var(50);350
;---------------------------------------------------------------------------
;���e�B���E�t�B�i�[���E�\���E�����@���e
[state -1, tiro finale sol levante]
type = changestate
value = 3300
triggerall = var(50) > 2
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = var(56) = 0
triggerall = var(28) = [1,3]
triggerall = numhelper(7100) = 0
triggerall = power >= 2000+500
triggerall = statetype != a
triggerall = alive && numenemy
triggerall = p2statetype != l
triggerall = (p2bodydist x = [10,200]) || ((p2bodydist x = [200,400]) && (p2bodydist y = [-50,-300]))
trigger1 = var(49) > 6
trigger1 = (p2life < 300) || (power > 6000)
trigger1 = ctrl || (stateno = 11) || (stateno = 21) || (stateno = 101)
trigger1 = random <= 20*var(50);100
trigger2 = (stateno = 5120) && (animtime = 0)
trigger2 = p2movetype = a
trigger2 = (p2life < 300) || (power > 6000)
trigger2 = random <= 30*var(50);150
trigger3 = var(2) < 60
trigger3 = power > 6000
trigger3 = ctrl || (stateno = 11) || (stateno = 21) || (stateno = 101)
trigger3 = random <= 60*var(50);300
;---------------------------------------------------------------------------
;���e�B���E�t�B�i�[���E�K���b�V�A
[state -1, tiro finale galassia]
type = changestate
value = 3500
triggerall = var(50) > 2
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = var(28) = 3
triggerall = numhelper(7300) = 0
triggerall = power >= 5000
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 11) || (stateno = 21) || (stateno = 101)
triggerall = p2bodydist x = [20,200]
trigger1 = p2statetype = s || p2statetype = c
trigger1 = var(49) = [10,20]
trigger2 = p2statetype = a
trigger2 = p2stateno != [3491,3492]
trigger2 = p2bodydist y = [-70,-30]
trigger2 = enemynear,vel y > 0
triggerall= random <= 100*var(50);500
;---------------------------------------------------------------------------
;���e�B���E�t�B�i�[���E�L�����E�f�B�E���i
[state -1, tiro finale chiaro di luna]
type = changestate
value = 3400
triggerall = var(50) > 2
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = var(56) = 0
triggerall = var(28) = [2,3]
triggerall = numhelper(7200) = 0
triggerall = statetype != a
triggerall = power >= 4000
triggerall = statetype != a
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype != l
trigger1 = (stateno = 5120) && (animtime = 0)
trigger1 = p2bodydist x < -10
trigger1 = random <= 80*var(50);400
trigger2 = var(49) > 6
trigger2 = p2stateno >= 1000
trigger2 = p2bodydist x = [-20,300]
trigger2 = p2bodydist y = [-100,0]
trigger2 = ctrl || (stateno = 11) || (stateno = 21) || (stateno = 101)
trigger2 = random <= 20*var(50);100
;---------------------------------------------------------------------------
;���}�M�J�u�[�g�i�t�H���[�j
[state -1, magica boot]
type = changestate
value = 900
triggerall = var(50) > 3
triggerall = var(8) > 0
triggerall = alive && numenemy
triggerall = power >= 1000
triggerall = stateno = 1000
triggerall = animelemtime(3) > 3
triggerall = p2movetype = a
triggerall = (p2bodydist x = [-100,150]) || (p2stateno >= 3000)
trigger1 = var(44) = 0				;���֎~���O���N���A
trigger1 = (power >= 2000) || (life < lifemax/2)
trigger1 = random <= 30*var(50);150
;===========================================================================
;���O�����f�B�[�l�R���r�l�[�V������
;===========================================================================
;�����U
[state -1, varset]
type = varset
var(53) = 10
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = alive && numenemy
triggerall = statetype = a
trigger1 = stateno = 551
trigger1 = random < 200*var(50);999

;���_�b�V��(ai)
[state -1, run fwd]
type = changestate
value = 101
triggerall = var(50) != 0
triggerall = var(53) = 10
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = stateno != 101
triggerall = prevstateno != 101
triggerall = p2bodydist x > 20
trigger1 = ctrl
trigger1 = random < 200*var(50);999

;���������L�b�N
[state -1, standing short]
type = changestate
value = 230
triggerall = var(50) != 0
triggerall = var(53) = 10
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 11) || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = p2statetype = a
trigger1 = p2bodydist x = [-20,40]
trigger1 = p2bodydist y = [-40,0]
triggerall = random < 200*var(50);999

;�����Ⴊ�ݑ�p���`
[state -1, crouching fierce]
type = changestate
value = 320
triggerall = var(50) != 0
triggerall = var(53) = 10
triggerall = p2statetype = a
trigger1 = stateno = 230
trigger1 = movehit = [1,3]
triggerall = random < 200*var(50);999

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 10
trigger1 = stateno = 320
trigger1 = movehit
trigger1 = p2statetype = a
var(53) = 121

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 10
trigger1 = stateno = 101
trigger1 = time > 200
trigger2 = p2statetype = s || p2statetype = c
trigger3 = p2movetype = a
var(53) = 0
;===========================================================================
;���W�����v�R���r�l�[�V������
;===========================================================================
;�����U
[state -1, varset]
type = varset
var(53) = 20
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype != a
triggerall = p2movetype != a
trigger1 = p2bodydist x = [80,120]
trigger1 = ctrl || (stateno = 11) || (stateno = 21) || (stateno = 101)
trigger1 = random <= 15*var(50);75

;���W�����v
[state -1, jump]
type = changestate
value = 41
triggerall = var(50) != 0
triggerall = var(53) = 20
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = ctrl || (stateno = 11) || (stateno = 21) || (stateno = 101)

;���W�����v��p���`
[state -1, jumping fierce]
type = changestate
value = 420
triggerall = var(50) != 0
triggerall = var(53) = 20
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
trigger1 = ctrl
trigger1 = vel y > 0
trigger1 = p2bodydist x = [-60,60]
trigger1 = p2bodydist y = [60,90]
triggerall = random <= 100*var(50);500

;���e�B���E�~���b�W�I�E��
[state -1, tiro miraggio in air]
type = changestate
value = 1310
triggerall = var(50) != 0
triggerall = var(53) = 20
triggerall = var(45) = 0				;���֎~���O���N���A
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
triggerall = p2movetype = a
trigger1 = ctrl
trigger1 = vel y > 0
trigger1 = p2bodydist x = [-120,120]
trigger1 = random <= 50*var(50);250

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 20
trigger1 = movecontact
trigger2 = stateno = 52
trigger3 = stateno = 1355
trigger4 = p2statetype = a
var(53) = 0
;===========================================================================
;���n�C�W�����v�R���r�l�[�V������
;===========================================================================
;�����U
[state -1, varset]
type = varset
var(53) = 25
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype != a
triggerall = p2movetype != a
trigger1 = p2bodydist x = [20,120]
trigger1 = ctrl || (stateno = 11) || (stateno = 21) || (stateno = 101)
trigger1 = random <= 5*var(50)+(p2statetype=l)*10*var(50);25+50

;���n�C�W�����v
[state -1, super jump]
type = changestate
value = 60
triggerall = var(50) != 0
triggerall = var(53) = 25
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = ctrl || (stateno = 11) || (stateno = 21) || (stateno = 101)

;���󒆃o�b�N�_�b�V��
[state -1, air dash back]
type = changestate
value = 115
triggerall = var(50) != 0
triggerall = var(53) = 25
triggerall = var(10) != 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
triggerall = stateno = 63
trigger1 = p2dist x < 0
trigger1 = p2bodydist y = [40,60]
trigger1 = vel y > 0
triggerall = random < 200*var(50);999

;���W�����v��p���`
[state -1, jumping fierce]
type = changestate
value = 420
triggerall = var(50) != 0
triggerall = var(53) = 25
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
triggerall = (stateno = 115) || (ctrl && (prevstateno = 115))
triggerall = p2statetype != l
trigger1 = p2bodydist x = [-60,60]
triggerall = (var(50) = 5) || (random <= 80*var(50));400

;���e�B���E�~���b�W�I�E��
[state -1, tiro miraggio in air]
type = changestate
value = 1310
triggerall = var(50) != 0
triggerall = var(53) = 25
triggerall = var(45) = 0				;���֎~���O���N���A
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
triggerall = p2movetype = a
trigger1 = ctrl
trigger1 = p2bodydist x = [-120,120]
trigger1 = random <= 80*var(50);400

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 25
trigger1 = movecontact
trigger2 = stateno = 52
trigger3 = stateno = 1355
trigger4 = p2statetype = a
var(53) = 0
;===========================================================================
;�����H���[�E�t�F�C���g�R���r�l�[�V������
;===========================================================================
;�����U
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = (var(53) = 0) || (var(53) = [40,41])
triggerall = alive && numenemy
triggerall = roundstate = 2
trigger1 = stateno = 1030
trigger1 = random <= 100*var(50);500
var(53) = 30

;���_�b�V��(ai)
[state -1, run fwd]
type = changestate
value = 101
triggerall = var(50) != 0
triggerall = var(53) = 30
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = ctrl
triggerall = statetype != a
triggerall = stateno != 101
triggerall = prevstateno != 101
trigger1 = p2bodydist x > 20
trigger1 = p2movetype != a
trigger1 = random <= 150*var(50);750

;���т�
[state -1, binta]
type = changestate
value = 500
triggerall = var(50) != 0
triggerall = var(53) = 30
triggerall = var(54) <= 5				;�������ϐ��̂��鑊��̓p�X
;triggerall = var(48) = 0				;���֎~���O���N���A
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = prevstateno != 500
triggerall = p2statetype = s || p2statetype = c
trigger1 = p2movetype != a
trigger1 = p2movetype != h
trigger1 = p2bodydist x = [-20,25]
trigger1 = random <= 100*var(50);500

;���e�B���E�~���b�W�I
[state -1, tiro miraggio]
type = changestate
value = 1300
triggerall = var(50) != 0
triggerall = var(53) = 30
triggerall = var(45) = 0				;���֎~���O���N���A
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = p2statetype != l
triggerall = enemynear,stateno < 3000
trigger1 = p2movetype = a
trigger1 = p2bodydist x = [-20,100]
trigger1 = random <= 50*var(50);250

;���������L�b�N
[state -1, standing forward]
type = changestate
value = 240
triggerall = var(50) != 0
triggerall = var(53) = 30
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = stateno = 101
triggerall = p2statetype = c
triggerall = p2stateno = [120,155]
trigger1 = p2bodydist x = [-20,40]
trigger1 = random <= 20*var(50);100

;�����Ⴊ�ݒ��L�b�N
[state -1, crouching forward]
type = changestate
value = 340
triggerall = var(50) != 0
triggerall = var(53) = 30
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = stateno = 101
triggerall = p2statetype = s
triggerall = p2stateno = [120,155]
trigger1 = p2bodydist x = [-20,40]
trigger1 = random <= 20*var(50);100

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 30
trigger1 = movecontact
trigger2 = p2statetype = a
trigger3 = stateno = 1355
var(53) = 0
;===========================================================================
;���e�B���E���H���[�R���r�l�[�V������
;===========================================================================
;�����U
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = power >= 1000+1000
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 11) || (stateno = 21) || (stateno = 101)
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = p2statetype != a
trigger1 = p2movetype != a
trigger1 = random <= 20*var(50);100
var(53) = 40

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = [40,41]
triggerall = alive && numenemy
trigger1 = stateno = 0
trigger1 = vel x = 0
trigger1 = time > 20
trigger2 = stateno = [210,350]
trigger2 = movecontact
trigger3 = (stateno = 21) || (stateno = 101)
trigger3 = p2statetype = l
var(53) = 0

;���e�B���E���H���[
[state -1, tiro volley];var(7)=3
type = changestate
value = 1000
triggerall = var(50) != 0
triggerall = var(53) = 40
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = p2movetype != a
trigger1 = (p2bodydist x = [80,300])

;�����U
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 40
triggerall = alive && numenemy
trigger1 = stateno = 1000
trigger1 = animelemtime(5) = [4,7]
var(53) = 41

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 41
triggerall = alive && numenemy
trigger1 = stateno = 1000
trigger1 = animelemtime(5) = [0,3]
var(53) = 0

;���������p���`
[state -1, standing jab]
type = changestate
value = 200
triggerall = var(50) != 0
triggerall = var(53) = 41
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = ctrl || (stateno = 21)
triggerall = statetype != a
triggerall = p2statetype = s || p2statetype = c
triggerall = p2movetype != a
trigger1 = p2bodydist x = [-20,45]
trigger1 = random <= 100*var(50);500

;���e�B���E���H���[
[state -1, tiro volley];var(7)=1
type = changestate
value = 1000+(random<100)*30
triggerall = var(50) != 0
triggerall = var(53) = 41
triggerall = alive && numenemy
triggerall = ctrl
triggerall = statetype != a
triggerall = p2statetype != a
trigger1 = p2movetype != a
trigger1 = random <= 100*var(50);500

;���}�M�J�u�[�gD
[state -1, magica boot]
type = changestate
value = 901
triggerall = var(50) > 3
triggerall = var(53) = 41
triggerall = var(8) > 0
triggerall = alive && numenemy
triggerall = power >= 1000+800
trigger1 = var(46) = 1
trigger1 = stateno = 1000
trigger1 = animelemtime(3) > 3
trigger1 = animelemtime(5) < 0
trigger1 = p2statetype = s || p2statetype = c
trigger1 = (p2movetype = h) && (p2stateno != [120,155])
trigger1 = p2bodydist x > 50
trigger1 = random <= 100*var(50);500

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 41
trigger1 = stateno = 0
trigger1 = vel x = 0
trigger1 = time > 20
trigger2 = stateno = [210,350]
trigger2 = movecontact
trigger3 = p2statetype = a || p2statetype = l
var(53) = 0

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(46) != 0
trigger1 = var(53) != [40,41]
trigger1 = movetype = h
trigger2 = stateno = [210,350]
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = animelemtime(5) > 0
trigger4 = p2movetype != h
var(46) = 0

;���������p���`
[state -1, standing jab]
type = changestate
value = 200
triggerall = var(50) != 0
triggerall = var(53) = 41
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = stateno = 101
triggerall = p2statetype = s || p2statetype = c
trigger1 = (p2bodydist x = [-20,50])
trigger1 = random < 200*var(50);999

;���т�
[state -1, binta]
type = changestate
value = 500
triggerall = var(50) != 0
triggerall = var(53) = 40
triggerall = var(54) <= 5				;�������ϐ��̂��鑊��̓p�X
triggerall = var(48) = 0				;���֎~���O���N���A
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = prevstateno != 500
triggerall = p2statetype = s || p2statetype = c
trigger1 = p2movetype != a
trigger1 = p2movetype != h
trigger1 = p2bodydist x = [-20,25]
trigger1 = random <= 30*var(50);150
;===========================================================================
;���o�b�N�W�����v�R���r�l�[�V������
;===========================================================================
;�����U
[state -1, varset]
type = varset
var(53) = 50
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = (p2bodydist x > 100) || (p2statetype = l)
triggerall = ctrl || (stateno = 11) || (stateno = 21) || (stateno = 101)
trigger1 = numpartner = 0
trigger2 = numpartner != 0
trigger2 = var(12) != 200
trigger3 = numpartner != 0
trigger3 = var(12) = 200
trigger3 = var(30) != [3200,3290]
triggerall = random <= 10*var(50);50

;���W�����v
[state -1, jump]
type = changestate
value = 41
triggerall = var(50) != 0
triggerall = var(53) = 50
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = ctrl || (stateno = 11) || (stateno = 21) || (stateno = 101)
;---------------------------------------------------------------------------
;�����[�h�P
;---------------------------------------------------------------------------
;���e�B���E���H���[�E��
[state -1, tiro volley in air]
type = changestate
value = 1100
triggerall = var(50) != 0
triggerall = var(53) = 50
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
trigger1 = ctrl
trigger1 = time = [12,25]
trigger1 = random <= 50*var(50);250

[state -1, varset]
type = varset
var(53) = 50+ceil(random/334);;1-3
triggerall = var(50) != 0
triggerall = var(53) = 50
triggerall = alive && numenemy
trigger1 = stateno = 1100
trigger1 = time < 3

;���󒆃_�b�V��
[state -1, air dash fwd]
type = changestate
value = 110+(p2movetype=a)*5
triggerall = var(50) != 0
triggerall = var(53) = 51
triggerall = var(10) > 0
triggerall = alive && numenemy
triggerall = statetype = a
trigger1 = ctrl
trigger1 = prevstateno = 1100 || roundstate != 2
trigger1 = random <= 60*var(50);300

;���W�����v��p���`
[state -1, jumping fierce]
type = changestate
value = 420
triggerall = var(50) != 0
triggerall = var(53) = 51
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
triggerall = (stateno = 110) || (ctrl && (prevstateno = 110))
triggerall = p2statetype != l
trigger1 = p2bodydist x = [-60,60]
triggerall = (var(50) = 5) || (random <= 80*var(50));400

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = [50,51]
trigger1 = stateno = 52
trigger2 = stateno = 230 || stateno = 300 || stateno = 330 || stateno = 420
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = animelemtime(5) > 0
var(53) = 0
;---------------------------------------------------------------------------
;�����[�h�P��胂�[�h�Q
;---------------------------------------------------------------------------
;���e�B���E���H���[�E��
[state -1, tiro volley in air]
type = changestate
value = 1100+(random<300)*100
triggerall = var(50) != 0
triggerall = var(53) = 52
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
trigger1 = ctrl
trigger1 = time > 10
trigger1 = prevstateno = 1100
trigger1 = random <= 30*var(50);150

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 52
trigger1 = stateno = 1200
var(53) = 53

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 52
trigger1 = stateno = 52
trigger2 = stateno = 230 || stateno = 300 || stateno = 330
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = animelemtime(5) > 0
var(53) = 0
;---------------------------------------------------------------------------
;�����[�h�P��胂�[�h�R
;---------------------------------------------------------------------------
;���e�B���E�����f�B�[�l
[state -1, tiro rondine]
type = changestate
value = 1200
triggerall = var(50) != 0
triggerall = var(53) = 53
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a && ctrl
trigger1 = prevstateno = 1100
trigger1 = random <= 60*var(50);300

;���_�b�V��(ai)
[state -1, run fwd]
type = changestate
value = 101
triggerall = var(50) != 0
triggerall = var(53) = 53
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = ctrl
triggerall = statetype != a
triggerall = stateno != 101
triggerall = prevstateno != 101
;trigger1 = p2bodydist x > 20
trigger1 = random <= 150*var(50);750

;���������L�b�N
[state -1, standing forward]
type = changestate
value = 240
triggerall = var(50) != 0
triggerall = var(53) = 53
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = ctrl || (stateno = 101)
triggerall = p2statetype = c
triggerall = p2stateno = [120,155]
trigger1 = p2bodydist x = [-20,40]
trigger1 = random <= 30*var(50);150

;�����Ⴊ�ݒ��L�b�N
[state -1, crouching forward]
type = changestate
value = 340
triggerall = var(50) != 0
triggerall = var(53) = 53
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = ctrl || (stateno = 101)
triggerall = p2statetype = s
triggerall = p2stateno = [120,155]
trigger1 = p2bodydist x = [-20,40]
trigger1 = random <= 30*var(50);150

;���������p���`
[state -1, standing jab]
type = changestate
value = 200
triggerall = var(50) != 0
triggerall = var(53) = 53
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = ctrl || (stateno = 101)
triggerall = p2statetype != l
triggerall = p2movetype != a
trigger1 = p2bodydist x = [-20,50]
trigger1 = random <= 100*var(50);500

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 53
trigger1 = statetype != a
trigger1 = stateno != 200
trigger1 = movecontact
trigger2 = stateno = 200
trigger2 = animelemtime(5) > 0
var(53) = 0
;---------------------------------------------------------------------------
;�����[�h�S
;---------------------------------------------------------------------------
;���W�����v���p���`
[state -1, jumping strong]
type = changestate
value = 410
triggerall = var(50) != 0
triggerall = var(53) = 50
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
triggerall = p2bodydist x > 160
trigger1 = ctrl
trigger1 = time = [12,25]
trigger1 = random <= 50*var(50);250

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 50
trigger1 = stateno = 410
trigger1 = prevstateno = 50
var(53) = 55

;���e�B���E�V�G�[��
[state -1, jumping strong2]
type = changestate
value = 415
triggerall = var(50) != 0
triggerall = var(53) = 55
triggerall = var(47) != 0	;�e�B���E�t�B�A���}�̌���������
triggerall = stateno = 410
trigger1 = animelemtime(3) > 1

;���e�B���E�t�B�A���}
[state -1, jumping strong3]
type = changestate
value = 417
triggerall = var(50) != 0
triggerall = var(53) = 55
trigger1 = stateno = 415
trigger1 = animelemtime(5) > 0

;���󒆃_�b�V��
[state -1, air dash fwd]
type = changestate
value = 110+(p2movetype=a)*5
triggerall = var(50) != 0
triggerall = var(53) = 55
triggerall = var(10) > 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
triggerall = p2bodydist x > 100
trigger1 = ctrl
trigger1 = prevstateno = 417
trigger1 = random <= 10*var(50);50

;���󒆃W�����v
[state -1, air jump]
type = changestate
value = 45
triggerall = var(50) != 0
triggerall = var(53) = 55
triggerall = var(10) > 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
triggerall = p2bodydist x > 200
trigger1 = ctrl
trigger1 = prevstateno = 417
trigger1 = random <= 10*var(50);50

;���W�����v���p���`
[state -1, jumping strong]
type = changestate
value = 410+(p2statetype=l)*790
triggerall = var(50) != 0
triggerall = var(53) = 55
triggerall = var(47) != 0	;�e�B���E�t�B�A���}�̌���������
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
triggerall = p2bodydist x > 20
trigger1 = stateno = 110 || stateno = 115 || (ctrl && var(10) = 0)
trigger1 = random <= 50*var(50);250

;���e�B���E�����f�B�[�l
[state -1, tiro rondine]
type = changestate
value = 1200
triggerall = var(50) != 0
triggerall = var(53) = 55
triggerall = var(10) = 0	;�����f�B�[�l���U�ɃV�t�g
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a && ctrl
trigger1 = prevstateno = 417
trigger2 = stateno = 417
trigger2 = movehit
triggerall = random <= 40*var(50);200

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 55
trigger1 = stateno = 1200
var(53) = 53

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 55
trigger1 = stateno = 52
trigger2 = stateno = 230 || stateno = 300 || stateno = 330
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = animelemtime(5) > 0
var(53) = 0
;===========================================================================
;�����K�[���R���r�l�[�V������
;===========================================================================
;�����U
[state -1, varset]
type = varset
var(53) = 57
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = s || p2statetype = c
trigger1 = (p2bodydist x > 100)
trigger1 = ctrl || (stateno = 11) || (stateno = 21) || (stateno = 101)
trigger1 = random <= 10*var(50)+(power>3000)*20*var(50);50+100

;���W�����v
[state -1, jump]
type = changestate
value = 41
triggerall = var(50) != 0
triggerall = var(53) = 57
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = p2statetype = s || p2statetype = c
trigger1 = p2bodydist x = [0,255]
trigger1 = ctrl || (stateno = 11) || (stateno = 21) || (stateno = 101)

;�����K�[��
[state -1, legare]
type = changestate
value = 1400
triggerall = var(50) != 0
triggerall = var(53) = 57
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
triggerall = p2statetype != l
triggerall = ctrl
trigger1 = time = [10,13]
trigger1 = random < 200*var(50);999

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 57
trigger1 = stateno = 1400
trigger1 = movehit > 1
var(53) = 58

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 57
triggerall = stateno = 1400
trigger1 = moveguarded
trigger2 = animelemtime(6) > 0
var(53) = 0

;���e�B���E�t�B�i�[��
[state -1, tiro finale]
type = changestate
value = 3200
triggerall = var(50) > 2
triggerall = var(53) = 58
triggerall = var(28) = [0,3]
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = power >= 3000
triggerall = stateno = 1400
triggerall = movehit = [12,20]
trigger1 = p2life < 400
trigger2 = p2life > life*2
triggerall = random < 200*var(50);999

;���󒆃_�b�V��
[state -1, air dash fwd]
type = changestate
value = 110
triggerall = var(50) != 0
triggerall = var(53) = 58
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
trigger1 = stateno = 1400
trigger1 = movehit = [12,20]
triggerall = random <= 100*var(50);500

;���W�����v���p���`
[state -1, jumping strong]
type = changestate
value = 410
triggerall = var(50) != 0
triggerall = var(53) = 58
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
triggerall = stateno = 110 || prevstateno = 110
triggerall = p2statetype != l
trigger1 = p2bodydist x = [-20,70]
trigger1 = p2bodydist y = [-70,70]
triggerall = (var(50) = 5) || (random <= 80*var(50));400

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 58
trigger1 = stateno = 410
trigger1 = movehit > 1
trigger2 = stateno = 52
trigger3 = stateno = 230 || stateno = 300 || stateno = 330
trigger3 = movecontact
trigger4 = stateno = 0
trigger4 = vel x = 0
trigger4 = time > 20
var(53) = 0
;===========================================================================
;�����e�I���[�e�R���r�l�[�V������
;===========================================================================
;���e�B���E���e�I���[�e
[state -1, tiro meteorite]
type = changestate
value = 3100
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = var(56) = 0
triggerall = numhelper(6300) = 0
triggerall = power >= 1000+1000
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = p2bodydist x < 160
trigger1 = (stateno = 220) || (stateno = 251) || (stateno = 310)
trigger1 = moveguarded = [1,5]
trigger2 = (stateno = 5120) && (animtime = 0)
trigger3 = ctrl
trigger3 = p2statetype = l
triggerall = random <= 10*var(50);50

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 0
trigger1 = stateno = 3100
var(53) = 60

;���_�b�V��(ai)
[state -1, run fwd]
type = changestate
value = 101
triggerall = var(50) != 0
triggerall = var(53) = 60
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = stateno != 101
triggerall = prevstateno != 101
trigger1 = p2bodydist x > 20
trigger1 = ctrl
trigger1 = random < 200*var(50);999

;���u���[�L
[state -1, brake]
type = changestate
value = 0
ctrl = 1
triggerall = var(50) != 0
triggerall = var(53) = 60
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = stateno = 101
trigger1 = p2dist x < 0
trigger1 = time > 60
trigger2 = roundstate != 2
trigger2 = time > 100

;���т�
[state -1, binta]
type = changestate
value = 500
triggerall = var(50) != 0
triggerall = var(53) = 60
triggerall = var(54) <= 5				;�������ϐ��̂��鑊��̓p�X
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = prevstateno != 500
triggerall = p2statetype = s || p2statetype = c
trigger1 = p2movetype != a
trigger1 = p2movetype != h
trigger1 = p2bodydist x = [-20,25]
trigger1 = random <= 120*var(50);600

;���������L�b�N
[state -1, standing short]
type = changestate
value = 230
triggerall = var(50) != 0
triggerall = var(53) = 60
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = p2statetype = a
trigger1 = p2bodydist x = [-20,40]
trigger1 = p2bodydist y = [-40,0]
triggerall = random < 200*var(50);999

;���������p���`
[state -1, standing jab]
type = changestate
value = 200
triggerall = var(50) != 0
triggerall = var(53) = 60
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = stateno = 101
triggerall = p2statetype = s || p2statetype = c
triggerall = p2movetype = h
triggerall = p2stateno != [120,155]
trigger1 = p2bodydist x = [-20,50]
trigger1 = random <= 100*var(50);500

;�����Ⴊ�ݑ�p���`
[state -1, crouching fierce]
type = changestate
value = 320
triggerall = var(50) != 0
triggerall = var(53) = 60
triggerall = p2statetype = a
trigger1 = stateno = 230
trigger1 = movehit = [1,3]
triggerall = random < 200*var(50);999

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 60
trigger1 = stateno = 320
trigger1 = movehit
trigger1 = p2statetype = a
var(53) = 121

;���e�B���E�~���b�W�I
[state -1, tiro miraggio]
type = changestate
value = 1300
triggerall = var(50) != 0
triggerall = var(53) = 60
triggerall = var(45) = 0				;���֎~���O���N���A
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = p2statetype != l
triggerall = enemynear,stateno < 3000
trigger1 = p2movetype = a
trigger1 = p2bodydist x = [-20,300]
trigger1 = random <= 60*var(50);300

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 60
trigger1 = stateno = 1300
trigger1 = animelemtime(4) > 0
trigger2 = stateno = 200
trigger2 = animelemtime(5) > 0
trigger3 = stateno = 230 || stateno = 300 || stateno = 330
trigger3 = movecontact
trigger4 = stateno = 500
trigger4 = numhelper(6501) = 0
trigger5 = numenemy
trigger5 = enemynear,statetype = l
trigger5 = stateno = 101
var(53) = 0
;===========================================================================
;���т񂽃R���{��
;===========================================================================
;�����U
[state -1, varset]
type = varset
var(53) = 70
triggerall = var(50) = 5
triggerall = var(53) = 0
triggerall = var(59) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = life < p2life || life < lifemax/3
trigger1 = stateno = [500,501]
trigger1 = power > 1000
trigger1 = random <= 20*var(50);100

;���_�b�V��(ai)
[state -1, run fwd]
type = changestate
value = 101
triggerall = var(50) != 0
triggerall = var(53) = 70
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = stateno != 101
trigger1 = prevstateno = 901
trigger1 = random < 200*var(50);999

;���}�M�J�u�[�gD
[state -1, magica boot]
type = changestate
value = 901
triggerall = var(50) != 0
triggerall = var(53) = 70
triggerall = var(8) > 0
triggerall = alive && numenemy
triggerall = power >= 1000
triggerall = roundstate = 2
trigger1 = stateno = 501
trigger1 = movehit
trigger1 = random < 200*var(50);999

;���������L�b�N
[state -1, standing short]
type = changestate
value = 230
triggerall = var(50) != 0
triggerall = var(53) = 70
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = p2statetype = a
trigger1 = p2bodydist x = [-20,50]
trigger1 = p2bodydist y = [-40,0]
trigger1 = time > 10
triggerall = random < 200*var(50);999

;���u���[�L
[state -1, brake]
type = changestate
value = 0
ctrl = 1
triggerall = var(50) != 0
triggerall = var(53) = 70
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = stateno = 101
trigger1 = p2dist x < 0
trigger2 = roundstate != 2
trigger2 = time > 100

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 70
trigger1 = power < 2000
trigger1 = p2statetype = a
trigger1 = stateno = 230
trigger1 = movehit = [1,3]
var(53) = 121

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 70
trigger1 = power = [2000,3999]
trigger1 = p2statetype = a
trigger1 = stateno = 230
trigger1 = movehit = [1,3]
var(53) = 71

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 70
trigger1 = power > 4000
trigger1 = p2statetype = a
trigger1 = stateno = 230
trigger1 = movehit = [1,3]
var(53) = 72

;��������p���`
[state -1, standing fierce]
type = changestate
value = 220
triggerall = var(50) != 0
triggerall = var(53) = 71
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = stateno = 230
trigger1 = movehit
trigger1 = random < 200*var(50);999

;���e�B���E�t�B�i�[���E�\���E�����@���e
[state -1, tiro finale sol levante]
type = changestate
value = 3300
triggerall = var(50) > 2
triggerall = var(53) = 71
triggerall = var(28) = [1,3]
triggerall = numhelper(7100) = 0
triggerall = power >= 2000
triggerall = statetype != a
triggerall = alive && numenemy
trigger1 = stateno = 220
trigger1 = movehit = [1,3]
trigger1 = random < 200*var(50);999

;�����p���`
[state -1, strong]
type = changestate
value = 210
triggerall = var(50) != 0
triggerall = var(53) = 72
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = stateno = 230
trigger1 = movehit > 2
trigger1 = random < 200*var(50);999

;��������L�b�N
[state -1, standing roundhouse]
type = changestate
value = 250
triggerall = var(50) != 0
triggerall = var(53) = 72
triggerall = statetype != a
trigger1 = stateno = 210
trigger1 = movehit = [1,5]
trigger1 = random < 200*var(50);999

;���e�B���E�t�B�i�[���E�L�����E�f�B�E���i
[state -1, tiro finale chiaro di luna]
type = changestate
value = 3400
triggerall = var(50) > 2
triggerall = var(53) = 72
triggerall = var(28) = [2,3]
triggerall = numhelper(7200) = 0
triggerall = power >= 4000
triggerall = statetype != a
triggerall = alive && numenemy
triggerall = roundstate = 2
trigger1 = stateno = 251
trigger1 = movehit = [1,3]
trigger1 = random < 200*var(50);999

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = [70,72]
trigger1 = p2statetype = l || p2movetype != h
trigger2 = stateno = 3320
trigger3 = stateno = 3430
var(53) = 0
;===========================================================================
;���n��R���{��
;===========================================================================
;�����Ⴊ�ݏ��p���`
[state -1, crouching jab]
type = changestate
value = 300
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = stateno = 300
triggerall = statetype != a
triggerall = prevstateno != 300
triggerall = p2statetype = s || p2statetype = c
trigger1 = movecontact = [1,10]
trigger1 = random <= 160*var(50);800
;---------------------------------------------------------------------------
;���������L�b�N
[state -1, standing forward]
type = changestate
value = 240
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = stateno = 230 || stateno = 300 || stateno = 330
triggerall = p2statetype = s || p2statetype = c
trigger1 = moveguarded = [1,10]
trigger1 = random <= 40*var(50)+(p2statetype=c)*20*var(50);200+100
;---------------------------------------------------------------------------
;�����Ⴊ�ݒ��L�b�N
[state -1, crouching forward]
type = changestate
value = 340
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = stateno = 230 || stateno = 300 || stateno = 330
triggerall = statetype != a
triggerall = p2statetype = s || p2statetype = c
trigger1 = moveguarded = [1,10]
trigger1 = random <= 40*var(50)+(p2statetype=s)*20*var(50);200+100
;---------------------------------------------------------------------------
;���������p���`
[state -1, standing strong]
type = changestate
value = 210
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = stateno = 230 || stateno = 300 || stateno = 330
triggerall = statetype != a
triggerall = p2statetype = s || p2statetype = c
trigger1 = movecontact = [1,10]
trigger1 = random <= 100*var(50);500
;---------------------------------------------------------------------------
;�����Ⴊ�ݑ�L�b�N
[state -1, crouching roundhouse]
type = changestate
value = 350
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = statetype != a
trigger1 = stateno = 240 || stateno = 340
trigger1 = moveguarded = [1,5]
trigger1 = random <= 30*var(50);150
;---------------------------------------------------------------------------
;��������L�b�N
[state -1, standing roundhouse]
type = changestate
value = 250
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = statetype != a
trigger1 = stateno = 210 || stateno = 310
trigger1 = movecontact = [1,5]
trigger1 = random <= 30*var(50);150
trigger2 = stateno = 240 || stateno = 340
trigger2 = movecontact = [1,5]
trigger2 = random <= 100*var(50);500
;---------------------------------------------------------------------------
;���e�B���E�e���y�X�^
[state -1, tiro tempesta]
type = changestate
value = 3000
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = power > 1000+500
triggerall = statetype != a
triggerall = alive && numenemy
triggerall = roundstate = 2
trigger1 = frontedgedist < 64
trigger1 = stateno = 251
trigger1 = movehit = [1,5]
trigger1 = random <= 50*var(50);250

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 0
trigger1 = stateno = 3030
trigger1 = (p2movetype = h) && (p2stateno != [120,155])
var(53) = 130

;���e�B���E�t�B�i�[���E�K���b�V�A
[state -1, tiro finale galassia]
type = changestate
value = 3500
triggerall = var(50) > 2
triggerall = var(59) = 0
triggerall = var(53) = 130
triggerall = var(28) = 3
triggerall = numhelper(7300) = 0
triggerall = power >= 5000
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = p2bodydist x = [20,200]
triggerall = (stateno = 0) || (stateno = 11) || (stateno = 21); || (stateno = 101)
trigger1 = p2bodydist y = [-70,-30]
;trigger1 = prevstateno = 3030
trigger1 = random < 100*var(50);500

;���_�b�V��(ai)
[state -1, run fwd]
type = changestate
value = 101
triggerall = var(50) != 0
triggerall = var(53) = 130
;triggerall = power < 5000
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = stateno != 101
triggerall = ctrl || (stateno = 11) || (stateno = 21)
triggerall = p2bodydist x > 20
trigger1 = random < 100*var(50);500

;���������L�b�N
[state -1, standing short]
type = changestate
value = 230
triggerall = var(50) != 0
triggerall = var(53) = 130
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = p2statetype = a
trigger1 = p2bodydist x = [-20,50]
trigger1 = p2bodydist y = [-40,0]
triggerall = random < 200*var(50);999

;���������p���`
[state -1, standing strong]
type = changestate
value = 210
triggerall = var(50) != 0
triggerall = var(53) = 130
triggerall = power >= 4000
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = stateno = 230
trigger1 = movehit = [1,5]
trigger1 = random < 200*var(50);999

;��������L�b�N
[state -1, standing roundhouse]
type = changestate
value = 250
triggerall = var(50) != 0
triggerall = var(53) = 130
triggerall = power >= 4000
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = stateno = 210
trigger1 = movehit = [1,5]
trigger1 = random < 200*var(50);999

;���e�B���E�t�B�i�[���E�L�����E�f�B�E���i
[state -1, tiro finale chiaro di luna]
type = changestate
value = 3400
triggerall = var(50) > 2
triggerall = var(53) = 130
triggerall = var(28) = [2,3]
triggerall = numhelper(7200) = 0
triggerall = power >= 4000
triggerall = statetype != a
triggerall = alive && numenemy
triggerall = p2statetype != l
triggerall = roundstate = 2
trigger1 = stateno = 251
trigger1 = movehit = [1,5]
trigger1 = random < 200*var(50);999

;���u���[�L
[state -1, brake]
type = changestate
value = 0
ctrl = 1
triggerall = var(50) != 0
triggerall = var(53) = 130
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = stateno = 101
trigger1 = p2dist x < 0
trigger2 = roundstate != 2
trigger2 = time > 100

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 130
trigger1 = p2statetype = l || p2movetype != h
trigger2 = stateno = 3500
trigger2 = time = 3
var(53) = 0

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 130
triggerall = power < 4000
trigger1 = p2statetype = a
trigger1 = stateno = 230
trigger1 = movehit = [1,5]
var(53) = 121
;---------------------------------------------------------------------------
;���e�B���E�t�B�i�[���E�L�����E�f�B�E���i
[state -1, tiro finale chiaro di luna]
type = changestate
value = 3400
triggerall = var(50) > 2
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = var(56) = 0
triggerall = var(28) = [2,3]
triggerall = numhelper(7200) = 0
triggerall = power >= 4000
triggerall = statetype != a
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = p2statetype != l
trigger1 = stateno = 251 || ((var(28) = 2) && stateno = 220)
trigger1 = movehit = [1,3]
trigger1 = random <= 50*var(50)+(p2life<350)*50*var(50);250+250
trigger2 = stateno = 220
trigger2 = movehit = [1,3]
trigger2 = power = [4000,4999+(var(28)=2)*5000]
trigger2 = p2life < 350
trigger2 = random <= 50*var(50);250
;---------------------------------------------------------------------------
;���������p���`
[state -1, standing jab]
type = changestate
value = 200
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = p2statetype = s || p2statetype = c
triggerall = p2movetype != a
trigger1 = prevstateno = 1000
trigger1 = (p2bodydist x = [-20,50])
trigger1 = random <= 20*var(50);100
;---------------------------------------------------------------------------
;���e�B���E�h���b�g
[state -1, standing strong2]
type = changestate
value = 215
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = stateno = 210
triggerall = moveguarded
triggerall = roundstate = 2
trigger1 = animelemtime(4) > 1
trigger1 = animelemtime(5) < 0
trigger1 = random <= 100*var(50);500
;---------------------------------------------------------------------------
;�����Ⴊ�ݒ��p���`
[state -1, crouching strong]
type = changestate
value = 310
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = stateno = 300 || stateno = 330
triggerall = statetype != a
triggerall = p2statetype = s || p2statetype = c
trigger1 = movecontact
trigger1 = random <= 120*var(50);600
;---------------------------------------------------------------------------
;��������p���`
[state -1, standing fierce]
type = changestate
value = 220
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = stateno = 210 || stateno = 310 || stateno = 340
trigger1 = movecontact
trigger1 = random <= 150*var(50);750
;---------------------------------------------------------------------------
;���e�B���E�t�B�i�[���E�K���b�V�A
[state -1, tiro finale galassia]
type = changestate
value = 3500
triggerall = var(50) > 2
triggerall = var(53) = 0
triggerall = var(28) = 3
triggerall = numhelper(7300) = 0
triggerall = power >= 5000
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = stateno = 220 || stateno = 225
trigger1 = movehit = [1,10]
trigger1 = p2statetype = s || p2statetype = c
triggerall= random <= 100*var(50);500
;---------------------------------------------------------------------------
;���e�B���E�t�B�i�[���E�\���E�����@���e�i���E���h�O�j
[state -1, tiro finale sol levante]
type = changestate
value = 3300
triggerall = var(50) > 2
triggerall = var(59) = 0
triggerall = var(53) = 0
triggerall = var(56) = 0
triggerall = var(28) = [1,3]
triggerall = var(11) != [100,200]
triggerall = numhelper(7100) = 0
triggerall = statetype != a
triggerall = alive && numenemy
triggerall = p2statetype != l
triggerall = stateno = 220 || stateno = 225
triggerall = movehit = [1,5]
trigger1 = roundstate != 2
trigger1 = power >= 2000
triggerall = random <= 100*var(50);500
;---------------------------------------------------------------------------
;���}�M�J�u�[�gD
[state -1, magica boot]
type = changestate
value = 901
triggerall = var(50) > 2
triggerall = var(53) = 0
triggerall = var(8) > 0
triggerall = alive && numenemy
triggerall = power >= 1000+800
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = p2statetype = s || p2statetype = c
trigger1 = stateno = 220 || stateno = 251
trigger1 = movehit = [1,3]
trigger1 = numtarget
trigger1 = random <= 50*var(50)+(stateno=251)*50*var(50);250+250

[state -1, varset]
type = varset
var(53) = 100
triggerall = var(50) != 0
triggerall = var(53) = 0
trigger1 = stateno = 901
;---------------------------------------------------------------------------
;���_�b�V��(ai)
[state -1, run fwd]
type = changestate
value = 101
triggerall = var(50) != 0
triggerall = var(53) = 100
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = stateno != 101
trigger1 = prevstateno = 901
trigger1 = random < 200*var(50);999
;---------------------------------------------------------------------------
;���������p���`
[state -1, jab]
type = changestate
value = 200
triggerall = var(50) != 0
triggerall = var(53) = 100
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = stateno = 101
triggerall = roundstate = 2
trigger1 = (p2bodydist x = [-20,50])
trigger1 = random < 200*var(50);999
;---------------------------------------------------------------------------
;���z�[���[�E�J�f���c�@�P
[state -1, holy cadenza1]
type = changestate
value = 260
triggerall = var(50) != 0
triggerall = var(53) = 100
triggerall = statetype != a
trigger1 = stateno = 200
trigger1 = animelemtime(5) < 0
trigger1 = movecontact > 1
trigger1 = random < 200*var(50);999
;---------------------------------------------------------------------------
;���z�[���[�E�J�f���c�@�Q
[state -1, holy cadenza2]
type = changestate
value = 263
triggerall = var(50) != 0
triggerall = var(53) = 100
triggerall = statetype != a
trigger1 = stateno = 260
trigger1 = animelemtime(5) < 0
trigger1 = movecontact > 1
trigger1 = random < 200*var(50);999
;---------------------------------------------------------------------------
;���z�[���[�E�J�f���c�@�R
[state -1, holy cadenza3]
type = changestate
value = 266
triggerall = var(50) != 0
triggerall = var(53) = 100
triggerall = statetype != a
trigger1 = stateno = 263
trigger1 = animelemtime(6) < 0
trigger1 = movecontact > 1
trigger1 = numtarget
trigger1 = target,alive
trigger1 = p2statetype != a
trigger1 = random < 10*var(50)+movehit*190*var(50);999
;---------------------------------------------------------------------------
;���z�[���[�E�J�f���c�@�S
[state -1, holy cadenza4]
type = changestate
value = 270
triggerall = var(50) != 0
triggerall = var(53) = 100
triggerall = statetype != a
trigger1 = stateno = 266
trigger1 = animelemtime(4) < 0
trigger1 = movecontact > 1
trigger1 = random < 200*var(50);999
;---------------------------------------------------------------------------
;���z�[���[�E�J�f���c�@�T
[state -1, holy cadenza5]
type = changestate
value = 273
triggerall = var(50) != 0
triggerall = var(53) = 100
triggerall = statetype != a
trigger1 = stateno = 270
trigger1 = animelemtime(6) < 0
trigger1 = movecontact > 1
trigger1 = random < 200*var(50);999
;---------------------------------------------------------------------------
;���z�[���[�E�J�f���c�@�U
[state -1, holy cadenza6]
type = changestate
value = 276
triggerall = var(50) != 0
triggerall = var(53) = 100
triggerall = statetype != a
trigger1 = stateno = 273
trigger1 = animelemtime(7) < 0
trigger1 = movecontact > 1
trigger1 = numtarget
trigger1 = target,alive
trigger1 = random < 200*var(50);999
;---------------------------------------------------------------------------
;���z�[���[�E�J�f���c�@�V
[state -1, holy cadenza7]
type = changestate
value = 280
triggerall = var(50) != 0
triggerall = var(53) = 100
triggerall = statetype != a
trigger1 = stateno = 276
trigger1 = animelemtime(6) < 0
trigger1 = movecontact > 1
trigger1 = random < 200*var(50);999

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 100
trigger1 = stateno = 280
trigger1 = power >= 2000
trigger1 = p2life > 100
trigger1 = var(8) > 0
trigger1 = animelemtime(4) > 0
trigger1 = animelemtime(5) < 0
trigger1 = random <= 160*var(50);800
var(53) = 101+(frontedgedist<70||p2life<100)
;---------------------------------------------------------------------------
;���ǉ����[�g�P
;���}�M�J�u�[�gD
[state -1, magica boot]
type = changestate
value = 901
triggerall = var(50) > 2
triggerall = var(53) = 101
triggerall = var(8) > 0
triggerall = alive && numenemy
triggerall = power >= 1000
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = stateno = 283
trigger1 = movehit = [1,3]
trigger1 = random < 200*var(50);999

;���_�b�V��(ai)
[state -1, run fwd]
type = changestate
value = 101
triggerall = var(50) != 0
triggerall = var(53) = 101
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = stateno != 101
trigger1 = prevstateno = 901
trigger1 = random < 200*var(50);999

;���������L�b�N
[state -1, standing short]
type = changestate
value = 230
triggerall = var(50) != 0
triggerall = var(53) = 101
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = p2statetype = a
trigger1 = p2bodydist x = [-20,50]
trigger1 = p2bodydist y = [-40,0]
trigger1 = time > 20
triggerall = random < 200*var(50);999

;���u���[�L
[state -1, brake]
type = changestate
value = 0
ctrl = 1
triggerall = var(50) != 0
triggerall = var(53) = 101
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = stateno = 101
trigger1 = p2dist x < 0
trigger2 = roundstate != 2
trigger2 = time > 100

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 101
trigger1 = p2statetype = l || p2movetype != h
var(53) = 0

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 101
trigger1 = p2statetype = a
trigger1 = stateno = 230
trigger1 = movehit = [1,5]
var(53) = 121
;---------------------------------------------------------------------------
;���ǉ����[�g�Q
;���}�M�J�u�[�gD
[state -1, magica boot]
type = changestate
value = 901
triggerall = var(50) > 2
triggerall = var(53) = 102
triggerall = var(8) > 0
triggerall = alive && numenemy
triggerall = power >= 1000
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = p2statetype = s || p2statetype = c
trigger1 = stateno = 280
trigger1 = animelemtime(5) >= 0
trigger1 = animelemtime(6) < 0
trigger1 = movehit = [1,3]
trigger1 = random < 200*var(50);999

;���_�b�V��(ai)
[state -1, run fwd]
type = changestate
value = 101
triggerall = var(50) != 0
triggerall = var(53) = 102
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = stateno != 101
trigger1 = prevstateno = 901
trigger1 = random < 200*var(50);999

;���������L�b�N
[state -1, standing short]
type = changestate
value = 230
triggerall = var(50) != 0
triggerall = var(53) = 102
triggerall = alive && numenemy
triggerall = stateno = 101;ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = p2statetype = s || p2statetype = c
trigger1 = p2bodydist x = [-20,50]
trigger1 = time > 5
triggerall = random < 200*var(50);999

;�����p���`
[state -1, strong]
type = changestate
value = 210+(random<500)*100
triggerall = var(50) != 0
triggerall = var(53) = 102
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = stateno = 230
trigger1 = movehit = [1,3]
trigger1 = random < 200*var(50);999

;��������L�b�N
[state -1, standing roundhouse]
type = changestate
value = 250
triggerall = var(50) != 0
triggerall = var(53) = 102
triggerall = statetype != a
trigger1 = stateno = 210 || stateno = 310
trigger1 = movehit = [1,5]
trigger1 = random < 200*var(50);999

;���e�B���E�e���y�X�^
[state -1, tiro tempesta]
type = changestate
value = 3000
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = var(53) = 102
triggerall = power >= 1000
triggerall = statetype != a
triggerall = alive && numenemy
triggerall = roundstate = 2
trigger1 = stateno = 251
trigger1 = movehit = [1,5]
trigger1 = random < 200*var(50);999

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 102
trigger1 = stateno = 3030
var(53) = 130

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 102
trigger1 = p2statetype = l || p2movetype != h
var(53) = 0
;---------------------------------------------------------------------------
;���W�����v
[state -1, jump]
type = changestate
value = 41
triggerall = var(50) != 0
triggerall = var(53) = 100
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = p2statetype = a
trigger1 = stateno = [260,263]
trigger1 = movehit
trigger1 = random <= 100*var(50);500
;---------------------------------------------------------------------------
;���W�����v
[state -3, jump]
type = changestate
value = 41
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = p2statetype = s || p2statetype = c
trigger1 = stateno = 220
trigger1 = movehit = [1,3]
trigger1 = random <= 30*var(50)+(power>=3000)*100*var(50);150+500
trigger1 = var(53) := 120				;�����[�h�`�F���W
;---------------------------------------------------------------------------
;�����K�[��
[state -1, legare]
type = changestate
value = 1400
triggerall = var(50) != 0
triggerall = var(53) = 120
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = p2statetype = s || p2statetype = c
triggerall = stateno = 50
trigger1 = time = [10,13]
trigger1 = random < 200*var(50);999

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 120
trigger1 = stateno = 1400
trigger1 = moveguarded
trigger2 = stateno = 0
trigger2 = vel x = 0
trigger2 = time > 20
var(53) = 0

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 120
trigger1 = stateno = 1400
trigger1 = movehit
var(53) = 121
;---------------------------------------------------------------------------
;���e�B���E�t�B�i�[��
[state -1, tiro finale]
type = changestate
value = 3200
triggerall = var(50) > 2
triggerall = var(53) = 121
triggerall = var(28) = [0,3]
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = power >= 3000
triggerall = stateno = 1400
triggerall = movehit = [3,10]
trigger1 = p2life < 400
trigger2 = p2life > life*2
triggerall = random < 200*var(50);999
;---------------------------------------------------------------------------
;���e�B���E�����f�B�[�l
[state -1, tiro rondine]
type = changestate
value = 1200
triggerall = var(50) != 0
triggerall = var(53) = 121
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a && ctrl
trigger1 = prevstateno = 1400
trigger1 = random <= 100*var(50);500
;---------------------------------------------------------------------------
;���������p���`
[state -1, standing strong]
type = changestate
value = 210
triggerall = var(50) != 0
triggerall = var(53) = 121
triggerall = alive && numenemy
triggerall = ctrl
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = time = 1
trigger1 = random < 200*var(50);999

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 121
trigger1 = stateno = 210
trigger1 = animelemtime(5) > 0
var(53) = 0
;---------------------------------------------------------------------------
;�����Ⴊ�ݑ�p���`
[state -1, crouching fierce]
type = changestate
value = 320
triggerall = var(50) != 0
triggerall = var(53) = 121
triggerall = p2statetype = a
trigger1 = stateno = 210
trigger1 = movehit = [1,3]
trigger2 = stateno = 230
trigger2 = movehit = [1,3]
triggerall = random < 200*var(50);999
;---------------------------------------------------------------------------
;���W�����v
[state -1, jump]
type = changestate
value = 41
triggerall = var(50) != 0
triggerall = var(53) = 121
triggerall = alive && numenemy
triggerall = roundstate = 2
trigger1 = stateno = 320
trigger1 = movehit
trigger1 = random < 200*var(50);999

[state -1, varset]
type = varset
var(53) = 0
triggerall = var(50) != 0
triggerall = var(53) = 121
trigger1 = stateno = 50
trigger1 = vel y < 0
;---------------------------------------------------------------------------
;���e�B���E�t�H���S�[���i�t�H���[�j
[state -1, standing fierce2]
type = changestate
value = 225
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = stateno = 220
triggerall = movecontact = [3,10]
trigger1 = random <= 80*var(50)+moveguarded*50*var(50)+(p2statetype=a)*50*var(50);400+250/250
trigger2 = numtarget
trigger2 = target,alive = 0
trigger2 = random <= 100*var(50);500
;---------------------------------------------------------------------------
;���e�B���E���H���[�i�t�H���[�j
[state -1, tiro volley]
type = changestate
value = 1000+(random<100)*30
triggerall = var(50) != 0
triggerall = var(53) = 0
trigger1 = stateno = 251 || stateno = 350
trigger1 = movecontact = [1,5]
trigger1 = random <= 70*var(50);350
;---------------------------------------------------------------------------
;���e�B���E�~���b�W�I�i�t�H���[�j
[state -1, tiro miraggio]
type = changestate
value = 1300
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(45) = 0				;���֎~���O���N���A
trigger1 = stateno = 251 || stateno = 350
trigger1 = moveguarded = [1,5]
trigger1 = random <= 30*var(50);150
;===========================================================================
;���󒆃R���{��
;===========================================================================
;���W�����v���p���`
[state -1, jumping jab]
type = changestate
value = 400
triggerall = var(50) != 0
triggerall = var(53) != [120,121]
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = p2bodydist x = [-20,60]
triggerall = p2bodydist y = [-60,60]
triggerall = prevstateno != 450
trigger1 = var(10) = 1					;��1st�W�����v
trigger1 = ctrl
triggerall = (var(50) > 3) || (random <= 150*var(50));750
;---------------------------------------------------------------------------
;���W�����v���L�b�N
[state -1, jumping short]
type = changestate
value = 430
triggerall = var(50) != 0
triggerall = var(53) != [120,121]
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = prevstateno != 450
trigger1 = var(10) = 1					;��1st�W�����v
trigger1 = stateno = 400
trigger1 = movecontact
trigger2 = var(10) = 0					;��2nd�W�����v
trigger2 = p2bodydist x = [-20,60]
trigger2 = p2bodydist y = [-60,60]
trigger2 = ctrl
triggerall = (var(50) > 3) || (random <= 150*var(50));750
;---------------------------------------------------------------------------
;���W�����v���p���`
[state -1, jumping strong]
type = changestate
value = 410+(p2bodydist y<-40)*30
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = numtarget
trigger1 = var(10) = 1					;��1st�W�����v
trigger1 = stateno = 430
trigger1 = movecontact
trigger2 = var(10) = 0					;��2st�W�����v
trigger2 = stateno = 430
trigger2 = movehit
trigger2 = numtarget
trigger2 = target,alive = 1
triggerall = (var(50) > 3) || (random <= 150*var(50));750
;---------------------------------------------------------------------------
;���W�����v���L�b�N
[state -1, jumping forward]
type = changestate
value = 440+(var(50)<3)*10
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
trigger1 = var(10) = 1					;��1st�W�����v
trigger1 = stateno = 410
trigger1 = movehit > 1
trigger2 = var(10) = 0					;��2st�W�����v
trigger2 = stateno = 410
trigger2 = movehit > 1
trigger2 = numtarget
trigger2 = target,alive = 1
trigger3 = var(10) = 0					;��2st�W�����v
trigger3 = stateno = 430
trigger3 = movehit
trigger3 = numtarget
trigger3 = target,alive = 0
triggerall = (var(50) > 3) || (random <= 150*var(50));750
;---------------------------------------------------------------------------
;���W�����v��L�b�N
[state -1, jumping roundhouse]
type = changestate
value = 450
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = var(10) = 0					;��2st�W�����v
trigger1 = (stateno = 440) || ((stateno = 420) && (p2bodydist y < -45))
trigger1 = movehit
trigger2 = (stateno = [400,440]) && (stateno != [415,420])
trigger2 = prevstateno != 110
trigger2 = movehit
trigger2 = numtarget
trigger2 = target,alive = 0
triggerall = (var(50) > 3) || (random <= 150*var(50));750
;---------------------------------------------------------------------------
;���G�A�W�����v
[state -1, air jump]
type = changestate
value = 45
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = var(10) = 1					;��1st�W�����v
trigger1 = stateno = 440
trigger1 = movehit
trigger2 = stateno = 410
trigger2 = movehit
trigger2 = numtarget
trigger2 = target,alive = 0
triggerall = (var(50) > 3) || (random <= 150*var(50));750
;---------------------------------------------------------------------------
;���W�����v��p���`�i�t�H���[�j
[state -1, jumping fierce]
type = changestate
value = 420
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype = a
trigger1 = stateno = 410
trigger1 = moveguarded
trigger1 = vel y > 0
trigger1 = p2bodydist x = [-60,60]
trigger1 = p2bodydist y = [60,90]
triggerall = (var(50) = 5) || (random <= 80*var(50));400
;---------------------------------------------------------------------------
;���e�B���E�����f�B�[�l
[state -1, tiro rondine]
type = changestate
value = 1200
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a && ctrl
trigger1 = prevstateno = 450
trigger1 = random <= 20*var(50);100
;===========================================================================
;���R���������
;===========================================================================
;���W�����v
[state -3, jump]
type = changestate
value = 41
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = p2statetype != a				;������W�����v
trigger1 = ctrl || (stateno = 11) || (stateno = 21) || (stateno = 101)
trigger1 = enemynear,hitdefattr = sca, at
trigger1 = random <= 40*var(50);200
trigger1 = var(53) := 1
;---------------------------------------------------------------------------
;���o�b�N�X�e�b�v
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = ctrl || (stateno = 11) || (stateno = 21) || (stateno = 101)
triggerall = prevstateno != 106
triggerall = backedgedist > 80
trigger1 = p2dist x = [-60,60]
trigger1 = p2movetype = a
trigger1 = random <= 10*var(50);50
trigger2 = p2dist x = [-60,60]
trigger2 = p2stateno = 5120
trigger2 = random <= 60*var(50);300
trigger3 = time > 300
trigger3 = random <= 20*var(50);100
;---------------------------------------------------------------------------
;���o�b�N�X�e�b�v�i�ւ�������j
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
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
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = (stateno = 0) && (anim = 0)
triggerall = roundstate > 2
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
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = ctrl
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = anim = 0
triggerall = prevstateno != 21
trigger1 = random <= 100-10*var(50);50
;---------------------------------------------------------------------------
;�����Ⴊ��
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = life > lifemax*0.75
triggerall = alive && numenemy
triggerall = inguarddist
triggerall = (anim = 0) || (stateno = 21) || (stateno = 101)
triggerall = p2dist x = [-10,60]
trigger1 = enemynear,statetype = l
trigger2 = enemynear,statetype = c
triggerall = random <= 5*var(50);25
var(53) = 3

[state -1, crouching]
type = changestate
value = 10
ctrl = 0
triggerall = var(50) != 0
triggerall = var(53) = 3
trigger1 = stateno != [10,12]
trigger1 = prevstateno != [10,12]

[state -1, crouching]
type = changestate
value = 11
triggerall = var(50) != 0
trigger1 = var(53) = 3
trigger1 = stateno = 10
trigger1 = animtime = 0

;������
[state -1, standing]
type = ctrlset
value = 1
triggerall = var(50) != 0
triggerall = var(53) = 3
triggerall = alive && numenemy
triggerall = stateno = 11
trigger1 = time > 90 || enemynear,stateno = 5120
trigger2 = time > 90 || enemynear,statetype != c
trigger3 = time > 90 || enemynear,movetype = a
;---------------------------------------------------------------------------
;������
[state -1, taunt]
type = changestate
value = 195+((life=lifemax)&&(var(37)=2))*2
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(57) = 0
triggerall = var(37) = [1,2]
triggerall = alive
triggerall = roundstate = 2
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = prevstateno != [195,199]
triggerall = life > floor(lifemax*0.7)
triggerall = (var(12) != 200) || ((var(12) = 200) && (var(30) != [3200,3290]))
trigger1 = time = 3
trigger1 = var(2)%5 = 0
trigger1 = roundstate != 2
trigger1 = matchover != 1
trigger2 = var(50) = 1					;�����S�҃��[�h
trigger2 = life > floor(lifemax*0.5)
trigger2 = random <= 50
trigger3 = roundstate = 2
trigger3 = life > p2life*2				;���������]�T
trigger3 = random <= 10+80*(p2statetype=l)
;---------------------------------------------------------------------------
;�����s�i���E���h�O�j
[state -1, walk]
type = changestate
value = 21
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = (stateno = 0) && (anim = 0)
triggerall = roundstate > 2
trigger1 = numpartner > 0
trigger1 = partner,alive = 1
trigger1 = var(30) = 0
trigger1 = prevstateno != 21
trigger1 = pos x = [partner,pos x-30,partner,pos x+30]
;---------------------------------------------------------------------------
;���u���[�L
[state -1, brake]
type = changestate
value = 0
ctrl = 1
triggerall = var(50) != 0
triggerall = alive
trigger1 = prevstateno != 0
trigger1 = stateno = 101
trigger1 = p2dist x < 0 || time > 120
trigger2 = roundstate > 2
trigger2 = stateno = 21
trigger2 = numpartner > 0
trigger2 = (pos x != [partner,pos x-30,partner,pos x+30]) || time > 60
;===========================================================================
;���g���C����EAI��
;===========================================================================
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = stateno = 3530
triggerall = time = 1
triggerall = frontedgedist > 170
trigger1 = numpartner = 0
trigger2 = numpartner > 0
trigger2 = partner,alive = 0
var(53) = 200

[state -1, hadou-cannon moving]
type = posadd
triggerall = var(50) != 0
triggerall = var(53) = 200
triggerall = stateno = 3530
trigger1 = time = [20,100]
x = 0.75
y = -0.5

[state -1, hadou-cannon moving]
type = posadd
triggerall = var(50) != 0
triggerall = var(53) = 200
triggerall = stateno = 3530
trigger1 = time = [120,180]
y = 0.5

[state -1, hadou-cannon moving]
type = posadd
triggerall = var(50) != 0
triggerall = var(53) = 200
triggerall = stateno = 3530
trigger1 = time = [181,350]
x = -0.75

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = stateno = 3530
triggerall = time = 1
triggerall = frontedgedist <= 170
trigger1 = numpartner = 0
trigger2 = numpartner > 0
trigger2 = partner,alive = 0
var(53) = 201

[state -1, hadou-cannon moving]
type = posadd
triggerall = var(50) != 0
triggerall = var(53) = 201
triggerall = stateno = 3530
trigger1 = time = [20,100]
x = -0.75
y = -0.5

[state -1, hadou-cannon moving]
type = posadd
triggerall = var(50) != 0
triggerall = var(53) = 201
triggerall = stateno = 3530
trigger1 = time = [120,180]
y = 0.5

[state -1, hadou-cannon moving]
type = posadd
triggerall = var(50) != 0
triggerall = var(53) = 201
triggerall = stateno = 3530
trigger1 = time = [181,350]
x = -0.75

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = stateno = 3530
triggerall = time = 1
trigger1 = numpartner > 0
trigger1 = partner,alive = 1
var(53) = 202

[state -1, hadou-cannon moving]
type = posadd
triggerall = var(50) != 0
triggerall = var(53) = 202
triggerall = stateno = 3530
trigger1 = time = [20,100]
x = -0.75
y = -0.5

[state -1, hadou-cannon moving]
type = posadd
triggerall = var(50) != 0
triggerall = var(53) = 202
triggerall = stateno = 3530
trigger1 = time = [120,180]
x = -0.75
y = 0.5

[state -1, hadou-cannon moving]
type = posadd
triggerall = var(50) != 0
triggerall = var(53) = 202
triggerall = stateno = 3530
trigger1 = time = [181,370]
x = -0.75

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = [200,202]
trigger1 = stateno != 3530
var(53) = 0
;===========================================================================
;���g���C����E�蓮����⏕AI��
;===========================================================================
[state -1, hadou-cannon moving]
type = posadd
triggerall = var(50) = 0
triggerall = stateno = 3530
triggerall = frontedgedist < 150
trigger1 = time = [300,550]
x = -0.75
;---------------------------------------------------------------------------
;��AI���o�p
[state -1, width]
type = width
trigger1 = var(50) != 0
trigger1 = roundstate != 2
edge = 1,1
