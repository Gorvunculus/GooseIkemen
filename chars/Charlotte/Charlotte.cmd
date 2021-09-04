;
;==============================================================================
; Win版専用パート
;==============================================================================
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;-| ボタンリマップ（ボタンコンフィグ）|----------------------------------------

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;------------------------------------------------------------------------------
;-| デフォルト設定 |-----------------------------------------------------------

[Defaults]
command.time = 18  ;標準のコマンド入力受付時間。
                   ;各コマンドで省略している場合に有効。
                   ;このパラメータを消した場合、デフォルトは１フレームになる。
                   ;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

command.buffer.time = 1  ;標準のコマンド入力記憶時間。
                         ;入力した直後にコマンドを記憶し、
                         ;指を離してもコマンドが成功している状態を
                         ;ここで設定した時間の分維持する。
                         ;１～３０フレームまでの間で設定可能。
                         ;デフォルトは１フレーム。

;==============================================================================
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;-| AIコマンド |---------------------------------------------------------------
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
;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "CHEESE"
command = ~D,DB,B,z
time = 10

[Command]
name = "ONE_WHOLE"
command = D,D,z
time = 20

[Command]
name = "LETS_EAT"
command = ~D,DF,F,z
time = 10

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "PYOTR_x"
command = ~D,DB,B,x
time = 10

[Command]
name = "PYOTR_y"
command = ~D,DB,B,y
time = 10

[Command]
name = "CAKE_x"
command = D,D,x
time = 20

[Command]
name = "CAKE_y"
command = D,D,y
time = 20

[Command]
name = "SWEETS_x"
command = ~D,DF,F,x
time = 20

[Command]
name = "SWEETS_y"
command = ~D,DF,F,y
time = 20

;------------------------------------------------------------------------------
;-| 特殊技 |-------------------------------------------------------------------

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F,F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B,B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "Fork" ;必須コマンド名
command = y+z
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = a+b
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1

;------------------------------------------------------------------------------
;-| チャージ |-----------------------------------------------------------------

[Command];何かわかんないが必要
name = "Charge_z"
command = /z
time = 1

[Command]
name = "Release_z"
command = ~z
time = 1

[Command];何かわかんないが必要
name = "Charge_y"
command = /y
time = 1

[Command]
name = "Release_y"
command = ~y
time = 1

[Command];何かわかんないが必要
name = "Charge_x"
command = /x
time = 1

[Command]
name = "Release_x"
command = ~x
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

;[Command]
;name = "fwd_a"
;command = /F,a

[Command]
name = "fwd_z"
command = /F,z

[Command]
name = "fwd_y"
command = /F,y

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------
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

;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

;==============================================================================
; ステートエントリーパート（技などを出せるようにするための条件を設定）
;==============================================================================
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
; ■準常時監視ステート（－１）■
; コマンドファイル（のステートエントリーパート）に必要な項目です。
; 絶対に消してはいけないので要注意。
;
; 通常の食らい状態以外の「P2StateNo」や「TargetState」等で制御された、
; 作成者が任意に指定した相手側の食らいステートに限り、
; 登録したステートコントローラが有効にはなりません。
;------------------------------------------------------------------------------

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;==============================================================================
; MAGICA技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, CHEESE!]
type = ChangeState
triggerall = (command = "CHEESE")
Triggerall = var(59) != 1
triggerall = (Power > 999)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && movecontact
trigger3 = (StateNo = 220) && movecontact
trigger4 = (StateNo = [240,250]) && movecontact
trigger5 = (StateNo = 260) && statetype = S && movecontact
trigger6 = (StateNo = 400) && movecontact
trigger7 = (StateNo = 420) && movecontact
trigger8 = (StateNo = [440,450]) && movecontact
Trigger9 = StateNo = 100
Trigger10= StateNo = 105
value = 3000

[State -1, CANDY!]
type = ChangeState
triggerall = (command = "CHEESE")
Triggerall = var(59) != 1
triggerall = (Power > 999)
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 635) && movecontact
trigger3 = (StateNo = 260) && movecontact
value = 3400

[State -1, ONE WHOLE!]
type = ChangeState
triggerall = (command = "ONE_WHOLE") || (((StateNo = 1200)||(StateNo = 1220)) && (command = "z"))
Triggerall = var(59) != 1
triggerall = (Power > 1999)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 1200) && (helper(1202),movecontact)
trigger3 = (StateNo = 1220) && (helper(1222),movecontact)
value = 3100


;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, PYOTR!x]
type = ChangeState
triggerall = (command = "PYOTR_x")
Triggerall = var(59) != 1
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 280) && movecontact
value = 1100

[State -1, PYOTR!y]
type = ChangeState
triggerall = (command = "PYOTR_y") || ((Power <= 999)&&(command = "CHEESE"))
Triggerall = var(59) != 1
trigger1 = (StateType != A) && (Ctrl)
value = 1120

[State -1, CAKE!x]
type = ChangeState
triggerall = (command = "CAKE_x")
Triggerall = var(59) != 1
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 400) && movecontact
trigger3 = (StateNo = 420) && movecontact
value = 1200

[State -1, CAKE!y]
type = ChangeState
triggerall = (command = "CAKE_y") || ((Power <= 1999)&&(command = "ONE_WHOLE"))
Triggerall = var(59) != 1
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 442) && movecontact
trigger3 = (StateNo = 1400) && var(7) = 1400
trigger4 = (StateNo = 1420) && var(7) = 1420
value = 1220

[State -1, SWEETS!x]
type = ChangeState
triggerall = (command = "SWEETS_x")
Triggerall = var(59) != 1
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 220) && (AnimElemTime(10) > 1) && movecontact
trigger3 = (StateNo = 420) && movecontact
value = 1400

[State -1, SWEETS!y]
type = ChangeState
triggerall = (command = "SWEETS_y"); || ((Power <= 2999)&&(command = "LETS_EAT"));※投げとの兼ね合いで無理だった(´・ω・｀)
Triggerall = var(59) != 1
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [242,244]) && movecontact
value = 1420


;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------
; 投げ
;---------------------------------------------------------------------------
;地上投げ
[State -1, 投げ];HUG HUG!
type = ChangeState
value = 800
Triggerall = var(59) != 1
triggerall = command = "z" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl


;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
triggerall = (StateNo != 100)
Triggerall = var(59) != 1
trigger1 = (command = "FF") && (StateType = S) && (Ctrl)
value = 100

[State -1, バックステップ]
type = ChangeState
triggerall = (StateNo != 100)
Triggerall = var(59) != 1
trigger1 = (command = "BB") && (StateType = S) && (Ctrl)
value = 105

[State -1, 空中ダッシュ]
type = ChangeState
Triggerall = var(59) != 1
triggerall = (Pos Y < -10)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
triggerall = !(PrevStateNo = 45 && StateNo = 50)
trigger1 = (command = "FF") && (StateType = A) && (Ctrl)
value = 101

[State -1, 空中バックダッシュ]
type = ChangeState
Triggerall = var(59) != 1
triggerall = (Pos Y < -10)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
triggerall = !(PrevStateNo = 45 && StateNo = 50)
trigger1 = (command = "BB") && (StateType = A) && (Ctrl)
value = 106



;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------
;立ち
[State -1, 立ち6強];FORK!
type = ChangeState
triggerall = (command = "Fork") && (command != "holddown")
Triggerall = var(59) != 1
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && movecontact
trigger3 = (StateNo = 220) && (AnimElemTime(10) > 1) && movecontact
trigger4 = (StateNo = 400) && movecontact
trigger5 = (StateNo = 420) && movecontact
value = 260

[State -1, 立ち6中];SPOON!
type = ChangeState
triggerall = (command = "fwd_y") && (command != "holddown")
Triggerall = var(59) != 1
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && movecontact
trigger3 = (StateNo = 220) && (AnimElemTime(10) > 1) && movecontact
trigger4 = (StateNo = 242) && movecontact
trigger5 = (StateNo = 244) && movecontact
trigger6 = (StateNo = 260) && statetype = S && movecontact
trigger7 = (StateNo = 400) && movecontact
trigger8 = (StateNo = 420) && movecontact
trigger9 = (StateNo = 1420) && var(7) = 1420; && (AnimElemTime(11) > 0)
value = 280

[State -1, 立ち弱];KICK!
type = ChangeState
triggerall = (command = "x") && (command != "holddown")
Triggerall = var(59) != 1
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (AnimElemTime(3) > 1)
trigger3 = (StateNo = 400) && (AnimElemTime(3) > 1)
value = 200

[State -1, 立ち中];SPIN!
type = ChangeState
triggerall = (command = "y") && (command != "holddown")
Triggerall = var(59) != 1
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (AnimElemTime(3) > 1)
value = 220

[State -1, 立ち強];KNIFE!
type = ChangeState
triggerall = (command = "z") && (command != "holddown")
Triggerall = var(59) != 1
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && movecontact
trigger3 = (StateNo = 220) && (AnimElemTime(10) > 1) && movecontact
trigger4 = (StateNo = 1420) && var(7) = 1420 && (AnimElemTime(11) > 0)
value = 240

;------------------------------------------------------------------------------
;屈
[State -1, 屈弱];PANCH!
type = ChangeState
triggerall = (command = "x") && (command = "holddown")
Triggerall = var(59) != 1
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (StateNo = 200) && (AnimElemTime(3) > 1)
trigger3 = (StateNo = 400) && (AnimElemTime(3) > 1)
value = 400

[State -1, 屈中];CHOP!
type = ChangeState
triggerall = (command = "y") && (command = "holddown")
Triggerall = var(59) != 1
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (StateNo = 400) && (AnimElemTime(3) > 1)
value = 420

[State -1, 屈強];GAOOH!
type = ChangeState
triggerall = (command = "z") && (command = "holddown")
Triggerall = var(59) != 1
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (StateNo = 400) && movecontact
trigger3 = (StateNo = 420) && movecontact
value = 440

;------------------------------------------------------------------------------
;空
[State -1, 空弱];PECHIN!
type = ChangeState
triggerall = (command = "x")
Triggerall = var(59) != 1
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600) && (AnimElemTime(2) > 1)
value = 600

;[State -1, 空中];SWEETS!
;type = null;ChangeState
;triggerall = (command = "y")
;Triggerall = var(59) != 1
;trigger1 = (StateType = A) && (Ctrl)
;trigger2 = (StateNo = 600) && (AnimElemTime(2) > 1)
;value = 620

[State -1, 新空中];SLASH!
type = ChangeState
triggerall = (command = "y")
Triggerall = var(59) != 1
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600) && (AnimElemTime(2) > 1)
value = 635

[State -1, 空強];GOTSUN!
type = ChangeState
triggerall = (command = "z")
Triggerall = var(59) != 1
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600) && (AnimElemTime(2) > 1)
value = 640


;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[State -1, 挑発]
type = null;ChangeState
triggerall = (command = "start")
Triggerall = var(59) = 0
trigger1 = (StateType != A) && (Ctrl)
value = 19195

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

























