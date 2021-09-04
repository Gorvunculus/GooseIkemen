; サンプルキャラクター『カンフーマン』のコマンドファイルです。
; コマンドに関する設定は４部構成になっています。
;==============================================================================
; Win版専用パート
;==============================================================================
;------------------------------------------------------------------------------
; ここはWin版から（正確にはLinux版から）追加された要素の二つ。
; コマンド関連の初期設定を任意に指定出来るようになった(`・ω・´)
;
;『ボタンリマップ』はボタン配置変更用の項目。
; 定義パートでいちいち変更しなくても良いようになっちゃった。
; 面倒臭い人用かな！（ﾏﾃｺﾗ
;
;『デフォルト設定』では各[Command]で省略した場合の
; 入力受付時間と入力記憶時間を予め決めておく項目。
;
;
; この２項目は省略可能。
;------------------------------------------------------------------------------
;-| ボタンリマップ（ボタンコンフィグ）|---------------------------------------- 第１部

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;------------------------------------------------------------------------------
; 例えば「本来Ｘボタンで出す弱パンチをＢボタンに変えたい場合」なら、
;
; x = b
;
; で簡単に出来る。使わないボタンを使っているボタンに割り当てる事も可能。
;------------------------------------------------------------------------------
;-| デフォルト設定 |----------------------------------------------------------- 第２部

[Defaults]
command.time = 15  ;標準のコマンド入力受付時間。
                   ;各コマンドで省略している場合に有効。
                   ;このパラメータを消した場合、デフォルトは１フレームになる。
                   ;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

command.buffer.time = 1  ;標準のコマンド入力記憶時間。
                         ;入力した直後にコマンドを記憶し、
                         ;指を離してもコマンドが成功している状態を
                         ;ここで設定した時間の分維持する。
                         ;１～３０フレームまでの間で設定可能。
                         ;デフォルトは１フレーム。

;============================================================================== 第３部
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;------------------------------------------------------------------------------
; ここがキーとボタンの組み合わせで格闘ゲームにおける
;『入力コマンド』を直接設定・編集するパート。
;
; 一つずつコマンドに名前を付けて入力キーを組み合わせる単純な作業になるけど、
; 組み合わせが独特だから覚えるのは難易度が少し高い。
;
; 下記で「書式の決まり」と「組み合わせに必要なアルファベットと記号」を
; 全て説明しましょう。
;------------------------------------------------------------------------------
;■書式の決まり■
;
; [Command]         ：入力コマンドを１個定義する。
; name = "***"      ：コマンド名を決める。大文字と小文字も区別される。
; command = ###     ：実際に入力するキーを組み合わせる。詳細は後述。
; time = &&&        ：入力受付時間を設定（オプション）。
; buffer.time = @@@ ：入力記憶時間を設定（オプション）。
;
; 小ネタでも説明している通り、登録が可能な数は最大『１２８個』まで。
;
;
;※『必須コマンド名』と書いてるコマンドは、システム側で処理してます。
;　コマンド名を変えたり、消してはいけません。キーの変更は出来ます。
;------------------------------------------------------------------------------
;■必要なアルファベットと記号■
;
; 上記の「command = ###」の『###』に該当する部分で、
; 組み合わせるキーとボタンを設定しなければならない。
;
; ※設定したキーやボタンはM.U.G.E.Nのオプションモードにある
;  「キーコンフィグ」にて設定したキーなどに対応しています。
;
; ★方向キー★（全て必ず大文字で）
;
; 　B 　：「後方」にキーを入れる（ Backward ）
; 　D 　：「下方」にキーを入れる（ Downward ）
; 　F 　：「前方」にキーを入れる（ Forward ）
; 　U 　：「上方」にキーを入れる（ Upward ）
;
; 　DB　：「後ろ斜め下」にキーを入れる（「D」と「B」が同時に入力された事を認識）
; 　UB　：「後ろ斜め上」にキーを入れる（「U」と「B」が同時に入力された事を認識）
; 　DF　：「前斜め下」にキーを入れる（「D」と「F」が同時に入力された事を認識）
; 　UF　：「前斜め上」にキーを入れる（「U」と「F」が同時に入力された事を認識）
;
; ★ボタン★（全て必ず小文字で）
;
; 　a 　：「Ａボタン」を押す
; 　b 　：「Ｂボタン」を押す
; 　c 　：「Ｃボタン」を押す
; 　x 　：「Ｘボタン」を押す
; 　y 　：「Ｙボタン」を押す
; 　z 　：「Ｚボタン」を押す
; 　s 　：「スタートボタン」を押す
;
; ★記号★（入力効果を変化させる命令）
;
; 　/ 　：（スラッシュ）キーやボタンを「押しっぱなし」にしている事を認識する場合に追加する
;
; 　　（例）：　/b       = Ｂボタンを押したままにする
; 　　　　　　　/F       = 前キーを押したままにする
; 　　　　　　　/U,z     = 上キーを押したままＺボタンを入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　~ 　：（チルダ）キーやボタンが「離された時」を認識する場合に追加する
;
; 　　（例）：　~x       = Ｘボタンを離す
; 　　　　　　　~DF      =「前斜め下」のキーを離す
; 　　　　　　　~DB,F,c  =「後ろ斜め下」を離した後に前キー・Ｃボタンの順番に入力する
;
; 　　　　　　※「ボタンを離すまでの時間（溜め時間）」も設定する事が出来る
;
; 　　　　　　　~30x     = Ｘボタンを押したままにして、３０フレーム以上経ったら離す
; 　　　　　　　~50B,F,a = 後ろキーを５０フレームまで溜めて前キー・Ａボタンの順番に入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　$ 　：（ドル）方向キーの「複数の内どれかが入力されている事」を認識する場合に追加する
;
; 　　（例）：　$B       =「後方」「後ろ斜め下」「後ろ斜め上」のどれかが入力されている状態
; 　　　　　　　$UF      =「前」「上」「前斜め上」のどれかが入力されている状態
;
; 　　　　　　※この記号は「方向キー」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　+ 　：（プラス）ボタンを「同時押し」している事を認識する場合に追加する
;
; 　　（例）：　x+y      = ＸボタンとＹボタンを同時押しする
; 　　　　　　　a+b+c    = ＡボタンとＢボタンとＣボタンを同時押しする
;
; 　　　　　　※この記号は「ボタン」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　> 　：（グレーターザン）大なり（Win版で追加された記号）
; 　　　　　　　　　　　　「他のキーが入力されていない事を確認して、そのキーを押す」場合
;
; 　　（例）：　a,>~a    = Ａボタン以外が入力されていない状態でＡボタンを離す
; 　　　　　　　F,>~F,>F = 前キー以外が入力されていない状態で前キーを離し、
;　　　　　　　　　　　　　もう一度前キーを入力する
;
;-------------------------------------------------------------------------------
; ●これらの記号は全て組み合わせて使う事が出来る●
;
; 　　（例）：　~80$DB,DF,F,/a+y+c
; 　　　　　　　
; 　　　　　　「後方」「下」「後ろ斜め下」のどれかを８０フレームまで溜めて
; 　　　　　　「前斜め下」→「前」を入力した後、ＡとＹとＣを同時押ししたままにする
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

;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。

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
;-| 必殺技 |-------------------------------------------------------------------
[Command]
name = "board"
command = ~D, DF, F, a

[Command]
name = "board"
command = ~D, DF, F, b

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

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
;(「パワー溜め」用にコマンドを追加してます)
[Command]
name = "hold_c"
command = /c

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
;============================================================================== 第４部
; ステートエントリーパート（技などを出せるようにするための条件を設定）
;==============================================================================
;------------------------------------------------------------------------------
; コマンド名と入力するコマンドを設定しただけじゃ意味が無いので、ここから
;「実際に入力したコマンドでどの番号のステートをどういう条件で出せるか」
; を決めなければならない。
;
; ステートコントローラ「ChangeState」しか使わないけど、
; そんなに難しくないのでトリガーを覚えてたらすぐ出来る。
;
; ここさえ押さえておけば簡単なトリガー設定の流れは覚えられるかと。
;
; エントリーの順番にはある程度の法則があるけど、
; おまけフォルダの「小ネタ.txt」を参照。（波動拳が暴発ﾅﾝﾀﾗｶﾝﾀﾗ）
;
; ChangeStateなどステートコントローラの基本的な設置例は
; おまけフォルダの「テンプレート.txt」を参照。
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
[State -1, AI起動用ヘルパー]
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

;念のため↓も付けておく
[State -1, 関係無いステートに行かないように]
type=changestate
trigger1= ishelper(10000)
trigger1= ishelper(10000+root,id)
trigger1= stateno!=10000
value=10000

;///////////////////////////////////////////////////////////////////////////
;AI発動
;///////////////////////////////////////////////////////////////////////////
[State -1, AIフラグセット]
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
;Trigger53 = 1		;コメントアウトを外すと常時AI起動
var(59) = 10		;AIレベル(1-10,0でAI無し)


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
TriggerAll = Var(59) >= 1	;AIがセットされた状態
Trigger1 = RoundState = 4	;ラウンド終了後
Trigger2 = Win = 1			;勝ったとき
Trigger3 = Lose = 1			;負けたとき
Trigger4 = DrawGame = 1		;引き分けたとき
V = 59
Value = -Var(59)

[State -1, AI]
Type = VarSet
TriggerAll = Var(59) <= -1	;AIを停止させた状態
Trigger1 = RoundState = 2	;ラウンド開始
V = 59
Value = -Var(59)

;------------------------------------------------------------------------------
;タッグ用生死判別
[State -1, タッグ用生死判別]
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

[State -1, タッグ用生死判別]
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
;摩擦計算
[State -2, Facing]
type = VarSet
trigger1 = 1
var(57) = -(Facing)*(EnemyNear(var(50)),Facing)
ignorehitpause = 1

[State -1, 相手摩擦係数]
Type = VarSet
Trigger1 = 1
fvar(37) = IfElse(enemynear(var(50)),StateType=C,(EnemyNear(var(50)),Const(movement.crouch.friction)),(EnemyNear(var(50)),Const(movement.stand.friction)))
IgnoreHitPause = 1
;==============================================================================
;中段記憶
[State -2, 中段記憶]
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

[State -2, 中段記憶];リセット
type = varset
triggerall = var(51) != 0
trigger1 = roundstate!= 2
trigger1 = teammode = turns
var(51) = 0
IgnoreHitPause = 1

[State -2, 中段記憶]
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

[State -2, 中段記憶];リセット
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
[State -1, 変数リセット]
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

[State -1, 投げ成功]
Type = VarSet
triggerall = var(59) >= 1
triggerall = RoundState = 2
trigger1 = stateno=810
fvar(39) = 1

[State -1, 豆]
Type = VarSet
triggerall = var(59) >= 1
triggerall = RoundState = 2
trigger1 = stateno=1300
trigger1 = random%5=[0,1]
fvar(39) = 2

[State -1, 下爪]
Type = VarSet
triggerall = var(59) >= 1
triggerall = RoundState = 2
trigger1 = stateno=440
trigger1 = movehit
fvar(39) = 3

[State -1, 空中剣]
Type = VarSet
triggerall = var(59) >= 1
triggerall = RoundState = 2
trigger1 = stateno=610||stateno=640
trigger1 = movehit
fvar(39) = 4

[State -1, ストライカ]
Type = VarSet
triggerall = var(59) >= 1
triggerall = Life>=P2Life
trigger1 = projhittime(1031)=1 || projhittime(1354)=1
fvar(39) = 5

;fv39 = 6 追撃

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
;AI動作
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

;黄泉への回廊
[State -1, 黄泉への回廊]
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

;エネルギーコンタクト
[State -1, エネルギーコンタクト]
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
;投げ・復帰
;///////////////////////////////////////////////////////////////////////////
[State -1, 投げ]
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

;スパイク
[State -1, しゃがみ弱キック]
type = ChangeState
value = 430
triggerall = var(59) >= 1
TriggerAll = RoundState = 2
triggerall = statetype != A
triggerall = (ctrl || stateno = 19 || stateno = 21) || stateno=99
TriggerAll = enemynear(var(50)),MoveType = H
trigger1 = p2bodydist x <= 70
trigger1 = fvar(39) = 1

;斧(投げ追撃)
[State -1, しゃがみ強パンチ]
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
;対空
;///////////////////////////////////////////////////////////////////////////
;立ち弱キック
[State -1, 立ち弱キック]
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

;エネルギーコンタクト
[State -1, エネルギーコンタクト]
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
;ガード関係
;///////////////////////////////////////////////////////////////////////////
[State -1,立ちガード]
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
;地上
;///////////////////////////////////////////////////////////////////////////
;黄泉への回廊
[State -1, 黄泉への回廊]
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

;エネルギーコンタクト
[State -1, エネルギーコンタクト]
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

[State -1, しゃがみ弱パンチ]
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

;槍
[State -1, 立ち強パンチ]
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

;スパイク
[State -1, しゃがみ弱キック]
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
[State -1, しゃがみ強パンチ]
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

;斧
[State -1, しゃがみ強パンチ]
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

;子豆乳
[State -1, 子豆乳]
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

;槍
[State -1, 立ち強パンチ]
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

;スパイク
[State -1, しゃがみ弱キック]
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

[State -1, 立ち強キック]
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


[State -1, 立ち弱キック]
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

[State -1, しゃがみ強キック]
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

[State -1, しゃがみ弱パンチ]
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

[State -1, 立ち弱パンチ]
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

[State -1, 立ち弱パンチ]
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
[State -1, ジャンプ弱パンチ]
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

[State -1, ジャンプ強キック]
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

[State -1, ジャンプ強パンチ]
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

[State -1, ジャンプ弱キック]
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
;立ち回り
;///////////////////////////////////////////////////////////////////////////
;歩き後
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

;歩き前
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

[State -1,バックステップ]
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

[state -1,ダッシュ]
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

[state -1, ジャンプ]
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
;牽制
;///////////////////////////////////////////////////////////////////////////
[State -1, 分裂];ゲージレベル１
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

[State -1, 立ち強キック]
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

[State -1, しゃがみ強キック]
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

;槍
[State -1, 立ち強パンチ]
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

;スパイク
[State -1, しゃがみ弱キック]
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

[State -1, しゃがみ強パンチ]
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

;子豆乳
[State -1, 子豆乳]
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
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------


;------------------------------------------------------------------------------
; ここで↑にて実際に使っている「スマッシュカンフーアッパーのChangeState」を例に
; 見て行きましょ！m9っ｀Д´)
;
; まず特定のコマンドを入力したいならば、
; 必ず『呼び出すコマンドのトリガー』は設定しましょう。
; 特殊な条件でない限り、コマンドは通常「triggerall」の方で設定した方が良い。
;
;「triggerall」とは『有効になる状況を限定するための条件』を指定する。
; triggerallの条件が有効にならない限り、trigger1以降の条件も有効にはならない。
; 何個でも増やせる。ステート作成の基本テクニックの一つなので覚えておいてね。
; しかしtriggerallはtrigger1以降が無いと「単体では」使えないので注意。
;（trigger1以降を全てコメント化してM.U.G.E.Nでそのキャラを選んで試してみよう）
;
;
; ※『パワーゲージ』は「スーパーコンボゲージ」や「超必殺技ゲージ」などで
; 　呼ばれてる部分のゲージです。
; 　ゲージが「１０００ポイント」なら『レベル１』と同じ意味になります。
;
; 　まぁパッと見、M.U.G.E.Nのパワーゲージって仕組みが
; 　ストＺＥＲＯシリーズの「スーパーコンボレベルゲージ」まんまだよね（苦笑
;------------------------------------------------------------------------------

[State -1, 三烈カンフー突き手];ゲージレベル１
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
trigger3 = (StateNo = 1300) && (Time = [12,38]) ;ちょっとこ丸が追加

[State -1, スマッシュカンフーアッパー];ゲージレベル１
type = ChangeState
value = 3050
triggerall = var(59)=0
triggerall = command = "SmashKFUpper"  ;「SmashKFUpper」の名前のコマンドが入力されたら
triggerall = power >= 1000             ;パワーゲージがレベル１以上溜まっている時（※）
triggerall = statetype != A            ;「空中」ではない時
trigger1 = ctrl                        ;コントロールが可能な場合
trigger2 = hitdefattr = SC, NA, SA, HA ;自分の「HitDefの一部の攻撃属性」が出ている時（テンプレート参照）
trigger2 = stateno != [3050,3100)      ;現在のステートが「3050以上、3100未満」の間のどれかな場合
trigger2 = movecontact                 ;攻撃が相手に触れている時（ヒット・ガード両方）
trigger3 = (StateNo = 1300) && (Time = [12,38]) ;ちょっとこ丸が追加

[State -1, 分裂];ゲージレベル１
type = ChangeState
value = 3060
triggerall = var(59)=0
triggerall = command = "bunretu"  ;「SmashKFUpper」の名前のコマンドが入力されたら
triggerall = power >= 6000             ;パワーゲージがレベル１以上溜まっている時（※）
triggerall = statetype != A            ;「空中」ではない時
trigger1 = ctrl                        ;コントロールが可能な場合


;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
; 変数の使い方の例。
;
; カンフーマンの「地上で必殺技が出せる状況」や、
; 通常技から必殺技へ繋ぐ時の「キャンセル」の部分を設定している。
; 地上で成功すれば、『変数の例２』のステートコントローラで設定した
; 変数が実行され、それ以外なら『変数の例１』でリセットする、という処理。
;
; 個人的にはこの方法はオススメしない。kfmcでの方法を推薦します。

[State -1, 変数の例１];必殺技の発生条件リセット
type = VarSet
trigger1 = 1
var(1) = 0 ;変数用パラメータの記述方法その１（その２は「板投げ」のステートにて）

[State -1, 変数の例２];必殺技の発生条件をチェック
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;[Statedef 440]（足払いのステート）ではない時
trigger2 = movecontact
var(1) = 1


[State -1, 板投げ];ちょっとこ丸が追加した技
type = ChangeState
value = 1300
triggerall = var(59)=0
triggerall = command = "board"
triggerall = NumHelper(1300) = 0 ;ＩＤナンバー「1300」のヘルパーが画面中に１個も出てない時
triggerall = NumProjID(1302) = 0 ;ＩＤナンバー「1302」の飛び道具が画面中に１個も出てない時
trigger1 = var(1)
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[State -1, aris];ちょっとこ丸が追加した技
type = ChangeState
value = 1301
triggerall = var(59)=0
triggerall = command = "z"
triggerall = PalNo = 11
trigger1 = statetype = S
trigger2 = statetype = C
trigger3 = statetype = L
[State -1, hugo];ちょっとこ丸が追加した技
type = ChangeState
value = 1302
triggerall = var(59)=0
triggerall = command = "c"
triggerall = PalNo = 11
trigger1 = statetype = S
trigger2 = statetype = C
trigger3 = statetype = L
;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
triggerall = var(59)=0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59)=0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, カンフースルー];投げ技
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
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 立ち弱パンチ]
type = ChangeState
value = 200
triggerall = var(59)=0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

[State -1, 立ち強パンチ]
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

[State -1, 立ち弱キック]
type = ChangeState
value = 230
triggerall = var(59)=0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 3


[State -1, 立ち強キック]
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

[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
triggerall = var(59)=0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, しゃがみ強パンチ]
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

[State -1, しゃがみ弱キック]
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

[State -1, しゃがみ強キック]
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

[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 600
triggerall = var(59)=0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
;trigger3 = stateno = 1350 ;Win版のカンフーマンには「ブロッキング」が搭載予定だったらしい

[State -1, ジャンプ強パンチ]
type = ChangeState
value = 610
triggerall = var(59)=0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
;trigger3 = stateno = 1350 ;Win版のカンフーマンには「ブロッキング」が搭載予定だったらしい

[State -1, ジャンプ弱キック]
type = ChangeState
value = 630
triggerall = var(59)=0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 1350 ;Win版のカンフーマンには「ブロッキング」が搭載予定だったらしい

[State -1, ジャンプ強キック]
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

