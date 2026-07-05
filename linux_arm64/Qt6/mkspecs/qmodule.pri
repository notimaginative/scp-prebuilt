QT_CPU_FEATURES.arm64 = cx16 neon
QT.global_private.enabled_features = reduce_exports neon arm_crypto arm_sve localtime_r posix_fallocate dbus gui network printsupport sql testlib widgets xml dlopen relocatable glibc_fortify_source stack_protector stack_clash_protection libstdcpp_assertions relro_now_linker largefile enable_new_dtags neon arm_crypto arm_sve
QT.global_private.disabled_features = use_bfd_linker use_gold_linker use_lld_linker use_mold_linker android-style-assets gc_binaries developer-build private_tests doc_snippets debug elf_private_full_version no_direct_extern_access x86intrin sse2 sse3 ssse3 sse4_1 sse4_2 avx f16c avx2 avx512f avx512er avx512cd avx512pf avx512dq avx512bw avx512vl avx512ifma avx512vbmi avx512vbmi2 aesni vaes rdrnd rdseed shani lsx lasx mips_dsp mips_dspr2 arm_crc32 localtime_s force-system-libs force-bundled-libs system-zlib stdlib-libcpp dbus-linked libudev openssl intelcet trivial_auto_var_init_pattern libcpp_hardening android_16kb_pages
CONFIG += largefile enable_new_dtags neon arm_crypto arm_sve
PKG_CONFIG_EXECUTABLE = /usr/bin/pkg-config
QT_COORD_TYPE = double
QT_BUILD_PARTS = libs tools

