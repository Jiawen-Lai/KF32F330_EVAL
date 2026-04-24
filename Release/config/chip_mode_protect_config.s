	.file	"chip_mode_protect_config.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.export	_config_Protect_Set
	.section .protectconfig$_config_Protect_Set
	.type	.protectconfig$_config_Protect_Set$scode_local_1, @function
	.protectconfig$_config_Protect_Set$scode_local_1:
	.align	2
	.type	_config_Protect_Set, @object
	.size	_config_Protect_Set, 4
_config_Protect_Set:
	.long	-1515890086
	.export	_config_Mode_Set
	.section .modeconfig$_config_Mode_Set
	.type	.modeconfig$_config_Mode_Set$scode_local_2, @function
	.modeconfig$_config_Mode_Set$scode_local_2:
	.align	2
	.type	_config_Mode_Set, @object
	.size	_config_Mode_Set, 4
_config_Mode_Set:
	.long	-2023406815
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_3, @function
	.debug_info$scode_local_3:
.Ldebug_info0:
	.long	0x45
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF2
	.byte	0x1
	.long	.LASF3
	.long	.LASF4
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x1
	.byte	0xc
	.long	0x2f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_config_Mode_Set
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF1
	.byte	0x1
	.byte	0x14
	.long	0x2f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_config_Protect_Set
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_4, @function
	.debug_abbrev$scode_local_4:
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.byte	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_5, @function
	.debug_aranges$scode_local_5:
	.long	0x14
	.short	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.short	0
	.short	0
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_6, @function
	.debug_line$scode_local_6:
.Ldebug_line0:
	.long	.LELT0-.LSLT0
.LSLT0:
	.short	0x3
	.long	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf2
	.byte	0xd
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1
	.ascii	"../config"
	.byte	0
	.byte	0
	.string	"chip_mode_protect_config.c"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.Letext0
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_7, @function
	.debug_str$scode_local_7:
.LASF0:
	.string	"_config_Mode_Set"
.LASF2:
	.string	"GNU C 4.7.0"
.LASF3:
	.string	"../config/chip_mode_protect_config.c"
.LASF4:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\TEST_Prj\\\\Release"
.LASF1:
	.string	"_config_Protect_Set"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
