﻿#NoEnv
#KeyHistory, 0
#SingleInstance force
#MaxThreadsBuffer on
#Persistent
;#NoTrayIcon ;if you care (not reccomend)
SetBatchLines, -1
ListLines, Off
SetWorkingDir %A_ScriptDir%
 
Gui, Font, cGreen
Gui, Font, s10
Gui, Add, Text, x30 y10, Apex No Recoil Hacked Client By Hakder Gaming
Gui, Font, s12
Gui, Add, Text, x30 y+15, Setting :
Gui, Font, s10
Gui, Add, Text, x30 y+5, "F1" light anti-recoil (r301 best)
Gui, Add, Text, x30 y+5, "F2" medium anti-recoil (r99-30-30 best)
Gui, Add, Text, x30 y+5, "F3" high anti-recoil (all red snipers best)
Gui, Add, Text, x30 y+5, "F4" red machine gun
Gui, Add, Text, x30 y+5, "F5" havoc
Gui, Add, Text, x30 y+5, "F6" ProwlerSelect
Gui, Add, Text, x30 y+5, "F7" Volt
Gui, Add, Text, x30 y+5, "F8" Flatline(improved)
Gui, Add, Text, x30 y+5, "F9" Spitfire (improved)/Scout
Gui, Add, Text, x30 y+5, "F10" Lstar
Gui, Add, Text, x30 y+5,  "F11" Devotion
Gui, Add, Text, x30 y+5,  "F12" DevotionSelect
Gui, Add, Text, x30 y+5,  "Numepad1" HavocSelect
Gui, Add, Text, x30 y+5,  "Numepad2" Hemlok
Gui, Add, Text, x30 y+5,  "Numepad3" p2020/wigman
Gui, Add, Text, x30 y+5, "5" Reset Script
Gui, Add, Text, x30 y+5, "ESC" pause script
 
Gui, -AlwaysOnTop
Gui, Color, Black
Gui, Show, w350 h450, No Recoil Script
 
SetBatchLines -1                        ;removes default 10ms delay between lines 
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
;if not A_IsAdmin {
;   Run *RunAs "%A_ScriptFullPath%"  
;   ExitApp
;}
 
;-----editplz-----
sens:=2
bind_bhop=mbutton ;This button should be binded sub-crouch[hold] key in Game setting
subjumpkey=9 ;This button should be binded sub-Jump key in Game setting
subshootkey=0 ;This button should be binded sub-Attack key in Game setting
 
bind_1=1
bind_2=2
bind_run=3 ;Run key
bind_reset=5 ;Reset button
bind_granade=g ;Granade key
bind_r31=f1
bind_r9=f2
bind_alt=f3
bind_re=f4
bind_spit=f9
bind_pross=f6
bind_volt=f7
bind_lstar=f10
bind_pros=Numpad1
bind_flat=f8
bind_devo=f11
bind_tdevo=f12
bind_havoc=f5
bind_hemlok=Numpad2
bind_scout=Numpad3
;----hotkey registor-----
Hotkey, ~$*%bind_1%, key_1
Hotkey, ~$*%bind_2%, key_2
Hotkey, ~$*%bind_run%, key_3
Hotkey, ~$*%bind_r31%, r301
Hotkey, ~$*%bind_r9%, r99
Hotkey, ~$*%bind_alt%, alternator
Hotkey, ~$*%bind_re%, re45
Hotkey, ~$*%bind_spit%, spitfire
Hotkey, ~$*%bind_pross%, prowlerselect
Hotkey, ~$*%bind_volt%, volt
Hotkey, ~$*%bind_lstar%, lstar
Hotkey, ~$*%bind_havoc%, havoc
Hotkey, ~$*%bind_pros%, prowler
Hotkey, ~$*%bind_flat%, flatline
Hotkey, ~$*%bind_devo%, devotion
Hotkey, ~$*%bind_tdevo%, taabodevotion
Hotkey, ~$*%bind_hemlok%, hemlok
Hotkey, ~$*%bind_scout%, scout
Hotkey, ~$*%bind_reset%, key_reset
Hotkey, ~$*%bind_granade%, key_granade
Hotkey, ~$*%bind_bhop%, key_bhop
; ~~~~~~~~~~~~~~~~~Pattern~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
no_pattern := {}
r301_pattern := {1: "-1.5,5.2,80", 2: "0.9,8.1,80", 3: "-0.5,8.9,80"
,4: "-0.2,0.2,80", 5: "-0.1,0.2,80", 6: "-0.3,0.6,80"
,7: "-1.3,2.1,80", 8: "-1.3,0.2,80", 9: "-1.7,3.2,80"
,10: "-0.6,1.0,80", 11: "-1.4,1.4,80", 12: "0.6,0.1,80"
,13: "0.5,0.6,80", 14: "0.3,0.5,80", 15: "0.6,0.2,80"
,16: "0.3,0.9,80", 17: "0.5,0.9,80", 18: "0.0,2.2,80"
,19: "-0.2,0.9,80", 20: "-0.6,1.3,80", 21: "-0.8,1.3,80"
,22: "-1.5,2.1,80", 23: "-0.8,1.4,80", 24: "-0.6,1.4,80"
,25: "-0.8,0.0,80", 26: "-1.3,0.0,80", 27: "-1,0.0,80"
,28: "-0.8,0.0,80", 29: "0.7,0.0,80", 30: "0.6,0.0,80"}
			  
r99_pattern := {1: "-1.6,2,53", 2: "0.1,2,53", 3: "2.3,3.2,53"
,4: "-1.2,3,53", 5: "-1.6,5.9,53", 6: "-1.3,4.8,53"
,7: "-1.7,6.2,53", 8: "-1.1,4.4,53", 9: "0.2,2.5,52"
,10: "1.6,6.7,52", 11: "1.5,5.8,52", 12: "0.9,4.5,52"
,13: "1.5,2.2,52", 14: "-1,2.1,52", 15: "-1.2,0,52"
,16: "-1.4,1.8,52", 17: "-1.3,0.5,52", 18: "1.2,1.3,52"
,19: "0,1,52", 20: "1.5,0.7,52", 21: "1.5,0.7,52"
,22: "1.7,2,52", 23: "1.2,2,52", 24: "1.4,2,52"
,25: "1.3,1.5,52", 26: "1.2,2,52", 27: "-0.6,1.2,52"
,28: "-0.5,0,52", 29: "-0.4,1,52", 30: "0,0,52"}
 
alternator_pattern := {1: "0.0,14.4,95", 2: "0.0,13.0,109", 3: "0.0,15.8,109"
,4: "0.0,13.9,109", 5: "0.0,15.6,109", 6: "0.0,15.6,109"
,7: "-0.1,12.7,109", 8: "-0.1,7.3,95", 9: "-0.1,13.2,109"
,10: "-0.1,6.6,88", 11: "-0.1,9.8,109", 12: "-0.1,1.2,88"
,13: "-0.5,6.8,109", 14: "-0.5,4.6,109", 15: "-0.5,10.0,95"
,16: "0.0,9.3,109", 17: "0.5,3.2,109", 18: "0.3,9.8,109"
,19: "0.1,0.6,95", 20: "0.5,8.3,109", 21: "0.3,-0.2,88"
,22: "0.2,7.1,109", 23: "0.7,1.7,95", 24: "0.5,7.6,109"
,25: "0.4,-0.7,109", 26: "0.4,6.4,95", 27: "0.6,0.0,109"}
 
 
re45_pattern := {1: "-0.1,5.2,80", 2: "0.1,8.1,80", 3: "-0.1,8.9,80"
,4: "-0.1,0.2,80", 5: "-0.1,0.2,80", 6: "-0.1,0.6,80"
,7: "-0.5,0.3,80", 8: "-0.3,0.2,80", 9: "-0.5,3.2,80"
,10: "-0.5,1.0,80", 11: "0.0,0.4,80", 12: "0.3,0.1,80"
,13: "0.5,0.6,80", 14: "0.3,0.5,80", 15: "0.6,0.2,80"
,16: "0.3,0.9,80", 17: "0.5,0.9,80", 18: "0.0,2.2,80"
,19: "-0.2,0.9,80", 20: "-0.1,1.3,80", 21: "-0.2,1.3,80"
,22: "-0.7,0.0,80", 23: "-0.4,1.4,80", 24: "-0.4,1.4,80"
,25: "-0.4,0.0,80", 26: "0.0,0.0,80", 27: "0.0,0.0,80"
,28: "0.0,0.0,80", 29: "0.0,0.0,80", 30: "0.0,0.0,80"}
 
spitfire_pattern := {1: "1.1,3.2,110", 2: "1.5,3.1,110", 3: "2.3,2.2,110", 4: "2.3,4.0,110"
,5: "1.3,5.2,110", 6: "-0.3,2.2,110", 7: "-2.5,2.6,110", 8: "-3.6,-2.0,110"
,9: "-2.7,-1.6,110", 10: "-3.9,3.2,110", 11: "-2.7,6.6,110", 12: "4.5,2.0,110"
,13: "2.9,4.4,110", 14: "1.1,1.4,110", 15: "2.3,-1.6,110", 16: "4.2,1.4,110"
,17: "1.8,7.8,110", 18: "2.3,2.1,110", 19: "1.4,2.4,110", 20: "2.0,1.8,110"
,21: "3.9,0.6,113", 22: "-1.2,2,113", 23: "-1.6,2.5,113", 24: "-2.5,2,113"
,25: "-2.8,2.2,113", 26: "-2.1,1,113", 27: "-1.8,-1,113", 28: "-2.3,3.6,113"
,29: "-2.5,4.2,113", 30: "-0.3,4.2,113", 31: "-2.1,-2.0,113", 32: "-2.7,-1.6,113"
,33: "-3.9,2.2,113", 34: "-2.2,3,113", 35: "3.5,1.5,113", 36: "2.3,3.4,113"
,37: "2.1,1.4,113", 38: "2.3,-1.6,113", 39: "2.2,1.4,113", 40: "1.8,7.8,113"
,41: "3.3,7.6,113", 42: "1.1,4.4,113", 43: "9.0,1.8,113", 44: "3.9,0.6,113"
,45: "-1.2,5.6,113", 46: "-2.1,3.2,113", 47: "-4.5,2.6,113", 48: "-1.8,3.2,113"
,49: "-3.2,2.0,113", 50: "-7.8,-2.0,113", 51: "-3.3,4.6,113", 52: "-1.5,6.2,113"
,53: "-0.3,6.2,113", 54: "-2.6,-2.0,113", 55: "-2.7,-1.6,113", 56: "-2.3,3.2,113"
,57: "-2.7,6.6,113", 58: "2.5,2.0,113", 59: "1.9,4.4,113", 60: "3.1,1.4,113"
,61: "3.6,-1.6,113"}
 
prowlerselect_pattern := {1: "2,15.2,120", 2: "2,11.7,120", 3: "2,12.9,120"
,4: "2,12.4,120", 5: "3,9.4,120", 6: "3,10.6,120"
,7: "3,9.0,120", 8: "3,8.5,120", 9: "-2,3.9,120"
,10: "-3,6.0,120", 11: "-3,6.0,120", 12: "-3,6.4,120"
,13: "-3,6.9,120", 14: "-3,3.9,120", 15: "3,7.8,120"
,16: "3,4.8,120", 17: "3,3.7,120", 18: "0,3.9,120"
,19: "0,6.0,120", 20: "0.0,5.3,120", 21: "0.0,0.0,120"}
			  
volt_pattern := {1: "0.0,12.4,81", 2: "0.0,11.0,81", 3: "-1.5,13.8,81"
,4: "-1.7,11.9,81", 5: "-1.7,13.6,81", 6: "-2.5,13.6,81"
,7: "-2.5,7.7,81", 8: "-2,5.3,81", 9: "-2.5,5.2,81"
,10: "-2.0,4.6,81", 11: "1.0,3.8,81", 12: "2.7,1.2,81"
,13: "4.0,6.8,81", 14: "6.0,4.6,81", 15: "5.0,3.0,81"
,16: "5.0,4.3,81", 17: "5.0,3.2,81", 18: "5.0,2.8,81"
,19: "4.0,1.7,81", 20: "4.1,8.3,81", 21: "3.0,2.2,81"
,22: "0.0,0.0,81", 23: "0.0,0.0,81", 24: "0.0,0.0,81"
,25: "0.0,0.0,81", 26: "0.0,0.0,81", 27: "0.0,0.0,81"}
 
 
scout_pattern := {1: "0,5,60", 2: "0,5,55", 3: "0,5,60"
,4: "0,5,55", 5: "0,5,60", 6: "0,5,60"
,7: "0,5,55", 8: "0,5,60", 9: "0,5,60"
,10: "0,5,55", 11: "0,5,60", 12: "0,5,60"
,13: "0,5,55", 14: "0,5,60", 15: "0,5,60"
,16: "0,5,55", 17: "0,5,60", 18: "0,5,60"
,19: "0,5,55", 20: "0,5,60", 21: "0,5,60"
,22: "0,5,55", 23: "0,5,60", 24: "0,5,60"
,25: "0,5,55", 26: "0,5,60", 27: "0,5,60"
,28: "0,5,55", 29: "0,5,60", 30: "0,5,60"}
 
 
hemlok_pattern := {1: "-0.5,6,60", 2: "0,6,60", 3: "2,6,60"
,4: "-0.5,6,60", 5: "0,6,60", 6: "2,6,60"
,7: "-0.5,6,60", 8: "0,6,60", 9: "2,6,60"
,10: "-0.5,6,60", 11: "0,6,60", 12: "2,6,60"
,13: "-0.5,6,60", 14: "0,6,60", 15: "2,6,60"
,16: "-0.4,6,60", 17: "0,6,60", 18: "2,6,60"
,19: "-0.4,6,60", 20: "0,6,60", 21: "2,6,60"
,22: "-0.4,6,60", 23: "0,6,60", 24: "2,6,60"
,25: "-0.4,6,60", 26: "0,6,60", 27: "2,6,60"
,28: "-0.4,6,60", 29: "0,6,60", 30: "2,6,60"}
 
 
lstar_pattern := {1: "5,5,37", 2: "5,5,37", 3: "5,5,37"
,4: "5,5,37", 5: "5,5,37", 6: "5,5,37"
,7: "2,5,37", 8: "2,5,37", 9: "2,5,37"
,10: "1,5,37", 11: "1,5,37", 12: "-2,5,37"
,13: "-2,5,32", 14: "-2,5,32", 15: "-2,5,32"
,16: "-2,5,42", 17: "-2,5,42", 18: "-2,5,42"
,19: "-2,5,42", 20: "-2,5,42", 21: "-2,5,42"
,22: "-2,5,42", 23: "-2,5,55", 24: "-1,5,55"
,25: "-1,5,55", 26: "-1,5,55", 27: "-1,5,55"
,28: "-1,5,60", 29: "-1,5,60", 30: "-1,5,60"
,31: "-1,5,60", 32: "-1,5,60", 33: "-1,5,60"
,34: "1,5,65", 35: "1,5,65", 36: "1,5,65"
,37: "1,5,65", 38: "1,5,65", 39: "1,5,65"
,40: "0,5,65", 41: "0,5,65", 42: "0,5,65"
,43: "0,5,65", 44: "0,5,65", 45: "0,5,65"}
 
 
havoc_pattern := {1: "0.0,0.0,460", 2: "-15,14.8,84", 3: "-5,14.9,84"
,4: "5,13.4,84", 5: "5,11.8,84", 6: "5,11.0,84"
,7: "2,11,84", 8: "2,14.1,84", 9: "2,10.1,65"
,10: "-2,5.5,65", 11: "-2.4,5.2,65", 12: "-2.2,5,65"
,13: "-2,1.5,65", 14: "-1,1.2,65", 15: "-1,1,65"
,16: "-1.,1,65", 17: "-1.5,0.8,65", 18: "1.5,0.5,65"
,19: "1.6,0.5,65", 20: "1.8,-0.8,65", 21: "1.8,-0.9,65"
,22: "1.8,-1.2,65", 23: "1.8,-1.4,65", 24: "1.8,-1.5,65"
,25: "1,5,65", 26: "1.5,5.5,65", 27: "1.8,6,65"
,28: "1.8,7,65", 29: "2.5,8,65", 30: "2.5,10,65"
,31: "2.5,11,65", 32: "2.5,16,65", 33: "2.5,16,65"}
 
 
 
prowler_pattern := {1: "0.0,0.0,10", 2: "-15,12.8,84", 3: "-5,12.9,84"
,4: "0,11.4,84", 5: "3,9.8,84", 6: "4,9.0,84"
,7: "4,9.1,84", 8: "2,12.1,84", 9: "-0.9,12.1,84"
,10: "0,12.1,84", 11: "0,10.3,84", 12: "-2,6.4,84"
,13: "-3.5,5.1,84", 14: "-4.0,3.1,84", 15: "-5.0,2.1,84"
,16: "-5.4,2,83", 17: "-5.4,1.5,83", 18: "-4.0,5.4,83"
,19: "-1.9,5,83", 20: "0,5,84", 21: "0,5,84"
,22: "2.8,5.8,84", 23: "2.0,5.8,84", 24: "0.9,2.8,84"
,25: "-0.9,5.5,84", 26: "-2.0,5.5,84", 27: "0.0,6,84"
,28: "0.0,6.5,84", 29: "0.0,7,84", 30: "0.0,7,84"
,31: "0.0,7,84", 32: "0.0,7,84", 33: "0.0,7,100"}
 
 
devotion_pattern := {1: "0.0,0.0,40", 2: "0.8,24.5,180", 3: "0.3,20.0,170"
,4: "0.3,23.5,140", 5: "2.0,23.2,120", 6: "3.1,19.5,100"
,7: "2.8,12.6,85", 8: "2.8,10.6,85", 9: "6.2,4.8,85"
,10: "2.8,6.4,85", 11: "3.1,5.8,68", 12: "4.8,7.1,68"
,13: "5.0,4.4,68", 14: "6.2,2.3,68", 15: "7.6,1.8,68"
,16: "7.0,0.5,68", 17: "4.2,-1.6,68", 18: "6.2,1.6,68"
,19: "-1.4,4.6,68", 20: "0.0,5.3,66", 21: "-3.9,3.9,66"
,22: "-4.5,2.3,66", 23: "-4.5,2.5,66", 24: "-6.7,3.0,66"
,25: "-7.0,3.0,66", 26: "-3.1,3.2,66", 27: "1.7,3.7,66"
,28: "-1.4,4.8,66", 29: "-3.6,4.4,66", 30: "-5.0,3.5,70"
,31: "-6.2,2.1,70", 32: "-5.6,-0.5,70", 33: "-5.6,-0.5,70"
,34: "-4.8,3.7,70", 35: "-4.8,3.7,67", 36: "-0.8,4.1,67"
,37: "-2.8,3.5,67", 38: "2.0,3.5,67", 39: "2.0,3.5,66"
,40: "-1.4,3.7,67", 41: "-1.4,2.8,67", 42: "-3.6,1.6,67"
,43: "-1.4,2.3,67", 44: "0.0,3.0,67", 45: "3.6,1.8,67"}
 
taabodevotion_pattern := {1: "0.0,0.0,40", 2: "0.8,24.5,140", 3: "0.3,20.0,140"
,4: "0.3,23.5,140", 5: "2.0,23.2,100", 6: "3.1,19.5,100"
,7: "3.8,12.6,100", 8: "4.2,10.6,100", 9: "5.2,4.8,100"
,10: "2.8,6.4,85", 11: "3.1,5.8,68", 12: "4.8,7.1,68"
,13: "5.0,4.4,68", 14: "6.2,2.3,68", 15: "7.6,1.8,68"
,16: "7.0,0.5,68", 17: "4.2,-1.6,68", 18: "6.2,1.6,68"
,19: "-1.4,4.6,68", 20: "0.0,5.3,66", 21: "-3.9,3.9,66"
,22: "-4.5,2.3,66", 23: "-4.5,2.5,66", 24: "-6.7,3.0,66"
,25: "-7.0,3.0,66", 26: "-3.1,3.2,66", 27: "1.7,3.7,66"
,28: "-1.4,4.8,66", 29: "-3.6,4.4,66", 30: "-5.0,3.5,70"
,31: "-6.2,2.1,70", 32: "-5.6,-0.5,70", 33: "-5.6,-0.5,70"
,34: "-4.8,3.7,70", 35: "-4.8,3.7,67", 36: "-0.8,4.1,67"
,37: "-2.8,3.5,67", 38: "2.0,3.5,67", 39: "2.0,3.5,66"
,40: "-1.4,3.7,67", 41: "-1.4,2.8,67", 42: "-3.6,1.6,67"
,43: "-1.4,2.3,67", 44: "0.0,3.0,67", 45: "3.6,1.8,67"}
 
 
flatline_pattern := {1: "3.0,12.8,110", 2: "1.5,5.2,110", 3: "9.6,8.8,110", 4: "6.3,6.9,110"
,5: "3.3,3.6,110", 6: "-1.3,5.4,110", 7: "-2.5,2.2,110", 8: "-4.1,-2.0,110"
,9: "-1.5,-1.3,110", 10: "-3.2,3.5,110", 11: "-1.7,3.6,110", 12: "4.3,2.0,110"
,13: "9.9,3.9,110", 14: "4.9,1.9,110", 15: "9.6,-1.6,110", 16: "4.2,2.1,110"
,17: "1.8,2.3,110", 18: "3.3,3.2,110", 19: "6.9,2.6,110", 20: "9.0,1.8,110"
,21: "3.9,0.6,113", 22: "-1.2,2.8,113", 23: "-7.2,2.5,113", 24: "-5.5,2,113"
,25: "-3.2,2.2,113", 26: "-4.9,1.5,113", 27: "-4.2,1,113"}
 
 
;~~~~~~~~~~~~~~~~~~~~~~~Base state~~~~~~~~~~~~~~~~~~~~~~~~~~
slotA:=1 ;Slot1 activate memory Var
slotB:=0 ;Slot2 activate memory Var
memA:=non ,memB:=non ;Weapon pattern memory Var
memR1:=0 memR2:=0 ;Fire-mode memory Var
active_pattern:=no_pattern
modifier:= 3.4/sens
rate=10
volume=0
SAPI := ComObjCreate("SAPI.SpVoice")
SAPI.rate:=rate
SAPI.volume:=volume
rapidmode:=0
 
isCursorShown()
{
StructSize := A_PtrSize + 16
VarSetCapacity(InfoStruct, StructSize)
NumPut(StructSize, InfoStruct)
DllCall("GetCursorInfo", UInt, &InfoStruct)
Result := NumGet(InfoStruct, 8)
if Result > 1
Return 1
else
Return 0
}
Loop {
Sleep 50
if isCursorShown() == 1
mice:=1
else
mice:=0
}
 
; ~~~~~~~~~~~~~~~~~Base activation~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
key_1:
slotA:=1
slotB:=0
active_pattern:=%memA%_pattern
rapidmode:=memR1
SAPI.Speak(memA)
return
 
key_2:
slotA:=0
slotB:=1
active_pattern:=%memB%_pattern
rapidmode:=memR2
SAPI.Speak(memB)
return
 
key_3:
key_granade:
active_pattern:=no_pattern
rapidmode:=()
if GetKeyState(bind_run,"P")
SAPI.Speak("runmode")
else if GetKeyState(bind_granade,"P")
SAPI.Speak("granade")
return
 
key_reset:
active_pattern:=no_pattern
slotA:=1
slotB:=0
memA:=non
memB:=non
memR1:=0
memR2:=0
rapidmode:=0
SAPI.Speak("allreset")
return
 
; ~~~~~~~~~~~~~~~~~~~~~~~~~~Weapon Profile~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;Full-Auto Weapon section
r301:
r99:
alternator:
re45:
spitfire:
lstar:
havoc:
flatline:
devotion:
taabodevotion:
volt:
prowler:
prowlerselect:
hemlok:
scout:
{
nullA := A_thislabel
active_pattern:=%nullA%_pattern
rapidmode:=0
if (slotA)
memA:=nullA ,memR1:=0
else
memB:=nullA ,memR2:=0
SAPI.Speak(nullA)
}
return
 
;Tap or burst weapon section
 
{
nullA := A_thislabel
active_pattern:=%nullA%_pattern
rapidmode:=1
if (slotA)
memA:=nullA ,memR1:=1
else
memB:=nullA ,memR2:=1
SAPI.Speak(nullA)
}
return
 
; ~~~~~~~~~~~~~~~~~~~~~~Main~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
key_bhop:
sleep 150
while GetKeyState(bind_bhop, "P")
{
Random, foo, 50, 100
Send % subjumpkey
Sleep %foo%
send {space}
sleep %foo%
}
return
 
#IF mice=0 ; Disable switch cursor shown (start line)
~$*LButton::
sleep 5
loop {
if (rapidmode) ;For Tap Weapon
{
if a_index<3 ; remove bug
click
else
random, foo2, 1, 2
if(foo2=1)
click
else
send % subshootkey
}
x := strsplit(active_pattern[a_index],",")[1] ;using str insteed of normal array for easly edit pattern
y := strsplit(active_pattern[a_index],",")[2]
t := strsplit(active_pattern[a_index],",")[3]
dllcall("mouse_event","UInt",0x01,"UInt",x*modifier,"UInt",y*modifier)
sleep t
} until !GetKeyState("LButton","P") || a_index > active_pattern.maxindex()
return
#IF ; Disable switch cursor shown (end line)
 
~end::
SAPI.Speak("bye")
Exitapp
return
