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

;-| AI Activation Commands |-----------------------------------------------
; From BBH
[Command]
name = "CPU0"
command = U,U,D,D,B,F,B,F,s,s
time = 0

[Command]
name = "CPU1"
command = U,U,D,D,B,F,B,F,a,a
time = 0

[Command]
name = "CPU2"
command = U,U,D,D,B,F,B,F,b,b
time = 0

[Command]
name = "CPU3"
command = U,U,D,D,B,F,B,F,c,c
time = 0

[Command]
name = "CPU4"
command = U,U,D,D,B,F,B,F,x,x
time = 0

[Command]
name = "CPU5"
command = U,U,D,D,B,F,B,F,y,y
time = 0

[Command]
name = "CPU6"
command = U,U,D,D,B,F,B,F,z,z
time = 0

[Command]
name = "CPU7"
command = U,U,D,D,B,F,B,F,a,b
time = 0

[Command]
name = "CPU8"
command = U,U,D,D,B,F,B,F,b,c
time = 0

[Command]
name = "CPU9"
command = U,U,D,D,B,F,B,F,a,c
time = 0

[Command]
name = "CPU10"
command = U,U,D,D,B,F,B,F,x,y
time = 0

[Command]
name = "CPU11"
command = U,U,D,D,B,F,B,F,y,z
time = 0

[Command]
name = "CPU12"
command = U,U,D,D,B,F,B,F,x,z
time = 0

[Command]
name = "CPU13"
command = U,U,D,D,B,F,B,F,a,x
time = 0

[Command]
name = "CPU14"
command = U,U,D,D,B,F,B,F,a,y
time = 0

[Command]
name = "CPU15"
command = U,U,D,D,B,F,B,F,a,z
time = 0


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name = "heal"
command = ~D, DF, F, x+y
time = 15

[Command]
name = "BrownAlbert"
command = ~D, DF, F, a+b

[Command]
name = "Giant"
command = ~F, DF, D, DB, B, a+b
time = 35

[Command]
name = "BuildingSmash"
command = ~D, DB, B, x+y

[Command]
name = "meteor_shower"
command = ~D, DF, F, y+z

[Command]
name = "boom"
command = x+y

[Command]
name = "Seismo"
command = ~D, DB, B, a+b
time = 45

[Command]
name = "sea_shower"
command = ~D, DF, F, b+c
time = 15

[Command]
name = "easysupyz"
command = y+z
time = 15

[Command]
name = "easysupxy"
command = x+y
time = 15

[Command]
name = "easysupbc"
command = b+c
time = 15

[Command]
name = "easysupab"
command = a+b
time = 15

;-| Special Motions |------------------------------------------------------


[Command]
name = "easyz";Required (do not remove)
command = ~z,z
time = 15

[Command]
name = "easyx";Required (do not remove)
command = ~x,x
time = 15

[Command]
name = "easyy";Required (do not remove)
command = ~y,y
time = 15

[Command]
name = "easya";Required (do not remove)
command = ~a,a
time = 15

[Command]
name = "easyb";Required (do not remove)
command = ~b,b
time = 15

[Command]
name = "easyc";Required (do not remove)
command = ~c,c
time = 15

[Command]
name = "Phatsolo"
command = ~D, DF, F, c
time = 15

[Command]
name = "ButSlam"
command = /D , b
time = 45

[Command]
name = "ButSlam"
command = /DB , b
time = 45

[Command]
name = "ButSlam"
command = /DF , b
time = 45

[Command]
name = "Hippo"
command = ~D, DF, F, b

[Command]
name = "Star_Stampede"
command = ~D, DB, B, z

[Command]
name = "Magic"
command = ~D, DF, F, y

[Command]
name = "Magic2"
command = ~D, DF, F, z

[Command]
name = "Pete"
command = ~D, DB, B, c
time = 11

[Command]
name = "Sprout1"
command = ~D ,DB ,B, a

[Command]
name = "teleport1"
command = ~D, D, a

[Command]
name = "teleport2"
command = ~D, D, b

[Command]
name = "teleport3"
command = ~D, D, c

[Command]
name = "Magic_Bean"
command = ~D, DF, F, c

[Command]
name = "Morph"
command = ~D, D, x

[Command]
name = "DivePunchc"
command = ~F, D, DF, F, c

[Command]
name = "Pete2"
command = ~D, DB, B, x

[Command]
name = "Star_Stampede2"
command = ~D, DB, B, y
;time = 45

[Command]
name = "Shock"
command = ~D, DF, F, x

[Command]
name = "Donald"
command = ~F ,D, DF, z
time = 15

[Command]
name = "russel"
command = ~D, DF, F, b
time = 15

[Command]
name = "Rainbow"
command = ~F, D, DF, y
time = 15

[Command]
name = "Slash2"
command = ~D, DB, B, a
time = 15

[Command]
name = "Slash3"
command = ~D, DF, F, b
time = 15

[Command]
name = "Assist"
command = ~D, DF, F, a 
time = 15

[Command]
name = "Assist2"
command = ~D, DF, F, y 
time = 15

[Command]
name = "Assist4"
command = ~D, DB, B, y 
time = 15

[Command]
name = "Assist5"
command = ~D, DB, B, z 
time = 15

[Command]
name = "Assist6"
command = ~F, D, DF, y 
time = 15

[Command]
name = "Phant"
command = ~D, DB, B, y
time = 15

[Command]
name = "Phant2"
command = ~D, DB, B, z
time = 15

[Command]
name = "SuperJumpUp"
command = D, U

[Command]
name = "SuperJumpFwd"
command = D, UF

[Command]
name = "SuperJumpBck"
command = D, UB

[Command]
name = "UFRun"     
command = /UF, y+z

[Command]
name = "UBRun"     
command = /UB, y+z

[Command]
name = "DFRun"     
command = /DF, y+z


[Command]
name = "DBRun"     
command = /DB, y+z

[Command]
name = "FRun"     
command = /F, y+z

[Command]
name = "BRun"     
command = /B, y+z 


[Command]
name = "URun"     
command = /U, y+z

[Command]
name = "DRun"     
command = /D, y+z

[Command]
name = "HoldB"
command = /b

[Command]
name = "HoldC"
command = /c

[Command]
name = "HoldA"
command = /a

[Command]
name = "HoldZ"
command = /z

[Command]
name = "HoldX"
command = /x

[Command]
name = "HoldY"
command = /y

[Command]
name = "HoldZ"
command = /z

[Command]
name = "HoldKICKS"
command = /a+b 

[Command]
name = "Up"
command = U

[Command]
name = "Down"
command = D



;-| Dir + Button |---------------------------------------------------------

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

[Command]
name = "airlaucher"
command = /DF, z
time = 1


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
time = 5

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
;---------------------------------------------------------------------------

;AI Activation
[State -1]
type = null;VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU0"
trigger2 = command = "CPU1"
trigger3 = command = "CPU2"
trigger4 = command = "CPU3"
trigger5 = command = "CPU4"
trigger6 = command = "CPU5"
trigger7 = command = "CPU6"
trigger8 = command = "CPU7"
trigger9 = command = "CPU8"
trigger10 = command = "CPU9"
trigger11 = command = "CPU10"
trigger12 = command = "CPU11"
trigger13 = command = "CPU12"
trigger14 = command = "CPU13"
trigger15 = command = "CPU14"
trigger16 = command = "CPU15"
v = 13
value = 1

;AI Activation
[State -1]
type = VarSet
trigger1 = roundstate = 1
trigger2 = roundstate = 3
trigger3 = roundstate = 4
v = 13
value = 0

;AI Activation
[State -1]
type = VarSet
;triggerall = roundstate = 2
trigger1 = numhelper(9980) = 1;command = "CPU0"
v = 59
value = 1

;AI Activation
[State -1]
type = VarSet
;triggerall = roundstate = 2
trigger1 = numhelper(9981) = 1;command = "CPU0"
v = 59
value = 0





;-------------------------------------
;------------------------------------

;AI Push Block (Thanks to BB Hood!)
[State -1]
type = ChangeState
value = 860
triggerall = var(13) = 1
triggerall = random < 50
trigger1 = stateno = [150,151]

[State -1]
type = ChangeState
value = 870
triggerall = var(13) = 1
triggerall = random < 50
trigger1 = stateno = [152,153]

[State -1]
type = ChangeState
value = 880
triggerall = var(13) = 1
triggerall = random < 50
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

[State 0, ]
type = RemoveExplod
trigger1 = stateno != 1300
ID = 10611
;ignorehitpause = 0
;persistent = 1

[State 0, ]
type = RemoveExplod
trigger1 = stateno != 1300
ID = 10612
;ignorehitpause = 0
;persistent = 1

[State 0, ]
type = RemoveExplod
trigger1 = stateno != 1311
ID = 10613
;ignorehitpause = 0
;persistent = 1

[State 0, ]
type = RemoveExplod
trigger1 = stateno != 1311
ID = 10614
;ignorehitpause = 0
;persistent = 1

;===========================================================================
; Put specials and supers here


;------------------------------------------

[State -1,]
type = ChangeState
value = 4187
triggerall = Command = "meteor_shower"
triggerall = numhelper(662) = 0
triggerall = power >= 1000
triggerall = statetype = S || Statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 420
trigger10 = MoveContact
trigger11 = stateno = 430
trigger11 = MoveContact
trigger12 = stateno = 440
trigger12 = MoveContact
trigger13 = stateno = 450
trigger13 = MoveContact
trigger14 = stateno = 1380
trigger15 = stateno = 1230
trigger16 = stateno = 1356
trigger17 = stateno = 1358
trigger18 = stateno = 1420
trigger19 = stateno = 1340
trigger20 = stateno = 1320
trigger21 = stateno = 1315
trigger22 = stateno = 1310
trigger23 = stateno = 1505
trigger24 = stateno = 1320
trigger25 = stateno = 4209
trigger26 = stateno = 4197
;trigger27 = stateno = 4198
trigger27 = stateno = 4199
;trigger29 = stateno = 4205
;trigger30 = stateno = 4206
;trigger31 = stateno = 4207
trigger28 = stateno = 4208
trigger28 = Anim = 861

[State -1,]
type = ChangeState
value = 4192
triggerall = Command = "sea_shower"
triggerall = numhelper(662) = 0
triggerall = power >= 1000
triggerall = statetype = S || Statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 420
trigger10 = MoveContact
trigger11 = stateno = 430
trigger11 = MoveContact
trigger12 = stateno = 440
trigger12 = MoveContact
trigger13 = stateno = 450
trigger13 = MoveContact
trigger14 = stateno = 1380
trigger15 = stateno = 1230
trigger16 = stateno = 1356
trigger17 = stateno = 1358
trigger18 = stateno = 1420
trigger19 = stateno = 1340
trigger20 = stateno = 1320
trigger21 = stateno = 1315
trigger22 = stateno = 1310
trigger23 = stateno = 1505
trigger24 = stateno = 1320
trigger25 = stateno = 4209
trigger26 = stateno = 4197
;trigger27 = stateno = 4198
trigger27 = stateno = 4199
;trigger29 = stateno = 4205
;trigger30 = stateno = 4206
;trigger31 = stateno = 4207
;trigger32 = stateno = 4208
trigger28 = stateno = 4208
trigger28 = Anim = 861

[State -1, ]
type = ChangeState
value = 4187
triggerall = command = "easysupyz"
triggerall = Var(59) = 1
;triggerall = command !="holdup"
;triggerall = command !="holddown"
;triggerall = command !="holdfwd"
;triggerall = command !="holdback"
triggerall = power >= 1000
triggerall = StateType = S || StateType = C; || StateType = A
triggerall = power >= 1000
triggerall = numhelper(4518) = 0
triggerall = numhelper(4519) = 0
triggerall = numhelper(4520) = 0
triggerall = numhelper(4522) = 0
triggerall = Var(13) = 0
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 420
trigger10 = MoveContact
trigger11 = stateno = 430
trigger11 = MoveContact
trigger12 = stateno = 440
trigger12 = MoveContact
trigger13 = stateno = 450
trigger13 = MoveContact
trigger14 = stateno = 1380
trigger15 = stateno = 1230
trigger16 = stateno = 1356
trigger17 = stateno = 1358
trigger18 = stateno = 1420
trigger19 = stateno = 1340
trigger20 = stateno = 1320
trigger21 = stateno = 1315
trigger22 = stateno = 1310
trigger23 = stateno = 1505
trigger24 = stateno = 1320
trigger25 = stateno = 4209
trigger26 = stateno = 4197
;trigger27 = stateno = 4198
trigger27 = stateno = 4199
;trigger29 = stateno = 4205
;trigger30 = stateno = 4206
;trigger31 = stateno = 4207
;trigger32 = stateno = 4208
trigger28 = stateno = 4208
trigger28 = Anim = 861

[State -1, ]
type = ChangeState
value = 4192
triggerall = command = "easysupbc"
triggerall = Var(59) = 1
;triggerall = command !="holdup"
;triggerall = command !="holddown"
;triggerall = command !="holdfwd"
;triggerall = command !="holdback"
triggerall = power >= 1000
triggerall = StateType = S || StateType = C; || StateType = A
triggerall = power >= 1000
triggerall = numhelper(4518) = 0
triggerall = numhelper(4519) = 0
triggerall = numhelper(4520) = 0
triggerall = numhelper(4522) = 0
triggerall = Var(13) = 0
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 420
trigger10 = MoveContact
trigger11 = stateno = 430
trigger11 = MoveContact
trigger12 = stateno = 440
trigger12 = MoveContact
trigger13 = stateno = 450
trigger13 = MoveContact
trigger14 = stateno = 1380
trigger15 = stateno = 1230
trigger16 = stateno = 1356
trigger17 = stateno = 1358
trigger18 = stateno = 1420
trigger19 = stateno = 1340
trigger20 = stateno = 1320
trigger21 = stateno = 1315
trigger22 = stateno = 1310
trigger23 = stateno = 1505
trigger24 = stateno = 1320
trigger25 = stateno = 4209
trigger26 = stateno = 4197
;trigger27 = stateno = 4198
trigger27 = stateno = 4199
;trigger29 = stateno = 4205
;trigger30 = stateno = 4206
;trigger31 = stateno = 4207
;trigger32 = stateno = 4208
trigger28 = stateno = 4208
trigger28 = Anim = 861

[State -1,]
type = ChangeState
value = 4190
triggerall = Command = "heal"
;triggerall = numhelper(3000) = 0
triggerall = power >= 1000
triggerall = statetype = S || Statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 420
trigger10 = MoveContact
trigger11 = stateno = 430
trigger11 = MoveContact
trigger12 = stateno = 440
trigger12 = MoveContact
trigger13 = stateno = 450
trigger13 = MoveContact
trigger14 = stateno = 1380
trigger15 = stateno = 1230
trigger16 = stateno = 1356
trigger17 = stateno = 1358
trigger18 = stateno = 1420
trigger19 = stateno = 1340
trigger20 = stateno = 1320
trigger21 = stateno = 1315
trigger22 = stateno = 1310
trigger23 = stateno = 1505
trigger24 = stateno = 1320
trigger25 = stateno = 4209
trigger26 = stateno = 4197
;trigger27 = stateno = 4198
trigger27 = stateno = 4199
;trigger29 = stateno = 4205
;trigger30 = stateno = 4206
;trigger31 = stateno = 4207
;trigger32 = stateno = 4208
trigger28 = stateno = 4208
trigger28 = Anim = 861

[State -1,]
type = ChangeState
value = 4190
triggerall = Command = "easysupxy"
triggerall = Var(59) = 1
triggerall = power >= 1000
triggerall = statetype = S || Statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 420
trigger10 = MoveContact
trigger11 = stateno = 430
trigger11 = MoveContact
trigger12 = stateno = 440
trigger12 = MoveContact
trigger13 = stateno = 450
trigger13 = MoveContact
trigger14 = stateno = 1380
trigger15 = stateno = 1230
trigger16 = stateno = 1356
trigger17 = stateno = 1358
trigger18 = stateno = 1420
trigger19 = stateno = 1340
trigger20 = stateno = 1320
trigger21 = stateno = 1315
trigger22 = stateno = 1310
trigger23 = stateno = 1505
trigger24 = stateno = 1320
trigger25 = stateno = 4209
trigger26 = stateno = 4197
;trigger27 = stateno = 4198
trigger27 = stateno = 4199
;trigger29 = stateno = 4205
;trigger30 = stateno = 4206
;trigger31 = stateno = 4207
;trigger32 = stateno = 4208
trigger28 = stateno = 4208
trigger28 = Anim = 861

[State -1,]
type = ChangeState
value = 4200
triggerall = Command = "Giant"
triggerall = numhelper(662) = 0
triggerall = power >= 1000
triggerall = statetype = S || Statetype = C || Statetype = A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 420
trigger10 = MoveContact
trigger11 = stateno = 430
trigger11 = MoveContact
trigger12 = stateno = 440
trigger12 = MoveContact
trigger13 = stateno = 450
trigger13 = MoveContact
trigger14 = stateno = 1380
trigger15 = stateno = 1230
trigger16 = stateno = 1356
trigger17 = stateno = 1358
trigger18 = stateno = 1420
trigger19 = stateno = 1340
trigger20 = stateno = 1320
trigger21 = stateno = 1315
trigger22 = stateno = 1310
trigger23 = MoveContact
trigger24 = stateno = 610
trigger24 = MoveContact
trigger25 = stateno = 620
trigger25 = MoveContact
trigger26 = stateno = 630
trigger26 = MoveContact
trigger27 = stateno = 640
trigger27 = MoveContact
trigger28 = stateno = 650
trigger28 = MoveContact
trigger29 = stateno = 1500
trigger30 = stateno = 1505
trigger31 = stateno = 1320
trigger32 = stateno = 4209
trigger33 = stateno = 4197
trigger34 = stateno = 4198
trigger35 = stateno = 4199
trigger36 = stateno = 4205
trigger37 = stateno = 4206
trigger38 = stateno = 4207
trigger39 = stateno = 4208

[State -1,]
type = ChangeState
value = 4200
triggerall = Command = "easysupab"
triggerall = Var(59) = 1
triggerall = numhelper(662) = 0
triggerall = power >= 1000
triggerall = statetype = S || Statetype = C || Statetype = A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 420
trigger10 = MoveContact
trigger11 = stateno = 430
trigger11 = MoveContact
trigger12 = stateno = 440
trigger12 = MoveContact
trigger13 = stateno = 450
trigger13 = MoveContact
trigger14 = stateno = 1380
trigger15 = stateno = 1230
trigger16 = stateno = 1356
trigger17 = stateno = 1358
trigger18 = stateno = 1420
trigger19 = stateno = 1340
trigger20 = stateno = 1320
trigger21 = stateno = 1315
trigger22 = stateno = 1310
trigger23 = MoveContact
trigger24 = stateno = 610
trigger24 = MoveContact
trigger25 = stateno = 620
trigger25 = MoveContact
trigger26 = stateno = 630
trigger26 = MoveContact
trigger27 = stateno = 640
trigger27 = MoveContact
trigger28 = stateno = 650
trigger28 = MoveContact
trigger29 = stateno = 1500
trigger30 = stateno = 1505
trigger31 = stateno = 1320
trigger32 = stateno = 4209
trigger33 = stateno = 4197
trigger34 = stateno = 4198
trigger35 = stateno = 4199
trigger36 = stateno = 4205
trigger37 = stateno = 4206
trigger38 = stateno = 4207
trigger39 = stateno = 4208

;-----------------------------------------------

;  RollRecovery
[State -1,]
type = ChangeState
value = 681
;trigger1 = ctrl
triggerall = pos Y >= 0
triggerall = roundstate = 2
triggerall = Alive = 1
triggerall = Life > 0
triggerall = Stateno = 5101 || Stateno = 5110 || Stateno = 5100
trigger1 = command = "holdback"
trigger2 = command = "holdfwd"


; "Fart"
[State -1, ]
type = ChangeState
value = 1310
triggerall = command = "Donald"
triggerall = NumHelper(5001) = 0
triggerall = NumHelper(1311) = 0
;triggerall = numhelper(3033) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C ;|| StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
;trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact
trigger17 = stateno = 5120
trigger18 = stateno = 1270
trigger19 = stateno = 1281
trigger20 = stateno = 4073
trigger21 = stateno = 4057
trigger22 = stateno = 4079
trigger23 = stateno = 4055
trigger24 = stateno = 4165
trigger25 = stateno = 1283

; "Fart"
[State -1, ]
type = ChangeState
value = 4209
triggerall = command = "Rainbow"
triggerall = NumHelper(5001) = 0
triggerall = NumHelper(1311) = 0
;triggerall = numhelper(3033) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C ;|| StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
;trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact
trigger17 = stateno = 5120
trigger18 = stateno = 1270
trigger19 = stateno = 1281
trigger20 = stateno = 4073
trigger21 = stateno = 4057
trigger22 = stateno = 4079
trigger23 = stateno = 4055
trigger24 = stateno = 4165
trigger25 = stateno = 1283

; "Fart"
[State -1, ]
type = ChangeState
value = 4209
triggerall = command = "easyy"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = Var(59) = 1
triggerall = NumHelper(5001) = 0
triggerall = NumHelper(1311) = 0
;triggerall = numhelper(3033) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C ;|| StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact
trigger17 = stateno = 5120
trigger18 = stateno = 1270
trigger19 = stateno = 1281
trigger20 = stateno = 4073
trigger21 = stateno = 4057
trigger22 = stateno = 4079
trigger23 = stateno = 4055
trigger24 = stateno = 4165
trigger25 = stateno = 1283

; "Fart"
[State -1, ]
type = ChangeState
value = 1310
triggerall = command = "easyz"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = Var(59) = 1
triggerall = NumHelper(5001) = 0
triggerall = NumHelper(1311) = 0
;triggerall = numhelper(3033) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C ;|| StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact
trigger17 = stateno = 5120
trigger18 = stateno = 1270
trigger19 = stateno = 1281
trigger20 = stateno = 4073
trigger21 = stateno = 4057
trigger22 = stateno = 4079
trigger23 = stateno = 4055
trigger24 = stateno = 4165
trigger25 = stateno = 1283

; "Fart"
[State -1, ]
type = ChangeState
value = 1420
triggerall = command = "Magic_Bean"
triggerall = NumHelper(1421) = 0
triggerall = NumHelper(1422) = 0
;triggerall = NumHelper(50102) = 0
;triggerall = numhelper(3033) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C || StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
;trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact
trigger17 = stateno = 5120
trigger18 = stateno = 1270
trigger19 = stateno = 1281
trigger20 = stateno = 4073
trigger21 = stateno = 4057
trigger22 = stateno = 4079
trigger23 = stateno = 4055
trigger24 = stateno = 4165
trigger25 = stateno = 1283
trigger26 = stateno = 600
trigger26 = MoveContact
trigger27 = stateno = 610
trigger27 = MoveContact
trigger28 = stateno = 620
;trigger28 = MoveContact
trigger29 = stateno = 630
trigger29 = MoveContact
trigger30 = stateno = 640
trigger30 = MoveContact
trigger31 = stateno = 650
;trigger31 = MoveContact

; "Twister"
[State -1, ]
type = ChangeState
value = 1420
triggerall = command = "easyc";"Bucky"
triggerall = command != "holdback"
triggerall = NumHelper(1421) = 0
triggerall = NumHelper(1422) = 0
triggerall = Var(59) = 1
triggerall = StateType = S || StateType = C || StateType = A
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 250
trigger4 = MoveContact = 0
trigger4 = Time >= 3
trigger4 = P2dist x >= 80
trigger5 = stateno = 420
trigger5 = MoveContact
trigger6 = stateno = 650
trigger6 = MoveContact = 0
trigger6 = Time >= 3
trigger6 = P2dist x >= 80



; "Fart"
[State -1, ]
type = ChangeState
value = 1315
triggerall = command = "Assist"
;triggerall = NumHelper(5002) = 0
;triggerall = NumHelper(5002) = 0
;triggerall = numhelper(3033) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C ;|| StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact = 0
trigger4 = Time >= 2
trigger4 = P2dist x >= 80
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact
trigger17 = stateno = 5120
trigger18 = stateno = 1270
trigger19 = stateno = 1281
trigger20 = stateno = 4073
trigger21 = stateno = 4057
trigger22 = stateno = 4079
trigger23 = stateno = 4055
trigger24 = stateno = 4165
trigger25 = stateno = 1283

; Assist Wimpy
[State -1,]
type = ChangeState
value = 1315
triggerall = command = "easya";"Bucky"
triggerall = Var(59) = 1
triggerall = command != "holdback"
trigger1 = numhelper(1321) = 0
triggerall = statetype = S || Statetype = C
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact = 0
trigger4 = Time >= 3
trigger4 = P2dist x >= 80
;trigger5 = stateno = 420
;trigger5 = MoveContact


; "Sprout"
[State -1, ]
type = ChangeState
value = 1320
triggerall = command = "Sprout1"; || command = "Sprout2"  || command = "Sprout3"
triggerall = numhelper(1321) = 0
triggerall = numhelper(1322) = 0
triggerall = numhelper(1323) = 0
triggerall = numhelper(1324) = 0
triggerall = StateType = S || StateType = C ;|| StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact
trigger17 = stateno = 5120
trigger18 = stateno = 1270
trigger19 = stateno = 1281
trigger20 = stateno = 4073
trigger21 = stateno = 4057
trigger22 = stateno = 4079
trigger23 = stateno = 4055
trigger24 = stateno = 4165
trigger25 = stateno = 1283

; Assist Wimpy
[State -1,]
type = ChangeState
value = 1320
triggerall = command = "easya";"Bucky"
triggerall = Var(59) = 1
triggerall = command = "holdback"
trigger1 = numhelper(1321) = 0
triggerall = statetype = S || Statetype = C
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact = 0
trigger4 = Time >= 3
trigger4 = P2dist x >= 80
;trigger5 = stateno = 420
;trigger5 = MoveContact




; "Sprout"
[State -1, ]
type = ChangeState
value = 1330
triggerall = command = "Pete"
triggerall = numhelper(1334) = 0
triggerall = NumHelper(1351) = 0
triggerall = numhelper(1331) = 0
;triggerall = numhelper(3033) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C ;|| StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact
trigger17 = stateno = 5120
trigger18 = stateno = 1270
trigger19 = stateno = 1281
trigger20 = stateno = 4073
trigger21 = stateno = 4057
trigger22 = stateno = 4079
trigger23 = stateno = 4055
trigger24 = stateno = 4165
trigger25 = stateno = 1283

; "Twister"
[State -1, ]
type = ChangeState
value = 1330
triggerall = command = "easyc";"Bucky"
triggerall = command = "holdback"
triggerall = numhelper(1334) = 0
triggerall = NumHelper(1351) = 0
triggerall = numhelper(1331) = 0
triggerall = Var(59) = 1
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 250
trigger4 = MoveContact = 0
trigger4 = Time >= 3
trigger4 = P2dist x >= 80
trigger5 = stateno = 620
trigger5 = MoveContact
trigger6 = stateno = 650
trigger6 = MoveContact = 0
trigger6 = Time >= 3
trigger6 = P2dist x >= 80



; "Sprout"
[State -1, ]
type = null;ChangeState
value = 1333
triggerall = command = "Pete2"
triggerall = numhelper(1334) = 0
triggerall = NumHelper(1351) = 0
triggerall = numhelper(1331) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C ;|| StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact
trigger17 = stateno = 5120
trigger18 = stateno = 1270
trigger19 = stateno = 1281
trigger20 = stateno = 4073
trigger21 = stateno = 4057
trigger22 = stateno = 4079
trigger23 = stateno = 4055
trigger24 = stateno = 4165
trigger25 = stateno = 1283

; "Sprout"
[State -1, ]
type = ChangeState
value = 1340
triggerall = command = "Magic"
triggerall = numhelper(1340) = 0
triggerall = NumHelper(1341) = 0
triggerall = NumHelper(1342) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C || StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact
trigger17 = stateno = 610
trigger17 = MoveContact
trigger18 = stateno = 620
trigger18 = MoveContact
trigger19 = stateno = 630
trigger19 = MoveContact
trigger20 = stateno = 640
trigger20 = MoveContact
trigger21 = stateno = 650
trigger21 = MoveContact


; "Sprout"
[State -1, ]
type = ChangeState
value = 4196
triggerall = command = "Morph"
;triggerall = numhelper(1340) = 0
;triggerall = NumHelper(1341) = 0
;triggerall = NumHelper(1342) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C || StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact
trigger17 = stateno = 610
trigger17 = MoveContact
trigger18 = stateno = 620
trigger18 = MoveContact
trigger19 = stateno = 630
trigger19 = MoveContact
trigger20 = stateno = 640
trigger20 = MoveContact
trigger21 = stateno = 650
trigger21 = MoveContact



; Up Beam
[State -1,]
type = ChangeState
value = 1340
triggerall = command = "easyy"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = numhelper(1340) = 0
triggerall = NumHelper(1341) = 0
triggerall = NumHelper(1342) = 0
triggerall = Var(59) = 1
trigger1 = statetype = S || Statetype = C || Statetype = A
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 210
trigger4 = MoveContact = 0
trigger4 = Time >= 3
trigger4 = P2dist x >= 80
trigger5 = stateno = 420
trigger5 = MoveContact
trigger6 = stateno = 610
trigger6 = MoveContact = 0
trigger6 = Time >= 3
trigger6 = P2dist x >= 80



; "Sprout"
[State -1, ]
type = ChangeState
value = 1500
triggerall = command = "Magic2"
triggerall = numhelper(1501) = 0
;triggerall = NumHelper(1341) = 0
;triggerall = NumHelper(1342) = 0
;triggerall = NumHelper(1351) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C || StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact
trigger17 = stateno = 610
trigger17 = MoveContact
trigger18 = stateno = 620
trigger18 = MoveContact
trigger19 = stateno = 630
trigger19 = MoveContact
trigger20 = stateno = 640
trigger20 = MoveContact
trigger21 = stateno = 650
trigger21 = MoveContact

; Up Beam
[State -1,]
type = ChangeState
value = 1500
triggerall = numhelper(1501) = 0
triggerall = command = "easyz";"Bucky"
triggerall = Var(59) = 1
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = statetype = S || Statetype = C || Statetype = A
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact = 0
trigger2 = Time >= 5
trigger2 = P2dist x >= 80
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 200
trigger4 = MoveContact = 0
trigger4 = Time >= 3
trigger4 = P2dist x >= 80
trigger5 = stateno = 420
trigger5 = MoveContact
trigger6 = stateno = 620
trigger6 = MoveContact = 0
trigger6 = Time >= 5
trigger6 = P2dist x >= 80

; "Sprout"
[State -1, ]
type = ChangeState
value = 1505
triggerall = command = "Shock"
triggerall = numhelper(1506) = 0
;triggerall = NumHelper(1341) = 0
;triggerall = NumHelper(1342) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C || StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact
trigger17 = stateno = 610
trigger17 = MoveContact
trigger18 = stateno = 620
trigger18 = MoveContact
trigger19 = stateno = 630
trigger19 = MoveContact
trigger20 = stateno = 640
trigger20 = MoveContact
trigger21 = stateno = 650
trigger21 = MoveContact


; "Teleport"
[State -1, ]
type = ChangeState
value = 1505
triggerall = command = "easyx";"Bucky"
triggerall = Var(59) = 1
triggerall = numhelper(1506) = 0
triggerall = StateType = S || StateType = C; || StateType = A
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 200
trigger4 = MoveContact = 0
trigger4 = Time >= 3
trigger4 = P2dist x >= 80
trigger5 = stateno = 620
trigger5 = MoveContact
trigger6 = stateno = 600
trigger6 = MoveContact = 0
trigger6 = Time >= 3
trigger6 = P2dist x >= 80

; "Teleport"
[State -1, ]
type = ChangeState
value = 1505
triggerall = command = "easyx";"Bucky"
triggerall = command = "holdback"
triggerall = Var(59) = 1
triggerall = numhelper(1506) = 0
triggerall = StateType = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact = 0
trigger2 = Time >= 3
trigger2 = P2dist x >= 80


; "Sprout"
[State -1, ]
type = ChangeState
value = 1356
triggerall = command = "Star_Stampede"
;trigger1 = numhelper(1340) = 0
;triggerall = NumHelper(1341) = 0
;triggerall = NumHelper(1342) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C; || StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact
trigger17 = stateno = 5120
trigger18 = stateno = 1270
trigger19 = stateno = 1281
trigger20 = stateno = 4073
trigger21 = stateno = 4057
trigger22 = stateno = 4079
trigger23 = stateno = 4055
trigger24 = stateno = 4165
trigger25 = stateno = 1283

; "Sprout"
[State -1, ]
type = ChangeState
value = 1356
triggerall = command = "easyz"
triggerall = command = "holdback"
triggerall = Var(59) = 1
;trigger1 = numhelper(1340) = 0
;triggerall = NumHelper(1341) = 0
;triggerall = NumHelper(1342) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C; || StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact
trigger17 = stateno = 5120
trigger18 = stateno = 1270
trigger19 = stateno = 1281
trigger20 = stateno = 4073
trigger21 = stateno = 4057
trigger22 = stateno = 4079
trigger23 = stateno = 4055
trigger24 = stateno = 4165
trigger25 = stateno = 1283

; "Sprout"
[State -1, ]
type = ChangeState
value = 1358
triggerall = command = "Star_Stampede2"
;trigger1 = numhelper(1340) = 0
;triggerall = NumHelper(1341) = 0
;triggerall = NumHelper(1342) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C ;|| StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact
trigger17 = stateno = 5120
trigger18 = stateno = 1270
trigger19 = stateno = 1281
trigger20 = stateno = 4073
trigger21 = stateno = 4057
trigger22 = stateno = 4079
trigger23 = stateno = 4055
trigger24 = stateno = 4165
trigger25 = stateno = 1283

; "Sprout"
[State -1, ]
type = ChangeState
value = 1358
triggerall = command = "easyy"
triggerall = command = "holdback"
triggerall = Var(59) = 1
;trigger1 = numhelper(1340) = 0
;triggerall = NumHelper(1341) = 0
;triggerall = NumHelper(1342) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C ;|| StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact = 0
trigger16 = Time >= 7
trigger16 = P2dist x >= 80
trigger17 = stateno = 5120
trigger18 = stateno = 1270
trigger19 = stateno = 1281
trigger20 = stateno = 4073
trigger21 = stateno = 4057
trigger22 = stateno = 4079
trigger23 = stateno = 4055
trigger24 = stateno = 4165
trigger25 = stateno = 1283

; "Sprout"
[State -1, ]
type = ChangeState
value = 1354
triggerall = command = "Hippo"
triggerall = numhelper(1334) = 0
triggerall = NumHelper(1351) = 0
triggerall = numhelper(1331) = 0
;triggerall = NumHelper(5002) = 0
;triggerall = numhelper(3033) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C ;|| StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact
trigger17 = stateno = 5120
trigger18 = stateno = 1270
trigger19 = stateno = 1281
trigger20 = stateno = 4073
trigger21 = stateno = 4057
trigger22 = stateno = 4079
trigger23 = stateno = 4055
trigger24 = stateno = 4165
trigger25 = stateno = 1283


; Assist Bluto
[State -1,]
type = ChangeState
value = 1354
triggerall = command = "easyb";"Bucky"
triggerall = Var(59) = 1
;triggerall = command != "holdfwd"
;triggerall = command != "holdback"
triggerall = numhelper(1334) = 0
triggerall = NumHelper(1351) = 0
triggerall = numhelper(1331) = 0
triggerall = statetype = S || statetype = C
;trigger1 = ctrl
trigger1 = stateno = 220
trigger1 = MoveContact
trigger2 = stateno = 450
trigger2 = MoveContact
trigger3 = stateno = 240
trigger3 = MoveContact = 0
trigger3 = Time >= 3
trigger3 = P2dist x >= 80
;trigger4 = stateno = 640
;trigger4 = MoveContact = 0
;trigger4 = Time >= 3
;trigger4 = P2dist x >= 80
trigger4 = stateno = 420
trigger4 = MoveContact

; Assist Bluto
[State -1,]
type = ChangeState
value = 1354
triggerall = command = "easyb";"Bucky"
triggerall = Var(59) = 1
;triggerall = command != "holdfwd"
;triggerall = command != "holdback"
triggerall = numhelper(1351) = 1
triggerall = numhelper(1355) = 1
triggerall = statetype = S || statetype = C; || statetype = C
;trigger1 = ctrl
trigger1 = stateno = 220
trigger1 = MoveContact
trigger2 = stateno = 450
trigger2 = MoveContact
trigger3 = stateno = 240
trigger3 = MoveContact = 0
trigger3 = Time >= 3
trigger3 = P2dist x >= 80
;trigger4 = stateno = 640
;trigger4 = MoveContact = 0
;trigger4 = Time >= 3
;trigger4 = P2dist x >= 80
trigger4 = stateno = 420
trigger4 = MoveContact

; "Sprout"
[State -1, ]
type = ChangeState
value = 1354
triggerall = command = "Hippo"
triggerall = numhelper(1351) = 1
triggerall = numhelper(1355) = 1
;triggerall = NumHelper(5002) = 0
;triggerall = numhelper(3033) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C ;|| StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact
trigger17 = stateno = 5120
trigger18 = stateno = 1270
trigger19 = stateno = 1281
trigger20 = stateno = 4073
trigger21 = stateno = 4057
trigger22 = stateno = 4079
trigger23 = stateno = 4055
trigger24 = stateno = 4165
trigger25 = stateno = 1283

; "Sprout"
[State -1, ]
type = ChangeState
value = 4000
triggerall = command = "teleport3"
;trigger1 = numhelper(1340) = 0
;triggerall = NumHelper(1341) = 0
;triggerall = NumHelper(1342) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C || StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact

; "Sprout"
[State -1, ]
type = ChangeState
value = 4002
triggerall = command = "teleport1"
;trigger1 = numhelper(1340) = 0
;triggerall = NumHelper(1341) = 0
;triggerall = NumHelper(1342) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C || StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact

; "Sprout"
[State -1, ]
type = ChangeState
value = 4004
triggerall = command = "teleport2"
;trigger1 = numhelper(1340) = 0
;triggerall = NumHelper(1341) = 0
;triggerall = NumHelper(1342) = 0
;triggerall = numhelper(3024) = 0
;triggerall = numhelper(3029) = 0
;triggerall = numhelper(4056) = 0
triggerall = StateType = S || StateType = C || StateType = A
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
;trigger12 = MoveContact
trigger13 = stateno = 420
;trigger13 = MoveContact
trigger14 = stateno = 250
;trigger14 = MoveContact
trigger15 = stateno = 410
trigger15 = MoveContact
trigger16 = stateno = 210
trigger16 = MoveContact


;===========================================================================
;---------------------------------------------------------------------------
;Push Block (standing)  Thanks to BB Hood!
[State -1]
type = ChangeState
value = 860
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [150,151]

;Push Block (crouching)
[State -1]
type = ChangeState
value = 870
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [152,153]

;Push Block (aerial)
[State -1]
type = ChangeState
value = 880
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

;===========================================================================
;---------------------------------------------------------------------------
; Air Dash
[State -1, Air Dash]
type = null;ChangeState
value = 740
triggerall = var(15) = 0
triggerall = stateno != 740
triggerall = PrevStateNo != 740
trigger1 = command = "FF"
trigger1 = StateType = A
trigger1 = ctrl
trigger2 = (command = "a" && command = "b") || (command = "b" && command = "c")
trigger2 = StateType = A
trigger2 = Ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BRun";"y" && command = "z";
;trigger1 = command = "HoldB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = statetype = S
trigger1 = command = "FF"
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = statetype = S
trigger1 = command = "y" && command = "z";"FRun";;
trigger1 = command != "HoldB"
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Superjump Up
[State -1, Superjump Up]
type = ChangeState
value = 690
triggerall = numhelper(652)= 0
triggerall = command = "holdup"
trigger1 = command = "SuperJumpUp"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 420
trigger2 = movecontact
trigger3 = stateno = 450
trigger3 = movecontact
;trigger4 = stateno = 450
;trigger4 = movecontact

;---------------------------------------------------------------------------
; Superjump Fwd
[State -1, Superjump Fwd]
type = ChangeState
value = 700
triggerall = numhelper(652)= 0
triggerall = command = "holdfwd"
trigger1 = command = "SuperJumpFwd"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
;trigger2 = stateno = 420
;trigger2 = movecontact

;---------------------------------------------------------------------------
; Superjump Back
[State -1, Superjump Back]
type = ChangeState
value = 710
triggerall = numhelper(652)= 0
;triggerall = command = "holdback"
trigger1 = command = "SuperJumpBck"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
;trigger2 = stateno = 420
;trigger2 = movecontact

;---------------------------------------------------------------------------
; Basic Throw
[State -1, Basic Throw]
type = null;ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 15
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Back Throw]
type = null;ChangeState
value = 801
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdback"
trigger1 = p2bodydist X < 18
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
; Air Throw
[State -1, Basic Throw]
type = null;ChangeState
value = 850
triggerall = command = "y" || command = "z"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = pos y <= -50
trigger1 = p2bodydist X < 10
trigger1 = p2movetype != H
trigger1 = p2bodydist Y < 50
trigger1 = p2bodydist Y > -10



;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = AnimTime >= 3

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(59) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact

;---------------------------------------------------------------------------
;Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = MoveContact
trigger3 = stateno = 240
trigger3 = MoveContact
trigger4 = stateno = 200
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 220
triggerall = command != "holddown"
triggerall = var(59) = 1
triggerall = statetype = S
;trigger1 = ctrl
trigger1 = command = "x"
trigger1 = stateno = 210
trigger1 = MoveContact
trigger2 = command = "y"
trigger2 = stateno = 210
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 400
trigger3 = MoveContact

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact 
trigger4 = stateno = 200
trigger4 = MoveContact
trigger5 = stateno = 400
trigger5 = MoveContact
trigger6 = stateno = 410
trigger6 = MoveContact
trigger7 = stateno = 430
trigger7 = MoveContact

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 240
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(59) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Standing Hard Kick
[State -1, Standing Hard Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = numhelper(4094) = 1
trigger10 = stateno = 420
trigger10 = MoveContact
trigger11 = stateno = 220
;trigger11 = MoveContact

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 250
triggerall = command != "holddown"
triggerall = var(59) = 1
triggerall = statetype = S
;triggerall = ctrl
trigger1 = command = "a"
trigger1 = stateno = 240
trigger1 = MoveContact
trigger2 = command = "b"
trigger2 = stateno = 240
trigger2 = MoveContact

[State -1, Punch Launcher Followup]
type = ChangeState
value = 690
triggerall = command = "x"
triggerall = statetype = C
triggerall = var(59) = 1
;trigger1 = ctrl
trigger1 = stateno = 420
trigger1 = time >= 2
trigger1 = MoveHit

[State -1, Punch Launcher Followup]
type = ChangeState
value = 690
triggerall = command = "a"
triggerall = statetype = C
triggerall = var(59) = 1
;trigger1 = ctrl
trigger1 = stateno = 420
trigger1 = MoveHit

[State -1, Punch Launcher Followup]
type = ChangeState
value = 690
triggerall = command = "y"
triggerall = statetype = S
triggerall = var(59) = 1
;trigger1 = ctrl
trigger1 = stateno = 420
trigger1 = time >= 2
trigger1 = MoveHit

[State -1, Punch Launcher Followup]
type = ChangeState
value = 690
triggerall = command = "b"
triggerall = statetype = S
triggerall = var(59) = 1
;trigger1 = ctrl
trigger1 = stateno = 420
trigger1 = MoveHit

[State -1, Kick Launcher Followup]
type = ChangeState
value = 670
triggerall = command = "holdup"
trigger1 = MoveHit
trigger1 = stateno = 420
 
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "holddown"
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = MoveContact
trigger3 = stateno = 430
trigger3 = MoveContact
trigger4 = stateno = 200
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 410
triggerall = command = "x"
;triggerall = command = "holddown"
triggerall = statetype = C
triggerall = var(59) = 1
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Crouching Hard Punch
[State -1, Crouching Hard Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = MoveContact
trigger3 = stateno = 400
trigger3 = MoveContact
trigger4 = stateno = 430
trigger4 = MoveContact
trigger5 = stateno = 440
trigger5 = MoveContact
trigger6 = stateno = 200
trigger6 = MoveContact
trigger7 = stateno = 210
trigger7 = MoveContact
trigger8 = stateno = 230
trigger8 = MoveContact
trigger9 = stateno = 240
trigger9 = MoveContact
trigger10 = stateno = 1505
trigger10 = Time >= 25

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 420
triggerall = command = "x"
;triggerall = command = "holddown"
triggerall = statetype = C
triggerall = var(59) = 1
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = MoveContact

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 420
triggerall = command = "y"
;triggerall = command = "holddown"
triggerall = statetype = C
triggerall = var(59) = 1
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = MoveContact

[State -1, Launcher Followup]
type = ChangeState
value = 670
triggerall = command = "holdup"
trigger1 = MoveHit
trigger1 = stateno = 420
 

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = MoveContact
trigger2 = AnimElem = 3
trigger3 = stateno = 400
trigger3 = MoveContact
trigger4 = stateno = 200
trigger4 = MoveContact

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = MoveContact
trigger3 = stateno = 400
trigger3 = MoveContact
trigger4 = stateno = 410
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 210
trigger6 = MoveContact
trigger7 = stateno = 230
trigger7 = MoveContact

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 440
triggerall = command = "a"
;triggerall = command = "holddown"
triggerall = statetype = C
triggerall = var(59) = 1
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = MoveContact


;---------------------------------------------------------------------------
;Crouching Hard Kick
[State -1, Crouching Hard Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = MoveContact
trigger3 = stateno = 410
trigger3 = MoveContact
trigger4 = stateno = 420
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact
trigger6 = stateno = 200
trigger6 = MoveContact
trigger7 = stateno = 210
trigger7 = MoveContact
trigger8 = stateno = 220
trigger8 = MoveContact
trigger9 = stateno = 230
trigger9 = MoveContact
trigger10 = stateno = 440
trigger10 = MoveContact
trigger11 = stateno = 240
trigger11 = MoveContact

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 450
triggerall = command = "a"
;triggerall = command = "holddown"
triggerall = statetype = C
triggerall = var(59) = 1
trigger1 = ctrl
trigger2 = stateno = 440
trigger2 = MoveContact

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 450
triggerall = command = "b"
;triggerall = command = "holddown"
triggerall = statetype = C
triggerall = var(59) = 1
trigger1 = ctrl
trigger2 = stateno = 440
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(15) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = AnimElem = 1
trigger3 = stateno = 2446
trigger3 = MoveContact
trigger4 = stateno = 660
trigger4 = MoveContact
trigger4 = Hitcount <= 5
trigger4 = Time >= 5


;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(15) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 630
trigger3 = MoveContact
trigger4 = stateno = 660
trigger4 = MoveContact
trigger4 = Hitcount <= 5
trigger4 = Time >= 5

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(15) = 0
triggerall = var(59) = 1
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Jump Hard Punch
[State -1, Jump Hard Punch]
type = ChangeState
value = 620
triggerall = var(15) = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = MoveContact
trigger3 = stateno = 640
trigger3 = MoveContact
trigger4 = stateno = 600
trigger4 = MoveContact
trigger5 = stateno = 600
trigger5 = MoveContact
trigger6 = stateno = 700
trigger6 = MoveContact
trigger7 = stateno = 660
trigger7 = MoveContact
trigger7 = Hitcount <= 5
trigger7 = Time >= 5
trigger8 = stateno = 630
trigger8 = movecontact
trigger9 = stateno = 4103
trigger10 = stateno = 4104
trigger11 = stateno = 4105
trigger12 = stateno = 4106
trigger13 = stateno = 4107
trigger14 = stateno = 4108
trigger15 = stateno = 4109
trigger16 = stateno = 4110

[State -1, Jump Medium Punch]
type = ChangeState
value = 620
triggerall = var(15) = 0
triggerall = var(59) = 1
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = MoveContact

[State -1, Jump Medium Punch]
type = ChangeState
value = 620
triggerall = var(15) = 0
triggerall = var(59) = 1
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = MoveContact


;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(15) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = pos y <= -110
trigger2 = MoveHit
trigger3 = stateno = 660
trigger3 = MoveContact
trigger3 = Hitcount <= 5
trigger3 = Time >= 5


;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(15) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = pos y <= -110
trigger2 = stateno = 610
trigger2 = MoveContact
trigger3 = stateno = 630
trigger3 = MoveContact
trigger4 = stateno = 600
trigger4 = MoveContact
trigger5 = stateno = 660
trigger5 = MoveContact
trigger5 = Hitcount <= 5
trigger5 = Time >= 5

[State -1, Jump Medium Punch]
type = ChangeState
value = 640
triggerall = var(15) = 0
triggerall = var(59) = 1
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Jump Hard Kick
[State -1, Jump Hard Kick]
type = ChangeState
value = 650
triggerall = var(15) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610
trigger3 = MoveContact
trigger4 = stateno = 620
trigger4 = pos y <= -110
trigger4 = MoveContact
trigger5 = stateno = 630
trigger5 = MoveContact
trigger6 = stateno = 640
trigger6 = movecontact
trigger7 = stateno = 660
trigger7 = MoveContact
trigger8 = stateno = 4103
trigger9 = stateno = 4104
trigger10 = stateno = 4105
trigger11 = stateno = 4106
trigger12 = stateno = 4107
trigger13 = stateno = 4108
trigger14 = stateno = 4109
trigger15 = stateno = 4110

[State -1, Jump Medium Punch]
type = ChangeState
value = 650
triggerall = var(15) = 0
triggerall = var(59) = 1
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640
trigger2 = MoveContact

[State -1, Jump Medium Punch]
type = ChangeState
value = 650
triggerall = var(15) = 0
triggerall = var(59) = 1
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640
trigger2 = MoveContact

;--------------------------------

[State 0, ]
type = RemoveExplod
trigger1 = Stateno != 4209;numhelper(3029) = 1
ID = 785
;ignorehitpause = 1
;persistent = 1

[State 0, ]
type = RemoveExplod
trigger1 = Stateno != 4209;numhelper(3029) = 1
ID = 784
;ignorehitpause = 1
;persistent = 1


[State 9000, 1]
type = Explod
trigger1 = Teamside = 1
triggerall = roundstate = 2
triggerall = Var(59) = 1
trigger1 = numexplod(1003) = 0
ID = 1003
anim = 1020;1020; 998;
pos = 34,232
postype = left
ontop = 1
supermove = 99999
bindtime = -1
removetime = -2
ownpal = 1
scale = 0.5,0.5
sprpriority = 5
ontop = 1

[State 9000, 1]
type = Explod
trigger1 = Teamside = 2
triggerall = roundstate = 2
triggerall = Var(59) = 1
trigger1 = numexplod(1003) = 0
ID = 1003
anim = 1020;1020; 998;
pos = 294,232
postype = left
ontop = 1
supermove = 99999
bindtime = -1
removetime = -2
ownpal = 1
scale = 0.5,0.5
sprpriority = 5
ontop = 1


[State 9000, 1]
type = Explod
trigger1 = roundstate = 2
trigger1 = Pos y >= 0
trigger1 = P2dist y <= -200
trigger1 = numexplod(188) = 0
ID = 188
anim = F103;1020; 998;
pos = 0,-160
postype = P1
ontop = 1
supermove = 99999
bindtime = -1
removetime = -2
ownpal = 1
scale = 1,1
sprpriority = 5
ontop = 1

; blue
[State 0, ]
type = Explod
;trigger1 = (Time%25) = 1
trigger1 = p2stateno = 1502
trigger1 = P2Movetype = H
trigger1 = numexplod(725) = 0
anim = 725;937
ID = 725
pos = 0,-50
postype = p2
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
;accel = -.05,0
;random = 10,10
removetime = -2;25
supermove = 999
;pausemovetime = 0
scale = .15, .15
sprpriority = -5
ontop = 0
;shadow = 0,0,0
;ownpal = 0
removeongethit = 1
;ignorehitpause = 0
;persistent = 1

; blue
[State 0, ]
type = Explod
;trigger1 = (Time%25) = 1
trigger1 = stateno = 4198
;trigger1 = P2Movetype = H
trigger1 = numexplod(725) = 0
anim = 725;937
ID = 725
pos = 0,-50
postype = p1
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
;accel = -.05,0
;random = 10,10
removetime = -2;25
supermove = 999
;pausemovetime = 0
scale = .5, .5
sprpriority = -5
ontop = 0
;shadow = 0,0,0
;ownpal = 0
removeongethit = 1
;ignorehitpause = 0
;persistent = 1

; blue
[State 0, ]
type = null;Explod
;trigger1 = (Time%25) = 1
trigger1 = stateno = 4205
;trigger1 = P2Movetype = H
trigger1 = numexplod(725) = 0
anim = 832;725;937
ID = 725
pos = 0,-50
postype = p1
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
;accel = -.05,0
;random = 10,10
removetime = -2;25
supermove = 999
;pausemovetime = 0
scale = .5, .5
sprpriority = -5
ontop = 0
;shadow = 0,0,0
;ownpal = 0
removeongethit = 1
;ignorehitpause = 0
;persistent = 1

; blue
[State 0, ]
type = Explod
trigger1 = stateno = 4198
;trigger1 = P2Movetype = H
trigger1 = (Time%10) = 0
anim = 1068;85;90
;ID =
pos = 0,-50
postype = p1
;facing = 1
;vfacing = 1
bindtime = 1
vel = 0,1
accel = 0,.05
random = 10,10
removetime = 25
supermove = 999
;pausemovetime = 0
scale = .15, .15
;sprpriority = -55
ontop = 1
;shadow = 0,0,0
;ownpal = 0
removeongethit = 1
ignorehitpause = 1
;persistent = 1

; blue
[State 0, ]
type = Explod
trigger1 = p2stateno = 1502
trigger1 = P2Movetype = H
trigger1 = (Time%10) = 0
anim = 1068;85;90
;ID =
pos = 0,-50
postype = p2
;facing = 1
;vfacing = 1
bindtime = 1
vel = 0,1
accel = 0,.05
random = 10,10
removetime = 25
supermove = 999
;pausemovetime = 0
scale = .15, .15
;sprpriority = -55
ontop = 1
;shadow = 0,0,0
;ownpal = 0
removeongethit = 1
ignorehitpause = 1
;persistent = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = NumHelper(662) = 1
value = 5
;ignorehitpause =
;persistent =


















































































































































































































































































































































