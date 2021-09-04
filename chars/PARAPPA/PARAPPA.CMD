; コマンド設定ファイル
;
;===========================================================================
; コマンド設定ファイルは、2つのパートから成り立っています。
; コマンドに使用する入力キーを指定する部分と、コマンドが実行される条件を指定する
; パートに別れます。
; 先に書かれた物ほど、優先順位が高くなるので注意してください。
;===========================================================================
;---------------------------------------------------------------------------
; 1. 入力キーの指定
;---------------------------------------------------------------------------
;
; 注意：　入力キーの指定や、コマンドの名前には大文字と小文字の区別が必要です。
;
; 方向キーの指定:
;   B, DB, D, DF, F, UF, U, UB     (全て大文字で)
;   それぞれ、 back, down-back, down, downforward, のようになっています。
; 6ボタン:
;   a, b, c, x, y, z               (全て小文字で)
;
; - コマンドの指定方法
;   方向キーとボタンはカンマ（ , ）で区切ります。
;   特殊文字を先に置くことにより、コマンドの指示ができます。
;
;   スラッシュ (/) - ボタンを押しっぱなしにする
;          例. command = /D       ;下方向に入力されたままの状態
;               command = /F, a    ;前方向を入力した状態でaボタンを押す
;
;   チルダ (~) - ボタンが放される
;          例. command = ~a       ;aボタンが離される
;               command = ~D, F, a ;下方向が離された後、前方向が入力されて、aボタン
;
;          数字を指定することで、入力時間を指定できます
;          例. command = ~30a     ;30フレームaボタンを押しっぱなしにした後で放す
;               command = ~30
;
;   ドル ($) - 複数方向指示
;          例. command = $D       ;D, DB または DF を含みます
;               command = $B       ; B, DB または UB を含みます
;
;   プラス (+) - ボタンの同時押し
;          例. command = a+b      ;ab同時押し
;               command = x+y+z    ;xyz同時押し
;
;   これらは、組み合わせて使用することも可能です
;     例. command = ~30$D, a+b     ;下方向（ D,DB,DFいずれか ）に30フレーム入力して
;                                  　　　　　　　放した後に、ab同時押し
;
; - time (オプション)
;   時間以内にコマンドを入力する必要のある時に使用します。
;




;-| 2度押し |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| ボタン同時押し |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| 方向キー＋ボタン |---------------------------------------------------------
[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "downfwd_z"
command = /DF,z
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

;-| ボタン |---------------------------------------------------------
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
name = "s"
command = s
time = 1

;-| 方向キー |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. コマンド実行条件
;---------------------------------------------------------------------------
;
; 基本的な書き方:
;
;   [State -1]                  ;変えないでください
;   type = ChangeState          ;変えないでください
;   value = new_state_number  ;コマンドが入力された時に実行されるステイト番号
;   trigger1 = command = "command_name";入力キーの指定で設定したコマンドの名前
;   . . .  (追加で条件を指定できます)
;
; - 以下のトリガーを知っておくと便利でしょう。
;
;   - statetype
;       S, C or A : プレイヤーがどの状態か (立ち状態, しゃがみ, 空中)
;   - ctrl
;       0 or 1 : 1 なら、プレイヤーにコントロールがある時だけ実行されます
;   - stateno
;      プレイヤーのステイト番号
;   - movecontact
;       0 or 1 : 1 なら、相手に攻撃が当たっている時にだけ実行されます
;
; トリガーのリファレンスはCNSの公式ドキュメントを参照してください。

; ※次の一行は消さないでください。（CMDの必須です）
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------


;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;バックダッシュ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;投げ
[State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = command = "fwd_z"
trigger1 = stateno != 100
trigger1 = p2bodydist X < 8
trigger1 = p2statetype = S
trigger1 = p2movetype != H

[State -1]
type = ChangeState
value = 920
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = command = "fwd_y"
trigger1 = stateno != 100
trigger1 = p2bodydist X < 8
trigger1 = p2statetype = S
trigger1 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
;弱パンチ
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;弱パンチ
trigger2 = time > 7
trigger2 = movecontact = 1
trigger3 = stateno = 230 ;弱キック
trigger3 = time > 8
trigger3 = movecontact = 1
trigger4 = stateno = 400 ;しゃがみ弱パンチ
trigger4 = time > 8
trigger4 = movecontact = 1
trigger5 = stateno = 430 ;しゃがみ弱キック
trigger5 = time > 8
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;中パンチ
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;弱パンチ
trigger2 = movecontact = 1
trigger3 = stateno = 230 ;弱キック
trigger3 = movecontact = 1
trigger4 = stateno = 240 ;中キック
trigger4 = movecontact = 1
trigger5 = stateno = 400 ;しゃがみ弱パンチ
trigger5 = movecontact = 1
trigger6 = stateno = 430 ;しゃがみ弱キック
trigger6 = movecontact = 1


;---------------------------------------------------------------------------
;強パンチ
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;弱パンチ
trigger2 = movecontact = 1
trigger3 = stateno = 210 ;中パンチ
trigger3 = movecontact = 1
trigger4 = stateno = 211 ;中パンチ二撃目
trigger4 = movecontact = 1
trigger5 = stateno = 230 ;弱キック
trigger5 = movecontact = 1
trigger6 = stateno = 240 ;中キック
trigger6 = movecontact = 1
trigger7 = stateno = 241 ;中キック二撃目
trigger7 = movecontact = 1
trigger8 = stateno = 400 ;しゃがみ弱パンチ
trigger8 = movecontact = 1
trigger9 = stateno = 410 ;しゃがみ中パンチ
trigger9 = movecontact = 1
trigger10 = stateno = 430 ;しゃがみ弱キック
trigger10 = movecontact = 1
trigger11 = stateno = 440 ;しゃがみ中キック
trigger11= movecontact = 1


;===========================================================================
;---------------------------------------------------------------------------
;弱キック
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;弱パンチ
trigger2 = time > 7
trigger2 = movecontact = 1
trigger3 = stateno = 230 ;弱キック
trigger3 = time > 9
trigger3 = movecontact = 1
trigger4 = stateno = 400 ;しゃがみ弱パンチ
trigger4 = time > 8
trigger4 = movecontact = 1
trigger5 = stateno = 430 ;しゃがみ弱キック
trigger5 = time > 8
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;中キック
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;弱パンチ
trigger2 = movecontact = 1
trigger3 = stateno = 210 ;中パンチ
trigger3 = movecontact = 1
trigger4 = stateno = 230 ;弱キック
trigger4 = movecontact = 1
trigger5 = stateno = 400 ;しゃがみ弱パンチ
trigger5 = movecontact = 1
trigger6 = stateno = 430 ;しゃがみ弱キック
trigger6 = movecontact = 1



;---------------------------------------------------------------------------
;強キック
[State -1]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;弱パンチ
trigger2 = movecontact = 1
trigger3 = stateno = 210 ;中パンチ
trigger3 = movecontact = 1
trigger4 = stateno = 211 ;中パンチ二撃目
trigger4 = movecontact = 1
trigger5 = stateno = 230 ;弱キック
trigger5 = movecontact = 1
trigger6 = stateno = 240 ;中キック
trigger6 = movecontact = 1
trigger7 = stateno = 241 ;中キック二撃目
trigger7 = movecontact = 1
trigger8 = stateno = 400 ;しゃがみ弱パンチ
trigger8 = movecontact = 1
trigger9 = stateno = 410 ;しゃがみ中パンチ
trigger9 = movecontact = 1
trigger10 = stateno = 430 ;しゃがみ弱キック
trigger10 = movecontact = 1
trigger11 = stateno = 440 ;しゃがみ中キック
trigger11= movecontact = 1

;===========================================================================
;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;弱パンチ
trigger2 = time > 7
trigger2 = movecontact = 1
trigger3 = stateno = 230 ;弱キック
trigger3 = time > 8
trigger3 = movecontact = 1
trigger4 = stateno = 400 ;しゃがみ弱パンチ
trigger4 = time > 8
trigger4 = movecontact = 1
trigger5 = stateno = 430 ;しゃがみ弱キック
trigger5 = time > 8
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;しゃがみ中パンチ
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;弱パンチ
trigger2 = movecontact = 1
trigger3 = stateno = 230 ;弱キック
trigger3 = movecontact = 1
trigger4 = stateno = 400 ;しゃがみ弱パンチ
trigger4= movecontact = 1
trigger5 = stateno = 430 ;しゃがみ弱キック
trigger5= movecontact = 1
trigger6 = stateno = 240 ;中キック
trigger6 = movecontact = 1

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;弱パンチ
trigger2 = movecontact = 1
trigger3 = stateno = 230 ;弱キック
trigger3 = movecontact = 1
trigger4 = stateno = 400 ;しゃがみ弱パンチ
trigger4= movecontact = 1
trigger5 = stateno = 430 ;しゃがみ弱キック
trigger5= movecontact = 1
trigger6 = stateno = 240 ;中キック
trigger6 = movecontact = 1
trigger7 = stateno = 210 ;中パンチ
trigger7 = movecontact = 1

;===========================================================================
;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;弱パンチ
trigger2 = time > 7
trigger2 = movecontact = 1
trigger3 = stateno = 230 ;弱キック
trigger3 = time > 8
trigger3 = movecontact = 1
trigger4 = stateno = 400 ;しゃがみ弱パンチ
trigger4 = time > 8
trigger4 = movecontact = 1
trigger5 = stateno = 430 ;しゃがみ弱キック
trigger5 = time > 8
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;しゃがみ中キック
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;弱パンチ
trigger2 = movecontact = 1
trigger3 = stateno = 210 ;中パンチ
trigger3 = movecontact = 1
trigger4 = stateno = 230 ;弱キック
trigger4 = movecontact = 1
trigger5 = stateno = 400 ;しゃがみ弱パンチ
trigger5 = movecontact = 1
trigger6 = stateno = 430 ;しゃがみ弱キック
trigger6 = movecontact = 1

;２発目
[State -1]
type = ChangeState
value = 441
trigger1 = command = "downfwd_b"
trigger1 = command = "holddown"
trigger1 = statetype = C
trigger1 = stateno =440
trigger1 = movecontact = 1

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;弱パンチ
trigger2 = movecontact = 1
trigger3 = stateno = 210 ;中パンチ
trigger3 = movecontact = 1
trigger4 = stateno = 211 ;中パンチ二撃目
trigger4 = movecontact = 1
trigger5 = stateno = 230 ;弱キック
trigger5 = movecontact = 1
trigger6 = stateno = 240 ;中キック
trigger6 = movecontact = 1
trigger7 = stateno = 241 ;中キック二撃目
trigger7 = movecontact = 1
trigger8 = stateno = 400 ;しゃがみ弱パンチ
trigger8 = movecontact = 1
trigger9 = stateno = 410 ;しゃがみ中パンチ
trigger9 = movecontact = 1
trigger10 = stateno = 420 ;しゃがみ大パンチ
trigger10 = movecontact = 1
trigger11 = stateno = 430 ;しゃがみ弱キック
trigger11 = movecontact = 1
trigger12 = stateno = 440 ;しゃがみ中キック
trigger12 = movecontact = 1

;===========================================================================
;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ジャンプ中パンチ
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger2 = time > 3

;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger2 = time > 3
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger3 = time > 3

;===========================================================================
;---------------------------------------------------------------------------
;ジャンプレバー下中キック
[State -1]
type = ChangeState
value = 660
trigger1 = command = "down_b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1]
type = ChangeState
value = 630
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ジャンプ中キック
[State -1]
type = ChangeState
value = 640
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1]
type = ChangeState
value = 650
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
value = 10000
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1
