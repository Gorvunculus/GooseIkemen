;===========================================================================
;������-3 states������
;===========================================================================
[statedef -3]
;---------------------------------------------------------------------------
;���ݒ�t�@�C��
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
;���}�M�J�u�[�g���E
;���U
[state -3, varset]
type = varset
trigger1 = roundstate < 2
trigger2 = playeridexist(var(15)) = 1
trigger2 = playerid(var(15)),movetype != h
;trigger3 = playeridexist(var(15)) = 1
;trigger3 = playerid(var(15)),statetype = l
var(8) = 1
;---------------------------------------------------------------------------
;���ւ���L�����Z��
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
;���e�B���E�t�B�A���}�̌���������
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
;���W�����v���͗\��
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
;�����o�[�T�����͗\��
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
trigger1 = var(7) := 3000	;���e�B���E�e���y�X�^
trigger2 = power >= 1000
trigger2 = command = "meteorite1" || command = "meteorite2" || command = "meteorite3"
trigger2 = var(7) := 3100	;���e�B���E���e�I���[�e
trigger3 = power >= 2000
trigger3 = command = "finale1" 
trigger3 = var(7) := 3300	;���e�B���E�t�B�i�[���E�\���E�����@���e
trigger4 = power >= 4000
trigger4 = command = "finale2" 
trigger4 = var(7) := 3400	;���e�B���E�t�B�i�[���E�L�����E�f�B�E���i
trigger5 = power >= 5000
trigger5 = command = "finale3" 
trigger5 = var(7) := 3500	;���e�B���E�t�B�i�[���E�K���b�V�A
trigger6 = command = "miraggio1" || command = "miraggio2" || command = "miraggio3"
trigger6 = var(7) := 1300	;���e�B���E�~���b�W�I
trigger7 = command = "volley1" || command = "volley2" || command = "volley3"
trigger7 = var(7) := 1000	;���e�B���E���H���[
trigger8 = command = "volley feint"
trigger8 = var(7) := 1030	;���e�B���E���H���[�E�t�F�C���g
trigger9 = command = "ff"
trigger9 = var(7) := 100	;���_�b�V��
trigger10 = command = "bb"
trigger10 = var(7) := 105	;���o�b�N�X�e�b�v
trigger11 = command = "holdup"
trigger11 = var(7) := 40	;���W�����v

;���R�}���h�i�[�\��
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
;���o�~���Œ�
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
;���R���{����
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
;���R���{�q�b�g�J�E���^���␳�W��
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
;���ėp�R���{�͂ߐ���
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
;���R���{�␳�l
[state -3, varset]
type = varset
trigger1 = var(14) < 100
fvar(1) = (100-var(14))*0.01

[state -3, varset]
type = varset
trigger1 = var(14) >= 100
fvar(1) = 0.01
;---------------------------------------------------------------------------
;���\�E���W�F���␳�l�i�p�~�j
[state -3, varset]
type = varset
trigger1 = 1
fvar(2) = 1.00
;---------------------------------------------------------------------------
;���p���[�␳�l
[state -3, varset]
type = varset
triggerall = var(40) = 0
trigger1 = roundstate = 2
fvar(3) = 1.0+(lifemax-life)*0.000303
;---------------------------------------------------------------------------
;�����n�d�����퉻
[state -3, varset]
type = varset
trigger1 = movehit
trigger2 = movetype = h
trigger2 = (stateno != [120,155])
var(31) = 0
;---------------------------------------------------------------------------
;���󒆃_�b�V�����_�u���W�����v���U
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
;���n�C�W�����v�Ď�
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
;���G���擾
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
;���������擾
[state -3, varset]
type = varset
trigger1 = numpartner
var(30) = partner,stateno
;---------------------------------------------------------------------------
;���ϐ��̃��Z�b�g
[state -3, varset];�ėp�R
type = varset
trigger1 = ctrl
var(7) = 0
;---------------------------------------------------------------------------
;���\���D��x
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
;���[
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
