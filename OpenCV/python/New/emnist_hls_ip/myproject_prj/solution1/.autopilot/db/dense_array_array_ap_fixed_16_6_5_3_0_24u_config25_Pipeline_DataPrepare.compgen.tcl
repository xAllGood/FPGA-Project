# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1707 \
    name layer16_out \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_layer16_out \
    op interface \
    ports { layer16_out_dout { I 128 vector } layer16_out_empty_n { I 1 bit } layer16_out_read { O 1 bit } layer16_out_num_data_valid { I 6 vector } layer16_out_fifo_cap { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1708 \
    name data_199_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_199_out \
    op interface \
    ports { data_199_out { O 16 vector } data_199_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1709 \
    name data_198_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_198_out \
    op interface \
    ports { data_198_out { O 16 vector } data_198_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1710 \
    name data_197_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_197_out \
    op interface \
    ports { data_197_out { O 16 vector } data_197_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1711 \
    name data_196_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_196_out \
    op interface \
    ports { data_196_out { O 16 vector } data_196_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1712 \
    name data_195_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_195_out \
    op interface \
    ports { data_195_out { O 16 vector } data_195_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1713 \
    name data_194_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_194_out \
    op interface \
    ports { data_194_out { O 16 vector } data_194_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1714 \
    name data_193_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_193_out \
    op interface \
    ports { data_193_out { O 16 vector } data_193_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1715 \
    name data_192_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_192_out \
    op interface \
    ports { data_192_out { O 16 vector } data_192_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1716 \
    name data_191_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_191_out \
    op interface \
    ports { data_191_out { O 16 vector } data_191_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1717 \
    name data_190_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_190_out \
    op interface \
    ports { data_190_out { O 16 vector } data_190_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1718 \
    name data_189_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_189_out \
    op interface \
    ports { data_189_out { O 16 vector } data_189_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1719 \
    name data_188_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_188_out \
    op interface \
    ports { data_188_out { O 16 vector } data_188_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1720 \
    name data_187_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_187_out \
    op interface \
    ports { data_187_out { O 16 vector } data_187_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1721 \
    name data_186_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_186_out \
    op interface \
    ports { data_186_out { O 16 vector } data_186_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1722 \
    name data_185_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_185_out \
    op interface \
    ports { data_185_out { O 16 vector } data_185_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1723 \
    name data_184_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_184_out \
    op interface \
    ports { data_184_out { O 16 vector } data_184_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1724 \
    name data_183_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_183_out \
    op interface \
    ports { data_183_out { O 16 vector } data_183_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1725 \
    name data_182_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_182_out \
    op interface \
    ports { data_182_out { O 16 vector } data_182_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1726 \
    name data_181_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_181_out \
    op interface \
    ports { data_181_out { O 16 vector } data_181_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1727 \
    name data_180_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_180_out \
    op interface \
    ports { data_180_out { O 16 vector } data_180_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1728 \
    name data_179_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_179_out \
    op interface \
    ports { data_179_out { O 16 vector } data_179_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1729 \
    name data_178_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_178_out \
    op interface \
    ports { data_178_out { O 16 vector } data_178_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1730 \
    name data_177_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_177_out \
    op interface \
    ports { data_177_out { O 16 vector } data_177_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1731 \
    name data_176_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_176_out \
    op interface \
    ports { data_176_out { O 16 vector } data_176_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1732 \
    name data_175_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_175_out \
    op interface \
    ports { data_175_out { O 16 vector } data_175_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1733 \
    name data_174_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_174_out \
    op interface \
    ports { data_174_out { O 16 vector } data_174_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1734 \
    name data_173_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_173_out \
    op interface \
    ports { data_173_out { O 16 vector } data_173_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1735 \
    name data_172_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_172_out \
    op interface \
    ports { data_172_out { O 16 vector } data_172_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1736 \
    name data_171_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_171_out \
    op interface \
    ports { data_171_out { O 16 vector } data_171_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1737 \
    name data_170_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_170_out \
    op interface \
    ports { data_170_out { O 16 vector } data_170_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1738 \
    name data_169_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_169_out \
    op interface \
    ports { data_169_out { O 16 vector } data_169_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1739 \
    name data_168_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_168_out \
    op interface \
    ports { data_168_out { O 16 vector } data_168_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1740 \
    name data_167_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_167_out \
    op interface \
    ports { data_167_out { O 16 vector } data_167_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1741 \
    name data_166_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_166_out \
    op interface \
    ports { data_166_out { O 16 vector } data_166_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1742 \
    name data_165_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_165_out \
    op interface \
    ports { data_165_out { O 16 vector } data_165_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1743 \
    name data_164_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_164_out \
    op interface \
    ports { data_164_out { O 16 vector } data_164_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1744 \
    name data_163_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_163_out \
    op interface \
    ports { data_163_out { O 16 vector } data_163_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1745 \
    name data_162_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_162_out \
    op interface \
    ports { data_162_out { O 16 vector } data_162_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1746 \
    name data_161_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_161_out \
    op interface \
    ports { data_161_out { O 16 vector } data_161_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1747 \
    name data_160_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_160_out \
    op interface \
    ports { data_160_out { O 16 vector } data_160_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1748 \
    name data_159_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_159_out \
    op interface \
    ports { data_159_out { O 16 vector } data_159_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1749 \
    name data_158_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_158_out \
    op interface \
    ports { data_158_out { O 16 vector } data_158_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1750 \
    name data_157_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_157_out \
    op interface \
    ports { data_157_out { O 16 vector } data_157_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1751 \
    name data_156_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_156_out \
    op interface \
    ports { data_156_out { O 16 vector } data_156_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1752 \
    name data_155_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_155_out \
    op interface \
    ports { data_155_out { O 16 vector } data_155_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1753 \
    name data_154_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_154_out \
    op interface \
    ports { data_154_out { O 16 vector } data_154_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1754 \
    name data_153_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_153_out \
    op interface \
    ports { data_153_out { O 16 vector } data_153_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1755 \
    name data_152_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_152_out \
    op interface \
    ports { data_152_out { O 16 vector } data_152_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1756 \
    name data_151_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_151_out \
    op interface \
    ports { data_151_out { O 16 vector } data_151_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1757 \
    name data_150_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_150_out \
    op interface \
    ports { data_150_out { O 16 vector } data_150_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1758 \
    name data_149_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_149_out \
    op interface \
    ports { data_149_out { O 16 vector } data_149_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1759 \
    name data_148_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_148_out \
    op interface \
    ports { data_148_out { O 16 vector } data_148_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1760 \
    name data_147_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_147_out \
    op interface \
    ports { data_147_out { O 16 vector } data_147_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1761 \
    name data_146_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_146_out \
    op interface \
    ports { data_146_out { O 16 vector } data_146_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1762 \
    name data_145_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_145_out \
    op interface \
    ports { data_145_out { O 16 vector } data_145_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1763 \
    name data_144_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_144_out \
    op interface \
    ports { data_144_out { O 16 vector } data_144_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1764 \
    name data_143_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_143_out \
    op interface \
    ports { data_143_out { O 16 vector } data_143_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1765 \
    name data_142_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_142_out \
    op interface \
    ports { data_142_out { O 16 vector } data_142_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1766 \
    name data_141_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_141_out \
    op interface \
    ports { data_141_out { O 16 vector } data_141_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1767 \
    name data_140_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_140_out \
    op interface \
    ports { data_140_out { O 16 vector } data_140_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1768 \
    name data_139_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_139_out \
    op interface \
    ports { data_139_out { O 16 vector } data_139_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1769 \
    name data_138_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_138_out \
    op interface \
    ports { data_138_out { O 16 vector } data_138_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1770 \
    name data_137_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_137_out \
    op interface \
    ports { data_137_out { O 16 vector } data_137_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1771 \
    name data_136_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_136_out \
    op interface \
    ports { data_136_out { O 16 vector } data_136_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1772 \
    name data_135_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_135_out \
    op interface \
    ports { data_135_out { O 16 vector } data_135_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1773 \
    name data_134_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_134_out \
    op interface \
    ports { data_134_out { O 16 vector } data_134_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1774 \
    name data_133_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_133_out \
    op interface \
    ports { data_133_out { O 16 vector } data_133_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1775 \
    name data_132_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_132_out \
    op interface \
    ports { data_132_out { O 16 vector } data_132_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1776 \
    name data_131_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_131_out \
    op interface \
    ports { data_131_out { O 16 vector } data_131_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1777 \
    name data_130_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_130_out \
    op interface \
    ports { data_130_out { O 16 vector } data_130_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1778 \
    name data_129_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_129_out \
    op interface \
    ports { data_129_out { O 16 vector } data_129_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1779 \
    name data_128_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_128_out \
    op interface \
    ports { data_128_out { O 16 vector } data_128_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1780 \
    name data_127_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_127_out \
    op interface \
    ports { data_127_out { O 16 vector } data_127_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1781 \
    name data_126_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_126_out \
    op interface \
    ports { data_126_out { O 16 vector } data_126_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1782 \
    name data_125_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_125_out \
    op interface \
    ports { data_125_out { O 16 vector } data_125_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1783 \
    name data_124_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_124_out \
    op interface \
    ports { data_124_out { O 16 vector } data_124_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1784 \
    name data_123_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_123_out \
    op interface \
    ports { data_123_out { O 16 vector } data_123_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1785 \
    name data_122_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_122_out \
    op interface \
    ports { data_122_out { O 16 vector } data_122_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1786 \
    name data_121_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_121_out \
    op interface \
    ports { data_121_out { O 16 vector } data_121_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1787 \
    name data_120_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_120_out \
    op interface \
    ports { data_120_out { O 16 vector } data_120_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1788 \
    name data_119_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_119_out \
    op interface \
    ports { data_119_out { O 16 vector } data_119_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1789 \
    name data_118_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_118_out \
    op interface \
    ports { data_118_out { O 16 vector } data_118_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1790 \
    name data_117_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_117_out \
    op interface \
    ports { data_117_out { O 16 vector } data_117_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1791 \
    name data_116_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_116_out \
    op interface \
    ports { data_116_out { O 16 vector } data_116_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1792 \
    name data_115_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_115_out \
    op interface \
    ports { data_115_out { O 16 vector } data_115_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1793 \
    name data_114_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_114_out \
    op interface \
    ports { data_114_out { O 16 vector } data_114_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1794 \
    name data_113_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_113_out \
    op interface \
    ports { data_113_out { O 16 vector } data_113_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1795 \
    name data_112_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_112_out \
    op interface \
    ports { data_112_out { O 16 vector } data_112_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1796 \
    name data_111_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_111_out \
    op interface \
    ports { data_111_out { O 16 vector } data_111_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1797 \
    name data_110_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_110_out \
    op interface \
    ports { data_110_out { O 16 vector } data_110_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1798 \
    name data_109_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_109_out \
    op interface \
    ports { data_109_out { O 16 vector } data_109_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1799 \
    name data_108_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_108_out \
    op interface \
    ports { data_108_out { O 16 vector } data_108_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1800 \
    name data_107_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_107_out \
    op interface \
    ports { data_107_out { O 16 vector } data_107_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1801 \
    name data_106_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_106_out \
    op interface \
    ports { data_106_out { O 16 vector } data_106_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1802 \
    name data_105_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_105_out \
    op interface \
    ports { data_105_out { O 16 vector } data_105_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1803 \
    name data_104_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_104_out \
    op interface \
    ports { data_104_out { O 16 vector } data_104_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1804 \
    name data_103_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_103_out \
    op interface \
    ports { data_103_out { O 16 vector } data_103_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1805 \
    name data_102_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_102_out \
    op interface \
    ports { data_102_out { O 16 vector } data_102_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1806 \
    name data_101_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_101_out \
    op interface \
    ports { data_101_out { O 16 vector } data_101_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1807 \
    name data_100_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_100_out \
    op interface \
    ports { data_100_out { O 16 vector } data_100_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1808 \
    name data_99_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_99_out \
    op interface \
    ports { data_99_out { O 16 vector } data_99_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1809 \
    name data_98_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_98_out \
    op interface \
    ports { data_98_out { O 16 vector } data_98_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1810 \
    name data_97_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_97_out \
    op interface \
    ports { data_97_out { O 16 vector } data_97_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1811 \
    name data_96_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_96_out \
    op interface \
    ports { data_96_out { O 16 vector } data_96_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1812 \
    name data_95_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_95_out \
    op interface \
    ports { data_95_out { O 16 vector } data_95_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1813 \
    name data_94_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_94_out \
    op interface \
    ports { data_94_out { O 16 vector } data_94_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1814 \
    name data_93_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_93_out \
    op interface \
    ports { data_93_out { O 16 vector } data_93_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1815 \
    name data_92_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_92_out \
    op interface \
    ports { data_92_out { O 16 vector } data_92_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1816 \
    name data_91_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_91_out \
    op interface \
    ports { data_91_out { O 16 vector } data_91_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1817 \
    name data_90_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_90_out \
    op interface \
    ports { data_90_out { O 16 vector } data_90_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1818 \
    name data_89_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_89_out \
    op interface \
    ports { data_89_out { O 16 vector } data_89_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1819 \
    name data_88_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_88_out \
    op interface \
    ports { data_88_out { O 16 vector } data_88_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1820 \
    name data_87_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_87_out \
    op interface \
    ports { data_87_out { O 16 vector } data_87_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1821 \
    name data_86_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_86_out \
    op interface \
    ports { data_86_out { O 16 vector } data_86_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1822 \
    name data_85_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_85_out \
    op interface \
    ports { data_85_out { O 16 vector } data_85_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1823 \
    name data_84_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_84_out \
    op interface \
    ports { data_84_out { O 16 vector } data_84_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1824 \
    name data_83_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_83_out \
    op interface \
    ports { data_83_out { O 16 vector } data_83_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1825 \
    name data_82_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_82_out \
    op interface \
    ports { data_82_out { O 16 vector } data_82_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1826 \
    name data_81_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_81_out \
    op interface \
    ports { data_81_out { O 16 vector } data_81_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1827 \
    name data_80_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_80_out \
    op interface \
    ports { data_80_out { O 16 vector } data_80_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1828 \
    name data_79_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_79_out \
    op interface \
    ports { data_79_out { O 16 vector } data_79_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1829 \
    name data_78_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_78_out \
    op interface \
    ports { data_78_out { O 16 vector } data_78_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1830 \
    name data_77_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_77_out \
    op interface \
    ports { data_77_out { O 16 vector } data_77_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1831 \
    name data_76_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_76_out \
    op interface \
    ports { data_76_out { O 16 vector } data_76_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1832 \
    name data_75_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_75_out \
    op interface \
    ports { data_75_out { O 16 vector } data_75_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1833 \
    name data_74_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_74_out \
    op interface \
    ports { data_74_out { O 16 vector } data_74_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1834 \
    name data_73_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_73_out \
    op interface \
    ports { data_73_out { O 16 vector } data_73_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1835 \
    name data_72_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_72_out \
    op interface \
    ports { data_72_out { O 16 vector } data_72_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1836 \
    name data_71_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_71_out \
    op interface \
    ports { data_71_out { O 16 vector } data_71_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1837 \
    name data_70_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_70_out \
    op interface \
    ports { data_70_out { O 16 vector } data_70_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1838 \
    name data_69_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_69_out \
    op interface \
    ports { data_69_out { O 16 vector } data_69_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1839 \
    name data_68_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_68_out \
    op interface \
    ports { data_68_out { O 16 vector } data_68_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1840 \
    name data_67_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_67_out \
    op interface \
    ports { data_67_out { O 16 vector } data_67_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1841 \
    name data_66_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_66_out \
    op interface \
    ports { data_66_out { O 16 vector } data_66_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1842 \
    name data_65_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_65_out \
    op interface \
    ports { data_65_out { O 16 vector } data_65_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1843 \
    name data_64_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_64_out \
    op interface \
    ports { data_64_out { O 16 vector } data_64_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1844 \
    name data_63_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_63_out \
    op interface \
    ports { data_63_out { O 16 vector } data_63_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1845 \
    name data_62_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_62_out \
    op interface \
    ports { data_62_out { O 16 vector } data_62_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1846 \
    name data_61_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_61_out \
    op interface \
    ports { data_61_out { O 16 vector } data_61_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1847 \
    name data_60_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_60_out \
    op interface \
    ports { data_60_out { O 16 vector } data_60_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1848 \
    name data_59_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_59_out \
    op interface \
    ports { data_59_out { O 16 vector } data_59_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1849 \
    name data_58_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_58_out \
    op interface \
    ports { data_58_out { O 16 vector } data_58_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1850 \
    name data_57_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_57_out \
    op interface \
    ports { data_57_out { O 16 vector } data_57_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1851 \
    name data_56_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_56_out \
    op interface \
    ports { data_56_out { O 16 vector } data_56_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1852 \
    name data_55_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_55_out \
    op interface \
    ports { data_55_out { O 16 vector } data_55_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1853 \
    name data_54_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_54_out \
    op interface \
    ports { data_54_out { O 16 vector } data_54_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1854 \
    name data_53_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_53_out \
    op interface \
    ports { data_53_out { O 16 vector } data_53_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1855 \
    name data_52_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_52_out \
    op interface \
    ports { data_52_out { O 16 vector } data_52_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1856 \
    name data_51_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_51_out \
    op interface \
    ports { data_51_out { O 16 vector } data_51_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1857 \
    name data_50_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_50_out \
    op interface \
    ports { data_50_out { O 16 vector } data_50_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1858 \
    name data_49_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_49_out \
    op interface \
    ports { data_49_out { O 16 vector } data_49_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1859 \
    name data_48_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_48_out \
    op interface \
    ports { data_48_out { O 16 vector } data_48_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1860 \
    name data_47_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_47_out \
    op interface \
    ports { data_47_out { O 16 vector } data_47_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1861 \
    name data_46_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_46_out \
    op interface \
    ports { data_46_out { O 16 vector } data_46_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1862 \
    name data_45_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_45_out \
    op interface \
    ports { data_45_out { O 16 vector } data_45_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1863 \
    name data_44_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_44_out \
    op interface \
    ports { data_44_out { O 16 vector } data_44_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1864 \
    name data_43_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_43_out \
    op interface \
    ports { data_43_out { O 16 vector } data_43_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1865 \
    name data_42_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_42_out \
    op interface \
    ports { data_42_out { O 16 vector } data_42_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1866 \
    name data_41_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_41_out \
    op interface \
    ports { data_41_out { O 16 vector } data_41_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1867 \
    name data_40_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_40_out \
    op interface \
    ports { data_40_out { O 16 vector } data_40_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1868 \
    name data_39_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_39_out \
    op interface \
    ports { data_39_out { O 16 vector } data_39_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1869 \
    name data_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_38_out \
    op interface \
    ports { data_38_out { O 16 vector } data_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1870 \
    name data_37_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_37_out \
    op interface \
    ports { data_37_out { O 16 vector } data_37_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1871 \
    name data_36_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_36_out \
    op interface \
    ports { data_36_out { O 16 vector } data_36_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1872 \
    name data_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_35_out \
    op interface \
    ports { data_35_out { O 16 vector } data_35_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1873 \
    name data_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_34_out \
    op interface \
    ports { data_34_out { O 16 vector } data_34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1874 \
    name data_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_33_out \
    op interface \
    ports { data_33_out { O 16 vector } data_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1875 \
    name data_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_32_out \
    op interface \
    ports { data_32_out { O 16 vector } data_32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1876 \
    name data_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_31_out \
    op interface \
    ports { data_31_out { O 16 vector } data_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1877 \
    name data_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_30_out \
    op interface \
    ports { data_30_out { O 16 vector } data_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1878 \
    name data_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_29_out \
    op interface \
    ports { data_29_out { O 16 vector } data_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1879 \
    name data_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_28_out \
    op interface \
    ports { data_28_out { O 16 vector } data_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1880 \
    name data_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_27_out \
    op interface \
    ports { data_27_out { O 16 vector } data_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1881 \
    name data_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_26_out \
    op interface \
    ports { data_26_out { O 16 vector } data_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1882 \
    name data_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_25_out \
    op interface \
    ports { data_25_out { O 16 vector } data_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1883 \
    name data_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_24_out \
    op interface \
    ports { data_24_out { O 16 vector } data_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1884 \
    name data_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_23_out \
    op interface \
    ports { data_23_out { O 16 vector } data_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1885 \
    name data_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_22_out \
    op interface \
    ports { data_22_out { O 16 vector } data_22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1886 \
    name data_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_21_out \
    op interface \
    ports { data_21_out { O 16 vector } data_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1887 \
    name data_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_20_out \
    op interface \
    ports { data_20_out { O 16 vector } data_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1888 \
    name data_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_19_out \
    op interface \
    ports { data_19_out { O 16 vector } data_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1889 \
    name data_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_18_out \
    op interface \
    ports { data_18_out { O 16 vector } data_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1890 \
    name data_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_17_out \
    op interface \
    ports { data_17_out { O 16 vector } data_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1891 \
    name data_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_16_out \
    op interface \
    ports { data_16_out { O 16 vector } data_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1892 \
    name data_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_15_out \
    op interface \
    ports { data_15_out { O 16 vector } data_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1893 \
    name data_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_14_out \
    op interface \
    ports { data_14_out { O 16 vector } data_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1894 \
    name data_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_13_out \
    op interface \
    ports { data_13_out { O 16 vector } data_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1895 \
    name data_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_12_out \
    op interface \
    ports { data_12_out { O 16 vector } data_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1896 \
    name data_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_11_out \
    op interface \
    ports { data_11_out { O 16 vector } data_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1897 \
    name data_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_10_out \
    op interface \
    ports { data_10_out { O 16 vector } data_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1898 \
    name data_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_9_out \
    op interface \
    ports { data_9_out { O 16 vector } data_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1899 \
    name data_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_8_out \
    op interface \
    ports { data_8_out { O 16 vector } data_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1900 \
    name data_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_7_out \
    op interface \
    ports { data_7_out { O 16 vector } data_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1901 \
    name data_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_6_out \
    op interface \
    ports { data_6_out { O 16 vector } data_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1902 \
    name data_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_5_out \
    op interface \
    ports { data_5_out { O 16 vector } data_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1903 \
    name data_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_4_out \
    op interface \
    ports { data_4_out { O 16 vector } data_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1904 \
    name data_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_3_out \
    op interface \
    ports { data_3_out { O 16 vector } data_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1905 \
    name data_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_2_out \
    op interface \
    ports { data_2_out { O 16 vector } data_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1906 \
    name data_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_1_out \
    op interface \
    ports { data_1_out { O 16 vector } data_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1907 \
    name data_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out \
    op interface \
    ports { data_out { O 16 vector } data_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName myproject_flow_control_loop_pipe_sequential_init_U
set CompName myproject_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix myproject_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


