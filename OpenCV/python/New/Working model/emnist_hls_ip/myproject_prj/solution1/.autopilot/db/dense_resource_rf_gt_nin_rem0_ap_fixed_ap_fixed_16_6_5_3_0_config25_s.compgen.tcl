# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler myproject_sparsemux_801_9_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config25_s_outidx_wdI BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config25_s_w25_ROMxdS BINDTYPE {storage} TYPE {rom_np} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2218 \
    name data_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_0_val \
    op interface \
    ports { data_0_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2219 \
    name data_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_1_val \
    op interface \
    ports { data_1_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2220 \
    name data_2_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_2_val \
    op interface \
    ports { data_2_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2221 \
    name data_3_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_3_val \
    op interface \
    ports { data_3_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2222 \
    name data_4_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_4_val \
    op interface \
    ports { data_4_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2223 \
    name data_5_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_5_val \
    op interface \
    ports { data_5_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2224 \
    name data_6_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_6_val \
    op interface \
    ports { data_6_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2225 \
    name data_7_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_7_val \
    op interface \
    ports { data_7_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2226 \
    name data_8_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_8_val \
    op interface \
    ports { data_8_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2227 \
    name data_9_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_9_val \
    op interface \
    ports { data_9_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2228 \
    name data_10_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_10_val \
    op interface \
    ports { data_10_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2229 \
    name data_11_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_11_val \
    op interface \
    ports { data_11_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2230 \
    name data_12_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_12_val \
    op interface \
    ports { data_12_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2231 \
    name data_13_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_13_val \
    op interface \
    ports { data_13_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2232 \
    name data_14_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_14_val \
    op interface \
    ports { data_14_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2233 \
    name data_15_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_15_val \
    op interface \
    ports { data_15_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2234 \
    name data_16_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_16_val \
    op interface \
    ports { data_16_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2235 \
    name data_17_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_17_val \
    op interface \
    ports { data_17_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2236 \
    name data_18_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_18_val \
    op interface \
    ports { data_18_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2237 \
    name data_19_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_19_val \
    op interface \
    ports { data_19_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2238 \
    name data_20_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_20_val \
    op interface \
    ports { data_20_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2239 \
    name data_21_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_21_val \
    op interface \
    ports { data_21_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2240 \
    name data_22_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_22_val \
    op interface \
    ports { data_22_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2241 \
    name data_23_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_23_val \
    op interface \
    ports { data_23_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2242 \
    name data_24_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_24_val \
    op interface \
    ports { data_24_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2243 \
    name data_25_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_25_val \
    op interface \
    ports { data_25_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2244 \
    name data_26_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_26_val \
    op interface \
    ports { data_26_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2245 \
    name data_27_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_27_val \
    op interface \
    ports { data_27_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2246 \
    name data_28_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_28_val \
    op interface \
    ports { data_28_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2247 \
    name data_29_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_29_val \
    op interface \
    ports { data_29_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2248 \
    name data_30_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_30_val \
    op interface \
    ports { data_30_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2249 \
    name data_31_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_31_val \
    op interface \
    ports { data_31_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2250 \
    name data_32_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_32_val \
    op interface \
    ports { data_32_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2251 \
    name data_33_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_33_val \
    op interface \
    ports { data_33_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2252 \
    name data_34_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_34_val \
    op interface \
    ports { data_34_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2253 \
    name data_35_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_35_val \
    op interface \
    ports { data_35_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2254 \
    name data_36_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_36_val \
    op interface \
    ports { data_36_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2255 \
    name data_37_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_37_val \
    op interface \
    ports { data_37_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2256 \
    name data_38_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_38_val \
    op interface \
    ports { data_38_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2257 \
    name data_39_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_39_val \
    op interface \
    ports { data_39_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2258 \
    name data_40_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_40_val \
    op interface \
    ports { data_40_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2259 \
    name data_41_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_41_val \
    op interface \
    ports { data_41_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2260 \
    name data_42_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_42_val \
    op interface \
    ports { data_42_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2261 \
    name data_43_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_43_val \
    op interface \
    ports { data_43_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2262 \
    name data_44_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_44_val \
    op interface \
    ports { data_44_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2263 \
    name data_45_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_45_val \
    op interface \
    ports { data_45_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2264 \
    name data_46_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_46_val \
    op interface \
    ports { data_46_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2265 \
    name data_47_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_47_val \
    op interface \
    ports { data_47_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2266 \
    name data_48_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_48_val \
    op interface \
    ports { data_48_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2267 \
    name data_49_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_49_val \
    op interface \
    ports { data_49_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2268 \
    name data_50_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_50_val \
    op interface \
    ports { data_50_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2269 \
    name data_51_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_51_val \
    op interface \
    ports { data_51_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2270 \
    name data_52_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_52_val \
    op interface \
    ports { data_52_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2271 \
    name data_53_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_53_val \
    op interface \
    ports { data_53_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2272 \
    name data_54_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_54_val \
    op interface \
    ports { data_54_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2273 \
    name data_55_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_55_val \
    op interface \
    ports { data_55_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2274 \
    name data_56_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_56_val \
    op interface \
    ports { data_56_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2275 \
    name data_57_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_57_val \
    op interface \
    ports { data_57_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2276 \
    name data_58_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_58_val \
    op interface \
    ports { data_58_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2277 \
    name data_59_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_59_val \
    op interface \
    ports { data_59_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2278 \
    name data_60_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_60_val \
    op interface \
    ports { data_60_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2279 \
    name data_61_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_61_val \
    op interface \
    ports { data_61_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2280 \
    name data_62_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_62_val \
    op interface \
    ports { data_62_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2281 \
    name data_63_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_63_val \
    op interface \
    ports { data_63_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2282 \
    name data_64_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_64_val \
    op interface \
    ports { data_64_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2283 \
    name data_65_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_65_val \
    op interface \
    ports { data_65_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2284 \
    name data_66_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_66_val \
    op interface \
    ports { data_66_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2285 \
    name data_67_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_67_val \
    op interface \
    ports { data_67_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2286 \
    name data_68_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_68_val \
    op interface \
    ports { data_68_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2287 \
    name data_69_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_69_val \
    op interface \
    ports { data_69_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2288 \
    name data_70_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_70_val \
    op interface \
    ports { data_70_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2289 \
    name data_71_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_71_val \
    op interface \
    ports { data_71_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2290 \
    name data_72_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_72_val \
    op interface \
    ports { data_72_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2291 \
    name data_73_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_73_val \
    op interface \
    ports { data_73_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2292 \
    name data_74_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_74_val \
    op interface \
    ports { data_74_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2293 \
    name data_75_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_75_val \
    op interface \
    ports { data_75_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2294 \
    name data_76_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_76_val \
    op interface \
    ports { data_76_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2295 \
    name data_77_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_77_val \
    op interface \
    ports { data_77_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2296 \
    name data_78_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_78_val \
    op interface \
    ports { data_78_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2297 \
    name data_79_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_79_val \
    op interface \
    ports { data_79_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2298 \
    name data_80_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_80_val \
    op interface \
    ports { data_80_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2299 \
    name data_81_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_81_val \
    op interface \
    ports { data_81_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2300 \
    name data_82_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_82_val \
    op interface \
    ports { data_82_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2301 \
    name data_83_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_83_val \
    op interface \
    ports { data_83_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2302 \
    name data_84_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_84_val \
    op interface \
    ports { data_84_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2303 \
    name data_85_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_85_val \
    op interface \
    ports { data_85_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2304 \
    name data_86_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_86_val \
    op interface \
    ports { data_86_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2305 \
    name data_87_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_87_val \
    op interface \
    ports { data_87_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2306 \
    name data_88_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_88_val \
    op interface \
    ports { data_88_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2307 \
    name data_89_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_89_val \
    op interface \
    ports { data_89_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2308 \
    name data_90_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_90_val \
    op interface \
    ports { data_90_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2309 \
    name data_91_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_91_val \
    op interface \
    ports { data_91_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2310 \
    name data_92_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_92_val \
    op interface \
    ports { data_92_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2311 \
    name data_93_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_93_val \
    op interface \
    ports { data_93_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2312 \
    name data_94_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_94_val \
    op interface \
    ports { data_94_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2313 \
    name data_95_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_95_val \
    op interface \
    ports { data_95_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2314 \
    name data_96_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_96_val \
    op interface \
    ports { data_96_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2315 \
    name data_97_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_97_val \
    op interface \
    ports { data_97_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2316 \
    name data_98_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_98_val \
    op interface \
    ports { data_98_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2317 \
    name data_99_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_99_val \
    op interface \
    ports { data_99_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2318 \
    name data_100_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_100_val \
    op interface \
    ports { data_100_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2319 \
    name data_101_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_101_val \
    op interface \
    ports { data_101_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2320 \
    name data_102_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_102_val \
    op interface \
    ports { data_102_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2321 \
    name data_103_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_103_val \
    op interface \
    ports { data_103_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2322 \
    name data_104_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_104_val \
    op interface \
    ports { data_104_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2323 \
    name data_105_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_105_val \
    op interface \
    ports { data_105_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2324 \
    name data_106_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_106_val \
    op interface \
    ports { data_106_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2325 \
    name data_107_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_107_val \
    op interface \
    ports { data_107_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2326 \
    name data_108_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_108_val \
    op interface \
    ports { data_108_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2327 \
    name data_109_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_109_val \
    op interface \
    ports { data_109_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2328 \
    name data_110_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_110_val \
    op interface \
    ports { data_110_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2329 \
    name data_111_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_111_val \
    op interface \
    ports { data_111_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2330 \
    name data_112_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_112_val \
    op interface \
    ports { data_112_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2331 \
    name data_113_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_113_val \
    op interface \
    ports { data_113_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2332 \
    name data_114_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_114_val \
    op interface \
    ports { data_114_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2333 \
    name data_115_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_115_val \
    op interface \
    ports { data_115_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2334 \
    name data_116_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_116_val \
    op interface \
    ports { data_116_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2335 \
    name data_117_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_117_val \
    op interface \
    ports { data_117_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2336 \
    name data_118_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_118_val \
    op interface \
    ports { data_118_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2337 \
    name data_119_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_119_val \
    op interface \
    ports { data_119_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2338 \
    name data_120_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_120_val \
    op interface \
    ports { data_120_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2339 \
    name data_121_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_121_val \
    op interface \
    ports { data_121_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2340 \
    name data_122_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_122_val \
    op interface \
    ports { data_122_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2341 \
    name data_123_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_123_val \
    op interface \
    ports { data_123_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2342 \
    name data_124_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_124_val \
    op interface \
    ports { data_124_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2343 \
    name data_125_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_125_val \
    op interface \
    ports { data_125_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2344 \
    name data_126_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_126_val \
    op interface \
    ports { data_126_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2345 \
    name data_127_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_127_val \
    op interface \
    ports { data_127_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2346 \
    name data_128_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_128_val \
    op interface \
    ports { data_128_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2347 \
    name data_129_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_129_val \
    op interface \
    ports { data_129_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2348 \
    name data_130_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_130_val \
    op interface \
    ports { data_130_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2349 \
    name data_131_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_131_val \
    op interface \
    ports { data_131_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2350 \
    name data_132_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_132_val \
    op interface \
    ports { data_132_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2351 \
    name data_133_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_133_val \
    op interface \
    ports { data_133_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2352 \
    name data_134_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_134_val \
    op interface \
    ports { data_134_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2353 \
    name data_135_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_135_val \
    op interface \
    ports { data_135_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2354 \
    name data_136_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_136_val \
    op interface \
    ports { data_136_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2355 \
    name data_137_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_137_val \
    op interface \
    ports { data_137_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2356 \
    name data_138_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_138_val \
    op interface \
    ports { data_138_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2357 \
    name data_139_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_139_val \
    op interface \
    ports { data_139_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2358 \
    name data_140_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_140_val \
    op interface \
    ports { data_140_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2359 \
    name data_141_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_141_val \
    op interface \
    ports { data_141_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2360 \
    name data_142_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_142_val \
    op interface \
    ports { data_142_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2361 \
    name data_143_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_143_val \
    op interface \
    ports { data_143_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2362 \
    name data_144_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_144_val \
    op interface \
    ports { data_144_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2363 \
    name data_145_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_145_val \
    op interface \
    ports { data_145_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2364 \
    name data_146_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_146_val \
    op interface \
    ports { data_146_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2365 \
    name data_147_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_147_val \
    op interface \
    ports { data_147_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2366 \
    name data_148_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_148_val \
    op interface \
    ports { data_148_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2367 \
    name data_149_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_149_val \
    op interface \
    ports { data_149_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2368 \
    name data_150_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_150_val \
    op interface \
    ports { data_150_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2369 \
    name data_151_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_151_val \
    op interface \
    ports { data_151_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2370 \
    name data_152_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_152_val \
    op interface \
    ports { data_152_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2371 \
    name data_153_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_153_val \
    op interface \
    ports { data_153_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2372 \
    name data_154_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_154_val \
    op interface \
    ports { data_154_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2373 \
    name data_155_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_155_val \
    op interface \
    ports { data_155_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2374 \
    name data_156_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_156_val \
    op interface \
    ports { data_156_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2375 \
    name data_157_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_157_val \
    op interface \
    ports { data_157_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2376 \
    name data_158_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_158_val \
    op interface \
    ports { data_158_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2377 \
    name data_159_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_159_val \
    op interface \
    ports { data_159_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2378 \
    name data_160_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_160_val \
    op interface \
    ports { data_160_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2379 \
    name data_161_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_161_val \
    op interface \
    ports { data_161_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2380 \
    name data_162_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_162_val \
    op interface \
    ports { data_162_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2381 \
    name data_163_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_163_val \
    op interface \
    ports { data_163_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2382 \
    name data_164_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_164_val \
    op interface \
    ports { data_164_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2383 \
    name data_165_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_165_val \
    op interface \
    ports { data_165_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2384 \
    name data_166_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_166_val \
    op interface \
    ports { data_166_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2385 \
    name data_167_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_167_val \
    op interface \
    ports { data_167_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2386 \
    name data_168_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_168_val \
    op interface \
    ports { data_168_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2387 \
    name data_169_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_169_val \
    op interface \
    ports { data_169_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2388 \
    name data_170_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_170_val \
    op interface \
    ports { data_170_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2389 \
    name data_171_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_171_val \
    op interface \
    ports { data_171_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2390 \
    name data_172_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_172_val \
    op interface \
    ports { data_172_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2391 \
    name data_173_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_173_val \
    op interface \
    ports { data_173_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2392 \
    name data_174_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_174_val \
    op interface \
    ports { data_174_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2393 \
    name data_175_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_175_val \
    op interface \
    ports { data_175_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2394 \
    name data_176_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_176_val \
    op interface \
    ports { data_176_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2395 \
    name data_177_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_177_val \
    op interface \
    ports { data_177_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2396 \
    name data_178_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_178_val \
    op interface \
    ports { data_178_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2397 \
    name data_179_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_179_val \
    op interface \
    ports { data_179_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2398 \
    name data_180_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_180_val \
    op interface \
    ports { data_180_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2399 \
    name data_181_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_181_val \
    op interface \
    ports { data_181_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2400 \
    name data_182_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_182_val \
    op interface \
    ports { data_182_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2401 \
    name data_183_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_183_val \
    op interface \
    ports { data_183_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2402 \
    name data_184_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_184_val \
    op interface \
    ports { data_184_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2403 \
    name data_185_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_185_val \
    op interface \
    ports { data_185_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2404 \
    name data_186_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_186_val \
    op interface \
    ports { data_186_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2405 \
    name data_187_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_187_val \
    op interface \
    ports { data_187_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2406 \
    name data_188_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_188_val \
    op interface \
    ports { data_188_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2407 \
    name data_189_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_189_val \
    op interface \
    ports { data_189_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2408 \
    name data_190_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_190_val \
    op interface \
    ports { data_190_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2409 \
    name data_191_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_191_val \
    op interface \
    ports { data_191_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2410 \
    name data_192_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_192_val \
    op interface \
    ports { data_192_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2411 \
    name data_193_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_193_val \
    op interface \
    ports { data_193_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2412 \
    name data_194_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_194_val \
    op interface \
    ports { data_194_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2413 \
    name data_195_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_195_val \
    op interface \
    ports { data_195_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2414 \
    name data_196_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_196_val \
    op interface \
    ports { data_196_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2415 \
    name data_197_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_197_val \
    op interface \
    ports { data_197_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2416 \
    name data_198_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_198_val \
    op interface \
    ports { data_198_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2417 \
    name data_199_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_199_val \
    op interface \
    ports { data_199_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2418 \
    name data_200_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_200_val \
    op interface \
    ports { data_200_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2419 \
    name data_201_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_201_val \
    op interface \
    ports { data_201_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2420 \
    name data_202_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_202_val \
    op interface \
    ports { data_202_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2421 \
    name data_203_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_203_val \
    op interface \
    ports { data_203_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2422 \
    name data_204_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_204_val \
    op interface \
    ports { data_204_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2423 \
    name data_205_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_205_val \
    op interface \
    ports { data_205_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2424 \
    name data_206_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_206_val \
    op interface \
    ports { data_206_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2425 \
    name data_207_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_207_val \
    op interface \
    ports { data_207_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2426 \
    name data_208_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_208_val \
    op interface \
    ports { data_208_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2427 \
    name data_209_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_209_val \
    op interface \
    ports { data_209_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2428 \
    name data_210_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_210_val \
    op interface \
    ports { data_210_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2429 \
    name data_211_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_211_val \
    op interface \
    ports { data_211_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2430 \
    name data_212_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_212_val \
    op interface \
    ports { data_212_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2431 \
    name data_213_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_213_val \
    op interface \
    ports { data_213_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2432 \
    name data_214_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_214_val \
    op interface \
    ports { data_214_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2433 \
    name data_215_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_215_val \
    op interface \
    ports { data_215_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2434 \
    name data_216_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_216_val \
    op interface \
    ports { data_216_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2435 \
    name data_217_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_217_val \
    op interface \
    ports { data_217_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2436 \
    name data_218_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_218_val \
    op interface \
    ports { data_218_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2437 \
    name data_219_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_219_val \
    op interface \
    ports { data_219_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2438 \
    name data_220_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_220_val \
    op interface \
    ports { data_220_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2439 \
    name data_221_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_221_val \
    op interface \
    ports { data_221_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2440 \
    name data_222_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_222_val \
    op interface \
    ports { data_222_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2441 \
    name data_223_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_223_val \
    op interface \
    ports { data_223_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2442 \
    name data_224_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_224_val \
    op interface \
    ports { data_224_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2443 \
    name data_225_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_225_val \
    op interface \
    ports { data_225_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2444 \
    name data_226_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_226_val \
    op interface \
    ports { data_226_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2445 \
    name data_227_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_227_val \
    op interface \
    ports { data_227_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2446 \
    name data_228_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_228_val \
    op interface \
    ports { data_228_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2447 \
    name data_229_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_229_val \
    op interface \
    ports { data_229_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2448 \
    name data_230_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_230_val \
    op interface \
    ports { data_230_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2449 \
    name data_231_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_231_val \
    op interface \
    ports { data_231_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2450 \
    name data_232_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_232_val \
    op interface \
    ports { data_232_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2451 \
    name data_233_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_233_val \
    op interface \
    ports { data_233_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2452 \
    name data_234_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_234_val \
    op interface \
    ports { data_234_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2453 \
    name data_235_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_235_val \
    op interface \
    ports { data_235_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2454 \
    name data_236_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_236_val \
    op interface \
    ports { data_236_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2455 \
    name data_237_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_237_val \
    op interface \
    ports { data_237_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2456 \
    name data_238_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_238_val \
    op interface \
    ports { data_238_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2457 \
    name data_239_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_239_val \
    op interface \
    ports { data_239_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2458 \
    name data_240_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_240_val \
    op interface \
    ports { data_240_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2459 \
    name data_241_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_241_val \
    op interface \
    ports { data_241_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2460 \
    name data_242_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_242_val \
    op interface \
    ports { data_242_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2461 \
    name data_243_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_243_val \
    op interface \
    ports { data_243_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2462 \
    name data_244_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_244_val \
    op interface \
    ports { data_244_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2463 \
    name data_245_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_245_val \
    op interface \
    ports { data_245_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2464 \
    name data_246_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_246_val \
    op interface \
    ports { data_246_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2465 \
    name data_247_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_247_val \
    op interface \
    ports { data_247_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2466 \
    name data_248_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_248_val \
    op interface \
    ports { data_248_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2467 \
    name data_249_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_249_val \
    op interface \
    ports { data_249_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2468 \
    name data_250_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_250_val \
    op interface \
    ports { data_250_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2469 \
    name data_251_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_251_val \
    op interface \
    ports { data_251_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2470 \
    name data_252_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_252_val \
    op interface \
    ports { data_252_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2471 \
    name data_253_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_253_val \
    op interface \
    ports { data_253_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2472 \
    name data_254_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_254_val \
    op interface \
    ports { data_254_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2473 \
    name data_255_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_255_val \
    op interface \
    ports { data_255_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2474 \
    name data_256_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_256_val \
    op interface \
    ports { data_256_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2475 \
    name data_257_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_257_val \
    op interface \
    ports { data_257_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2476 \
    name data_258_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_258_val \
    op interface \
    ports { data_258_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2477 \
    name data_259_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_259_val \
    op interface \
    ports { data_259_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2478 \
    name data_260_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_260_val \
    op interface \
    ports { data_260_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2479 \
    name data_261_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_261_val \
    op interface \
    ports { data_261_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2480 \
    name data_262_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_262_val \
    op interface \
    ports { data_262_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2481 \
    name data_263_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_263_val \
    op interface \
    ports { data_263_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2482 \
    name data_264_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_264_val \
    op interface \
    ports { data_264_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2483 \
    name data_265_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_265_val \
    op interface \
    ports { data_265_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2484 \
    name data_266_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_266_val \
    op interface \
    ports { data_266_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2485 \
    name data_267_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_267_val \
    op interface \
    ports { data_267_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2486 \
    name data_268_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_268_val \
    op interface \
    ports { data_268_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2487 \
    name data_269_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_269_val \
    op interface \
    ports { data_269_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2488 \
    name data_270_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_270_val \
    op interface \
    ports { data_270_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2489 \
    name data_271_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_271_val \
    op interface \
    ports { data_271_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2490 \
    name data_272_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_272_val \
    op interface \
    ports { data_272_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2491 \
    name data_273_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_273_val \
    op interface \
    ports { data_273_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2492 \
    name data_274_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_274_val \
    op interface \
    ports { data_274_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2493 \
    name data_275_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_275_val \
    op interface \
    ports { data_275_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2494 \
    name data_276_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_276_val \
    op interface \
    ports { data_276_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2495 \
    name data_277_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_277_val \
    op interface \
    ports { data_277_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2496 \
    name data_278_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_278_val \
    op interface \
    ports { data_278_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2497 \
    name data_279_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_279_val \
    op interface \
    ports { data_279_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2498 \
    name data_280_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_280_val \
    op interface \
    ports { data_280_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2499 \
    name data_281_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_281_val \
    op interface \
    ports { data_281_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2500 \
    name data_282_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_282_val \
    op interface \
    ports { data_282_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2501 \
    name data_283_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_283_val \
    op interface \
    ports { data_283_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2502 \
    name data_284_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_284_val \
    op interface \
    ports { data_284_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2503 \
    name data_285_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_285_val \
    op interface \
    ports { data_285_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2504 \
    name data_286_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_286_val \
    op interface \
    ports { data_286_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2505 \
    name data_287_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_287_val \
    op interface \
    ports { data_287_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2506 \
    name data_288_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_288_val \
    op interface \
    ports { data_288_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2507 \
    name data_289_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_289_val \
    op interface \
    ports { data_289_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2508 \
    name data_290_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_290_val \
    op interface \
    ports { data_290_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2509 \
    name data_291_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_291_val \
    op interface \
    ports { data_291_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2510 \
    name data_292_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_292_val \
    op interface \
    ports { data_292_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2511 \
    name data_293_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_293_val \
    op interface \
    ports { data_293_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2512 \
    name data_294_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_294_val \
    op interface \
    ports { data_294_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2513 \
    name data_295_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_295_val \
    op interface \
    ports { data_295_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2514 \
    name data_296_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_296_val \
    op interface \
    ports { data_296_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2515 \
    name data_297_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_297_val \
    op interface \
    ports { data_297_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2516 \
    name data_298_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_298_val \
    op interface \
    ports { data_298_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2517 \
    name data_299_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_299_val \
    op interface \
    ports { data_299_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2518 \
    name data_300_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_300_val \
    op interface \
    ports { data_300_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2519 \
    name data_301_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_301_val \
    op interface \
    ports { data_301_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2520 \
    name data_302_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_302_val \
    op interface \
    ports { data_302_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2521 \
    name data_303_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_303_val \
    op interface \
    ports { data_303_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2522 \
    name data_304_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_304_val \
    op interface \
    ports { data_304_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2523 \
    name data_305_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_305_val \
    op interface \
    ports { data_305_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2524 \
    name data_306_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_306_val \
    op interface \
    ports { data_306_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2525 \
    name data_307_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_307_val \
    op interface \
    ports { data_307_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2526 \
    name data_308_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_308_val \
    op interface \
    ports { data_308_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2527 \
    name data_309_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_309_val \
    op interface \
    ports { data_309_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2528 \
    name data_310_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_310_val \
    op interface \
    ports { data_310_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2529 \
    name data_311_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_311_val \
    op interface \
    ports { data_311_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2530 \
    name data_312_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_312_val \
    op interface \
    ports { data_312_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2531 \
    name data_313_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_313_val \
    op interface \
    ports { data_313_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2532 \
    name data_314_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_314_val \
    op interface \
    ports { data_314_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2533 \
    name data_315_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_315_val \
    op interface \
    ports { data_315_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2534 \
    name data_316_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_316_val \
    op interface \
    ports { data_316_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2535 \
    name data_317_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_317_val \
    op interface \
    ports { data_317_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2536 \
    name data_318_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_318_val \
    op interface \
    ports { data_318_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2537 \
    name data_319_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_319_val \
    op interface \
    ports { data_319_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2538 \
    name data_320_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_320_val \
    op interface \
    ports { data_320_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2539 \
    name data_321_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_321_val \
    op interface \
    ports { data_321_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2540 \
    name data_322_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_322_val \
    op interface \
    ports { data_322_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2541 \
    name data_323_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_323_val \
    op interface \
    ports { data_323_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2542 \
    name data_324_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_324_val \
    op interface \
    ports { data_324_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2543 \
    name data_325_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_325_val \
    op interface \
    ports { data_325_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2544 \
    name data_326_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_326_val \
    op interface \
    ports { data_326_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2545 \
    name data_327_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_327_val \
    op interface \
    ports { data_327_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2546 \
    name data_328_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_328_val \
    op interface \
    ports { data_328_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2547 \
    name data_329_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_329_val \
    op interface \
    ports { data_329_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2548 \
    name data_330_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_330_val \
    op interface \
    ports { data_330_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2549 \
    name data_331_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_331_val \
    op interface \
    ports { data_331_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2550 \
    name data_332_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_332_val \
    op interface \
    ports { data_332_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2551 \
    name data_333_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_333_val \
    op interface \
    ports { data_333_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2552 \
    name data_334_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_334_val \
    op interface \
    ports { data_334_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2553 \
    name data_335_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_335_val \
    op interface \
    ports { data_335_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2554 \
    name data_336_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_336_val \
    op interface \
    ports { data_336_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2555 \
    name data_337_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_337_val \
    op interface \
    ports { data_337_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2556 \
    name data_338_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_338_val \
    op interface \
    ports { data_338_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2557 \
    name data_339_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_339_val \
    op interface \
    ports { data_339_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2558 \
    name data_340_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_340_val \
    op interface \
    ports { data_340_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2559 \
    name data_341_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_341_val \
    op interface \
    ports { data_341_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2560 \
    name data_342_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_342_val \
    op interface \
    ports { data_342_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2561 \
    name data_343_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_343_val \
    op interface \
    ports { data_343_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2562 \
    name data_344_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_344_val \
    op interface \
    ports { data_344_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2563 \
    name data_345_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_345_val \
    op interface \
    ports { data_345_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2564 \
    name data_346_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_346_val \
    op interface \
    ports { data_346_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2565 \
    name data_347_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_347_val \
    op interface \
    ports { data_347_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2566 \
    name data_348_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_348_val \
    op interface \
    ports { data_348_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2567 \
    name data_349_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_349_val \
    op interface \
    ports { data_349_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2568 \
    name data_350_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_350_val \
    op interface \
    ports { data_350_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2569 \
    name data_351_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_351_val \
    op interface \
    ports { data_351_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2570 \
    name data_352_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_352_val \
    op interface \
    ports { data_352_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2571 \
    name data_353_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_353_val \
    op interface \
    ports { data_353_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2572 \
    name data_354_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_354_val \
    op interface \
    ports { data_354_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2573 \
    name data_355_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_355_val \
    op interface \
    ports { data_355_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2574 \
    name data_356_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_356_val \
    op interface \
    ports { data_356_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2575 \
    name data_357_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_357_val \
    op interface \
    ports { data_357_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2576 \
    name data_358_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_358_val \
    op interface \
    ports { data_358_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2577 \
    name data_359_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_359_val \
    op interface \
    ports { data_359_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2578 \
    name data_360_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_360_val \
    op interface \
    ports { data_360_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2579 \
    name data_361_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_361_val \
    op interface \
    ports { data_361_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2580 \
    name data_362_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_362_val \
    op interface \
    ports { data_362_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2581 \
    name data_363_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_363_val \
    op interface \
    ports { data_363_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2582 \
    name data_364_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_364_val \
    op interface \
    ports { data_364_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2583 \
    name data_365_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_365_val \
    op interface \
    ports { data_365_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2584 \
    name data_366_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_366_val \
    op interface \
    ports { data_366_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2585 \
    name data_367_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_367_val \
    op interface \
    ports { data_367_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2586 \
    name data_368_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_368_val \
    op interface \
    ports { data_368_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2587 \
    name data_369_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_369_val \
    op interface \
    ports { data_369_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2588 \
    name data_370_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_370_val \
    op interface \
    ports { data_370_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2589 \
    name data_371_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_371_val \
    op interface \
    ports { data_371_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2590 \
    name data_372_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_372_val \
    op interface \
    ports { data_372_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2591 \
    name data_373_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_373_val \
    op interface \
    ports { data_373_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2592 \
    name data_374_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_374_val \
    op interface \
    ports { data_374_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2593 \
    name data_375_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_375_val \
    op interface \
    ports { data_375_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2594 \
    name data_376_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_376_val \
    op interface \
    ports { data_376_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2595 \
    name data_377_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_377_val \
    op interface \
    ports { data_377_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2596 \
    name data_378_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_378_val \
    op interface \
    ports { data_378_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2597 \
    name data_379_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_379_val \
    op interface \
    ports { data_379_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2598 \
    name data_380_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_380_val \
    op interface \
    ports { data_380_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2599 \
    name data_381_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_381_val \
    op interface \
    ports { data_381_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2600 \
    name data_382_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_382_val \
    op interface \
    ports { data_382_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2601 \
    name data_383_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_383_val \
    op interface \
    ports { data_383_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2602 \
    name data_384_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_384_val \
    op interface \
    ports { data_384_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2603 \
    name data_385_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_385_val \
    op interface \
    ports { data_385_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2604 \
    name data_386_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_386_val \
    op interface \
    ports { data_386_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2605 \
    name data_387_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_387_val \
    op interface \
    ports { data_387_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2606 \
    name data_388_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_388_val \
    op interface \
    ports { data_388_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2607 \
    name data_389_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_389_val \
    op interface \
    ports { data_389_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2608 \
    name data_390_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_390_val \
    op interface \
    ports { data_390_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2609 \
    name data_391_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_391_val \
    op interface \
    ports { data_391_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2610 \
    name data_392_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_392_val \
    op interface \
    ports { data_392_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2611 \
    name data_393_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_393_val \
    op interface \
    ports { data_393_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2612 \
    name data_394_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_394_val \
    op interface \
    ports { data_394_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2613 \
    name data_395_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_395_val \
    op interface \
    ports { data_395_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2614 \
    name data_396_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_396_val \
    op interface \
    ports { data_396_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2615 \
    name data_397_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_397_val \
    op interface \
    ports { data_397_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2616 \
    name data_398_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_398_val \
    op interface \
    ports { data_398_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2617 \
    name data_399_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_399_val \
    op interface \
    ports { data_399_val { I 16 vector } } \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


