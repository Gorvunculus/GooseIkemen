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



;-|FATAL MOVES|------------------------------------------------------------
[Command]
name = "GIANT METEOR"
command = ~D, F, s
time = 10
;-| Super Motions |--------------------------------------------------------
[Command]
name = "Flaming Aura"
command = ~D, F, b
time = 10

[Command]
name = "Devastating Flame Control"
command = ~D, F, a
time = 10

[Command]
name = "Hyper Mystic Illusion"
command = ~D, F, c
time = 10

[Command]
name = "Summon Goomba Army"
command = ~D, B, a+b
time = 10

[Command]
name = "Time-Freeze"
command = ~D, B, b+c
time = 10




;-| Special Motions |------------------------------------------------------
[Command]
name = "Super Jump"     ;Required (do not remove)
command = ~D, U
time = 10

[command]
name = "PowerCharge"
command = s

[command]
name = "Electric attack"
command = /D, c

[Command]
name = "Helicopter 1"
command = ~F, F, x
time = 10

[Command]
name = "Helicopter 2"
command = ~F, F, y
time = 10

[Command]
name = "Helicopter 3"
command = ~F, F, z
time = 10

[Command]
name = "Helicopter 1 (AIR)"
command = ~F, F, x
time = 10

[Command]
name = "Helicopter 2 (AIR)"
command = ~F, F, y
time = 10

[Command]
name = "Helicopter 3 (AIR)"
command = ~F, F, z
time = 10

[Command]
name = "Fireball"
command = ~D, F, x
time = 10

[Command]
name = "Fireball EX"
command = ~D, D, x+y
time = 10

[Command]
name = "Fireball EX (AIR)"
command = ~D, D, x+y
time = 10

[Command]
name = "Fireball (AIR)"
command = ~D, F, x
time = 10

[Command]
name = "Flame Pillar"
command = ~D, F, y
time = 10

[Command]
name = "Potion of healing"
command = ~D, F, z
time = 10

[Command]
name = "Potion of healing (AIR)"
command = ~D, F, z
time = 10

[Command]
name = "Potion of Poison"
command = ~D, B, z
time = 10

[Command]
name = "Potion of Poison (AIR)"
command = ~D, B, z
time = 10

[Command]
name = "Lightning wand"
command = ~D, B, x
time = 10

[Command]
name = "Fire Pillar 2"
command = ~D, B, b
time = 10

[Command]
name = "Rolling"
command = ~D, B, y
time = 10

[Command]
name = "Teleport"
command = x+a
time = 10

[command]
name = "Parry"
command = F
;-|Assists|----------------------------------------------------------------
[Command]
name = "Assist Wario"
command = ~D, B, a
time = 10

[Command]
name = "Assist Waluigi"
command = ~D, B, c
time = 10

[Command]
name = "Assist DK Barrel"
command = y+b
time = 10
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
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1



[Command]
name = "down_a"
command = /$D,a
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

[Command]
name = "start"
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
name = "holdy"
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
name = "holdb"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "holds"
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
;var(59) = AI variable
;var(58) = Difficulty variable

;===========================================================================
;-|-AI-|--------------------------------------------------------------------
[State -1, AI Activation]
type = VarSet
triggerall = AILevel > 2
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Random <= ((AILevel-2)*100)
v = 59
value = 1

[State -1, AI Deactivation]
type = VarSet
triggerall = AIlevel < 7
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*100)
trigger2 = roundstate != 2
v = 59
value = 0

;--|-AI Combos-|------------------------------------------------------------
;Start Standing Chain Combo
[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 200) && movecontact
value = 230

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 230) && movecontact
value = 210

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 210) && movecontact
value = 240

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 240) && movecontact
value = 220

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random > 900)
value = 200
;End Standing Chain

;---------------------------------------------------------------------------
;Start Crouching Chain
[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 400) && movecontact
value = 430

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 430) && movecontact
value = 410

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 410) && movecontact
value = 440

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall =(roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 440) && movecontact
value = 420

[State -1, Ready to Launch]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 420) && movecontact
value = 2000

[State -1, Alternate start for Easy AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 400) && movecontact
trigger2 = p2stateno != 7600
trigger2 = (Ctrl) && (statetype = S)
trigger2 = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger2 = (p2bodydist x <= 40) && (random < 50)
value = 430

[State -1, Combo start for Med/Hard AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random < 100)
value = 400
;End Crouching Chain

;---------------------------------------------------------------------------
;Start Air Chain

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = numhelper(661) = 0
trigger1 = (stateno = 610) && (power > 600) && movecontact && (random = [0,200])
value = 660

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 660) &&  movecontact
value = 600

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 600) && movecontact
value = 630

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 630) && movecontact
value = 610

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 610) && movecontact
value = 640

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 640) && movecontact
value = 650

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 650) && (time = 25)
value = 620

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = prevstateno != 600
trigger1 = (p2bodydist x <= 25) && (random <= 150)
trigger2 = (p2bodydist x <= 25) && (random <= 750) && (stateno = [7000,7100])
value = 600
;End Air Chain


;-|-AI Special Attempt-|---------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
triggerall = numhelper(721) = 0
trigger1 = (p2bodydist X <= 265) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 700

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
triggerall = numhelper(721) = 0
trigger1 = (p2bodydist X <= 265) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
value = 705

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
triggerall = numhelper(721) = 0
trigger1 = (p2bodydist X <= 265) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 710

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = A) && (random = [0,500])
trigger1 = (p2bodydist X <= 150) && (prevstateno != 5120) && (p2movetype != H) && (Statetype = S)
triggerall = numhelper(716) = 0
triggerall = numhelper(731) = 0
value = 715

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
triggerall = numhelper(721) = 0
trigger1 = (p2bodydist X <= 265) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 720

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
triggerall = numhelper(721) = 0
trigger1 = (p2bodydist X <= 265) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 725


[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist X <= 270) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
triggerall = numhelper(716) = 0
triggerall = numhelper(731) = 0
value = 730

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
triggerall = numhelper(721) = 0
trigger1 = (p2bodydist X <= 265) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 740


[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
triggerall = numhelper(721) = 0
trigger1 = (p2bodydist X <= 265) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 745

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist X <= 265) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 760

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist X <= 265) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 762


[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [70,300])
trigger1 = (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
triggerall = numhelper(2051) = 0
triggerall = numhelper(3051) = 0
triggerall = numhelper(4051) = 0
value = 2050

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [70,300])
trigger1 = (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
triggerall = numhelper(2051) = 0
triggerall = numhelper(3051) = 0
triggerall = numhelper(4051) = 0
value = 3050

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [70,300])
trigger1 = (power > 500) && (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
triggerall = numhelper(2051) = 0
triggerall = numhelper(3051) = 0
triggerall = numhelper(4051) = 0
value = 4050

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 40)
value = 120


[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 40)
value = 121

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 40)
value = 122

[State -1, AssistAI]
type = ChangeState
value = 720
triggerall = numhelper(721) = 0
triggerall = var (5)
triggerall = !win
triggerall = P2BodyDist X >= 100
triggerall = P2BodyDist Y >= -10
triggerall = statetype = S
trigger1 =  ctrl
trigger1 =  random <= 10


;-|-AI Hyper Attempt|---------------------------------------------
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 220) && (power > 2000) && (movecontact) && (random = [0,500])
value = 1000

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 220) && (power > 1000) && (movecontact) && (random = [0,500])
value = 1050

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 220) && (power > 3000) && (movecontact) && (random = [0,500])
value = 1060

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 220) && (power > 4000) && (movecontact) && (random = [0,500])
value = 1070

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != S)
trigger1 = (power > 4500) && (random = [5,300]) && (statetype != S)
value = 6050
;---------------------------------------------------------------------------
;Assist Wario
[State -1, Assist Wario]
type = ChangeState
value = 2050
triggerall = numhelper(2051) = 0
triggerall = numhelper(3051) = 0
triggerall = numhelper(4051) = 0
triggerall = command = "Assist Wario"
triggerall = p3name != "Wario"
triggerall = enemy,name != "Wario"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Assist Waluigi
[State -1, Assist Waluigi]
type = ChangeState
value = 3050
triggerall = numhelper(2051) = 0
triggerall = numhelper(3051) = 0
triggerall = numhelper(4051) = 0
triggerall = command = "Assist Waluigi"
triggerall = p3name != "Waluigi"
triggerall = enemy,name != "Waluigi"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Assist DK Barrel
[State -1, Assist DK Barrel]
type = ChangeState
value = 4050
triggerall = numhelper(2051) = 0
triggerall = numhelper(3051) = 0
triggerall = numhelper(4051) = 0
triggerall = command = "Assist DK Barrel"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;--------------------------------------------
[State -1, Guard]
type = ChangeState
value = 120
triggerall = movetype !=H
triggerall = roundstate = 2
triggerall = stateno!=[120,155]
triggerall=AILevel>0
triggerall = (statetype!=A)||(statetype=A && p2bodydist x >5)
triggerall =(StateNo !=[200,3999])&&(StateNo != 105)
Triggerall =  Random < (113*AILevel)
triggerall =InGuardDist || enemynear,hitdefattr=SCA,NP,SP,HP || enemynear,hitdefattr = SCA,AA
triggerall =((EnemyNear, movetype=A&& enemynear,hitdefattr!=SCA,AA)||( enemynear,hitdefattr=SCA,NP,SP,HP || enemynear,hitdefattr = SCA,AA))|| enemy,numproj >0
trigger1 = ctrl ||stateno=20




;Recover
[State -1]
type = ChangeState
value = 5210
triggerall = canrecover = 1 && roundstate =2
triggerall = Var(57) = 1
triggerall = random < 999
triggerall = alive
triggerall = time > 10
trigger1 = stateno = 5050

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

; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
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
;Flaming Aura
[State -1, Flaming Aura]
type = ChangeState
value = 1000
triggerall = command = "Flaming Aura"
trigger1 = (statetype = s) && ctrl
triggerall = power>=2000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Devastating Flame Control
[State -1, Devastating Flame Control]
type = ChangeState
value = 1050
triggerall = command = "Devastating Flame Control"
trigger1 = (statetype = s) && ctrl
triggerall = power>=1000
triggerall = numhelper(7256) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Hyper Mystic Illusion
[State -1, Hyper Mystic Illusion]
type = ChangeState
value = 1060
triggerall = command = "Hyper Mystic Illusion"
trigger1 = (statetype = s) && ctrl
triggerall = power>=3000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Time-Freeze
[State -1, Time-Freeze]
type = ChangeState
value = 1070
triggerall = command = "Time-Freeze"
trigger1 = (statetype = s) && ctrl
triggerall = power>=4000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Summon Goomba Army
[State -1, Summon Goomba Army]
type = ChangeState
value = 6050
triggerall = command = "Summon Goomba Army"
triggerall = numhelper(6051) = 0
trigger1 = (statetype = s) && ctrl
triggerall = power>= 4500
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;GIANT METEOR
[State -1, GIANT METEOR]
type = ChangeState
value = 3300
triggerall = command = "GIANT METEOR"
triggerall = power>=5000
triggerall = life<=250
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact

;---------------------------------------------------------------------------
;Fireball
[State -1, Fireball]
type = ChangeState
value = 700
triggerall = command = "Fireball"
trigger1 = (statetype = s) && ctrl
triggerall = numproj = 0
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Fireball EX
[State -1, Fireball EX]
type = ChangeState
value = 701
triggerall = power >= 800
triggerall = command = "Fireball EX"
triggerall = numproj = 0
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Fireball EX (AIR)
[State -1, Fireball EX (AIR)]
type = ChangeState
value = 702
triggerall = power >= 800
triggerall = command = "Fireball EX (AIR)"
triggerall = numproj = 0
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Fireball (AIR)
[State -1, Fireball]
type = ChangeState
value = 705
triggerall = numproj = 0
triggerall = command = "Fireball (AIR)"
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Flame Pillar
[State -1, Flame Pillar]
type = ChangeState
value = 710
triggerall = command = "Flame Pillar"
triggerall = numhelper(711) = 0
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Potion of Healing
[State -1, Potion of Healing]
type = ChangeState
value = 715
triggerall = command = "Potion of healing"
trigger1 = (statetype = s) && ctrl
triggerall = numhelper(716) = 0
triggerall = numhelper(731) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Potion of Healing (AIR)
[State -1, Potion of Healing (AIR)]
type = ChangeState
value = 727
triggerall = command = "Potion of healing (AIR)"
trigger1 = (statetype = A) && ctrl
triggerall = numhelper(716) = 0
triggerall = numhelper(731) = 0
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Potion of Poison
[State -1, Potion of Poison]
type = ChangeState
value = 730
triggerall = command = "Potion of Poison"
trigger1 = (statetype = s) && ctrl
triggerall = numhelper(716) = 0
triggerall = numhelper(731) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Potion of Poison (AIR)
[State -1, Potion of Poison (AIR)]
type = ChangeState
value = 735
triggerall = command = "Potion of Poison (AIR)"
trigger1 = (statetype = A) && ctrl
triggerall = numhelper(716) = 0
triggerall = numhelper(731) = 0
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Lightning wand
[State -1, Lightning wand]
type = ChangeState
value = 720
triggerall = command = "Lightning wand"
trigger1 = (statetype = s) && ctrl
triggerall = numhelper(721) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Rolling
[State -1, Rolling]
type = ChangeState
value = 725
triggerall = command = "Rolling"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Teleport
[State -1, Teleport]
type = ChangeState
value = 740
triggerall = command = "Teleport"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Fire Pillar 2
[State -1, Fire Pillar 2]
type = ChangeState
value = 745
triggerall = command = "Fire Pillar 2"
trigger1 = (statetype = s) && ctrl
triggerall = numhelper(7255) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Helicopter 1
[State -1, Helicopter 1]
type = ChangeState
value = 760
triggerall = command = "Helicopter 1"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Helicopter 2
[State -1, Helicopter 2]
type = ChangeState
value = 760
triggerall = command = "Helicopter 2"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Helicopter 3
[State -1, Helicopter 3]
type = ChangeState
value = 760
triggerall = command = "Helicopter 3"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

[State -1, Helicopter 1 (AIR)]
type = ChangeState
value = 762
triggerall = command = "Helicopter 1 (AIR)"
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Helicopter 2 (AIR)
[State -1, Helicopter 2 (AIR)]
type = ChangeState
value = 762
triggerall = command = "Helicopter 2 (AIR)"
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

;Helicopter 3 (AIR)
[State -1, Helicopter 3 (AIR)]
type = ChangeState
value = 762
triggerall = command = "Helicopter 3 (AIR)"
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 250 && movecontact

[State -1, Parry]
type=hitoverride
triggerall = var(59)<1&&roundstate=2&&statetype=S
triggerall=command="Parry"
trigger1=ctrl||stateno=751
trigger1=var(21):=1
trigger2=(stateno=[150,153])
trigger2=var(28):=-1
attr=SA,AA,AP
stateno=751
slot=0
time=ifelse((stateno=[150,153]),4,8)
;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 2000
trigger1 = Command = "Super Jump"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 420
trigger2 = (movecontact) && (command = "holdup")

;---------------------------------------------------------------------------
;Power Charge
[State -1, Power Charge]
type = ChangeState
value = 1700
triggerall = command = "holds"
triggerall = power < 5000
triggerall = !var(58)
triggerall = Statetype != A
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
trigger2 = stateno = 230 && movecontact && time >=2
trigger3 = stateno = 210 && movecontact && time >=2
trigger4 = stateno = 240 && movecontact && time >=2
trigger5 = stateno = 400 && movecontact && time >=2
trigger6 = stateno = 430 && movecontact && time >=2
trigger7 = stateno = 410 && movecontact && time >=2
trigger8 = stateno = 440 && movecontact && time >=2


;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2
trigger3 = stateno = 230 && movecontact && time >=2
trigger4 = stateno = 240 && movecontact && time >=2
trigger5 = stateno = 400 && movecontact && time >=2
trigger6 = stateno = 430 && movecontact && time >=2
trigger7 = stateno = 410 && movecontact && time >=2
trigger8 = stateno = 440 && movecontact && time >=2
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2
trigger3 = stateno = 230 && movecontact && time >=2
trigger4 = stateno = 210 && movecontact && time >=2
trigger5 = stateno = 240 && movecontact && time >=2
trigger6 = stateno = 400 && movecontact && time >=2
trigger7 = stateno = 430 && movecontact && time >=2
trigger8 = stateno = 410 && movecontact && time >=2
trigger9 = stateno = 440 && movecontact && time >=2
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2
trigger3 = stateno = 210 && movecontact && time >=2
trigger4 = stateno = 240 && movecontact && time >=2
trigger5 = stateno = 400 && movecontact && time >=2
trigger6 = stateno = 430 && movecontact && time >=2
trigger7 = stateno = 410 && movecontact && time >=2
trigger8 = stateno = 440 && movecontact && time >=2
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2
trigger3 = stateno = 230 && movecontact && time >=2
trigger4 = stateno = 210 && movecontact && time >=2
trigger5 = stateno = 400 && movecontact && time >=2
trigger6 = stateno = 430 && movecontact && time >=2
trigger7 = stateno = 410 && movecontact && time >=2
trigger8 = stateno = 440 && movecontact && time >=2
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time >=2
trigger3 = stateno = 230 && movecontact && time >=2
trigger4 = stateno = 210 && movecontact && time >=2
trigger5 = stateno = 400 && movecontact && time >=2
trigger6 = stateno = 430 && movecontact && time >=2
trigger7 = stateno = 410 && movecontact && time >=2
trigger8 = stateno = 440 && movecontact && time >=2
trigger9 = stateno = 240 && movecontact && time >=2
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && movecontact && time >=5
trigger3 = stateno = 410 && movecontact && time >=5
trigger4 = stateno = 440 && movecontact && time >=5
trigger5 = stateno = 420 && movecontact && time >=5
trigger6 = stateno = 450 && movecontact && time >=5
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && movecontact && time >=5
trigger3 = stateno = 400 && movecontact && time >=5
trigger4 = stateno = 440 && movecontact && time >=5
trigger5 = stateno = 420 && movecontact && time >=5
trigger6 = stateno = 450 && movecontact && time >=5
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && movecontact && time >=5
trigger3 = stateno = 400 && movecontact && time >=5
trigger4 = stateno = 440 && movecontact && time >=5
trigger5 = stateno = 410 && movecontact && time >=5
trigger6 = stateno = 450 && movecontact && time >=5
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410 && movecontact && time >=5
trigger3 = stateno = 400 && movecontact && time >=5
trigger4 = stateno = 440 && movecontact && time >=5
trigger5 = stateno = 420 && movecontact && time >=5
trigger6 = stateno = 450 && movecontact && time >=5
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && movecontact && time >=5
trigger3 = stateno = 400 && movecontact && time >=5
trigger4 = stateno = 410 && movecontact && time >=5
trigger5 = stateno = 420 && movecontact && time >=5
trigger6 = stateno = 450 && movecontact && time >=5
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && movecontact && time >=5
trigger3 = stateno = 400 && movecontact && time >=5
trigger4 = stateno = 440 && movecontact && time >=5
trigger5 = stateno = 420 && movecontact && time >=5
trigger6 = stateno = 410 && movecontact && time >=5
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger3 = stateno = 630 && movecontact && time >=2
trigger4 = stateno = 610 && movecontact && time >=2
trigger5 = stateno = 640 && movecontact && time >=2
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >=2
trigger3 = stateno = 630 && movecontact && time >=2
trigger5 = stateno = 640 && movecontact && time >=2
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >=2
trigger3 = stateno = 630 && movecontact && time >=2
trigger4 = stateno = 610 && movecontact && time >=2
trigger5 = stateno = 640 && movecontact && time >=2
;---------------------------------------------------------------------------
; Electric attack
[State -1, Electric attack]
type = ChangeState
value = 621
triggerall = command = "Electric attack"
trigger1 = (statetype = A) && ctrl
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >=2
trigger4 = stateno = 610 && movecontact && time >=2
trigger5 = stateno = 640 && movecontact && time >=2
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >=2
trigger3 = stateno = 630 && movecontact && time >=2
trigger4 = stateno = 610 && movecontact && time >=2
;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && time >=2
trigger3 = stateno = 630 && movecontact && time >=2
trigger4 = stateno = 610 && movecontact && time >=2
trigger5 = stateno = 640 && movecontact && time >=2
;---------------------------------------------------------------------------
;Air Dash Fwd
[State -1, Air Dash Fwd]
type = ChangeState
value = 110
triggerall = command = "FF"
triggerall = statetype = A
triggerall = StateNo != 110
trigger1 = ctrl

;Air Dash Bwd
[State -1, Air Dash Bwd]
type = ChangeState
value = 115
triggerall = command = "BB"
triggerall = statetype = A
triggerall = StateNo != 115
trigger1 = ctrl


