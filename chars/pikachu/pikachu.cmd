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


;-| Super Motions |--------------------------------------------------------
[Command]
name = "vtackle"
command = ~F, D, DF, x+y
time = 15

[Command]
name = "vtackle"
command = ~F, D, DF, y+z
time = 15

[Command]
name = "vtackle"
command = ~F, D, DF, x+z
time = 15

[Command]
name = "vtackle"
command = ~F, D, DF, b
time = 15

[Command]
name = "wildc"
command = ~B, D, F, x+y
time = 15

[Command]
name = "wildc"
command = ~B, D, F, y+z
time = 15

[Command]
name = "wildc"
command = ~B, D, F, x+z
time = 15

[Command]
name = "wildc"
command = ~B, DB, D, DF, F, x+y
time = 15

[Command]
name = "wildc"
command = ~B, DB, D, DF, F, y+z
time = 15

[Command]
name = "wildc"
command = ~B, DB, D, DF, F, x+z
time = 15

[Command]
name = "wildc"
command = ~B, D, F, b
time = 15

[Command]
name = "wildc"
command = ~B, DB, D, DF, F, b
time = 15

[Command]
name = "skullb"
command = ~D,B, x+y
time = 15

[Command]
name = "skullb"
command = ~D,B, y+z
time = 15

[Command]
name = "skullb"
command = ~D,B, x+z
time = 15

[Command]
name = "skullb"
command = ~D,DB,B, x+y
time = 15

[Command]
name = "skullb"
command = ~D,DB,B, y+z
time = 15

[Command]
name = "skullb"
command = ~D,DB,B, x+z
time = 15

[Command]
name = "skullb"
command = ~D,B, b
time = 15

[Command]
name = "skullb"
command = ~D,DB,B, b
time = 15

[Command]
name = "thundershock"
command = ~D, DF, F, x+y
time = 15

[Command]
name = "thundershock"
command = ~D, DF, F, y+z
time = 15

[Command]
name = "thundershock"
command = ~D, DF, F, x+z
time = 15

[Command]
name = "thundershock"
command = ~D, DF, F, b
time = 15

[Command]
name = "thundershock"
command = ~D, F, x+y
time = 15

[Command]
name = "thundershock"
command = ~D, F, y+z
time = 15

[Command]
name = "thundershock"
command = ~D, F, x+z
time = 15

[Command]
name = "thundershock"
command = ~D, F, b
time = 15
;-| Special Motions |------------------------------------------------------

name = "Guard Cancel"
command = ~B, DB, D, x
time = 15

[Command]
name = "Guard Cancel"
command = ~B, DB, D, y
time = 15

[Command]
name = "Guard Cancel"
command = ~B, DB, D, z
time = 15

[Command]
name = "Guard Cancel"
command = ~B, D, x
time = 15

[Command]
name = "Guard Cancel"
command = ~B, D, y
time = 15

[Command]
name = "Guard Cancel"
command = ~B, D, z
time = 15

[Command]
name = "tpunch_x"
command = ~F, D, DF, x
time = 15

[Command]
name = "tpunch_y"
command = ~F, D, DF, y
time = 15

[Command]
name = "tpunch_z"
command = ~F, D, DF, z
time = 15

[Command]
name = "quick_x"
command = ~D, DF, F, x
time = 15

[Command]
name = "quick_y"
command = ~D, DF, F, y
time = 15

[Command]
name = "quick_z"
command = ~D, DF, F, z
time = 15

[Command]
name = "itail_x"
command = ~B, DB, D, DF, F, x
time = 15

[Command]
name = "itail_y"
command = ~B, DB, D, DF, F, y
time = 15

[Command]
name = "itail_z"
command = ~B, DB, D, DF, F, z
time = 15

[Command]
name = "itail_x"
command = ~B, D, F, x
time = 15

[Command]
name = "itail_y"
command = ~B, D, F, y
time = 15

[Command]
name = "itail_z"
command = ~B, D, F, z
time = 15

[Command]
name = "thunder_x"
command = ~B, D, DB, x
time = 15

[Command]
name = "thunder_y"
command = ~B, D, DB, y
time = 15

[Command]
name = "thunder_z"
command = ~B, D, DB, z
time = 15

[Command]
name = "thunder_c"
command = ~B, D, DB, c
time = 15

[Command]
name = "jolt_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "jolt_y"
command = ~D, DB, B, y
time = 15

[Command]
name = "jolt_z"
command = ~D, DB, B, z
time = 15

[Command]
name = "charge"
command = ~D, DB, B, c
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

[Command]
name = "hold_a";Required (do not remove)
command = /a
time = 1

[Command]
name = "hold_b";Required (do not remove)
command = /b

time = 1
[Command]
name = "hold_c";Required (do not remove)
command = /c
time = 1

[Command]
name = "hold_x";Required (do not remove)
command = /x
time = 1

[Command]
name = "hold_y";Required (do not remove)
command = /y
time = 1

[Command]
name = "hold_z";Required (do not remove)
command = /z
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11

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
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101 && var(11) = 0
trigger4 = (stateno = [200,299]) && MoveContact
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
var(1) = 1

; Volt Tackle
[State -1,]
type = ChangeState
value = 3500
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "vtackle"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101 && var(11) = 0
trigger4 = (stateno = [200,299]) && MoveContact
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
trigger7 = stateno = 1205 && movecontact
trigger8 = stateno = [1300,1399]
trigger8 = statetype != A && movecontact
trigger9 = stateno = [1400,1499]
trigger9 = movecontact

; Wild Charge
[State -1,]
type = ChangeState
value = 3200
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "wildc"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101 && var(11) = 0
trigger4 = (stateno = [200,299]) && MoveContact
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
trigger7 = stateno = 1205 && movecontact
trigger8 = stateno = [1300,1399]
trigger8 = statetype != A && movecontact
trigger9 = stateno = [1400,1499]
trigger9 = movecontact

; Skull Bash (air)
[State -1,]
type = ChangeState
value = 3150
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "skullb"
triggerall = power >= 1000
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)
trigger7 = stateno = [1300,1399]
trigger7 = statetype = A && movecontact

; Skull Bash
[State -1,]
type = ChangeState
value = 3100
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "skullb"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101 && var(11) = 0
trigger4 = (stateno = [200,299]) && MoveContact
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
trigger7 = stateno = 1205 && movecontact
trigger8 = stateno = [1300,1399]
trigger8 = statetype != A && movecontact
trigger9 = stateno = [1400,1499]
trigger9 = movecontact

; Thundershock (air)
[State -1,]
type = ChangeState
value = 3050
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "thundershock"
triggerall = power >= 1000
triggerall = numhelper(3051) = 0
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)
trigger7 = stateno = [1300,1399]
trigger7 = statetype = A && movecontact

; Thundershock
[State -1,]
type = ChangeState
value = 3000
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "thundershock"
triggerall = power >= 1000
triggerall = numhelper(3001) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101 && var(11) = 0
trigger4 = (stateno = [200,299]) && MoveContact
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
trigger7 = stateno = 1205 && movecontact
trigger8 = stateno = [1300,1399]
trigger8 = statetype != A && movecontact
trigger9 = stateno = [1400,1499]
trigger9 = movecontact

;===========================================================================
;===========================================================================
; Iron Tail X (air)
[State -1]
type = ChangeState
value = 1201
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "itail_x"
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)
;===========================================================================
; Iron Tail Y (air)
[State -1]
type = ChangeState
value = 1201
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "itail_y"
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)
;===========================================================================
; Iron Tail Z (air)
[State -1]
type = ChangeState
value = 1201
triggerall = var(59) <= 0
triggerall = command = "itail_z"
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)

;===========================================================================
; Iron Tail X
[State -1]
type = ChangeState
value = 1200
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "itail_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,219]) && MoveContact
trigger4 = stateno = 220 && movecontact && animelemtime(5) > 0
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
;===========================================================================
; Iron Tail Y
[State -1]
type = ChangeState
value = 1200
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "itail_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,219]) && MoveContact
trigger4 = stateno = 220 && movecontact && animelemtime(5) > 0
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
;===========================================================================
; Iron Tail Z
[State -1]
type = ChangeState
value = 1200
triggerall = var(59) <= 0
triggerall = command = "itail_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,219]) && MoveContact
trigger4 = stateno = 220 && movecontact && animelemtime(5) > 0
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
;===========================================================================
; Thunder Punch X
[State -1]
type = ChangeState
value = 1400
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "tpunch_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,219]) && MoveContact
trigger4 = stateno = 220 && movecontact && animelemtime(5) > 0
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
;===========================================================================
; Thunder Punch Y
[State -1]
type = ChangeState
value = 1405
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "tpunch_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,219]) && MoveContact
trigger4 = stateno = 220 && movecontact && animelemtime(5) > 0
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
;===========================================================================
; Thunder Punch Z
[State -1]
type = ChangeState
value = 1410
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "tpunch_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,219]) && MoveContact
trigger4 = stateno = 220 && movecontact && animelemtime(5) > 0
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
;===========================================================================
; Quick Attack Air X
[State -1]
type = ChangeState
value = 1320
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "quick_x"
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)
;===========================================================================
; Quick Attack Air Y
[State -1]
type = ChangeState
value = 1321
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "quick_y"
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)
;===========================================================================
; Quick Attack Air Z
[State -1]
type = ChangeState
value = 1322
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "quick_z"
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)

;===========================================================================
; Quick Attack X
[State -1]
type = ChangeState
value = 1300
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "quick_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,219]) && MoveContact
trigger4 = stateno = 220 && movecontact && animelemtime(5) > 0
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
;===========================================================================
; Quick Attack Y
[State -1]
type = ChangeState
value = 1305
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "quick_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,219]) && MoveContact
trigger4 = stateno = 220 && movecontact && animelemtime(5) > 0
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
;===========================================================================
; Quick Attack Z
[State -1]
type = ChangeState
value = 1310
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "quick_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,219]) && MoveContact
trigger4 = stateno = 220 && movecontact && animelemtime(5) > 0
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
;===========================================================================
; Guard Cancel Thunder
[State -1]
type = ChangeState
value = 1150
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = power >= 500 && var(6) = 0
triggerall = StateType != A
triggerall = command = "Guard Cancel"
trigger1 = stateno = [150,153]

;===========================================================================
; Thunder X
[State -1]
type = ChangeState
value = 1100
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "thunder_x"
triggerall = numhelper(1101) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,219]) && MoveContact
trigger4 = stateno = 220 && movecontact && animelemtime(5) > 0
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
;===========================================================================
; Thunder Y
[State -1]
type = ChangeState
value = 1105
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "thunder_y"
triggerall = numhelper(1101) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,219]) && MoveContact
trigger4 = stateno = 220 && movecontact && animelemtime(5) > 0
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
;===========================================================================
; Thunder Z
[State -1]
type = ChangeState
value = 1110
triggerall = var(59) <= 0
triggerall = command = "thunder_z"
triggerall = numhelper(1101) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,219]) && MoveContact
trigger4 = stateno = 220 && movecontact && animelemtime(5) > 0
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
;===========================================================================
; Thunder self
[State -1]
type = ChangeState
value = 1115
triggerall = var(59) <= 0
triggerall = command = "thunder_c"
triggerall = numhelper(1116) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,219]) && MoveContact
trigger4 = stateno = 220 && movecontact && animelemtime(5) > 0
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
;===========================================================================
; Electro Ball X
[State -1]
type = ChangeState
value = 1050
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "jolt_x"
triggerall = numhelper(1051) = 0
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)

;===========================================================================
; Electro Ball Y
[State -1]
type = ChangeState
value = 1055
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "jolt_y"
triggerall = numhelper(1056) = 0
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)

;===========================================================================
; Electro Ball Z
[State -1]
type = ChangeState
value = 1060
triggerall = var(59) <= 0
triggerall = command = "jolt_z"
triggerall = numhelper(1061) = 0
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)
;===========================================================================
; Thunder Jolt X
[State -1]
type = ChangeState
value = 1000
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "jolt_x"
triggerall = numhelper(1001) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,219]) && MoveContact
trigger4 = stateno = 220 && movecontact && animelemtime(5) > 0
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
;===========================================================================
; Thunder Jolt Y
[State -1]
type = ChangeState
value = 1005
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = command = "jolt_y"
triggerall = numhelper(1006) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,219]) && MoveContact
trigger4 = stateno = 220 && movecontact && animelemtime(5) > 0
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
;===========================================================================
; Thunder Jolt Z
[State -1]
type = ChangeState
value = 1010
triggerall = var(59) <= 0
triggerall = command = "jolt_z"
triggerall = numhelper(1011) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,219]) && MoveContact
trigger4 = stateno = 220 && movecontact && animelemtime(5) > 0
trigger5 = (stateno = [400,499]) && MoveContact
trigger6 = stateno = 700 && MoveContact
;---------------------------------------------------------------------------
[State -1, Shield]
Type = Changestate
value = 130+(statetype = C)+(statetype = A)*2
triggerall = var(8) = 0
triggerall = !ishelper
triggerall = var(6)
triggerall = roundstate = 2
triggerall = stateno != [100,119]
Trigger1 = ctrl


;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
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
; Throw
[State -1, ]
type = ChangeState
value = 800
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = statetype = S
triggerall = stateno != [100,107]
triggerall = (command = "y") && (command = "z") || command = "b"
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------
; Charge
[State -1, Charge]
type = ChangeState
value = 196
;triggerall = var(13) < 300
triggerall = command = "charge"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Launcher
[State -1, Launcher]
type = ChangeState
value = 700
triggerall = var(8) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = stateno != [100,107]
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 410 && MoveContact
trigger6 = stateno = 220 && Movecontact
trigger7 = stateno = 420 && MoveContact

;---------------------------------------------------------------------------
; OTG
[State -1, OTG]
type = ChangeState
value = 710
triggerall = var(8) = 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = (ctrl) && (statetype = C)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 410 && MoveContact
trigger6 = stateno = 220 && MoveContact
trigger7 = stateno = 420 && MoveContact

;---------------------------------------------------------------------------
; Meteor Move
[State -1, Meteor Smash]
type = ChangeState
value = 720
triggerall = var(8) = 0
triggerall = command = "c"
triggerall = stateno != 101
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)

;---------------------------------------------------------------------------
; Dash Attack
[State -1, Dash Attack]
type = ChangeState
value = 750
triggerall = var(8) = 0
triggerall = var(59) <= 0
triggerall = stateno = 101
triggerall = var(11) = 0
trigger1 = command = "c"

;---------------------------------------------------------------------------
; Standing Light
[State -1, Standing Light]
type = ChangeState
value = 200
triggerall = var(8) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
; Standing Medium
[State -1, Standing Medium]
type = ChangeState
value = 210
triggerall = var(8) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 400 && MoveContact

;---------------------------------------------------------------------------
; Standing Heavy
[State -1, Standing Heavy]
type = ChangeState
value = 220
triggerall = var(8) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 410 && MoveContact

;---------------------------------------------------------------------------
; Crouching Light
[State -1, Crouching Light]
type = ChangeState
value = 400
triggerall = var(8) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = (ctrl) && (statetype = C)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 400 && animelemtime(3) >= 0

;---------------------------------------------------------------------------
; Crouching Medium
[State -1, Crouching Medium]
type = ChangeState
value = 410
triggerall = var(8) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = (ctrl) && (statetype = C)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 400 && MoveContact

;---------------------------------------------------------------------------
; Crouching Heavy
[State -1, Crouching Heavy]
type = ChangeState
value = 420
triggerall = var(8) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = (ctrl) && (statetype = C)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 400 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 410 && MoveContact

;---------------------------------------------------------------------------
; Jumping Light
[State -1, Jumping Light]
type = ChangeState
value = 600
triggerall = var(8) = 0
triggerall = command = "x"
trigger1 = (ctrl) && (statetype = A)


;---------------------------------------------------------------------------
; Jumping Medium
[State -1, Jumping Medium]
type = ChangeState
value = 610
triggerall = var(8) = 0
triggerall = command = "y"
trigger1 = (ctrl) && (statetype = A)
trigger2 = stateno = 600 && (movecontact)

;---------------------------------------------------------------------------
; Jumping Heavy
[State -1, Jumping Heavy]
type = ChangeState
value = 620
triggerall = var(8) = 0
triggerall = command = "z"
trigger1 = (ctrl) && (statetype = A)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact