
#NoEnv                          ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%     ; Ensures a consistent starting directory.
#IfWinActive ahk_class grcWindow  ; Disables hotkeys when alt-tabbed or GTA is closed.
;                                                               ———Assign Hotkey and Delay Values———
EWO := "Numpad0"     ; Set keybinding for macro here. Automatic snacking. Eats 2 snacks from second snack slot.
BST := "NumpadEnter"                ; Set keybinding for macro here. Open Snack menu.
ArmorKey := "Numpad1"                ; Set keybinding for macro here.
RPGAmmoKey := "F3"               ; Set keybinding for macro here.
CeoStart := "NumpadDot"               ; Set keybinding for macro here.
CeoGhost := "Numpad3"               ; Set keybinding for macro here.
PassiveEwo := "F7"               ; Set keybinding for macro here.
RapidSniper := "``"               ; Set keybinding for macro here.
RPGReload := "3"               ; Set keybinding for macro here.
IntMenuDelay := 60             ; Sets value(ms) for additional delay after opening interaction menu.
KeySendDelay := 15              ; Sets value(ms) for delay between send key commands.
KeyPressDuration := 3           ; Sets value(ms) for duration each key press is held down.
;                                                                       —-Hotkey Code Section—-
Hotkey, %EWO%, EWO     ; Assigns above value to hotkey. Do not change this line.
Hotkey, %BST%, BST     ; Assigns above value to hotkey. Do not change this line.
Hotkey, %ArmorKey%, Armor       ; Assigns above value to hotkey. Do not change this line.
Hotkey, %RPGAmmoKey%, RPGAmmo     ; Assigns above value to hotkey. Do not change this line.
Hotkey, %CeoStart%, CEO     ; Assigns above value to hotkey. Do not change this line.
Hotkey, %CeoGhost%, Ghost     ; Assigns above value to hotkey. Do not change this line.
Hotkey, %RPGReload%, RapidRPG     ; Assigns above value to hotkey. Do not change this line.
Hotkey, %RapidSniper%, RapidSniper     ; Assigns above value to hotkey. Do not change this line.
Hotkey, %PassiveEwo%, PassiveEwo     ; Assigns above value to hotkey. Do not change this line.
Return
setkeydelay, KeySendDelay, KeyPressDuration             ; Sets delay(ms) between keystrokes issued. Arguments are delay between keystrokes and press duration, respectively.
; They might be able to go lower but these values are pretty fast and work reliably.
;                                                                         —-Macro Code Section—-
;                                                                            —-Passive EWO-
;                                                                       Kill Your Self Passive
PassiveEwo:                     ; EWO Macro
Send {m}                        ; Opens Interaction Menu
sleep, IntMenuDelay             ; Necessary delay to allow interaction menu to open properly while keeping keystroke delay short.
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {Up}{Up}{CapsLock}{C down}{Return}{C up}    ; Keystrokes to EWO
return                          ; Separates Hotkey Entries
;

;											-Sniperrrr Quick Shot-
RapidSniper:                     ; Start CEO Macro
Send {5}{Alt}    ; Keystrokes to CEO
return                          ; Separates Hotkey Entries
;
;															--RPGRAPID--
;                                                    --Bind heavy to4 and explosives to 5-- have rpg 2nd in heavy list--
;                                                 -- or move to it with the 4 button until you hit the rpg, then do this --
;											-must press 3 each time before you shoot-
RapidRPG:                     ; Start RPG Macro
Send {5}{4}    ; Keystrokes to CEO
sleep, IntMenuDelay             ;
Send {LButton}    ;
return                          ; Separates Hotkey Entries
;
;															--CEO-GHOST--
Ghost:                     ; Start Ghost Macro
Send {m}                        ; Opens Interaction Menu
sleep, IntMenuDelay             ; Necessary delay to allow interaction menu to open properly while keeping keystroke delay short.
Send {Enter}{Up}{Up}{Up}{Enter}{Up}{Up}{Up}{Enter}    ; Keystrokes to CEO
return                          ; Separates Hotkey Entries
;
;																--Start-CEO---
CEO:                     ; Start CEO Macro
Send {m}                        ; Opens Interaction Menu
sleep, IntMenuDelay             ; Necessary delay to allow interaction menu to open properly while keeping keystroke delay short.
Send {Down}{Down}{Down}{Down}{Down}{Down}{Down}{Enter}{Enter}{Enter}    ; Keystrokes to CEO
return                          ; Separates Hotkey Entries
;                                                                            —-EWO-
;                                                                       Kill Your Self
EWO:                     ; EWO Macro
Send {m}                        ; Opens Interaction Menu
sleep, IntMenuDelay             ; Necessary delay to allow interaction menu to open properly while keeping keystroke delay short.
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {Up}{Up}{C down}{Return}{C up}    ; Keystrokes to EWO
return                          ; Separates Hotkey Entries
;                                                                            —-Bullshark—-
;                                                               Drop dat testo
BST:                                 ; BST Macro
Send {m}                        ; Opens Interaction Menu
sleep, IntMenuDelay             ; Necessary delay to allow interaction menu to open properly while keeping keystroke delay short.
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {Enter}{Up}{Up}{Up}{Enter}{Down}{Enter}    ; Keystrokes to drop that shit
return                          ; Separates Hotkey Entries
;                                                                            —-Armor—-
;                                                               Drop some armor
Armor:                          ; Armor Macro
Send {m}                        ; Opens Interaction Menu
sleep, IntMenuDelay             ; Necessary delay to allow interaction menu to open properly while keeping keystroke delay short.
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {Enter}{Up}{Up}{Up}{Enter}{Up}{Up}{Up}{Up}{Enter}           ; Opens Armor Menu
return                          ; Separates Hotkey Entries

;                                                                     —-RpgAmmo—-
;                                                                   Buys rpg ammo, must be in CEO and have rpg equipped
RPGAmmo:                         ; Vehicle Request Macro
Send {m}                        ; Opens Interaction Menu
sleep, IntMenuDelay             ; Necessary delay to allow interaction menu to open properly while keeping keystroke delay short.
; Try to keep this value + the keystroke delay at least 80 ms for proper function.
Send {Down}{Down}{Enter}{Down}{Down}{Down}{Enter}{Left}{Down}{Right}{Down}{Down}{Enter}{m}                         ; Requests vehicle and exits automatically
return                                                                  ; Separates Hotkey Entries

Numpad2::
{

send {m}

send {down}{down}{Enter}{down}{down}{Enter}
return
}

insert::
{

send {m}

send {down}{Enter}{down}{down}{Enter}
return
}

Numpad7::
{

send, {m}
sleep, IntMenuDelay

send {down}{down}{Enter}{down}{Enter}{up}{up}{up}{Enter}{m}
return
}

Numpad9::
{

send, {m}
sleep, IntMenuDelay 

send {down}{Enter}{down}{Enter}{up}{up}{up}{Enter}{m}
return
}