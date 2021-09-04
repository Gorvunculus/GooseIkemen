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
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
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
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
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
; 

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
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-|-AI-|--------------------------------------------------------------------
[Command]
name = "cpu1"
command = a, x, F, D, a, a, D
time = 1

[Command]
name = "cpu2"
command = a, a, a, a, a, a, b
time = 1

[Command]
name = "cpu3"
command = a, a, b, D, F, b, x
time = 1

[Command]
name = "cpu4"
command = y, a, F, b, B, y, a
time = 1

[Command]
name = "cpu5"
command = a, b, x, y, y, b, b
time = 1

[Command]
name = "cpu6"
command = b, y, y, F, b, B, B
time = 1

[Command]
name = "cpu7"
command = a, y, F, a, x, a, F, b
time = 1

[Command]
name = "cpu8"
command = a, a, b, y, x, B, x
time = 1

[Command]
name = "cpu9"
command = x, x, a, F, F, b, D
time = 1

[Command]
name = "cpu10"
command = x, x, a, F, y, a, a, F
time = 1

[Command]
name = "cpu11"
command = a, b, a, x, a, y, a
time = 1

[Command]
name = "cpu12"
command = b, y, a, F, y, a, x
time = 1

[Command]
name = "cpu13"
command = x, a, y, y, x, B, B
time = 1

[Command]
name = "cpu14"
command = a, F, F, x, B, F, x
time = 1

[Command]
name = "cpu15"
command = y, x, b, b, a, x, y
time = 1

;-| Super Motions |--------------------------------------------------------
[command]
name = "Blockade"
command = D, DF, F, a+b
time = 15

[command]
name = "BadBallsofFury"
command = D, DF, F, x+y
time = 15

[command]
name = "Combohoe"
command = D, DB, B, a+b
time = 15

[command]
name = "Disc(o)"
command = D, DB, B, x+y
time = 15

;-| Special Motions |------------------------------------------------------
[command]
name = "HoponPop"
command = D, DF, F, a
time = 15

[command]
name = "Disked"
command = D, DF, F, b
time = 15

[command]
name = "Blocked"
command = D, DF, F, c
time = 15

[command]
name = "BlockTower"
command = D, DF, F, x
time = 15

[command]
name = "BadBall"
command = D, DF, F, y
time = 15

[command]
name = "Whack-nology"
command = D, DF, F, z
time = 15

;-| Helpers |--------------------------------------------------------
[command]
name = "Coily"
command = D, DB, B, a
time = 15

[command]
name = "Coily"
command = D, DB, B, b
time = 15

[command]
name = "Coily"
command = D, DB, B, c
time = 15

[command]
name = "UggWrongWay"
command = D, DB, B, x
time = 15

[command]
name = "UggWrongWay"
command = D, DB, B, y
time = 15

[command]
name = "UggWrongWay"
command = D, DB, B, z
time = 15

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
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
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
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
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
;-|-AI-|--------------------------------------------------------------------
[State -1, AI Trigger]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
v = 59
value = 1

;--|-AI Defense-|-----------------------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 130

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 131

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 132

;-|-AI Combo Attempt-|----------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 20) && (random <= 750)
value = 200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 20) && (random <= 750)
value = 210

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 20) && (random <= 750)
value = 220

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 7) && (random <= 750)
value = 230

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 7) && (random <= 750)
value = 240

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 20) && (random <= 750)
value = 250

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 400

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 410

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 20) && (random <= 750)
value = 420

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 430

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 440

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 20) && (random <= 750)
value = 450

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 600

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 610

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 620

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 630

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 640

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 650

;-|-AI Special Attempt-|---------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [70,100])
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [70,100])
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 1010

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [70,100])
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [70,100])
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 1110

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [70,100])
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(1202) = 0
value = 1200

type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [70,100])
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
triggerall = numhelper(1202) = 0
value = 1210

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [70,100])
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(1301) = 0
value = 1300

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [70,100])
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
triggerall = numhelper(1301) = 0
value = 1310

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [70,100])
trigger1 = (numproj = 0) && (p2bodydist x <= 50) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1400

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [70,100])
trigger1 = (numproj = 0) && (p2bodydist x <= 50) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 1410

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [70,100])
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1500

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [70,100])
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 1510

;-|-AI Helper Attempt|---------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [70,100])
trigger1 = (p2bodydist x <= 25) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(2001) = 0
triggerall = numhelper(2101) = 0
triggerall = numhelper(2102) = 0
value = 2000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [70,100])
trigger1 = (p2bodydist x <= 25) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(2001) = 0
triggerall = numhelper(2101) = 0
triggerall = numhelper(2102) = 0
value = 2100

;-|-AI Hyper Attempt|---------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0) && (random = [0,300])
triggerall = numhelper(3001) = 0
value = 3000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0) && (random = [0,300])
value = 3100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 2000) && (numproj = 0) && (random = [0,300])
value = 3200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 3000) && (numproj = 0) && (random = [0,300])
value = 3300

;===========================================================================
;---------------------------------------------------------------------------
;Blockade
[State -1, Blockade]
type = ChangeState
value = 3000
triggerall = numhelper(3001) = 0
triggerall = Power >= 1000
triggerall = command = "Blockade"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Bad Balls of Fury
[State -1, Bad Balls of Fury]
type = ChangeState
value = 3100
triggerall = Power >= 1000
triggerall = command = "BadBallsofFury"
triggerall = statetype != A
trigger1 = numproj = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;Combo Hoe
[State -1, Combo Hoe]
type = ChangeState
value = 3200
triggerall = Power >= 2000
triggerall = command = "Combohoe"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Disc(o)
[State -1, Disc(o)]
type = ChangeState
value = 3300
triggerall = Power >= 3000
triggerall = command = "Disc(o)"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Coily
[State -1, Coily]
type = ChangeState
value = 2000
triggerall = numhelper(2001) = 0
triggerall = command = "Coily"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Ugg! Wrong Way, Dagnabbit!
[State -1, Ugg! Wrong Way, Dagnabbit!]
type = ChangeState
value = 2100
triggerall = numhelper(2101) = 0
triggerall = numhelper(2102) = 0
triggerall = command = "UggWrongWay"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Hop on Pop
[State -1, Hop on Pop]
type = ChangeState
value = 1000
triggerall = command = "HoponPop"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Hop on Pop Air
[State -1, Hop on Pop Air]
type = ChangeState
value = 1010
triggerall = command = "HoponPop"
trigger1 = (statetype = a) && ctrl

;---------------------------------------------------------------------------
;Disked
[State -1, Disked]
type = ChangeState
value = 1100
triggerall = command = "Disked"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Disked Air
[State -1, Disked Air]
type = ChangeState
value = 1110
triggerall = command = "Disked"
trigger1 = (statetype = a) && ctrl

;---------------------------------------------------------------------------
;Blocked
[State -1, Blocked]
type = ChangeState
value = 1200
triggerall = numhelper(1202) = 0
triggerall = command = "Blocked"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Blocked Air
[State -1, Blocked Air]
type = ChangeState
value = 1210
triggerall = numhelper(1202) = 0
triggerall = command = "Blocked"
trigger1 = (statetype = a) && ctrl

;---------------------------------------------------------------------------
;Block Tower
[State -1, Block Tower]
type = ChangeState
value = 1300
triggerall = numhelper(1301) = 0
triggerall = command = "BlockTower"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Block Tower Air
[State -1, Block Tower Air]
type = ChangeState
value = 1310
triggerall = numhelper(1301) = 0
triggerall = command = "BlockTower"
trigger1 = (statetype = a) && ctrl

;---------------------------------------------------------------------------
;Bad Ball
[State -1, Bad Ball]
type = ChangeState
value = 1400
triggerall = command = "BadBall"
trigger1 = (statetype = s) && ctrl
trigger1 = numproj = 0

;---------------------------------------------------------------------------
;Bad Ball Air
[State -1, Bad Ball Air]
type = ChangeState
value = 1410
triggerall = command = "BadBall"
trigger1 = (statetype = a) && ctrl
trigger1 = numproj = 0

;---------------------------------------------------------------------------
;Whack-nology
[State -1, Whack-nology]
type = ChangeState
value = 1500
triggerall = command = "Whack-nology"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Whack-nology Air
[State -1, Whack-nology Air]
type = ChangeState
value = 1510
triggerall = command = "Whack-nology"
trigger1 = (statetype = a) && ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 250) && movecontact
trigger7 = (stateno = 400) && movecontact
trigger8 = (stateno = 410) && movecontact
trigger9 = (stateno = 430) && movecontact
trigger10 = (stateno = 440) && movecontact
trigger11 = (stateno = 450) && movecontact

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 250) && movecontact
trigger7 = (stateno = 400) && movecontact
trigger8 = (stateno = 410) && movecontact
trigger9 = (stateno = 430) && movecontact
trigger10 = (stateno = 440) && movecontact
trigger11 = (stateno = 450) && movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 250) && movecontact
trigger7 = (stateno = 400) && movecontact
trigger8 = (stateno = 410) && movecontact
trigger9 = (stateno = 430) && movecontact
trigger10 = (stateno = 440) && movecontact
trigger11 = (stateno = 450) && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 250) && movecontact
trigger7 = (stateno = 400) && movecontact
trigger8 = (stateno = 410) && movecontact
trigger9 = (stateno = 430) && movecontact
trigger10 = (stateno = 440) && movecontact
trigger11 = (stateno = 450) && movecontact

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 250) && movecontact
trigger7 = (stateno = 400) && movecontact
trigger8 = (stateno = 410) && movecontact
trigger9 = (stateno = 430) && movecontact
trigger10 = (stateno = 440) && movecontact
trigger11 = (stateno = 450) && movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 250) && movecontact
trigger7 = (stateno = 400) && movecontact
trigger8 = (stateno = 410) && movecontact
trigger9 = (stateno = 430) && movecontact
trigger10 = (stateno = 440) && movecontact
trigger11 = (stateno = 450) && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 250) && movecontact
trigger7 = (stateno = 400) && movecontact
trigger8 = (stateno = 410) && movecontact
trigger9 = (stateno = 430) && movecontact
trigger10 = (stateno = 440) && movecontact
trigger11 = (stateno = 450) && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 250) && movecontact
trigger7 = (stateno = 400) && movecontact
trigger8 = (stateno = 410) && movecontact
trigger9 = (stateno = 430) && movecontact
trigger10 = (stateno = 440) && movecontact
trigger11 = (stateno = 450) && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 250) && movecontact
trigger7 = (stateno = 400) && movecontact
trigger8 = (stateno = 410) && movecontact
trigger9 = (stateno = 430) && movecontact
trigger10 = (stateno = 440) && movecontact
trigger11 = (stateno = 450) && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 250) && movecontact
trigger7 = (stateno = 400) && movecontact
trigger8 = (stateno = 410) && movecontact
trigger9 = (stateno = 430) && movecontact
trigger10 = (stateno = 440) && movecontact
trigger11 = (stateno = 450) && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 250) && movecontact
trigger7 = (stateno = 400) && movecontact
trigger8 = (stateno = 410) && movecontact
trigger9 = (stateno = 430) && movecontact
trigger10 = (stateno = 440) && movecontact
trigger11 = (stateno = 450) && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 250) && movecontact
trigger7 = (stateno = 400) && movecontact
trigger8 = (stateno = 410) && movecontact
trigger9 = (stateno = 430) && movecontact
trigger10 = (stateno = 440) && movecontact
trigger11 = (stateno = 450) && movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 620) && movecontact
trigger5 = (stateno = 630) && movecontact
trigger6 = (stateno = 640) && movecontact
trigger7 = (stateno = 650) && movecontact

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 620) && movecontact
trigger5 = (stateno = 630) && movecontact
trigger6 = (stateno = 640) && movecontact
trigger7 = (stateno = 650) && movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = stateno != 630
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 620) && movecontact
trigger5 = (stateno = 630) && movecontact
trigger6 = (stateno = 640) && movecontact
trigger7 = (stateno = 650) && movecontact

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = stateno != 640
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 620) && movecontact
trigger5 = (stateno = 630) && movecontact
trigger6 = (stateno = 640) && movecontact
trigger7 = (stateno = 650) && movecontact

;---------------------------------------------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
