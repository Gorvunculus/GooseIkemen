; �T���v���L�����N�^�[�w�J���t�[�}���x�̃R�}���h�t�@�C���ł��B
; �R�}���h�Ɋւ���ݒ�͂S���\���ɂȂ��Ă��܂��B
;==============================================================================
; Win�Ő�p�p�[�g
;==============================================================================
;------------------------------------------------------------------------------
; ������Win�ł���i���m�ɂ�Linux�ł���j�ǉ����ꂽ�v�f�̓�B
; �R�}���h�֘A�̏����ݒ��C�ӂɎw��o����悤�ɂȂ���(`�E�ցE�L)
;
;�w�{�^�����}�b�v�x�̓{�^���z�u�ύX�p�̍��ځB
; ��`�p�[�g�ł��������ύX���Ȃ��Ă��ǂ��悤�ɂȂ���������B
; �ʓ|�L���l�p���ȁI�i�ú�
;
;�w�f�t�H���g�ݒ�x�ł͊e[Command]�ŏȗ������ꍇ��
; ���͎�t���ԂƓ��͋L�����Ԃ�\�ߌ��߂Ă������ځB
;
;
; ���̂Q���ڂ͏ȗ��\�B
;------------------------------------------------------------------------------
;-| �{�^�����}�b�v�i�{�^���R���t�B�O�j|---------------------------------------- ��P��

[Remap]
x = x      ;�w�{�^���̓��͔�������ۂɉ����{�^���Ɋ��蓖�Ă�B
y = y      ;�x�{�^���@�@�@�@�@�@�@�@�@�V
z = z      ;�y�{�^���@�@�@�@�@�@�@�@�@�V
a = a      ;�`�{�^���@�@�@�@�@�@�@�@�@�V
b = b      ;�a�{�^���@�@�@�@�@�@�@�@�@�V
c = c      ;�b�{�^���@�@�@�@�@�@�@�@�@�V
s = s      ;�X�^�[�g�{�^���@�@�@�@�@�@�V

;------------------------------------------------------------------------------
; �Ⴆ�΁u�{���w�{�^���ŏo����p���`���a�{�^���ɕς������ꍇ�v�Ȃ�A
;
; x = b
;
; �ŊȒP�ɏo����B�g��Ȃ��{�^�����g���Ă���{�^���Ɋ��蓖�Ă鎖���\�B
;------------------------------------------------------------------------------
;-| �f�t�H���g�ݒ� |----------------------------------------------------------- ��Q��

[Defaults]
command.time = 15  ;�W���̃R�}���h���͎�t���ԁB
                   ;�e�R�}���h�ŏȗ����Ă���ꍇ�ɗL���B
                   ;���̃p�����[�^���������ꍇ�A�f�t�H���g�͂P�t���[���ɂȂ�B
                   ;�i�@M.U.G.E.N�ł̂P�t���[���@���@�P�^�U�O�b�@�j

command.buffer.time = 1  ;�W���̃R�}���h���͋L�����ԁB
                         ;���͂�������ɃR�}���h���L�����A
                         ;�w�𗣂��Ă��R�}���h���������Ă����Ԃ�
                         ;�����Őݒ肵�����Ԃ̕��ێ�����B
                         ;�P�`�R�O�t���[���܂ł̊ԂŐݒ�\�B
                         ;�f�t�H���g�͂P�t���[���B

;============================================================================== ��R��
; �R�}���h��`�p�[�g�i���̓L�[��ݒ肷��j
;==============================================================================
;------------------------------------------------------------------------------
; �������L�[�ƃ{�^���̑g�ݍ��킹�Ŋi���Q�[���ɂ�����
;�w���̓R�}���h�x�𒼐ڐݒ�E�ҏW����p�[�g�B
;
; ����R�}���h�ɖ��O��t���ē��̓L�[��g�ݍ��킹��P���ȍ�ƂɂȂ邯�ǁA
; �g�ݍ��킹���Ɠ�������o����͓̂�Փx�����������B
;
; ���L�Łu�����̌��܂�v�Ɓu�g�ݍ��킹�ɕK�v�ȃA���t�@�x�b�g�ƋL���v��
; �S�Đ������܂��傤�B
;------------------------------------------------------------------------------
;�������̌��܂聡
;
; [Command]         �F���̓R�}���h���P��`����B
; name = "***"      �F�R�}���h�������߂�B�啶���Ə���������ʂ����B
; command = ###     �F���ۂɓ��͂���L�[��g�ݍ��킹��B�ڍׂ͌�q�B
; time = &&&        �F���͎�t���Ԃ�ݒ�i�I�v�V�����j�B
; buffer.time = @@@ �F���͋L�����Ԃ�ݒ�i�I�v�V�����j�B
;
; ���l�^�ł��������Ă���ʂ�A�o�^���\�Ȑ��͍ő�w�P�Q�W�x�܂ŁB
;
;
;���w�K�{�R�}���h���x�Ə����Ă�R�}���h�́A�V�X�e�����ŏ������Ă܂��B
;�@�R�}���h����ς�����A�����Ă͂����܂���B�L�[�̕ύX�͏o���܂��B
;------------------------------------------------------------------------------
;���K�v�ȃA���t�@�x�b�g�ƋL����
;
; ��L�́ucommand = ###�v�́w###�x�ɊY�����镔���ŁA
; �g�ݍ��킹��L�[�ƃ{�^����ݒ肵�Ȃ���΂Ȃ�Ȃ��B
;
; ���ݒ肵���L�[��{�^����M.U.G.E.N�̃I�v�V�������[�h�ɂ���
;  �u�L�[�R���t�B�O�v�ɂĐݒ肵���L�[�ȂǂɑΉ����Ă��܂��B
;
; �������L�[���i�S�ĕK���啶���Łj
;
; �@B �@�F�u����v�ɃL�[������i Backward �j
; �@D �@�F�u�����v�ɃL�[������i Downward �j
; �@F �@�F�u�O���v�ɃL�[������i Forward �j
; �@U �@�F�u����v�ɃL�[������i Upward �j
;
; �@DB�@�F�u���΂߉��v�ɃL�[������i�uD�v�ƁuB�v�������ɓ��͂��ꂽ����F���j
; �@UB�@�F�u���΂ߏ�v�ɃL�[������i�uU�v�ƁuB�v�������ɓ��͂��ꂽ����F���j
; �@DF�@�F�u�O�΂߉��v�ɃL�[������i�uD�v�ƁuF�v�������ɓ��͂��ꂽ����F���j
; �@UF�@�F�u�O�΂ߏ�v�ɃL�[������i�uU�v�ƁuF�v�������ɓ��͂��ꂽ����F���j
;
; ���{�^�����i�S�ĕK���������Łj
;
; �@a �@�F�u�`�{�^���v������
; �@b �@�F�u�a�{�^���v������
; �@c �@�F�u�b�{�^���v������
; �@x �@�F�u�w�{�^���v������
; �@y �@�F�u�x�{�^���v������
; �@z �@�F�u�y�{�^���v������
; �@s �@�F�u�X�^�[�g�{�^���v������
;
; ���L�����i���͌��ʂ�ω������閽�߁j
;
; �@/ �@�F�i�X���b�V���j�L�[��{�^�����u�������ςȂ��v�ɂ��Ă��鎖��F������ꍇ�ɒǉ�����
;
; �@�@�i��j�F�@/b       = �a�{�^�����������܂܂ɂ���
; �@�@�@�@�@�@�@/F       = �O�L�[���������܂܂ɂ���
; �@�@�@�@�@�@�@/U,z     = ��L�[���������܂܂y�{�^������͂���
;
;�@�@������������������������������������������������������������
;
; �@~ �@�F�i�`���_�j�L�[��{�^�����u�����ꂽ���v��F������ꍇ�ɒǉ�����
;
; �@�@�i��j�F�@~x       = �w�{�^���𗣂�
; �@�@�@�@�@�@�@~DF      =�u�O�΂߉��v�̃L�[�𗣂�
; �@�@�@�@�@�@�@~DB,F,c  =�u���΂߉��v�𗣂�����ɑO�L�[�E�b�{�^���̏��Ԃɓ��͂���
;
; �@�@�@�@�@�@���u�{�^���𗣂��܂ł̎��ԁi���ߎ��ԁj�v���ݒ肷�鎖���o����
;
; �@�@�@�@�@�@�@~30x     = �w�{�^�����������܂܂ɂ��āA�R�O�t���[���ȏ�o�����痣��
; �@�@�@�@�@�@�@~50B,F,a = ���L�[���T�O�t���[���܂ŗ��߂đO�L�[�E�`�{�^���̏��Ԃɓ��͂���
;
;�@�@������������������������������������������������������������
;
; �@$ �@�F�i�h���j�����L�[�́u�����̓��ǂꂩ�����͂���Ă��鎖�v��F������ꍇ�ɒǉ�����
;
; �@�@�i��j�F�@$B       =�u����v�u���΂߉��v�u���΂ߏ�v�̂ǂꂩ�����͂���Ă�����
; �@�@�@�@�@�@�@$UF      =�u�O�v�u��v�u�O�΂ߏ�v�̂ǂꂩ�����͂���Ă�����
;
; �@�@�@�@�@�@�����̋L���́u�����L�[�v�ł����g���܂���B
;
;�@�@������������������������������������������������������������
;
; �@+ �@�F�i�v���X�j�{�^�����u���������v���Ă��鎖��F������ꍇ�ɒǉ�����
;
; �@�@�i��j�F�@x+y      = �w�{�^���Ƃx�{�^���𓯎���������
; �@�@�@�@�@�@�@a+b+c    = �`�{�^���Ƃa�{�^���Ƃb�{�^���𓯎���������
;
; �@�@�@�@�@�@�����̋L���́u�{�^���v�ł����g���܂���B
;
;�@�@������������������������������������������������������������
;
; �@> �@�F�i�O���[�^�[�U���j��Ȃ�iWin�łŒǉ����ꂽ�L���j
; �@�@�@�@�@�@�@�@�@�@�@�@�u���̃L�[�����͂���Ă��Ȃ������m�F���āA���̃L�[�������v�ꍇ
;
; �@�@�i��j�F�@a,>~a    = �`�{�^���ȊO�����͂���Ă��Ȃ���Ԃł`�{�^���𗣂�
; �@�@�@�@�@�@�@F,>~F,>F = �O�L�[�ȊO�����͂���Ă��Ȃ���ԂőO�L�[�𗣂��A
;�@�@�@�@�@�@�@�@�@�@�@�@�@������x�O�L�[����͂���
;
;-------------------------------------------------------------------------------
; �������̋L���͑S�đg�ݍ��킹�Ďg�������o���遜
;
; �@�@�i��j�F�@~80$DB,DF,F,/a+y+c
; �@�@�@�@�@�@�@
; �@�@�@�@�@�@�u����v�u���v�u���΂߉��v�̂ǂꂩ���W�O�t���[���܂ŗ��߂�
; �@�@�@�@�@�@�u�O�΂߉��v���u�O�v����͂�����A�`�Ƃx�Ƃb�𓯎����������܂܂ɂ���
;
;------------------------------------------------------------------------------
;-| AI |--------------------------------------------------------
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

;-| ���K�E�Z |-----------------------------------------------------------------

;�����O�������Ȃ�΁A�Ⴄ�R�}���h�ł������X�e�[�g�̋Z���o�������\�B

[Command]
name = "SmashKFUpper"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DF, F, x+y
time = 20




[Command]
name = "TripleKFPalm"
command = ~D, DB, B, D, DB, B, x
time = 20

[Command]
name = "TripleKFPalm"
command = ~D, DB, B, D, DB, B, y
time = 20

[Command]
name = "TripleKFPalm"
command = ~D, DB, B,x+y
time = 20



[Command]
name = "bunretu"
command = ~D, DB, B,a+b
time = 20


;------------------------------------------------------------------------------
;-| �K�E�Z |-------------------------------------------------------------------
[Command]
name = "board"
command = ~D, DF, F, a

[Command]
name = "board"
command = ~D, DF, F, b

;------------------------------------------------------------------------------
;-| �L�[�Q��A������ |---------------------------------------------------------

[Command]
name = "FF"       ;�K�{�R�}���h��
command = F, F
time = 10

[Command]
name = "BB"       ;�K�{�R�}���h��
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| �������� |-----------------------------------------------------------------

[Command]
name = "recovery" ;�K�{�R�}���h��
command = x+y
time = 1

;------------------------------------------------------------------------------
;-| �����L�[�{�{�^�� |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| �{�^���P�� |---------------------------------------------------------------

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

;---------------------------
;(�u�p���[���߁v�p�ɃR�}���h��ǉ����Ă܂�)
[Command]
name = "hold_c"
command = /c

;------------------------------------------------------------------------------
;-| �����L�[ |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;�K�{�R�}���h��
command = /$F
time = 1

[Command]
name = "holdback"  ;�K�{�R�}���h��
command = /$B
time = 1

[Command]
name = "holdup"    ;�K�{�R�}���h��
command = /$U
time = 1

[Command]
name = "holddown"  ;�K�{�R�}���h��
command = /$D
time = 1
;///////////////////////////////////////////////////////////////////////////
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
;///////////////////////////////////////////////////////////////////////////
;============================================================================== ��S��
; �X�e�[�g�G���g���[�p�[�g�i�Z�Ȃǂ��o����悤�ɂ��邽�߂̏�����ݒ�j
;==============================================================================
;------------------------------------------------------------------------------
; �R�}���h���Ɠ��͂���R�}���h��ݒ肵����������Ӗ��������̂ŁA��������
;�u���ۂɓ��͂����R�}���h�łǂ̔ԍ��̃X�e�[�g���ǂ����������ŏo���邩�v
; �����߂Ȃ���΂Ȃ�Ȃ��B
;
; �X�e�[�g�R���g���[���uChangeState�v�����g��Ȃ����ǁA
; ����Ȃɓ���Ȃ��̂Ńg���K�[���o���Ă��炷���o����B
;
; ���������������Ă����ΊȒP�ȃg���K�[�ݒ�̗���͊o�����邩�ƁB
;
; �G���g���[�̏��Ԃɂ͂�����x�̖@�������邯�ǁA
; ���܂��t�H���_�́u���l�^.txt�v���Q�ƁB�i�g�������\�����׶��ׁj
;
; ChangeState�ȂǃX�e�[�g�R���g���[���̊�{�I�Ȑݒu���
; ���܂��t�H���_�́u�e���v���[�g.txt�v���Q�ƁB
;------------------------------------------------------------------------------
; �����펞�Ď��X�e�[�g�i�|�P�j��
; �R�}���h�t�@�C���i�̃X�e�[�g�G���g���[�p�[�g�j�ɕK�v�ȍ��ڂł��B
; ��΂ɏ����Ă͂����Ȃ��̂ŗv���ӁB
;
; �ʏ�̐H�炢��ԈȊO�́uP2StateNo�v��uTargetState�v���Ő��䂳�ꂽ�A
; �쐬�҂��C�ӂɎw�肵�����葤�̐H�炢�X�e�[�g�Ɍ���A
; �o�^�����X�e�[�g�R���g���[�����L���ɂ͂Ȃ�܂���B
;------------------------------------------------------------------------------

[Statedef -1] ;�����̍s�͐�΂ɏ����Ȃ��łˁB�K�{���ڂł��B
[State -1, AI�N���p�w���p�[]
type=helper
trigger1=!NumHelper(10000+id)
;trigger1=RoundState=2
Trigger1=RoundState<2||(RoundState=2&&Ctrl&&Stateno=0)
trigger1=alive
trigger1=var(59)=0
Trigger1=(PrevStateNo=[190,195])||PrevStateNo=5900||PrevStateNo=0
;Trigger1=Ctrl&&Stateno=0
Trigger1=!IsHelper
helpertype=normal
name="AI"
stateno=10000
ID=10000+id
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647
persistent = 0

;�O�̂��߁����t���Ă���
[State -1, �֌W�����X�e�[�g�ɍs���Ȃ��悤��]
type=changestate
trigger1= ishelper(10000)
trigger1= ishelper(10000+root,id)
trigger1= stateno!=10000
value=10000

;///////////////////////////////////////////////////////////////////////////
;AI����
;///////////////////////////////////////////////////////////////////////////
[State -1, AI�t���O�Z�b�g]
type = VarSet
triggerall = !var(59)
triggerall = RoundState = [1,2]
trigger1 = Command = "AI0"
trigger2 = Command = "AI1"
trigger3 = Command = "AI2"
trigger4 = Command = "AI3"
trigger5 = Command = "AI4"
trigger6 = Command = "AI5"
trigger7 = Command = "AI6"
trigger8 = Command = "AI7"
trigger9 = Command = "AI8"
trigger10 = Command = "AI9"
trigger11 = Command = "AI10"
trigger12 = Command = "AI11"
trigger13 = Command = "AI12"
trigger14 = Command = "AI13"
trigger15 = Command = "AI14"
trigger16 = Command = "AI15"
trigger17 = Command = "AI16"
trigger18 = Command = "AI17"
trigger19 = Command = "AI18"
trigger20 = Command = "AI19"
trigger21 = Command = "AI20"
trigger22 = Command = "AI21"
trigger23 = Command = "AI22"
trigger24 = Command = "AI23"
trigger25 = Command = "AI24"
trigger26 = Command = "AI25"
trigger27 = Command = "AI26"
trigger28 = Command = "AI27"
trigger29 = Command = "AI28"
trigger30 = Command = "AI29"
trigger31 = Command = "AI30"
trigger32 = Command = "AI31"
trigger33 = Command = "AI32"
trigger34 = Command = "AI33"
trigger35 = Command = "AI34"
trigger36 = Command = "AI35"
trigger37 = Command = "AI36"
trigger38 = Command = "AI37"
trigger39 = Command = "AI38"
trigger40 = Command = "AI39"
trigger41 = Command = "AI40"
trigger42 = Command = "AI41"
trigger43 = Command = "AI42"
trigger44 = Command = "AI43"
trigger45 = Command = "AI44"
trigger46 = Command = "AI45"
trigger47 = Command = "AI46"
trigger48 = Command = "AI47"
trigger49 = Command = "AI48"
trigger50 = Command = "AI49"
trigger51 = Command = "AI50"
trigger52 = NumHelper(10000+id)
Trigger52 = Helper(10000+id),var(59)
Trigger52 = RoundState<2||(RoundState=2&&ctrl)
;Trigger53 = 1		;�R�����g�A�E�g���O���Ə펞AI�N��
var(59) = 10		;AI���x��(1-10,0��AI����)


IgnoreHitPause = 1
;///////////////////////////////////////////////////////////////////////////
;v50 Tag
;v55 strikers control (hugo)
;v56 VarRandom
;v57 friction calculation
;v58 strikers control (aris)
;v59 AI

;fv37 coefficient of friction
;fv39 combo
;///////////////////////////////////////////////////////////////////////////
[State -1, AI]
Type = VarSet
TriggerAll = Var(59) >= 1	;AI���Z�b�g���ꂽ���
Trigger1 = RoundState = 4	;���E���h�I����
Trigger2 = Win = 1			;�������Ƃ�
Trigger3 = Lose = 1			;�������Ƃ�
Trigger4 = DrawGame = 1		;�����������Ƃ�
V = 59
Value = -Var(59)

[State -1, AI]
Type = VarSet
TriggerAll = Var(59) <= -1	;AI���~���������
Trigger1 = RoundState = 2	;���E���h�J�n
V = 59
Value = -Var(59)

;------------------------------------------------------------------------------
;�^�b�O�p��������
[State -1, �^�b�O�p��������]
Type = VarSet
triggerall = var(59)>0
Triggerall = RoundState = 2
Trigger1 = NumEnemy <= 1
Trigger2 = NumEnemy >= 2
Trigger2 = EnemyNear(0),Life > 0
Trigger2 = Ctrl || !NumTarget || NumTarget >= 2
Trigger3 = NumEnemy >= 2
Trigger3 = EnemyNear(0),Life > 0
Trigger3 = Target,StateType = L ||  Facing*(Pos X - Target,Pos X) > 0
Trigger4 = NumEnemy >= 2 && NumTarget = 1
Trigger4 = Enemy(0),Life > 0 && Enemy(1),Life > 0
Trigger4 = EnemyNear(0),ID = Target,ID
Trigger4 = Target,StateType != L
Trigger4 = Facing*(Pos X - Target,Pos X) <= 0
Trigger4 = !Ctrl
var(50) = 0
IgnoreHitPause = 1

[State -1, �^�b�O�p��������]
Type = VarSet
triggerall = var(59)>0
TriggerAll = RoundState = 2
TriggerAll = NumEnemy >= 2
TriggerAll = !var(58)
Trigger1 = EnemyNear(0),Life <= 0
Trigger2 = NumEnemy >= 2 && NumTarget = 1
Trigger2 = Enemy(0),Life > 0 && Enemy(1),Life > 0
Trigger2 = EnemyNear(0),ID != Target,ID
Trigger2 = Facing*(Pos X - Target,Pos X) <= 0
Trigger2 = Target,StateType != L
Trigger2 = !Ctrl
var(50) = 1
IgnoreHitPause = 1
;///////////////////////////////////////////////////////////////////////////
;���C�v�Z
[State -2, Facing]
type = VarSet
trigger1 = 1
var(57) = -(Facing)*(EnemyNear(var(50)),Facing)
ignorehitpause = 1

[State -1, ���薀�C�W��]
Type = VarSet
Trigger1 = 1
fvar(37) = IfElse(enemynear(var(50)),StateType=C,(EnemyNear(var(50)),Const(movement.crouch.friction)),(EnemyNear(var(50)),Const(movement.stand.friction)))
IgnoreHitPause = 1
;==============================================================================
;���i�L��
[State -2, ���i�L��]
type = varset
triggerall = var(59) > 5
triggerall = var(51) = 0
triggerall =!EnemyNear(Var(50)),HitDefAttr = SC, NT,ST,HT
trigger1 = statetype = C || prevstateno = 131 || prevstateno = 152 || prevstateno = 153
trigger1 = movetype = H
trigger1 = EnemyNear(Var(50)),statetype = S
trigger1 = EnemyNear(Var(50)),movetype = A
trigger1 = prevstateno = [120,159]
trigger1 = stateno != [120,159]
trigger1 = stateno != [0,21]
var(51) = EnemyNear(Var(50)),stateno
IgnoreHitPause = 1

[State -2, ���i�L��];���Z�b�g
type = varset
triggerall = var(51) != 0
trigger1 = roundstate!= 2
trigger1 = teammode = turns
var(51) = 0
IgnoreHitPause = 1

[State -2, ���i�L��]
type = varset
triggerall = var(59) > 5
triggerall = var(51)!= 0
triggerall = var(52) = 0
triggerall = EnemyNear(Var(50)),stateno != var(51)
triggerall = EnemyNear(Var(50)),prevstateno != var(51)
triggerall =!EnemyNear(Var(50)),HitDefAttr = SC, NT,ST,HT
trigger1 = statetype = C || prevstateno = 131 || prevstateno = 152 || prevstateno = 153
trigger1 = movetype = H
trigger1 = EnemyNear(Var(50)),statetype = S
trigger1 = EnemyNear(Var(50)),movetype = A
trigger1 = prevstateno = [120,159]
trigger1 = stateno != [120,159]
trigger1 = stateno != [0,21]
var(52) = EnemyNear(Var(50)),stateno
IgnoreHitPause = 1

[State -2, ���i�L��];���Z�b�g
type = varset
triggerall = var(52) != 0
trigger1 = roundstate!= 2
trigger1 = teammode = turns
trigger2 = var(51) = var(52)
var(52) = 0
IgnoreHitPause = 1
;///////////////////////////////////////////////////////////////////////////
[state -2,aris]
type = varset
trigger1 = roundstate = [0,1]
trigger2 = var(59) >= 1
trigger2 = stateno = 1301
v = 58
value = ifelse(roundstate=2,10,120)

[state -2,aris]
type = varadd
triggerall = roundstate = 2
trigger1 = var(58) > 0
var(58) = -1

[state -2,hugo]
type = varset
trigger1 = roundstate = [0,1]
trigger2 = var(59) >= 1
trigger2 = stateno = 1302
v = 55
value = ifelse(roundstate=2,10,120)

[state -2,hugo]
type = varadd
triggerall = roundstate = 2
trigger1 = var(55) > 0
var(55) = -1
;///////////////////////////////////////////////////////////////////////////
[State -1, �ϐ����Z�b�g]
Type = VarSet
triggerall = var(59) >= 1
trigger1 = RoundState = 4
trigger2 = stateno = 5120 || movetype = H
trigger3 = EnemyNear(var(50)),StateNo = [5070,5120]
trigger4 = stateno = 410 || stateno = 400 || stateno = 200 || stateno = 210
trigger5 = stateno = 3000 || stateno = 3050
trigger6 = fvar(39)=5; && time>=3
trigger7 = fvar(39)=2 || fvar(39)=6
trigger7 = stateno = [40,41]
fvar(39) = 0
IgnoreHitPause = 1

[State -1, ��������]
Type = VarSet
triggerall = var(59) >= 1
triggerall = RoundState = 2
trigger1 = stateno=810
fvar(39) = 1

[State -1, ��]
Type = VarSet
triggerall = var(59) >= 1
triggerall = RoundState = 2
trigger1 = stateno=1300
trigger1 = random%5=[0,1]
fvar(39) = 2

[State -1, ����]
Type = VarSet
triggerall = var(59) >= 1
triggerall = RoundState = 2
trigger1 = stateno=440
trigger1 = movehit
fvar(39) = 3

[State -1, �󒆌�]
Type = VarSet
triggerall = var(59) >= 1
triggerall = RoundState = 2
trigger1 = stateno=610||stateno=640
trigger1 = movehit
fvar(39) = 4

[State -1, �X�g���C�J]
Type = VarSet
triggerall = var(59) >= 1
triggerall = Life>=P2Life
trigger1 = projhittime(1031)=1 || projhittime(1354)=1
fvar(39) = 5

;fv39 = 6 �ǌ�

;///////////////////////////////////////////////////////////////////////////
[State -1,VarRandom]
Type = VarRandom
TriggerAll = Var(59) >= 1
Trigger1 = Time = 1
Trigger2 = Time%60 = 1
Trigger2 = MoveType != I
Trigger3 = Time%1 = 0
Trigger3 = MoveType = I
V = 56
Range = 0,19
IgnoreHitPause = 1
;///////////////////////////////////////////////////////////////////////////
;AI����
;///////////////////////////////////////////////////////////////////////////
[State -1, aris]
type = ChangeState
value = 1301
TriggerAll = var(59) >= 1
triggerall = roundstate = 2; && gametime>1
triggerall = PalNo = 11
TriggerAll = StateType != A
triggerall = (ctrl || stateno = 99 || (movetype=H&&(var(56)<=var(59))))&&var(58)=0
triggerall = (Life>=P2Life)||(Life>=LifeMax*0.5)
Trigger1 = EnemyNear(var(50)),movetype=A
trigger1 = var(56)=[0,var(59)+5]
trigger1 = EnemyNear(var(50)),statetype != A || p2bodydist y >= -90
trigger2 = projhittime(1031)=1 || fvar(39)=5
trigger2 = EnemyNear(var(50)),movetype=H
trigger2 = p2bodydist y >= -90

[State -1, hugo]
type = ChangeState
value = 1302
TriggerAll = var(59) >= 1
triggerall = roundstate = 2; && gametime>1
triggerall = PalNo = 11
TriggerAll = StateType != A
triggerall = ((ctrl || stateno = 19 || stateno = 21) || stateno = 99 || (movetype=H&&(var(56)<=var(59))))&&var(55)=0
triggerall = (Life>=P2Life)||(Life>=LifeMax*0.5)
Trigger1 = EnemyNear(var(50)),movetype=A
trigger1 = var(56)=[0,var(59)+5]
trigger1 = EnemyNear(var(50)),statetype = A || p2bodydist y >= -200
trigger2 = projhittime(1354)=1 || fvar(39)=5
trigger2 = EnemyNear(var(50)),movetype=H
trigger2 = p2bodydist y <= -30

;����ւ̉�L
[State -1, ����ւ̉�L]
type = ChangeState
value = 3050
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = power >= 1000
TriggerAll = StateType != A
TriggerAll = EnemyNear(var(50)),StateType != L
TriggerAll = EnemyNear(var(50)),MoveType != H
triggerall = EnemyNear(var(50)),statetype != A
TriggerAll = (EnemyNear(var(50)),MoveType=A)||(EnemyNear(var(50)),Ctrl)
triggerall = p2bodydist x = [-2,80]
triggerall = ((ctrl || stateno = 19 || stateno = 21) || stateno = 99)
TriggerAll = EnemyNear(var(50)),Time >= 30 || (!Time&&(var(59)>8)) || var(59)>9
Trigger1 = random<var(59)*7

;�G�l���M�[�R���^�N�g
[State -1, �G�l���M�[�R���^�N�g]
type = ChangeState
value = 3000
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = statetype != A
TriggerAll = EnemyNear(var(50)),StateType != L
TriggerAll = EnemyNear(var(50)),MoveType != H
;triggerall = EnemyNear(var(57)),statetype != A
TriggerAll = (EnemyNear(var(50)),MoveType=A)||(EnemyNear(var(50)),Ctrl)
triggerall = p2bodydist x = [20,120]
triggerall = p2bodydist y >=-200
triggerall = ((ctrl || stateno = 19 || stateno = 21) || stateno = 99)
TriggerAll = EnemyNear(var(50)),Time >= 30 || (!Time&&(var(59)>8)) || var(59)>9
Trigger1 = random<var(59)*7
;///////////////////////////////////////////////////////////////////////////
;�����E���A
;///////////////////////////////////////////////////////////////////////////
[State -1, ����]
type = ChangeState
value = 800
triggerall = var(59) >= 1
triggerall = RoundState = 2 
triggerall = statetype != A
triggerall = ctrl || stateno=99
triggerall = enemynear(var(50)),stateno != 5120
TriggerAll = enemynear(var(50)),StateType != L
TriggerAll = enemynear(var(50)),MoveType != H
triggerall = enemynear(var(50)),statetype != A
triggerall = p2bodydist x = [-3,3]
Trigger1 = Random <= var(59)*15
Trigger2 = p2StateNo=[120,159]

;�X�p�C�N
[State -1, ���Ⴊ�ݎ�L�b�N]
type = ChangeState
value = 430
triggerall = var(59) >= 1
TriggerAll = RoundState = 2
triggerall = statetype != A
triggerall = (ctrl || stateno = 19 || stateno = 21) || stateno=99
TriggerAll = enemynear(var(50)),MoveType = H
trigger1 = p2bodydist x <= 70
trigger1 = fvar(39) = 1

;��(�����ǌ�)
[State -1, ���Ⴊ�݋��p���`]
type = ChangeState
value = 410
triggerall = var(59) >= 1
TriggerAll = RoundState = 2
triggerall = statetype != A
triggerall = (ctrl || stateno = 19 || stateno = 21) || stateno=99
TriggerAll = enemynear(var(50)),MoveType = H
trigger1 = p2bodydist x >70
trigger1 = fvar(39) = 1
;///////////////////////////////////////////////////////////////////////////
;�΋�
;///////////////////////////////////////////////////////////////////////////
;������L�b�N
[State -1, ������L�b�N]
type = ChangeState
value = 230
triggerall = var(59) >= 1
TriggerAll = RoundState = 2
triggerall = statetype != A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = (ctrl || stateno = 19 || stateno = 21) || stateno=99
triggerall = EnemyNear(var(50)),statetype = A 
triggerall = EnemyNear(var(50)),movetype != H
TriggerAll =!InGuardDist
triggerall = P2BodyDist X= [-3,55]
triggerall = p2bodydist y = [-140,-50]
;triggerall = fvar(39)!=1
TriggerAll = EnemyNear(var(50)),Time >= 30 || (!Time&&(var(59)>8)) || var(59)>9
trigger1 = random <= var(59)*15

;�G�l���M�[�R���^�N�g
[State -1, �G�l���M�[�R���^�N�g]
type = ChangeState
value = 3000
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = statetype != A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = (ctrl || stateno = 19 || stateno = 21) || stateno=99
triggerall = EnemyNear(var(50)),statetype = A 
triggerall = EnemyNear(var(50)),movetype != H
TriggerAll =!InGuardDist
triggerall = P2BodyDist X= [-3,55]
triggerall = p2bodydist y = [-140,-30]
;triggerall = fvar(39)!=1
TriggerAll = EnemyNear(var(50)),Time >= 30 || (!Time&&(var(59)>8)) || var(59)>9
trigger1 = random <= var(59)*6
;///////////////////////////////////////////////////////////////////////////
;�K�[�h�֌W
;///////////////////////////////////////////////////////////////////////////
[State -1,�����K�[�h]
Type = ChangeState
Value = 120
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
TriggerAll = StateNo!=[120,155]
triggerall = (ctrl || stateno = 19 || stateno = 21) || stateno=99
TriggerAll = inguarddist
Trigger1 = Random <= var(59)*80 || var(59)>9
Trigger2 = P2BodyDist X > 90 || EnemyNear(var(50)),Time > 50
Trigger2 = Random <= var(59)*150
;///////////////////////////////////////////////////////////////////////////
;�n��
;///////////////////////////////////////////////////////////////////////////
;����ւ̉�L
[State -1, ����ւ̉�L]
type = ChangeState
value = 3050
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = statetype != A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = EnemyNear(var(50)),movetype = H
triggerall = random<var(59)*30||(var(59)>7&&(power>3000||Life<LifeMax*0.4))
trigger1 = stateno = 210 || stateno = 430
trigger1 = movehit
trigger1 = p2bodydist x <= 120
trigger1 = p2bodydist y >= -55
trigger1 = ifelse(NumEnemy = 1,random%4!=0,random%2=0)
trigger2 = stateno = 3000 && movehit && time>84
trigger2 = p2bodydist x <= 100
trigger2 = p2bodydist y >=-105
trigger3 = Stateno = 430 && movehit && fvar(39)=3

;�G�l���M�[�R���^�N�g
[State -1, �G�l���M�[�R���^�N�g]
type = ChangeState
value = 3000
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = statetype != A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = EnemyNear(var(50)),movetype = H
triggerall = random<var(59)*30||(var(59)>7&&(power>3000||Life<LifeMax*0.25))
trigger1 = power>=2000
trigger1 = stateno = 210 || stateno = 230
trigger1 = movehit
trigger1 = p2bodydist y >= -70
trigger1 = ifelse(NumEnemy = 1,random%4=0,random%2=1)

[State -1, ���Ⴊ�ݎ�p���`]
type = ChangeState
value = 400
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = EnemyNear(var(50)),statetype != A
triggerall = EnemyNear(var(50)),movetype = H
trigger1 = (ctrl || stateno = 19 || stateno = 21) || stateno=99
trigger1 = fvar(39) = 2
trigger1 = p2bodydist x<=23

;��
[State -1, �������p���`]
type = ChangeState
value = 210
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = EnemyNear(var(50)),statetype != C
triggerall = EnemyNear(var(50)),movetype = H
trigger1 = (ctrl || stateno = 19 || stateno = 21) || stateno=99
trigger1 = fvar(39) = 2
trigger1 = p2bodydist x<=80
trigger1 = random<100

;�X�p�C�N
[State -1, ���Ⴊ�ݎ�L�b�N]
type = ChangeState
value = 430
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = EnemyNear(var(50)),movetype = H
trigger1 = (ctrl || stateno = 19 || stateno = 21) || stateno=99
trigger1 = fvar(39) = 2
trigger1 = p2bodydist x = [22,73]
trigger1 = ifelse(enemynear(var(50)),statetype=A,fvar(39):=6,1)

;jump
[State -1, J]
type = ChangeState
value = 41
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = EnemyNear(var(50)),movetype = H
trigger1 = (ctrl || stateno = 19 || stateno = 21) || stateno=99
trigger1 = fvar(39) = 2 || fvar(39) = 6
trigger1 = enemynear(var(50)),backedgebodydist <= 20
trigger1 = p2bodydist x <= 100

;J
[State -1, ���Ⴊ�݋��p���`]
type = ChangeState
value = 41
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = EnemyNear(var(50)),movetype = H
trigger1 = (ctrl || stateno = 19 || stateno = 21) || stateno=99
trigger1 = fvar(39) = 2 || fvar(39) = 6
trigger1 = p2bodydist x >=100

;��
[State -1, ���Ⴊ�݋��p���`]
type = ChangeState
value = 410
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = EnemyNear(var(50)),statetype = A
triggerall = EnemyNear(var(50)),movetype = H
trigger1 = fvar(39) = 6
trigger1 = p2bodydist x >=100
trigger1 = stateno = 210 && movecontact
trigger2 = fvar(39) = 6
trigger2 = enemynear(var(50)),backedgebodydist > 20
trigger2 = stateno = 430 && movehit
trigger2 = random<var(59)*20

;�q����
[State -1, �q����]
type = ChangeState
value = 1300
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = EnemyNear(var(50)),movetype = H
triggerall = NumHelper(1300) = 0
triggerall = NumProjID(1302) = 0
triggerall = random<var(59)*20
trigger1 = stateno = 210 && movecontact
trigger2 = fvar(39)!=6
trigger2 = enemynear(var(50)),backedgebodydist <= 20
trigger2 = p2bodydist x <= 90
trigger2 = stateno = 430 && movehit
trigger3 = enemynear(var(50)),backedgebodydist > 20
trigger3 = stateno = 430 && movehit
trigger4 = stateno = 230 && movehit

;��
[State -1, �������p���`]
type = ChangeState
value = 210
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = EnemyNear(var(50)),movetype = H
trigger1 = Stateno = 430 && movecontact && time > 10
trigger1 = fvar(39)!=3 && fvar(39)!=6
trigger1 = random<=var(59)*20
trigger2 = Stateno = 430 && movehit && time > 10
trigger2 = fvar(39)!=3 && fvar(39)!=6
trigger2 = power>=1000

;�X�p�C�N
[State -1, ���Ⴊ�ݎ�L�b�N]
type = ChangeState
value = 430
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = random<var(59)*25||var(59)>7
;triggerall = EnemyNear(var(50)),statetype != A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = EnemyNear(var(50)),movetype = H
Triggerall = EnemyNear(var(50)),GetHitVar(yvel) = 0
Triggerall = EnemyNear(var(50)),GetHitVar(HitShakeTime) + EnemyNear(var(50)),GetHitVar(HitTime) >= 8
trigger1 = (stateno = 240 && movecontact && time > 6)||(stateno = 440 && movecontact && time > 20)
Trigger1 = (abs(EnemyNear(var(50)),Vel X) = abs(EnemyNear(var(50)),GetHitVar(xvel))) || EnemyNear(var(50)),Vel X = 0
Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(50)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(50)),GetHitVar(HitShakeTime)>9),0,(9-EnemyNear(var(50)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))=[22,73]
trigger2 = (stateno = 240 && movecontact && time > 6)||(stateno = 440 && movecontact && time > 20)
Trigger2 = !((abs(EnemyNear(var(50)),Vel X) = abs(EnemyNear(var(50)),GetHitVar(xvel))) || EnemyNear(var(50)),Vel X = 0)
Trigger2 = abs(P2BodyDist X-((EnemyNear(var(50)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(50)),GetHitVar(HitShakeTime)>9),0,(9-EnemyNear(var(50)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))=[22,73]

[State -1, �������L�b�N]
type = ChangeState
value = 240
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = random<var(59)*25||var(59)>7
triggerall = EnemyNear(var(50)),statetype != A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = EnemyNear(var(50)),movetype = H
Triggerall = EnemyNear(var(50)),GetHitVar(yvel) = 0
Triggerall = EnemyNear(var(50)),GetHitVar(HitShakeTime) + EnemyNear(var(50)),GetHitVar(HitTime) >= 4
trigger1 = stateno = 200 && movecontact && time > 3
Trigger1 = (abs(EnemyNear(var(50)),Vel X) = abs(EnemyNear(var(50)),GetHitVar(xvel))) || EnemyNear(var(50)),Vel X = 0
Trigger1 = abs(P2BodyDist X+(abs(EnemyNear(var(50)),GetHitVar(xvel))*(1-fvar(37)**(IfElse((EnemyNear(var(50)),GetHitVar(HitShakeTime)>5),0,(5-EnemyNear(var(50)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))=[-2,42]
trigger2 = stateno = 200 && movecontact && time > 3
Trigger2 = !((abs(EnemyNear(var(50)),Vel X) = abs(EnemyNear(var(50)),GetHitVar(xvel))) || EnemyNear(var(50)),Vel X = 0)
Trigger2 = abs(P2BodyDist X-((EnemyNear(var(50)),Vel X)*(1-fvar(37)**(IfElse((EnemyNear(var(50)),GetHitVar(HitShakeTime)>5),0,(5-EnemyNear(var(50)),GetHitVar(HitShakeTime)))))/(1-fvar(37)))*var(57))=[-2,42]
trigger3 = stateno = 200 && movecontact && time > 3
trigger3 = p2bodydist x < 45
trigger3 = enemynear(var(50)),backedgebodydist < 20


[State -1, ������L�b�N]
type = ChangeState
value = 230
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = random<var(59)*15
triggerall = EnemyNear(var(50)),statetype = A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = EnemyNear(var(50)),movetype = H
Triggerall = EnemyNear(var(50)),GetHitVar(HitShakeTime) + EnemyNear(var(50)),GetHitVar(HitTime) >= 3
trigger1 = stateno = 200 && movecontact && time > 3

[State -1, ���Ⴊ�݋��L�b�N]
type = ChangeState
value = 430
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(50)),statetype != A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = EnemyNear(var(50)),movetype = H
triggerall = P2bodydist X <=59
trigger1 = (stateno = 400) && movecontact && time > 3

[State -1, ���Ⴊ�ݎ�p���`]
type = ChangeState
value = 400
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(50)),statetype != A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = P2bodydist X <=37
triggerall = (ctrl || stateno = 19 || stateno = 21) || stateno=99
trigger1 = var(56)=[5,9]
trigger2 = fvar(39)=4

[State -1, ������p���`]
type = ChangeState
value = 200
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(50)),statetype != C
triggerall = EnemyNear(var(50)),statetype != L
triggerall = P2bodydist X <=42
triggerall = p2bodydist Y >= -55
triggerall = (ctrl || stateno = 19 || stateno = 21) || stateno=99
trigger1 = var(56)=[0,4]
trigger2 = fvar(39)=4

[State -1, ������p���`]
type = ChangeState
value = 240
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(50)),statetype != A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = P2bodydist X <=42
triggerall = (ctrl || stateno = 19 || stateno = 21) || stateno=99
trigger1 = var(56)=[5,9]
trigger2 = fvar(39)=4
Trigger2 = EnemyNear(var(50)),GetHitVar(HitShakeTime) + EnemyNear(var(50)),GetHitVar(HitTime) > 5
;///////////////////////////////////////////////////////////////////////////
[State -1, �W�����v��p���`]
type = ChangeState
value = 600
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = EnemyNear(var(50)),statetype = A
triggerall = EnemyNear(var(50)),statetype != L
trigger1 = p2bodydist x - vel x*3 = [-2,65]
trigger1 = p2bodydist y - vel x*3 = [-60,50]
trigger1 = ctrl
trigger1 = random<=500
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger2 = EnemyNear(var(50)),movetype = H

[State -1, �W�����v���L�b�N]
type = ChangeState
value = 640
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = EnemyNear(var(50)),statetype != A
triggerall = EnemyNear(var(50)),statetype != L
trigger1 = p2bodydist x - vel x*7 = [-10,65]
trigger1 = p2bodydist y - vel x*7 = [-20,80]
trigger1 = ctrl
trigger1 = vel y >= -1
trigger1 = random<=500
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

[State -1, �W�����v���p���`]
type = ChangeState
value = 610
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = EnemyNear(var(50)),statetype != A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = p2bodydist x  = [-20,15]
triggerall = p2bodydist y  = [-1,100]
triggerall = pos y <= -60
trigger1 = vel y >= -1.5
trigger1 = ctrl
trigger1 = random<=300

[State -1, �W�����v��L�b�N]
type = null;ChangeState
value = 630
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = EnemyNear(var(50)),statetype = A
triggerall = EnemyNear(var(50)),statetype != L
triggerall = p2bodydist x - vel x*5 = [30,90]
triggerall = p2bodydist y - vel x*5 = [-30,40]
triggerall = pos y <= -30
trigger1 = ctrl
trigger1 = random<=300

;///////////////////////////////////////////////////////////////////////////
;�������
;///////////////////////////////////////////////////////////////////////////
;������
[State -1, Walk_back] 
type = ChangeState 
value = 21
TriggerAll = var(59) >= 1
triggerall = Roundstate = 2
Triggerall = StateType != A
TriggerAll = alive || Life>0
;triggerall = var(57) = 0
triggerall = (ctrl || stateno=19 || stateno=21) && time>2
triggerall = stateno != 11 && prevstateno != 10
triggerall = stateno != [120,159]
Triggerall = EnemyNear(var(50)),MoveType != H
;triggerall = prevstateno != [120,159]
triggerall = !InGuardDist
triggerall = p2bodydist x <= 75
trigger1 = random%3<=1
trigger1 = EnemyNear(var(50)),statetype = L
trigger1 = EnemyNear(var(50)),StateNo=5110
trigger1 = backedgebodydist<15
trigger1 = P2BodyDist X>20
trigger2 = random%3<=1
trigger2 = backedgebodydist>=50
trigger3 = EnemyNear(var(50)),statetype = A
trigger3 = EnemyNear(var(50)),vel x > 0
trigger3 = random%3<=1

;�����O
[State -1, Walk_fwd] 
type = ChangeState 
value = 19
TriggerAll = var(59) >= 1
triggerall = Roundstate = 2
Triggerall = StateType != A
TriggerAll = alive || Life>0
;triggerall = var(57) = 0
triggerall = (ctrl || stateno=19 || stateno=21) && time>2
triggerall = stateno != 11 && prevstateno != 10
triggerall = stateno != [120,159]
triggerall = !(enemynear(var(50)),statetype = A && vel x > 0)
;triggerall = prevstateno != [120,159]
triggerall = !InGuardDist
triggerall = p2bodydist x > 90
trigger1 = random%3<=1
trigger2 = EnemyNear(var(50)),statetype = L
trigger2 = EnemyNear(var(50)),StateNo=5110
trigger2 = P2BodyDist X>20
trigger2 = random%3<=1

[State -1,�o�b�N�X�e�b�v]
Type     = ChangeState
Value    = 105
TriggerAll = var(59) >= 1
triggerall = Roundstate = 2
Triggerall = StateType != A
Triggerall = EnemyNear(var(50)),MoveType != H
Triggerall = EnemyNear(var(50)),Stateno != [120,159]
Triggerall = statetype = S
Triggerall = backedgebodydist > 50
triggerall = (ctrl || stateno = 19 || stateno = 21)  && (stateno != 20 && stateno != 11)
triggerall = fvar(39)=0
Trigger1 = EnemyNear(var(50)),StateType != L
Trigger1 = P2BodyDist X <= 45
trigger1 = Random <= var(59)*13
Trigger2 = EnemyNear(var(50)),StateType != L
trigger2 = p2bodydist X =[-10,110]
trigger2 = random < (15-var(59))*3
Trigger3 = EnemyNear(var(50)),StateType != L
Trigger3 = P2BodyDist X <= 30
trigger3 = random <= var(59)*7
trigger4 = EnemyNear(var(50)),statetype = L
trigger4 = p2bodydist x <= 35

[state -1,�_�b�V��]
type = ChangeState
value = 99
TriggerAll = var(59) >= 1
triggerall = Roundstate = 2
triggerall = statetype != A
triggerall = statetype = S
triggerall = (ctrl || stateno = 19 || stateno = 21) && (stateno != [99,100]) && (stateno != 10) && (stateno != 12) && (stateno!=[105,106])
trigger1 = !inguarddist
trigger1 = ifelse(EnemyNear(var(50)),statetype = L,Random <= var(59)*30,Random<=var(59)*60)
trigger1 = EnemyNear(var(50)),stateType != L
trigger1 = EnemyNear(var(50)),MoveType != A
trigger1 = p2bodydist X >= 170

[state -1, �W�����v]
Type = Changestate
Value = 41
TriggerAll = var(59) >= 1
TriggerAll = Roundstate = 2
TriggerAll = stateType != A
Triggerall = (ctrl || stateno = 19 || stateno = 21) || stateno = 99
triggerall = prevstateno != 5120
triggerall = fvar(39)=0
;trigger1 = EnemyNear(var(50)),statetype != A
trigger1 = !inguarddist
Trigger1 = EnemyNear(var(50)),stateType != L
Trigger1 = EnemyNear(var(50)),MoveType != A
Trigger1 = P2BodyDist X = [85,150]
trigger1 = Random <= var(59)*15
trigger1 = EnemyNear(var(50)),stateNo != [120,159]
trigger2 = EnemyNear(var(50)),statetype != A
Trigger2 = InGuardDist
trigger2 = EnemyNear(var(50)),MoveType = A
trigger2 = HitDefAttr = SCA, NT, ST, HT
Trigger2 = P2BodyDist X >= 0
Trigger2 = P2BodyDist Y = [-30,0]
trigger2 = Random <= var(59) * 40
trigger3 = EnemyNear(var(50)),statetype != A
trigger3 = !inguarddist
trigger3 = Random <= var(59)*5
trigger3 = EnemyNear(var(50)),stateType = L && BackEdgeBodyDist <= 20
trigger3 = p2bodydist X <= 45
;trigger4 = fvar(39)=1 && EnemyNear(var(57)),stateno = 1506
;trigger4 = random<=var(59)*30 || var(59)>7
;///////////////////////////////////////////////////////////////////////////
;����
;///////////////////////////////////////////////////////////////////////////
[State -1, ����];�Q�[�W���x���P
type = ChangeState
value = 3060
TriggerAll = var(59) >= 8
triggerall = roundstate = 2
triggerall = power >= 6000
triggerall = statetype != A 
;TriggerAll = EnemyNear(var(50)),StateType != L
;TriggerAll = EnemyNear(var(50)),StateType != A
TriggerAll = EnemyNear(var(50)),MoveType = I
;TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X >=50 || EnemyNear(var(50)),StateType = L
;TriggerAll = EnemyNear(var(50)),StateNo != [120,159]
Triggerall = (ctrl || stateno = 19 || stateno = 21) || stateno = 99
trigger1 = var(56)=[0,8]

[State -1, �������L�b�N]
type = ChangeState
value = 240
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
TriggerAll = EnemyNear(var(50)),StateType != L
TriggerAll = EnemyNear(var(50)),StateType != A
TriggerAll = EnemyNear(var(50)),MoveType != H
TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X = [-2,42]
TriggerAll = EnemyNear(var(50)),StateNo != [120,159]
Triggerall = (ctrl || stateno = 19 || stateno = 21) || stateno = 99
trigger1 = var(56)=[0,5]

[State -1, ���Ⴊ�݋��L�b�N]
type = null;ChangeState
value = 440
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
TriggerAll = EnemyNear(var(50)),StateType != L
TriggerAll = EnemyNear(var(50)),StateType != A
TriggerAll = EnemyNear(var(50)),MoveType != H
TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X = [-2,62]
triggerall = p2bodydist y >= -100
TriggerAll = EnemyNear(var(50)),StateNo != [120,159]
Triggerall = (ctrl || stateno = 19 || stateno = 21) || stateno = 99
trigger1 = var(56)=[11,14]

;��
[State -1, �������p���`]
type = ChangeState
value = 210
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
TriggerAll = EnemyNear(var(50)),StateType != L
TriggerAll = EnemyNear(var(50)),MoveType != H
TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X = [75,120]
triggerall = p2bodydist y >= -60
TriggerAll = EnemyNear(var(50)),StateNo != [120,159]
Triggerall = (ctrl || stateno = 19 || stateno = 21) || stateno = 99
trigger1 = var(56)=[17,19]

;�X�p�C�N
[State -1, ���Ⴊ�ݎ�L�b�N]
type = ChangeState
value = 430
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
TriggerAll = EnemyNear(var(50)),StateType != L
TriggerAll = EnemyNear(var(50)),MoveType != H
TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X = [22,73]
triggerall = p2bodydist y >= -50
TriggerAll = EnemyNear(var(50)),StateNo != [120,159]
Triggerall = (ctrl || stateno = 19 || stateno = 21) || stateno = 99
trigger1 = var(56)=[15,17]

[State -1, ���Ⴊ�݋��p���`]
type = ChangeState
value = 410
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
TriggerAll = EnemyNear(var(50)),StateType != L
TriggerAll = EnemyNear(var(50)),MoveType != H
TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X = [155,175]
triggerall = p2bodydist y >= -70
TriggerAll = EnemyNear(var(50)),StateNo != [120,159]
Triggerall = (ctrl || stateno = 19 || stateno = 21) || stateno = 99
trigger1 = var(56)=[15,17]

;�q����
[State -1, �q����]
type = ChangeState
value = 1300
TriggerAll = var(59) >= 1
triggerall = roundstate = 2
triggerall = statetype != A
TriggerAll = EnemyNear(var(50)),StateType != L
;TriggerAll = EnemyNear(var(50)),StateType != A
TriggerAll = EnemyNear(var(50)),MoveType != H
triggerall = NumHelper(1300) = 0
triggerall = NumProjID(1302) = 0
TriggerAll =!InGuardDist
TriggerAll = P2BodyDist X = [80,150]
triggerall = p2bodydist y >= -80
TriggerAll = EnemyNear(var(50)),StateNo != [120,159]
Triggerall = (ctrl || stateno = 19 || stateno = 21) || stateno = 99
trigger1 = var(56)=[15,17]


;==============================================================================
; ���K�E�Z
;==============================================================================
;------------------------------------------------------------------------------


;------------------------------------------------------------------------------
; �����Ł��ɂĎ��ۂɎg���Ă���u�X�}�b�V���J���t�[�A�b�p�[��ChangeState�v����
; ���čs���܂���Im9���M�D�L)
;
; �܂�����̃R�}���h����͂������Ȃ�΁A
; �K���w�Ăяo���R�}���h�̃g���K�[�x�͐ݒ肵�܂��傤�B
; ����ȏ����łȂ�����A�R�}���h�͒ʏ�utriggerall�v�̕��Őݒ肵�������ǂ��B
;
;�utriggerall�v�Ƃ́w�L���ɂȂ�󋵂����肷�邽�߂̏����x���w�肷��B
; triggerall�̏������L���ɂȂ�Ȃ�����Atrigger1�ȍ~�̏������L���ɂ͂Ȃ�Ȃ��B
; ���ł����₹��B�X�e�[�g�쐬�̊�{�e�N�j�b�N�̈�Ȃ̂Ŋo���Ă����ĂˁB
; ������triggerall��trigger1�ȍ~�������Ɓu�P�̂ł́v�g���Ȃ��̂Œ��ӁB
;�itrigger1�ȍ~��S�ăR�����g������M.U.G.E.N�ł��̃L������I��Ŏ����Ă݂悤�j
;
;
; ���w�p���[�Q�[�W�x�́u�X�[�p�[�R���{�Q�[�W�v��u���K�E�Z�Q�[�W�v�Ȃǂ�
; �@�Ă΂�Ă镔���̃Q�[�W�ł��B
; �@�Q�[�W���u�P�O�O�O�|�C���g�v�Ȃ�w���x���P�x�Ɠ����Ӗ��ɂȂ�܂��B
;
; �@�܂��p�b�ƌ��AM.U.G.E.N�̃p���[�Q�[�W���Ďd�g�݂�
; �@�X�g�y�d�q�n�V���[�Y�́u�X�[�p�[�R���{���x���Q�[�W�v�܂�܂���ˁi���
;------------------------------------------------------------------------------

[State -1, �O��J���t�[�˂���];�Q�[�W���x���P
type = ChangeState
value = 3000
triggerall = var(59)=0
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = (StateNo = 1300) && (Time = [12,38]) ;������Ƃ��ۂ��ǉ�

[State -1, �X�}�b�V���J���t�[�A�b�p�[];�Q�[�W���x���P
type = ChangeState
value = 3050
triggerall = var(59)=0
triggerall = command = "SmashKFUpper"  ;�uSmashKFUpper�v�̖��O�̃R�}���h�����͂��ꂽ��
triggerall = power >= 1000             ;�p���[�Q�[�W�����x���P�ȏ㗭�܂��Ă��鎞�i���j
triggerall = statetype != A            ;�u�󒆁v�ł͂Ȃ���
trigger1 = ctrl                        ;�R���g���[�����\�ȏꍇ
trigger2 = hitdefattr = SC, NA, SA, HA ;�����́uHitDef�̈ꕔ�̍U�������v���o�Ă��鎞�i�e���v���[�g�Q�Ɓj
trigger2 = stateno != [3050,3100)      ;���݂̃X�e�[�g���u3050�ȏ�A3100�����v�̊Ԃ̂ǂꂩ�ȏꍇ
trigger2 = movecontact                 ;�U��������ɐG��Ă��鎞�i�q�b�g�E�K�[�h�����j
trigger3 = (StateNo = 1300) && (Time = [12,38]) ;������Ƃ��ۂ��ǉ�

[State -1, ����];�Q�[�W���x���P
type = ChangeState
value = 3060
triggerall = var(59)=0
triggerall = command = "bunretu"  ;�uSmashKFUpper�v�̖��O�̃R�}���h�����͂��ꂽ��
triggerall = power >= 6000             ;�p���[�Q�[�W�����x���P�ȏ㗭�܂��Ă��鎞�i���j
triggerall = statetype != A            ;�u�󒆁v�ł͂Ȃ���
trigger1 = ctrl                        ;�R���g���[�����\�ȏꍇ


;==============================================================================
; �K�E�Z
;==============================================================================
;------------------------------------------------------------------------------
; �ϐ��̎g�����̗�B
;
; �J���t�[�}���́u�n��ŕK�E�Z���o����󋵁v��A
; �ʏ�Z����K�E�Z�֌q�����́u�L�����Z���v�̕�����ݒ肵�Ă���B
; �n��Ő�������΁A�w�ϐ��̗�Q�x�̃X�e�[�g�R���g���[���Őݒ肵��
; �ϐ������s����A����ȊO�Ȃ�w�ϐ��̗�P�x�Ń��Z�b�g����A�Ƃ��������B
;
; �l�I�ɂ͂��̕��@�̓I�X�X�����Ȃ��Bkfmc�ł̕��@�𐄑E���܂��B

[State -1, �ϐ��̗�P];�K�E�Z�̔����������Z�b�g
type = VarSet
trigger1 = 1
var(1) = 0 ;�ϐ��p�p�����[�^�̋L�q���@���̂P�i���̂Q�́u�����v�̃X�e�[�g�ɂāj

[State -1, �ϐ��̗�Q];�K�E�Z�̔����������`�F�b�N
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;[Statedef 440]�i�������̃X�e�[�g�j�ł͂Ȃ���
trigger2 = movecontact
var(1) = 1


[State -1, ����];������Ƃ��ۂ��ǉ������Z
type = ChangeState
value = 1300
triggerall = var(59)=0
triggerall = command = "board"
triggerall = NumHelper(1300) = 0 ;�h�c�i���o�[�u1300�v�̃w���p�[����ʒ��ɂP���o�ĂȂ���
triggerall = NumProjID(1302) = 0 ;�h�c�i���o�[�u1302�v�̔�ѓ����ʒ��ɂP���o�ĂȂ���
trigger1 = var(1)
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[State -1, aris];������Ƃ��ۂ��ǉ������Z
type = ChangeState
value = 1301
triggerall = var(59)=0
triggerall = command = "z"
triggerall = PalNo = 11
trigger1 = statetype = S
trigger2 = statetype = C
trigger3 = statetype = L
[State -1, hugo];������Ƃ��ۂ��ǉ������Z
type = ChangeState
value = 1302
triggerall = var(59)=0
triggerall = command = "c"
triggerall = PalNo = 11
trigger1 = statetype = S
trigger2 = statetype = C
trigger3 = statetype = L
;==============================================================================
; �ړ��֘A
;==============================================================================
;------------------------------------------------------------------------------

[State -1, ����]
type = ChangeState
value = 100
triggerall = var(59)=0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, �o�b�N�X�e�b�v]
type = ChangeState
value = 105
triggerall = var(59)=0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; ����Z
;==============================================================================
;------------------------------------------------------------------------------

[State -1, �J���t�[�X���[];�����Z
type = ChangeState
value = 800
triggerall = var(59)=0
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;------------------------------------------------------------------------------


;==============================================================================
; �ʏ�U���Z
;==============================================================================
;------------------------------------------------------------------------------

[State -1, ������p���`]
type = ChangeState
value = 200
triggerall = var(59)=0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

[State -1, �������p���`]
type = ChangeState
value = 210
triggerall = var(59)=0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 3
trigger3 = (stateno = 230) && time > 13
trigger4 = (stateno = 240) && time > 6
trigger5 = (stateno = 400) && time > 3
trigger6 = (stateno = 430) && time > 10

[State -1, ������L�b�N]
type = ChangeState
value = 230
triggerall = var(59)=0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 3


[State -1, �������L�b�N]
type = ChangeState
value = 240
triggerall = var(59)=0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 3
trigger3 = (stateno = 230) && time > 13
trigger4 = (stateno = 400) && time > 3


;------------------------------------------------------------------------------

;------------------------------------------------------------------------------

[State -1, ���Ⴊ�ݎ�p���`]
type = ChangeState
value = 400
triggerall = var(59)=0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, ���Ⴊ�݋��p���`]
type = ChangeState
value = 410
triggerall = var(59)=0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 3
trigger3 = (stateno = 200) && time > 3
trigger4 = (stateno = 210) && time > 12
trigger5 = (stateno = 230) && time > 13
trigger6 = (stateno = 240) && time > 6
trigger7 = (stateno = 430) && time > 10
trigger8 = (stateno = 440) && time > 20

[State -1, ���Ⴊ�ݎ�L�b�N]
type = ChangeState
value = 430
triggerall = var(59)=0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 
trigger2 = (stateno = 200) && time > 3
trigger3 = (stateno = 230) && time > 13
trigger4 = (stateno = 240) && time > 6
trigger5 = (stateno = 400) && time > 3
trigger6 = (stateno = 440) && time > 20

[State -1, ���Ⴊ�݋��L�b�N]
type = ChangeState
value = 440
triggerall = var(59)=0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 3
trigger3 = (stateno = 200) && time > 3
trigger4 = (stateno = 230) && time > 13
trigger5 = (stateno = 240) && time > 6

;------------------------------------------------------------------------------

[State -1, �W�����v��p���`]
type = ChangeState
value = 600
triggerall = var(59)=0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
;trigger3 = stateno = 1350 ;Win�ł̃J���t�[�}���ɂ́u�u���b�L���O�v�����ڗ\�肾�����炵��

[State -1, �W�����v���p���`]
type = ChangeState
value = 610
triggerall = var(59)=0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
;trigger3 = stateno = 1350 ;Win�ł̃J���t�[�}���ɂ́u�u���b�L���O�v�����ڗ\�肾�����炵��

[State -1, �W�����v��L�b�N]
type = ChangeState
value = 630
triggerall = var(59)=0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 1350 ;Win�ł̃J���t�[�}���ɂ́u�u���b�L���O�v�����ڗ\�肾�����炵��

[State -1, �W�����v���L�b�N]
type = ChangeState
value = 640
triggerall = var(59)=0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

