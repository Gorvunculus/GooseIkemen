;===========================================================================
;������-2 states������
;===========================================================================
[statedef -2]
;---------------------------------------------------------------------------
;���t���[�^�C�}�[
[state -2, varadd]
type = varadd
trigger1 = roundstate = 2
var(2) = 1
ignorehitpause = 1
;---------------------------------------------------------------------------
;���ėp�����_���l
[state -2, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,99
ignorehitpause = 1
;---------------------------------------------------------------------------
;���o�C�^���e�B�Ď�
[state -2, varset]
type = varset
trigger1 = roundstate <= 3
var(3) = life
;---------------------------------------------------------------------------
;�����u�o�O���
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
;�������{�C�X�i�Ď��j
[state -2, playsnd]
type = playsnd
trigger1 = alive = 1
trigger1 = animelemtime(3) = 0
trigger1 = anim = 195
trigger1 = stateno != 195
value = 10,90+floor(random/250);;0-3
channel = 0
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)
;---------------------------------------------------------------------------
;���_���[�W�{�C�X
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
value = 11,1+floor(random/100);;0-9
channel = 11
lowpriority = 1
freqmul = ifelse(var(33),2-const(size.xscale),1)
;---------------------------------------------------------------------------
;��KO�{�C�X
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
;===========================================================================
;���`�[�g�R�[�h��t
;===========================================================================
;���̗͎�����
[state -2, lifeadd]
type = lifeadd
triggerall = alive
trigger1 = fvar(20) != 0.0
trigger1 = time%floor(6.0-fvar(20)) = 0
trigger1 = !(movetype = h && time <6)
value = 1

;���p���[��������
[state -2, poweradd]
type = poweradd
triggerall = alive
trigger1 = fvar(21) != 0.0
trigger1 = time%floor(6.0-fvar(21)) = 0
value = 3

;���펞�p���[MAX
[state -2, powerset]
type = powerset
triggerall = alive
trigger1 = fvar(22) = 1.0
value = powermax

;���J���p���[�Z�b�g
[state -2, poweradd]
type = poweradd
triggerall = alive
trigger1 = fvar(23) != 0.0
trigger1 = stateno = 190
value = floor(fvar(23)*1000.0)
;===========================================================================
;���f�o�b�O�\��
[state -2, displaytoclipboard];��default
type = displaytoclipboard
trigger1 = 1
text = "jump: %d / bdistx: %d / bdisty: %d / fdist: %d / pos y: %d\n"
params = var(10),p2bodydist x,p2bodydist y,frontedgedist,pos y

[state -2, appendtoclipboard];��default
type = appendtoclipboard
trigger1 = 1
text = "enemy code: %d / partner code: %d / last target: %d / cor: %d / mode: %d"
params = var(11),var(12),var(15),var(14),var(53)
;===========================================================================
;���f�o�b�K
[state -2, debug - safe mode ai]
type = varset
trigger1 = 1
var(59) = 0
