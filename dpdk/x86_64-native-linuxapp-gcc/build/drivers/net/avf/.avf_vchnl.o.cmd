cmd_avf_vchnl.o = gcc -Wp,-MD,./.avf_vchnl.o.d.tmp  -m64 -pthread  -march=native -DRTE_MACHINE_CPUFLAG_SSE -DRTE_MACHINE_CPUFLAG_SSE2 -DRTE_MACHINE_CPUFLAG_SSE3 -DRTE_MACHINE_CPUFLAG_SSSE3 -DRTE_MACHINE_CPUFLAG_SSE4_1 -DRTE_MACHINE_CPUFLAG_SSE4_2 -DRTE_MACHINE_CPUFLAG_AES -DRTE_MACHINE_CPUFLAG_PCLMULQDQ -DRTE_MACHINE_CPUFLAG_AVX -DRTE_MACHINE_CPUFLAG_RDRAND -DRTE_MACHINE_CPUFLAG_FSGSBASE -DRTE_MACHINE_CPUFLAG_F16C -DRTE_MACHINE_CPUFLAG_AVX2  -I/home/ndsg/Downloads/mtcp/dpdk/x86_64-native-linuxapp-gcc/include -include /home/ndsg/Downloads/mtcp/dpdk/x86_64-native-linuxapp-gcc/include/rte_config.h -O3    -o avf_vchnl.o -c /home/ndsg/Downloads/mtcp/dpdk/drivers/net/avf/avf_vchnl.c 
