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
trigger1 = command = "arioso1" || command = "arioso2" || command = "arioso3"
trigger1 = var(7) := 3100	;�����`�����ɃA���I�[�\
trigger2 = power >= 1000
trigger2 = command = "sforzando1" || command = "sforzando2" || command = "sforzando3"
trigger2 = var(7) := 3000	;���������߂ăX�t�H���c�@���h
trigger3 = power >= 1000
trigger3 = command = "tempestoso1" || command = "tempestoso2" || command = "tempestoso3"
trigger3 = var(7) := 3300	;���N�z���e���y�X�g�[�\
trigger4 = power >= 1000
trigger4 = var(40) = 2
trigger4 = command = "affettuoso1" || command = "affettuoso2" || command = "affettuoso3"
trigger4 = var(7) := 3400	;���N���ׂɃA�t�F�b�g�D�I�[�\
trigger5 = command = "oratorio1"
trigger5 = var(7) := 1000	;�������̃I���g���I�P
trigger6 = command = "oratorio2"
trigger6 = var(7) := 1030	;�������̃I���g���I�Q
trigger7 = command = "oratorio3"
trigger7 = var(7) := 1060	;�������̃I���g���I�R
trigger8 = command = "scherzo1"
trigger8 = var(7) := 1200	;���e�x��X�P���c�H�P
trigger9 = command = "scherzo2"
trigger9 = var(7) := 1210	;���e�x��X�P���c�H�Q
trigger10 = command = "scherzo3"
trigger10 = var(7) := 1220	;���e�x��X�P���c�H�R
trigger11 = command = "aria"
trigger11 = var(7) := 1500	;���ؘR����̃A���A
trigger12 = command = "ff"
trigger12 = var(7) := 100	;���_�b�V��
trigger13 = command = "bb"
trigger13 = var(7) := 105	;���o�b�N�X�e�b�v
trigger14 = command = "holdup"
trigger14 = var(7) := 40	;���W�����v
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
triggerall = numpartner = 0
trigger1 = stateno = 220
trigger1 = p2statetype = a
trigger1 = movehit = 1
var(29) = 1
ignorehitpause = 0

[state -3, varadd]
type = varadd
triggerall = numpartner = 0
trigger1 = stateno = 1110
trigger1 = movehit = 1
var(29) = 1
ignorehitpause = 0

[state -3, varadd]
type = varadd
trigger1 = stateno = [463,464]
trigger1 = p2statetype = l
trigger1 = movehit = 1
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
fvar(3) = 1.0+(lifemax-life)*0.00038
;---------------------------------------------------------------------------
;�����n�d�����퉻
[state -3, varset]
type = varset
trigger1 = movehit
trigger2 = movetype = h
trigger2 = (stateno != [120,155])
var(31) = 0
;---------------------------------------------------------------------------
;���󒆃_�b�V�����g���v���W�����v���U
[state -3, varset]
type = varset
trigger1 = statetype != a 
trigger1 = ctrl
trigger2 = roundstate = 1
var(10) = 2

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
;���X�[�p�[�W�����v�Ď�
[state -3, varset]
type = varset
trigger1 = roundstate = 1
trigger2 = statetype != a 
trigger2 = ctrl
trigger3 = stateno = 52
var(9) = 0

[state -3, varset]
type = varset
trigger1 = stateno = 60
var(9) = 1
;---------------------------------------------------------------------------
;�����W�F�l
[state -3, lifeadd]
type = lifeadd
trigger1 = alive = 1
trigger1 = var(0) > 0
trigger1 = time%4 = 0
trigger1 = movetype != h || stateno = [120,155]
value = 1
ignorehitpause = 1

[state -3, varadd]
type = varadd
trigger1 = alive = 1
trigger1 = var(0) > 0
var(0) = -1
ignorehitpause = 1
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

;���ϐ��̃��Z�b�g
[state -3, varset];�L���L��
type = varset
trigger1 = ctrl
var(24) = 0
;---------------------------------------------------------------------------
;���\���D��x
[state -3, sprpriority]
type = sprpriority
trigger1 = !ishelper
trigger1 = movetype != h
value = 2

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
edge = -1-(2**9!=512),-1-(2**9!=512)

