; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10


;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1
[Command]
name = "AI_1"
command = D, D, D, D, D, D, D, D, D, D, D, D, D, D, D
time = 1

[Command]
name = "AI_2"
command = F, F, F, F, F, F, F, F, F, F, F, F, F, F, F
time = 1

[Command]
name = "AI_3"
command = U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI_4"
command = B, B, B, B, B, B, B, B, B, B, B, B, B, B, B
time = 1
 
[Command]
name = "AI_5"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, a
time = 1

[Command]
name = "AI_6"
command = b, b, b, b, b, b, b, b, b, b, b, b, b, b, b
time = 1

[Command]
name = "AI_7"
command = c, c, c, c, c, c, c, c, c, c, c, c, c, c, c
time = 1

[Command]
name = "AI_8"
command = x, x, x, x, x, x, x, x, x, x, x, x, x, x, x
time = 1

[Command]
name = "AI_9"
command = y, y, y, y, y, y, y, y, y, y, y, y, y, y, y
time = 1

[Command]
name = "AI_10"
command = z, z, z, z, z, z, z, z, z, z, z, z, z, z, z
time = 1

[Command]
name = "AI_11"
command = s, s, s, s, s, s, s, s, s, s, s, s, s, s, s
time = 1

[Command]
name = "AI_12"
command = F, F, F, F, F, F, F, F, F, F, F, F, F, F, a
time = 1

[Command]
name = "AI_13"
command = U, U, U, U, U, U, U, U, U, U, U, U, U, U, a
time = 1

[Command]
name = "AI_14"
command = B, B, B, B, B, B, B, B, B, B, B, B, B, B, a
time = 1
 
[Command]
name = "AI_15"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, b
time = 1

[Command]
name = "AI_16"
command = b, b, b, b, b, b, b, b, b, b, b, b, b, b, a
time = 1

[Command]
name = "AI_17"
command = c, c, c, c, c, c, c, c, c, c, c, c, c, c, a
time = 1

[Command]
name = "AI_18"
command = x, x, x, x, x, x, x, x, x, x, x, x, x, x, a
time = 1

[Command]
name = "AI_19"
command = y, y, y, y, y, y, y, y, y, y, y, y, y, y, a
time = 1

[Command]
name = "AI_20"
command = z, z, z, z, z, z, z, z, z, z, z, z, z, z, a
time = 1

[Command]
name = "AI_21"
command = s, s, s, s, s, s, s, s, s, s, s, s, s, s, a
time = 1

[Command]
name = "AI_22"
command = F, F, F, F, F, F, F, F, F, F, F, F, F, F, b
time = 1

[Command]
name = "AI_23"
command = U, U, U, U, U, U, U, U, U, U, U, U, U, U, b
time = 1

[Command]
name = "AI_24"
command = B, B, B, B, B, B, B, B, B, B, B, B, B, B, b
time = 1
 
[Command]
name = "AI_25"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, c
time = 1

[Command]
name = "AI_26"
command = b, b, b, b, b, b, b, b, b, b, b, b, b, b, c
time = 1

[Command]
name = "AI_27"
command = c, c, c, c, c, c, c, c, c, c, c, c, c, c, b
time = 1

[Command]
name = "AI_28"
command = x, x, x, x, x, x, x, x, x, x, x, x, x, x, b
time = 1

[Command]
name = "AI_29"
command = y, y, y, y, y, y, y, y, y, y, y, y, y, y, b
time = 1

[Command]
name = "AI_30"
command = z, z, z, z, z, z, z, z, z, z, z, z, z, z, b
time = 1

[Command]
name = "AI_31"
command = s, s, s, s, s, s, s, s, s, s, s, s, s, s, b
time = 1

[Command]
name = "AI_32"
command = F, F, F, F, F, F, F, F, F, F, F, F, F, F, c
time = 1

[Command]
name = "AI_33"
command = U, U, U, U, U, U, U, U, U, U, U, U, U, U, c
time = 1

[Command]
name = "AI_34"
command = B, B, B, B, B, B, B, B, B, B, B, B, B, B, c
time = 1
 
[Command]
name = "AI_35"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, x
time = 1

[Command]
name = "AI_36"
command = b, b, b, b, b, b, b, b, b, b, b, b, b, b, x
time = 1

[Command]
name = "AI_37"
command = c, c, c, c, c, c, c, c, c, c, c, c, c, c, x
time = 1

[Command]
name = "AI_38"
command = x, x, x, x, x, x, x, x, x, x, x, x, x, x, c
time = 1

[Command]
name = "AI_39"
command = y, y, y, y, y, y, y, y, y, y, y, y, y, y, c
time = 1

[Command]
name = "AI_40"
command = z, z, z, z, z, z, z, z, z, z, z, z, z, z, c
time = 1

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command] 
name = "charge_D_ab"
command = ~60$D, ab
time = 15

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D,DF, F, x
time = 20

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D,DF, F, y
time = 20

[Command]
name = "Palm"
command = ~D, DF, F, D,DF, F, a
time = 20

[Command]
name = "Palm"
command = ~D, DF, F, D,DF, F, b
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B,x+y
time = 20

[Command]
name = "Pound"
command = ~D, DB, B, D, DB, B, x
time = 20

[Command]
name = "Pound"
command = ~D, DB, B, D, DB, B, y
time = 20


;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x


[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, z


[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, z

[command]
name = "Rockhead_a"
command = B,DB,D,DF,F,a
time = 20

[command]
name = "Rockhead_b"
command = B,DB,D,DF,F,b
time = 20

[Command]
name = "lizard"
command = x+y

[Command]
name = "xx"     
command = ~30x


[Command]
name = "FF_ab"
command = ~D, DB, B, a+b

[Command]
name = "FF_a"
command = ~D, DB, B, a

[Command]
name = "FF_b"
command = ~D, DB, B, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
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


;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
[State -1, terremoto]
type = ChangeState
value = 1300
triggerall = command = "Pound"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [1300,3050)
trigger2 = movecontact
;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "TripleKFPalm"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;---------------------------------------------------------------------------
; Palm (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3700
triggerall = command = "Palm"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;---------------------------------------------------------------------------
;Fast Kung Fu Knee (1/3 super bar)
;速いカンフー蹴り（ゲージレベル１／３）
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 222
triggerall = command = "FF_ab"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Knee
;カンフー蹴り（弱）
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 220
triggerall = command = "FF_a"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Knee
;カンフー蹴り（弱）
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 220
triggerall = command = "FF_b"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
[State -1, Rockhead charge]
type = ChangeState
value = 1010
triggerall = statetype !=A
triggerall = command = "Rockhead_a"
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Rockhead charge]
type = ChangeState
value = 1011
triggerall = statetype !=A
triggerall = command = "Rockhead_b"
trigger1 = ctrl

;---------------------------------------------------------------------------
;Bowling
;カンフー突き手（弱）
[State -1, Bowling]
type = ChangeState
value = 255
triggerall = numproj = 0
triggerall = command = "QCF_x"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Bowling
;カンフー突き手（強）
[State -1, Bowling]
type = ChangeState
value = 256
triggerall = numproj = 0
triggerall = command = "QCF_y"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Club Swing
[State -1, Club Swing]
type = ChangeState
value = 212
triggerall = command = "QCB_x"
trigger1 = ctrl
trigger2 = (stateno = 210) && (time> 11) && (movecontact)
trigger3 = (stateno = 240) && (time> 10) && (movecontact)
trigger4 = (stateno = 250) && (time> 10) && (movecontact)

;---------------------------------------------------------------------------
;Club Swing
[State -1, Club Swing]
type = ChangeState
value = 211
triggerall = command = "QCB_y"
trigger1 = ctrl
trigger2 = (stateno = 210) && (time> 11) && (movecontact)
trigger3 = (stateno = 240) && (time> 10) && (movecontact)
trigger4 = (stateno = 250) && (time> 10) && (movecontact)

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdback" || command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


;===========================================================================

;---------------------------------------------------------------------------
;Dodge 2
[State -1, Stand Light Punch]
type = ChangeState
value = 7050
triggerall = command != "holdback"
triggerall = command = "z" || command = "c"
trigger1 = statetype = S
trigger1 = ctrl
; ;------------------------------------------------------------------------------
;Dodge 2
[State -1, Stand Light Punch]
type = ChangeState
value = 7100
triggerall = command = "z" || command = "c"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact)
;---------------------------------------------------------------------------
;Stand 2Light Punches
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 202
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = (stateno = 202) && time > 6
;---------------------------------------------------------------------------
;Stand Strongest Punch1
;立ち強パンチ
[State -1, Stand Strongest Punch1]
type = ChangeState
value = 220
triggerall = command = "lizard"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
trigger4 = (stateno = 202) && time > 6

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = p2bodydist X >25
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = (stateno = 202) && time > 6
;--------------------------------------------------------
;Standing Strongest Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = p2bodydist X <25
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = (stateno = 202) && time > 6
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact)
trigger3 = (stateno = 200) && (movecontact)

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
; ;Crouching Strongest Punch
; ;しゃがみ強パンチ
; [State -1, Crouching Strong Punch]
; type = ChangeState
; value = 420
; triggerall = command = "z"
; triggerall = command = "holddown"
; trigger1 = statetype = C
; trigger1 = ctrl
; trigger2 = (stateno = 400) || (stateno = 430)
; trigger2 = (time > 9) || (movecontact && time > 5)


;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 440
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
; ;Crouching Strongest Kick
; ;しゃがみ強キック
; [State -1, Crouching Strong Kick]
; type = ChangeState
; value = 450
; triggerall = command = "c"
; triggerall = command = "holddown"
; trigger1 = statetype = C
; trigger1 = ctrl
; trigger2 = (stateno = 400) || (stateno = 430)
; trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 640
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
; ;Jump Strong feet
; ;空中強キック
; [State -1, Jump Strong Kick]
; type = ChangeState
; value = 650
; triggerall = command = "c"
; trigger1 = statetype = A
; trigger1 = ctrl
; trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
; trigger2 = movecontact
; trigger3 = stateno = 1350 ;Air blocking
; 



