;-| Button Remapping |-----------------------------------------------------
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


;-| Super Motions |--------------------------------------------------------

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "DDD_ab"
command = ~D, D, a+b

[Command]
name = "DDD_ab"
command = D, D, a+b

[Command]
name = "QCB_ab"
command = ~D, DB, B, b+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, b+c

[Command]
name = "DDD_ab"
command = ~D, D, b+c

[Command]
name = "DDD_ab"
command = D, D, b+c

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+c

[Command]
name = "DDD_ab"
command = ~D, D, a+c

[Command]
name = "DDD_ab"
command = D, D, a+c

;-| Special Motions |------------------------------------------------------

[Command]
name = "DP_a"
command = ~F, D, DF, a

[Command]
name = "DP_b"
command = ~F, D, DF, b

[Command]
name = "DD_a"
command = ~D, D, a

[Command]
name = "DD_a"
command = D, D, a

[Command]
name = "DD_b"
command = ~D, D, b

[Command]
name = "DD_b"
command = D, D, b

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF"
command = ~D, DF, F
time = 50

[Command]
name = "QCF"
command = ~D, F
time = 50

[Command]
name = "QCB"
command = ~D, DB, B
time = 50

[Command]
name = "QCB"
command = ~D, B
time = 50

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
command = a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /z
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
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "b+c"
command = b+c
time = 1

[Command]
name = "y+z"
command = y+z
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

;-| Dir |--------------------------------------------------------------
[Command]
name = "fwd";Required (do not remove)
command = F
time = 1

[Command]
name = "back";Required (do not remove)
command = B
time = 1

[Command]
name = "up" ;Required (do not remove)
command = U
time = 1

[Command]
name = "down";Required (do not remove)
command = D
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
;===========================================================================
[State -1, Wish Upon A Galaxy]
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DDD_ab"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2life <= lifemax*.35
triggerall = var(21) = 0
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
trigger6 = (Stateno = 2011) && Movecontact && animelemtime(33) >= 0
trigger7 = (Stateno = 830) && Movecontact
;---------------------------------------------------------------------------
[State -1, Megaphone]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
trigger6 = (Stateno = 2011) && Movecontact && animelemtime(33) >= 0
trigger7 = (Stateno = 830) && Movecontact
;---------------------------------------------------------------------------
[State -1, Encore]
type = ChangeState
value = 3051
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c" || command = "holdc"
triggerall = power >= 500
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = stateno = 3050 && animelemtime(69) >= 0 
;---------------------------------------------------------------------------
[State -1, Fatal Chorus]
type = ChangeState
value = 3052
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c" || command = "holdc"
triggerall = power >= 500
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = stateno = 3051 && animelemtime(81) >= 0 
;---------------------------------------------------------------------------
[State -1, Ultra Sword]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
trigger6 = (Stateno = 830) && Movecontact
trigger7 = (Stateno = 2011) && Movecontact && animelemtime(33) >= 0
;---------------------------------------------------------------------------
[State -1, Air Ultra Sword]
type = ChangeState
value = 3005
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_ab"
triggerall = power >= 1000
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 2012 && movecontact
;---------------------------------------------------------------------------
[State -1, Air Ultra Sword]
type = ChangeState
value = 3005
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numexplod(5993)
triggerall = numexplod(5998)
triggerall = power >= 1000
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 2012 && movecontact
;---------------------------------------------------------------------------
[State -1, Final Cutter]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
trigger6 = stateno = 5120 && time >= 3
;---------------------------------------------------------------------------
[State -1, Hammer Bash]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Air Hammer]
type = ChangeState
value = 1205
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = statetype = A
triggerall = stateno != 1205
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
[State -1, Air Hammer]
type = ChangeState
value = 1205
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numexplod(5990)
triggerall = numexplod(5998)
triggerall = statetype = A
triggerall = stateno != 1205
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
[State -1, Smash Kick]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Discard]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) != 0
triggerall = command = "QCF_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Blizzard Hammer]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_c"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Mix]
type = ChangeState
value = 1500
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_c"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0

;---------------------------------------------------------------------------
[State -1, Ultra Burst]
type = ChangeState
value = 8050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
trigger1 = ctrl
trigger2 = stateno = 100

;---------------------------------------------------------------------------
[State -1, Ultra Guard Cancel]
type = ChangeState
value = 8060
triggerall = !ishelper
triggerall = !AIlevel
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
trigger1 = stateno = [120,155]


;===========================================================================
;Copy Abilities
;===========================================================================
;---------------------------------------------------------------------------
;Kirby (No Copy Ability)
;---------------------------------------------------------------------------
[State -1, Super Inhale]
type = ChangeState
value = 905
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 0
triggerall = command = "QCB_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Inhale]
type = ChangeState
value = 900
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Air Puff]
type = ChangeState
value = 910
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 0
triggerall = command = "b"
triggerall = prevstateno != 910
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
;Fighter
;---------------------------------------------------------------------------
[State -1, Force Blast]
type = ChangeState
value = 2003
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 1
triggerall = command = "QCB_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Rising Break]
type = ChangeState
value = 2000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Double Kick]
type = ChangeState
value = 2001
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
;Sword
;---------------------------------------------------------------------------
[State -1, Drill Stab]
type = ChangeState
value = 2015
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 2
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Chop]
type = ChangeState
value = 2010
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Multi Thrust]
type = ChangeState
value = 2011
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 2
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = stateno = 2010 && animelemtime(8) >= 0
;---------------------------------------------------------------------------
[State -1, Sword Spin]
type = ChangeState
value = 2012
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 2
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
;Cutter
;---------------------------------------------------------------------------
[State -1, Cutter Dash]
type = ChangeState
value = 2025
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 3
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Cutter Boomerang]
type = ChangeState
value = 2020
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 3
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = var(7) = 0
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Air Boomerang]
type = ChangeState
value = 2021
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 3
triggerall = command = "b"
triggerall = statetype = A
triggerall = prevstateno != 2021
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
;Fire
;---------------------------------------------------------------------------
[State -1, Burning Attack]
type = ChangeState
value = 2030
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 4
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = var(16) = 0
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Air Burning Attack]
type = ChangeState
value = 2030
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 4
triggerall = command = "b"
triggerall = statetype = A
triggerall = var(16) = 0
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
[State -1, Searing Burn]
type = ChangeState
value = 2035
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 4
triggerall = command = "b"
trigger1 = stateno = 2030
trigger1 = animelemtime(10) >= 0
trigger1 = animelemtime(13) < 0
;---------------------------------------------------------------------------
;Ice
;---------------------------------------------------------------------------
[State -1, Ice Breath]
type = ChangeState
value = 2040
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 5
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Ice Sprinkle]
type = ChangeState
value = 2041
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 5
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
;Plasma
;---------------------------------------------------------------------------
[State -1, Static Charge]
type = ChangeState
value = 2059
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 6
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Plasma Shot]
type = ChangeState
value = 2050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = fvar(20) < 200
triggerall = var(19) = 6
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = numhelper(2023) < 1
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Air Shot]
type = ChangeState
value = 2051
triggerall = !ishelper
triggerall = !AIlevel
triggerall = fvar(20) < 200
triggerall = var(19) = 6
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
[State -1, Plasma Wave]
type = ChangeState
value = 2052
triggerall = !ishelper
triggerall = !AIlevel
triggerall = fvar(20) >= 200
triggerall = var(19) = 6
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = numhelper(2023) < 1
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Air Wave]
type = ChangeState
value = 2053
triggerall = !ishelper
triggerall = !AIlevel
triggerall = fvar(20) >= 200
triggerall = var(19) = 6
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
;Beam
;---------------------------------------------------------------------------
[State -1, Beam Blast]
type = ChangeState
value = 2067
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 7
triggerall = command = "QCB_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Beam Blast]
type = ChangeState
value = 2065
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 7
triggerall = command = "QCB_b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
[State -1, Beam Blast]
type = ChangeState
value = 2065
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 7
triggerall = numexplod(5991)
triggerall = numexplod(5997)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
[State -1, Charge]
type = ChangeState
value = 2060
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 7
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Air charge]
type = ChangeState
value = 2062
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 7
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
;Bomb
;---------------------------------------------------------------------------
[State -1, Bomb Set]
type = ChangeState
value = 2075
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 8
triggerall = command = "QCB_b"
triggerall = numhelper(2076) < 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Air Set]
type = ChangeState
value = 2078
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 8
triggerall = command = "QCB_b"
triggerall = numhelper(2076) < 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
[State -1, Air Set]
type = ChangeState
value = 2078
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 8
triggerall = numexplod(5991)
triggerall = numexplod(5997)
triggerall = numhelper(2076) < 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
[State -1, Bomb Throw]
type = ChangeState
value = 2070
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 8
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = numhelper(2071) < 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Air Bomb]
type = ChangeState
value = 2073
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 8
triggerall = command = "b"
triggerall = numhelper(2071) < 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
;Hammer
;---------------------------------------------------------------------------
[State -1, Hammer Twirl]
type = ChangeState
value = 2082
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 9
triggerall = command = "QCB_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Air Twirl]
type = ChangeState
value = 2083
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 9
triggerall = command = "QCB_b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 2081 && movecontact
;---------------------------------------------------------------------------
[State -1, Air Twirl]
type = ChangeState
value = 2083
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 9
triggerall = numexplod(5991)
triggerall = numexplod(5997)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 2081 && movecontact
;---------------------------------------------------------------------------
[State -1, Hammer Nail]
type = ChangeState
value = 2080
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 9
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Giant Swing]
type = ChangeState
value = 2081
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 9
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
;Mirror
;---------------------------------------------------------------------------
[State -1, Mirror Body]
type = ChangeState
value = 2098
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 10
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Air Body]
type = ChangeState
value = 2099
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 10
triggerall = command = "QCB_b"
triggerall = statetype = A
triggerall = prevstateno != 2099
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
[State -1, Air Body]
type = ChangeState
value = 2099
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 10
triggerall = numexplod(5991)
triggerall = numexplod(5997)
triggerall = statetype = A
triggerall = prevstateno != 2099
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
[State -1, Mirror Cut]
type = ChangeState
value = 2090
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 10
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Air Cut]
type = ChangeState
value = 2091
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 10
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
;Suplex
;---------------------------------------------------------------------------
[State -1, Suction Grab]
type = ChangeState
value = 2105
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 11
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Dash Grab]
type = ChangeState
value = 2100
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 11
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Air Dash Grab]
type = ChangeState
value = 2101
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 11
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
;Yo-yo
;---------------------------------------------------------------------------
[State -1, Yoyo Throw]
type = ChangeState
value = 2110
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 12
triggerall = command = "b"
triggerall = command != "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Up Throw]
type = ChangeState
value = 2111
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 12
triggerall = command = "b"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Air Throw]
type = ChangeState
value = 2112
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 12
triggerall = command = "b"
triggerall = command != "holdback"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
[State -1, Air Up Throw]
type = ChangeState
value = 2113
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 12
triggerall = command = "b"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
[State -1, Down Throw]
type = ChangeState
value = 2114
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 12
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
;Needle
;---------------------------------------------------------------------------
[State -1, Drill]
type = ChangeState
value = 2125
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 13
triggerall = command = "QCB_b"
triggerall = numhelper(6730) < 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Air Drill]
type = ChangeState
value = 2127
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 13
triggerall = command = "QCB_b"
triggerall = numhelper(6730) < 1
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
[State -1, Air Drill]
type = ChangeState
value = 2127
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 13
triggerall = numexplod(5991)
triggerall = numexplod(5997)
triggerall = numhelper(6730) < 1
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
[State -1, Needle]
type = ChangeState
value = 2120
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 13
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Spike Bomb]
type = ChangeState
value = 2121
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 13
triggerall = command = "b"
triggerall = statetype = A
triggerall = var(16) = 0
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
;Spear
;---------------------------------------------------------------------------
[State -1, Spear Throw]
type = ChangeState
value = 2132
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 14
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Spear Thrust]
type = ChangeState
value = 2130
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 14
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Air Thrust]
type = changeState
value = 2131
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 14
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
;Ninja
;---------------------------------------------------------------------------
[State -1, Cloning Technique]
type = ChangeState
value = 2145
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 15
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Quad Shock]
type = ChangeState
value = 2147
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 15
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = p2dist X = [0,72]
triggerall = enemynear,statetype = S || enemynear,statetype = C
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Shuriken]
type = ChangeState
value = 2140
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 15
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 240) && Movecontact
trigger5 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, Air Shuriken]
type = ChangeState
value = 2142
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 15
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
[State -1, Ninja Kick]
type = ChangeState
value = 2143
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(19) = 15
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "FF"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = 2080) && Movecontact

;---------------------------------------------------------------------------
;Run Back
[State -1, Back Dash]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "BB"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = 2080) && Movecontact

;---------------------------------------------------------------------------
[State -1, Grab]
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
triggerall = ctrl
trigger1 = stateno != 100

[State -1, Running Grab]
type = ChangeState
value = 820
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
trigger1 = stateno = 100
trigger2 = stateno = 1401

[State -1, Air Grab]
type = ChangeState
value = 840
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
[State -1, 4A]
type = ChangeState
value = 300
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 4AA]
type = ChangeState
value = 301
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = stateno = 300
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = 400) && Movecontact
trigger3 = (Stateno = 300) && Movecontact
trigger3 = command != "holdback"

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 201
trigger1 = Movecontact
trigger2 = (Stateno = 301) && Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAAA]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 202
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5C]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger5 = stateno = 100
trigger6 = (Stateno = 240) && Movecontact
trigger6 = animelemtime(34) >= 0

;---------------------------------------------------------------------------
[State -1, 66A]
type = ChangeState
value = 230
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = Stateno = 100
trigger2 = stateno = 1401

;---------------------------------------------------------------------------
[State -1, 66B]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = Stateno = 100
trigger2 = stateno = 1401

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 2A]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = 200) && Movecontact
trigger3 = (Stateno = [300,301]) && Movecontact

;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [200,201]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger5 = Stateno = 100
trigger6 = (Stateno = 240) && Movecontact
trigger6 = animelemtime(34) >= 0
;---------------------------------------------------------------------------
[State -1, jA]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact

;---------------------------------------------------------------------------
[State -1, jAA]
type = ChangeState
value = 601
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
trigger1 = stateno = 600 && animelemtime(22) >= 0
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, j2A]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact

;---------------------------------------------------------------------------
[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = var(12) != 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 2012 && movecontact
trigger5 = stateno = 2081 && movecontact

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
trigger1 = Stateno = 100
trigger2 = (Stateno = 200) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = 410) && Movecontact
trigger5 = (Stateno = 2011) && Movecontact && animelemtime(33) >= 0
trigger6 = (Stateno = [2110,2111]) && Movecontact

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) > 0
triggerall = var(35) < 6
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,601]) && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 1100 && movehit
trigger6 = stateno = 2001 && movecontact
trigger7 = stateno = 2012 && movecontact
trigger8 = (Stateno = [2112,2114]) && Movecontact
trigger9 = (Stateno = 2143) && Movecontact
trigger10 = (Stateno = 2144)

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "FF"
triggerall = statetype = A
triggerall = var(11) >= 1
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = (stateno = [600,611]) && movecontact
trigger4 = (Stateno = [2112,2114]) && Movecontact
trigger5 = (Stateno = 2143) && Movecontact
trigger6 = (Stateno = 2144)
trigger7 = stateno = 1100 && movehit

;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = ChangeState
value = 103
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "BB"
triggerall = statetype = A
triggerall = var(11) >= 1
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = (stateno = [600,611]) && movecontact
trigger4 = (Stateno = [2112,2114]) && Movecontact
trigger5 = (Stateno = 2143) && Movecontact
trigger6 = (Stateno = 2144)
trigger7 = stateno = 1100 && movehit

;---------------------------------------------------------------------------
[State -1, backdash alternate command]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 5120 && time >= 3

;---------------------------------------------------------------------------
[State -1, Dodge]
type = ChangeState
value = 160
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Forward Dodge]
type = ChangeState
value = 161
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3
trigger4 = stateno = 1401

;---------------------------------------------------------------------------
[State -1, Air Dodge]
type = ChangeState
value = 162
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall = stateno != [3900,3999]
Triggerall = time > 0
trigger1 = movecontact
trigger2 = numhelper(7777) > 0
trigger3 = stateno = 901
trigger3 = animelemtime(26) >= 0
;---------------------------------------------------------------------------
[State -1, Air Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall = stateno != [3900,3999]
Triggerall = time > 0
trigger1 = movecontact
trigger2 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall = stateno != [8000,8050]
trigger1 = movecontact
trigger1 = stateno = [3000,3001]
trigger2 = numhelper > 0
trigger2 = stateno = [3050,3051]
trigger2 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Air Force Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall = movecontact
triggerall = stateno != [8000,8050]
trigger1 = stateno = 3005

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
trigger1 = command = "x" || command = "b+c"
trigger1 = command = "holdfwd"
trigger1 = power >= 1000
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153

;---------------------------------------------------------------------------
[State -1, Burst]
type = ChangeState
value = 8000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = stateno != [120,155]
triggerall = numhelper(9000)
triggerall = helper(9000),var(3) <= 0
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = enemy,stateno != [120,155]
triggerall = enemy,stateno != [800,899]
triggerall = enemy,stateno != [3000,4999]
trigger1 = !ctrl
trigger2 = numenemy
trigger2 = enemy,movehit && p2stateno != [3000,4999]
trigger3 = enemy,numhelper
trigger3 = movetype = H && p2stateno != [3000,4999]
trigger4 = numenemy
trigger4 = enemy,movehit && p2stateno != [800,899]

;===========================================================================
;AI-------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;Defense
;===========================================================================
[State -1, Inhale]
type = ChangeState
value = 900
triggerall = var(19) = 0
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2dist X  > 90
triggerall = ctrl
triggerall = prevstateno != 907
triggerall = enemynear,movetype != H
trigger1 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger2 = PlayerIdExist(helper(33333333),var(3))
trigger2 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) 
;---------------------------------------------------------------------------

[State -1, Mirror Cut]
type = ChangeState
value = 2090
triggerall = var(19) = 10
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2dist X  > 80
triggerall = ctrl
trigger1 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger2 = PlayerIdExist(helper(33333333),var(3))
trigger2 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) 

;---------------------------------------------------------------------------

[State -1, Mirror Cut]
type = ChangeState
value = 2091
triggerall = var(19) = 10
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl
trigger1 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger2 = PlayerIdExist(helper(33333333),var(3))
trigger2 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) > 9 
trigger2 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) < 35 


;---------------------------------------------------------------------------

[State -1, Hammer Twirl]
type = ChangeState
value = 2082
triggerall = var(19) = 9
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = time > 4
triggerall = p2dist X = [-40,40]
triggerall = p2dist Y = [-45,50]
triggerall = prevstateno != [2082,2083]
trigger1 = enemynear,ctrl = 0 
trigger1 = enemynear, vel X >= 0

;---------------------------------------------------------------------------

[State -1, Hammer Twirl]
type = ChangeState
value = 2083
triggerall = var(19) = 9
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = time > 4
triggerall = p2dist X = [-40,40]
triggerall = p2dist Y = [-45,50]
triggerall = prevstateno != [2082,2083]
trigger1 = enemynear,ctrl = 0 
trigger1 = enemynear, vel X >= 0

;---------------------------------------------------------------------------

[State -1, Forward Dodge]
type = ChangeState
value = 161
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = prevstateno != 161
triggerall = facing != enemynear,facing
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,80]
trigger2 = p2movetype = A
trigger2 = stateno = 100
trigger3 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger4 = PlayerIdExist(helper(33333333),var(3))
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) > 9 
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) < 35

;---------------------------------------------------------------------------

[State -1, Blizzard Hammer]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = power >= 500
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = p2dist X  = [0,70]
triggerall = statetype != A
triggerall = random <=599
triggerall = ctrl
trigger1 = inguarddist

;---------------------------------------------------------------------------

[State -1, Cloning Technique]
type = ChangeState
value = 2145
triggerall = var(19) = 15
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = p2dist X  = [0,60]
triggerall = statetype != A
triggerall = random <=449
triggerall = ctrl
trigger1 = inguarddist
trigger2 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger3 = PlayerIdExist(helper(33333333),var(3))
trigger3 = (PlayerId(helper(33333333),var(3)), p2bodydist x) >= 20 

;---------------------------------------------------------------------------

[State -1, Mirror Body]
type = ChangeState
value = 2099
triggerall = var(19) = 10
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = time > 7
triggerall = p2dist X = [-130,130]
triggerall = p2dist Y = [-45,20]
triggerall = prevstateno != 2099
trigger1 = p2movetype = A 
trigger1 = enemynear, vel X >= 0

;---------------------------------------------------------------------------

[State -1, Mirror Body]
type = ChangeState
value = 2098
triggerall = var(19) = 10
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = time > 7
triggerall = p2dist X = [-130,130]
triggerall = p2dist Y = [-45,20]
triggerall = prevstateno != 2099
trigger1 = p2movetype = A 
trigger1 = enemynear, vel X >= 0

;---------------------------------------------------------------------------

[State -1, Drill Stab]
type = ChangeState
value = 2015
triggerall = var(19) = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = time > 7
triggerall = p2dist X = [0,130]
triggerall = p2dist Y = [-45,20]
triggerall = prevstateno != 2099
trigger1 = p2movetype = A 
trigger1 = enemynear, vel X >= 0

;---------------------------------------------------------------------------

[State -1, Cutter Dash]
type = ChangeState
value = 2025
triggerall = var(19) = 3
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = time > 7
triggerall = p2dist X = [0,130]
triggerall = p2dist Y = [-45,20]
triggerall = prevstateno != 2099
trigger1 = p2movetype = A 
trigger1 = enemynear, vel X >= 0

;---------------------------------------------------------------------------

[State -1, Air Dodge]
type = ChangeState
value = 162
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = time > 9
trigger1 = p2movetype = A 
trigger1 = enemynear, vel X >= 0
trigger2 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger3 = PlayerIdExist(helper(33333333),var(3))
trigger3 = (PlayerId(helper(33333333),var(3)), p2bodydist x) >= 20 

;---------------------------------------------------------------------------

[State -1, Guard]
type = ChangeState
value = 120
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = inguarddist
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Disable Default Guarding]
type = assertspecial
triggerall = stateno != [120,160]
trigger1 = AIlevel && numenemy
flag = noairguard
flag2 = nocrouchguard
flag3 = nostandguard

;===========================================================================
;Movement
;===========================================================================
[State -1, Run]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = H
trigger1 = p2bodydist X > 80

;---------------------------------------------------------------------------
[State -1, backdash]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = A
trigger1 = enemynear,Vel X >= 4

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = ctrl
triggerall = pos Y <= -45
trigger1 = p2bodydist X >= 65

;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = ChangeState
value = 103
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = (stateno = [600,610]) && moveguarded

;===========================================================================
;Wake Up
;===========================================================================
[State -1, Final Cutter]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno = 5120 && time >= 15
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,70]
trigger1 = p2bodydist Y = [-160,0]
trigger1 = enemynear, Vel X >= 0
trigger1 = enemynear, Vel Y >= 0

;===========================================================================
;Ground to Air
;===========================================================================
[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,70]
triggerall = p2bodydist Y = [-90,0]
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Smash Kick]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2bodydist Y = [-110,0]
triggerall = ctrl
trigger1 = p2bodydist X = [0,90]
trigger1 = enemynear, Vel X < 0
;---------------------------------------------------------------------------
[State -1, Yo-yo Up]
type = ChangeState
value = 2111
triggerall = var(19) = 12
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = enemynear,statetype = A
triggerall = p2bodydist X = [-70,70]
triggerall = p2bodydist Y = [-100,0]
triggerall = roundstate = 2
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Needle]
type = ChangeState
value = 2120
triggerall = var(19) = 13
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = enemynear,statetype = A
triggerall = p2bodydist X = [-60,60]
triggerall = p2bodydist Y = [-70,0]
triggerall = roundstate = 2
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Final Cutter]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2movetype = A
triggerall = p2bodydist Y = [-165,0]
triggerall = ctrl
trigger1 = p2bodydist X = [5,30]
trigger1 = enemynear, Vel X >= 0
;---------------------------------------------------------------------------
[State -1, Spear Throw]
type = ChangeState
value = 2132
triggerall = var(19) = 14
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2dist x >= 170
triggerall = enemynear,pos Y <= -60
triggerall = enemynear,vel Y <= 0
triggerall = p2statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Bomb Throw]
type = ChangeState
value = 2070
triggerall = var(19) = 8
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2dist x >= 40
triggerall = numhelper(2071) < 1
trigger1 = ctrl
;===========================================================================
;Air to Air
;===========================================================================
[State -1, Air Grab]
type = ChangeState
value = 840
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,25]
triggerall = p2bodydist Y = [-20,10]
triggerall = pos Y < -20
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, jA]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,20]
triggerall = p2bodydist Y = [-30,20]
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2bodydist X = [-20,20]
triggerall = p2bodydist Y > 10
triggerall = var(12) != 0
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Plasma Shot]
type = ChangeState
value = 2051
triggerall = var(19) = 6
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2dist x = [0,90]
triggerall = p2dist y = [-20,20]
triggerall = fvar(20) < 100
triggerall = pos Y < -20
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Dash Grab]
type = ChangeState
value = 2101
triggerall = var(19) = 11
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = p2dist x = [0,150]
triggerall = p2dist y = [-40,30]
triggerall = enemynear, vel y >=0
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Plasma Shot]
type = ChangeState
value = 2051
triggerall = var(19) = 6
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2dist y = [-20,20]
triggerall = fvar(20) >= 100
triggerall = fvar(20) < 200
triggerall = pos Y < -20
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Plasma Shot]
type = ChangeState
value = 2053
triggerall = var(19) = 6
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2dist y = [-20,20]
triggerall = fvar(20) >= 200
triggerall = pos Y < -20
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Shuriken]
type = ChangeState
value = 2142
triggerall = var(19) = 15
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = p2dist x >= 180
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Burning Attack]
type = ChangeState
value = 2030
triggerall = var(19) = 4
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = p2dist x >= 150
triggerall = var(16) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Cutter Boomerang]
type = ChangeState
value = 2021
triggerall = var(19) = 3
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = p2dist x = [0,170]
triggerall = numhelper(2023) < 1
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Spear Thrust]
type = ChangeState
value = 2131
triggerall = var(19) = 14
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = p2dist y = [-40,60]
triggerall = p2dist x = [70,180]
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Double Kick]
type = ChangeState
value = 2001
triggerall = var(19) = 1
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = p2dist x = [0,150]
triggerall = prevstateno != 2001
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Ice Sprinkle]
type = ChangeState
value = 2041
triggerall = var(19) = 5
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = p2dist x = [-30,60]
triggerall = p2dist y = [-10,50]
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Sword Spin]
type = ChangeState
value = 2012
triggerall = var(19) = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = p2dist x = [-50,50]
triggerall = p2dist y = [-50,50]
triggerall = prevstateno != 2012
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Spike Bomb]
type = ChangeState
value = 2121
triggerall = var(19) = 13
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = p2dist x = [-150,150]
triggerall = p2dist y = [-150,150]
triggerall = pos Y < -20
triggerall = var(16) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Bomb Set]
type = ChangeState
value = 2078
triggerall = var(19) = 8
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = p2dist x = [0,30]
triggerall = p2dist y > 10
triggerall = numhelper(2076) < 1
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Bomb Throw]
type = ChangeState
value = 2073
triggerall = var(19) = 8
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = p2dist x >= 60
triggerall = numhelper(2071) < 1
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Yo-yo throw]
type = ChangeState
value = 2113
triggerall = var(19) = 12
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = p2bodydist X = [0,150]
triggerall = p2bodydist Y = [-20,50]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Yo-yo Up]
type = ChangeState
value = 2113
triggerall = var(19) = 12
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = p2bodydist X = [-60,60]
triggerall = p2bodydist Y = [-100,0]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Ninja Kick]
type = ChangeState
value = 2143
triggerall = var(19) = 15
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = p2dist x = [0,80]
triggerall = p2dist y > 10
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Beam Blast]
type = ChangeState
value = 2065
triggerall = var(19) = 7
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2bodydist X = [-30,100]
triggerall = p2dist y > 10
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Beam Charge]
type = ChangeState
value = 2062
triggerall = var(19) = 7
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = vel Y <= 0
triggerall = p2dist x = [0,90]
triggerall = pos Y < -20
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Bomb Set]
type = ChangeState
value = 2078
triggerall = var(19) = 7
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = p2dist x = [0,30]
triggerall = p2dist y > 10
triggerall = numhelper(2076) < 1
trigger1 = ctrl

;===========================================================================
;Air to Ground
;===========================================================================

[State -1, j2A]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype != A
triggerall = vel Y > 0
triggerall = p2bodydist X = [0,50]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Yo-yo Down]
type = ChangeState
value = 2114
triggerall = var(19) = 12
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = AIlevel && numenemy
triggerall = statetype = A
triggerall = p2bodydist X = [-60,60]
triggerall = p2bodydist Y = [0,100]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Giant Swing]
type = ChangeState
value = 2081
triggerall = var(19) = 9
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = vel Y > 0
triggerall = p2bodydist X = [-70,70]
triggerall = p2bodydist Y = [-50,50]
trigger1 = ctrl


;===========================================================================
;Ground to Ground
;===========================================================================
[State -1, Grab]
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = p2bodydist X = [0,15]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 4A]
type = ChangeState
value = 300
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = p2bodydist X = [0,30]
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, 2A]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = S
triggerall = p2bodydist X = [0,70]
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = S
triggerall = p2bodydist X = [0,120]
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [0,90]
triggerall = p2bodydist Y = [-40,0]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Shuriken]
type = ChangeState
value = 2140
triggerall = var(19) = 15
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2dist x >= 180
triggerall = random <=349
triggerall = prevstateno != 2140
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Burning Attack]
type = ChangeState
value = 2030
triggerall = var(19) = 4
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2dist x >= 150
triggerall = enemynear,ctrl = 0
triggerall = enemynear, vel X <= 0
triggerall = var(16) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Spear Thrust]
type = ChangeState
value = 2130
triggerall = var(19) = 14
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2dist y = [-40,60]
triggerall = p2dist x = [70,180]
triggerall = roundstate = 2
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Yo-yo Throw]
type = ChangeState
value = 2110
triggerall = var(19) = 12
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2dist y = [-40,0]
triggerall = p2dist x = [0,160]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Plasma Shot]
type = ChangeState
value = 2050
triggerall = var(19) = 6
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2dist x = [0,90]
triggerall = p2dist y = [-20,20]
triggerall = fvar(20) < 100
triggerall = roundstate = 2
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Plasma Shot]
type = ChangeState
value = 2050
triggerall = var(19) = 6
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2dist y = [-20,20]
triggerall = fvar(20) >= 100
triggerall = fvar(20) < 200
triggerall = roundstate = 2
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Plasma Shot]
type = ChangeState
value = 2052
triggerall = var(19) = 6
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2dist y = [-20,20]
triggerall = fvar(20) >= 200
triggerall = roundstate = 2
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Drill]
type = ChangeState
value = 2125
triggerall = var(19) = 13
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = random <=199
triggerall = p2bodydist X >= 130
triggerall = numhelper(6730) < 1
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Beam Charge]
type = ChangeState
value = 2060
triggerall = var(19) = 7
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = random <=199
triggerall = p2bodydist X >= 130
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Force Blast]
type = ChangeState
value = 2003
triggerall = var(19) = 1
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = random <=199
trigger1 = prevstateno != [2004,2007]
trigger1 = p2bodydist X >= 170
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Cutter Boomerang]
type = ChangeState
value = 2020
triggerall = var(19) = 3
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = p2dist x = [0,170]
triggerall = numhelper(2023) < 1
triggerall = roundstate = 2
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 66A]
type = ChangeState
value = 230
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
triggerall = p2bodydist X = [0,70]
trigger1 = stateno = 100

;---------------------------------------------------------------------------
[State -1, 66B]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = A
triggerall = p2bodydist X = [0,70]
trigger1 = stateno = 100

;===========================================================================
;Combo
;===========================================================================
[State -1, Wish Upon A Galaxy]
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2life <= lifemax/4
triggerall = var(21) = 0
triggerall = power >= 2000
triggerall = roundno > 2
trigger1 = stateno = 202 && movehit

;---------------------------------------------------------------------------
[State -1, Ultra Sword]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = p2bodydist Y = [-160,100]
triggerall = p2bodydist X = [0,130]
triggerall = enemynear, ctrl = 0
trigger1 = ctrl
trigger2 = (Stateno = 830) && Movecontact
;---------------------------------------------------------------------------
[State -1, Ultra Sword]
type = ChangeState
value = 3005
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = power >= 1000
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = p2bodydist Y = [-160,100]
triggerall = p2bodydist X = [0,130]
triggerall = enemynear, ctrl = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Megaphone]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2bodydist X >= 170
triggerall = enemynear, ctrl = 0
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Encore]
type = ChangeState
value = 3051
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = power >= 500
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = enemynear,movetype = H
trigger1 = stateno = 3050 && animelemtime(69) >= 0 
;---------------------------------------------------------------------------
[State -1, Fatal Chorus]
type = ChangeState
value = 3052
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = power >= 500
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = enemynear,movetype = H
trigger1 = stateno = 3051 && animelemtime(81) >= 0 

;---------------------------------------------------------------------------
[State -1, 4AA]
type = ChangeState
value = 301
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 300
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 400
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 201
trigger1 = Movecontact
trigger2 = stateno = 301
trigger2 = Movecontact

;---------------------------------------------------------------------------
[State -1, Hammer Nail]
type = ChangeState
value = 2080
triggerall = var(19) = 9
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = enemynear,statetype = C
trigger1 = stateno = 202
trigger1 = Moveguarded
trigger1 = random <=349
trigger1 = time >= 25
trigger2 = stateno = 420
trigger2 = Moveguarded

;---------------------------------------------------------------------------
[State -1, Vacuum Grab]
type = ChangeState
value = 2105
triggerall = var(19) = 11
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = enemynear,statetype = C
trigger1 = stateno = 202
trigger1 = Moveguarded
trigger1 = random <=349
trigger1 = time >= 25
trigger2 = stateno = 420
trigger2 = Moveguarded

;---------------------------------------------------------------------------
[State -1, 5C]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = enemynear,statetype = C
trigger1 = stateno = 202
trigger1 = Moveguarded
trigger1 = random <=349
trigger1 = time >= 25

;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = enemynear,statetype = S
trigger1 = stateno = 202
trigger1 = Moveguarded
trigger1 = random <=349
trigger1 = time >= 25

;---------------------------------------------------------------------------
[State -1, inhale]
type = ChangeState
value = 900
triggerall = var(19) = 0
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 202
trigger1 = Movehit
trigger1 = time >= 25
trigger2 = stateno = 420
trigger2 = Movehit

;---------------------------------------------------------------------------
[State -1, Rising Break]
type = ChangeState
value = 2000
triggerall = var(19) = 1
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 420
trigger1 = Movehit
trigger2 = stateno = 202
trigger2 = Movehit
trigger2 = time >= 25
trigger2 = p2dist x = [0,50]

;---------------------------------------------------------------------------
[State -1, Drill]
type = ChangeState
value = 2125
triggerall = var(19) = 13
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = numhelper(6730) < 1
trigger1 = stateno = 420
trigger1 = Movehit
trigger2 = stateno = 202
trigger2 = Movehit
trigger2 = time >= 25

;---------------------------------------------------------------------------
[State -1, Plasma Shot]
type = ChangeState
value = 2050
triggerall = var(19) = 6
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(20) < 200
trigger1 = stateno = 420
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, Plasma Wave]
type = ChangeState
value = 2052
triggerall = var(19) = 6
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(20) >= 200
trigger1 = stateno = 202
trigger1 = Movehit
trigger1 = time >= 25
trigger2 = stateno = 420
trigger2 = Movehit

;---------------------------------------------------------------------------
[State -1, Ice Breath]
type = ChangeState
value = 2040
triggerall = var(19) = 5
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = var(6) < 1
trigger1 = stateno = 202
trigger1 = Movehit
trigger1 = time >= 25
trigger2 = stateno = 420
trigger2 = Movehit

;---------------------------------------------------------------------------
[State -1, Bomb Throw]
type = ChangeState
value = 2070
triggerall = var(19) = 8
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = numhelper(2071) < 1
trigger1 = stateno = 420
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, Dash Grab]
type = ChangeState
value = 2100
triggerall = var(19) = 11
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 202
trigger1 = Movehit
trigger1 = time >= 25
trigger2 = stateno = 420
trigger2 = Movehit

;---------------------------------------------------------------------------
[State -1, Chop]
type = ChangeState
value = 2010
triggerall = var(19) = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 202
trigger1 = Movehit
trigger1 = time >= 25
trigger2 = stateno = 420
trigger2 = Movehit

;---------------------------------------------------------------------------
[State -1, Multi-Slash]
type = ChangeState
value = 2011
triggerall = var(19) = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 2010
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, Mirror Cut]
type = ChangeState
value = 2090
triggerall = var(19) = 10
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 420
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, Quad Shock]
type = ChangeState
value = 2147
triggerall = var(19) = 15
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
trigger1 = stateno = 202
trigger1 = Movehit
trigger1 = time >= 25
trigger1 = p2dist x = [0,70]

;---------------------------------------------------------------------------
[State -1, Hammer Bash]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 202
trigger1 = Movecontact
trigger1 = time >= 25

;---------------------------------------------------------------------------
[State -1, Hammer Bash]
type = ChangeState
value = 1205
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 230
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
trigger1 = (Stateno = 410) && Movecontact
trigger2 = (Stateno = 2011) && Movecontact
trigger2 = animelemtime(35) >= 0

;---------------------------------------------------------------------------
[State -1, Burning Attack]
type = ChangeState
value = 2030
triggerall = var(19) = 4
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = stateno = 420
triggerall = var(16) = 0
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, Burning Attack]
type = ChangeState
value = 2030
triggerall = var(19) = 4
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = enemynear,movetype = H
triggerall = roundstate = 2
triggerall = p2bodydist X >= 170
triggerall = prevstateno != 195
triggerall = p2stateno != [5150,5151]
triggerall = p2stateno != [150,154]
triggerall = var(16) = 0
trigger1 = ctrl
trigger1 = prevstateno = 1200

;---------------------------------------------------------------------------
[State -1, Smash Kick]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 420
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, Static Charge]
type = ChangeState
value = 2059
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = var(19) = 6
triggerall = statetype != A
triggerall = enemynear,movetype = H
triggerall = roundstate = 2
triggerall = p2bodydist X >= 170
triggerall = prevstateno != 195
triggerall = p2stateno != [5150,5151]
triggerall = p2stateno != [150,154]
trigger1 = ctrl
trigger1 = prevstateno = 1200

;---------------------------------------------------------------------------
[State -1, Bomb Set]
type = ChangeState
value = 2075
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = var(19) = 8
triggerall = statetype != A
triggerall = enemynear,movetype = H
triggerall = roundstate = 2
triggerall = p2bodydist X >= 170
triggerall = prevstateno != 195
triggerall = p2stateno != [5150,5151]
triggerall = p2stateno != [150,154]
triggerall = numhelper(2076) < 1
trigger1 = ctrl
trigger1 = prevstateno = 1200

;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = enemynear,movetype = H
triggerall = roundstate = 2
triggerall = p2bodydist X >= 170
triggerall = prevstateno != 195
triggerall = p2stateno != [5150,5151]
triggerall = p2stateno != [150,154]
trigger1 = ctrl
trigger1 = prevstateno = 1200

;===========================================================================
;Misc
;===========================================================================
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 3
triggerall = statetype != A
triggerall = prevstateno != 195
trigger1 = ctrl
trigger1 = p2stateno != [5150,5151]
trigger1 = prevstateno != [3900,3951]

;---------------------------------------------------------------------------

[State -1, Burst]
type = ChangeState
value = 8000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = stateno != [120,155]
triggerall = numhelper(9000)
triggerall = helper(9000),var(3) <= 0
triggerall = Var(50) != 1
triggerall = StateType != L
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = life < Lifemax/3
triggerall = p2dist X = [0,30]
triggerall = p2dist Y = [-60,15]
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = enemy,stateno != [120,155]
triggerall = enemy,stateno != [800,899]
triggerall = enemy,stateno != [3000,4999]
trigger1 = !ctrl
trigger2 = numenemy
trigger2 = enemy,movehit && p2stateno != [3000,4999]
trigger3 = enemy,numhelper
trigger3 = movetype = H && p2stateno != [3000,4999]
trigger4 = numenemy
trigger4 = enemy,movehit && p2stateno != [800,899]
;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = random <= 199
triggerall = power >= 1000
triggerall = p2dist X = [40,0]
triggerall = p2dist Y >= -60
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153
