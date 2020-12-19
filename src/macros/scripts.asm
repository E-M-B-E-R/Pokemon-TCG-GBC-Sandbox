start_script EQUS "rst $20"

run_command: MACRO
	db \1_index
ENDM

	const_def
	const ScriptCommand_EndScriptLoop1_index                         ; $00
	const ScriptCommand_CloseAdvancedTextBox_index                   ; $01
	const ScriptCommand_PrintTextString_index                        ; $02
	const Func_ccdc_index                                            ; $03
	const ScriptCommand_AskQuestionJump_index                        ; $04
	const ScriptCommand_StartBattle_index                            ; $05
	const ScriptCommand_PrintVariableText_index                      ; $06
	const Func_cda8_index                                            ; $07
	const ScriptCommand_PrintTextQuitFully_index                     ; $08
	const Func_cdcb_index                                            ; $09
	const ScriptCommand_MoveActiveNPCByDirection_index               ; $0a
	const ScriptCommand_CloseTextBox_index                           ; $0b
	const ScriptCommand_GiveBoosterPacks_index                       ; $0c
	const ScriptCommand_JumpIfCardOwned_index                        ; $0d
	const ScriptCommand_JumpIfCardInCollection_index                 ; $0e
	const ScriptCommand_GiveCard_index                               ; $0f
	const ScriptCommand_TakeCard_index                               ; $10
	const Func_cf53_index                                            ; $11
	const Func_cf7b_index                                            ; $12
	const ScriptCommand_CheckAmountOfCardsOwned_index                ; $13
	const ScriptCommand_JumpBasedOnFightingClubPupilStatus_index     ; $14
	const Func_cfc6_index                                            ; $15
	const Func_cfd4_index                                            ; $16
	const Func_d00b_index                                            ; $17
	const Func_d025_index                                            ; $18
	const Func_d032_index                                            ; $19
	const Func_d03f_index                                            ; $1a
	const ScriptCommand_Jump_index                                   ; $1b
	const ScriptCommand_TryGiveMedalPCPacks_index                    ; $1c
	const ScriptCommand_SetPlayerDirection_index                     ; $1d
	const ScriptCommand_MovePlayer_index                             ; $1e
	const ScriptCommand_ShowCardReceivedScreen_index                 ; $1f
	const ScriptCommand_SetDialogName_index                          ; $20
	const ScriptCommand_SetNextNPCandScript_index                    ; $21
	const Func_d095_index                                            ; $22
	const Func_d0be_index                                            ; $23
	const ScriptCommand_DoFrames_index                               ; $24
	const Func_d0d9_index                                            ; $25
	const ScriptCommand_JumpIfPlayerCoordMatches_index               ; $26
	const ScriptCommand_MoveActiveNPC_index                          ; $27
	const ScriptCommand_GiveOneOfEachTrainerBooster_index            ; $28
	const Func_d103_index                                            ; $29
	const Func_d125_index                                            ; $2a
	const Func_d135_index                                            ; $2b
	const Func_d16b_index                                            ; $2c
	const Func_cd4f_index                                            ; $2d
	const Func_cd94_index                                            ; $2e
	const ScriptCommand_MoveWramNPC_index                            ; $2f
	const Func_cdd8_index                                            ; $30
	const Func_cdf5_index                                            ; $31
	const Func_d195_index                                            ; $32
	const Func_d1ad_index                                            ; $33
	const Func_d1b3_index                                            ; $34
	const ScriptCommand_QuitScriptFully_index                        ; $35
	const Func_d244_index                                            ; $36
	const Func_d24c_index                                            ; $37
	const ScriptCommand_OpenDeckMachine_index                        ; $38
	const Func_d271_index                                            ; $39
	const ScriptCommand_EnterMap_index                               ; $3a
	const ScriptCommand_MoveArbitraryNPC_index                       ; $3b
	const Func_d209_index                                            ; $3c
	const Func_d38f_index                                            ; $3d
	const Func_d396_index                                            ; $3e
	const Func_cd76_index                                            ; $3f
	const Func_d39d_index                                            ; $40
	const Func_d3b9_index                                            ; $41
	const ScriptCommand_TryGivePCPack_index                          ; $42
	const ScriptCommand_nop_index                                    ; $43
	const Func_d3d4_index                                            ; $44
	const Func_d3e0_index                                            ; $45
	const Func_d3fe_index                                            ; $46
	const Func_d408_index                                            ; $47
	const Func_d40f_index                                            ; $48
	const ScriptCommand_PlaySFX_index                                ; $49
	const ScriptCommand_PauseSong_index                              ; $4a
	const ScriptCommand_ResumeSong_index                             ; $4b
	const Func_d41d_index                                            ; $4c
	const ScriptCommand_WaitForSongToFinish_index                    ; $4d
	const Func_d435_index                                            ; $4e
	const ScriptCommand_AskQuestionJumpDefaultYes_index              ; $4f
	const Func_d2f6_index                                            ; $50
	const Func_d317_index                                            ; $51
	const Func_d43d_index                                            ; $52
	const ScriptCommand_EndScriptLoop2_index                         ; $53
	const ScriptCommand_EndScriptLoop3_index                         ; $54
	const ScriptCommand_EndScriptLoop4_index                         ; $55
	const ScriptCommand_EndScriptLoop5_index                         ; $56
	const ScriptCommand_EndScriptLoop6_index                         ; $57
	const ScriptCommand_SetFlagValue_index                           ; $58
	const ScriptCommand_JumpIfFlagZero1_index                        ; $59
	const ScriptCommand_JumpIfFlagNonzero1_index                     ; $5a
	const ScriptCommand_JumpIfFlagEqual_index                        ; $5b
	const ScriptCommand_JumpIfFlagNotEqual_index                     ; $5c
	const ScriptCommand_JumpIfFlagNotLessThan_index                  ; $5d
	const ScriptCommand_JumpIfFlagLessThan_index                     ; $5e
	const ScriptCommand_MaxOutFlagValue_index                        ; $5f
	const ScriptCommand_ZeroOutFlagValue_index                       ; $60
	const ScriptCommand_JumpIfFlagNonzero2_index                     ; $61
	const ScriptCommand_JumpIfFlagZero2_index                        ; $62
	const ScriptCommand_IncrementFlagValue_index                     ; $63
	const ScriptCommand_EndScriptLoop7_index                         ; $64
	const ScriptCommand_EndScriptLoop8_index                         ; $65
	const ScriptCommand_EndScriptLoop9_index                         ; $66
	const ScriptCommand_EndScriptLoop10_index                        ; $67

; Script Macros
end_script_loop: MACRO
	run_command ScriptCommand_EndScriptLoop1
ENDM
close_advanced_text_box: MACRO
	run_command ScriptCommand_CloseAdvancedTextBox
ENDM
print_text_string: MACRO
	run_command ScriptCommand_PrintTextString
	tx \1
ENDM

ask_question_jump: MACRO
	run_command ScriptCommand_AskQuestionJump
	tx \1
	dw \2
ENDM
start_battle: MACRO
	run_command ScriptCommand_StartBattle
	db \1
	db \2
	db \3
ENDM
print_variable_text: MACRO
	run_command ScriptCommand_PrintVariableText
	tx \1
	tx \2
ENDM

print_text_quit_fully: MACRO
	run_command ScriptCommand_PrintTextQuitFully
	tx \1
ENDM

move_active_npc_by_direction: MACRO
	run_command ScriptCommand_MoveActiveNPCByDirection
	dw \1
ENDM
close_text_box: MACRO
	run_command ScriptCommand_CloseTextBox
ENDM
give_booster_packs: MACRO
	run_command ScriptCommand_GiveBoosterPacks
	db \1
	db \2
	db \3
ENDM
jump_if_cardowned: MACRO
	run_command ScriptCommand_JumpIfCardOwned
	db \1
	dw \2
ENDM
jump_if_card_in_collection: MACRO
	run_command ScriptCommand_JumpIfCardInCollection
	db \1
	dw \2
ENDM

move_player: MACRO
	run_command ScriptCommand_MovePlayer
	db \1
	db \2
ENDM

end_script_loop_2: MACRO
	run_command ScriptCommand_EndScriptLoop2
ENDM
end_script_loop_3: MACRO
	run_command ScriptCommand_EndScriptLoop3
ENDM
end_script_loop_4: MACRO
	run_command ScriptCommand_EndScriptLoop4
ENDM
end_script_loop_5: MACRO
	run_command ScriptCommand_EndScriptLoop5
ENDM
end_script_loop_6: MACRO
	run_command ScriptCommand_EndScriptLoop6
ENDM

end_script_loop_7: MACRO
	run_command ScriptCommand_EndScriptLoop7
ENDM
end_script_loop_8: MACRO
	run_command ScriptCommand_EndScriptLoop8
ENDM
end_script_loop_9: MACRO
	run_command ScriptCommand_EndScriptLoop9
ENDM
end_script_loop_10: MACRO
	run_command ScriptCommand_EndScriptLoop10
ENDM

