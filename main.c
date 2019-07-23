#include <x86intrin.h>
#include <stdio.h>
#include <stdint.h>

#ifndef WARMUP
#define WARMUP 10000
#endif

#ifndef VECTOR_ELEMENTS
#define VECTOR_ELEMENTS 1
#endif

#ifndef DATA_AMOUNT
#define DATA_AMOUNT 0x100000000LL
#endif

extern void SubBytes__(void* in, void* out);

unsigned long long input[128] __attribute__((aligned(64))) = {
	0x92d6b49da7ff0715, 0x9f19ba1cba5f854f, 0x4136bab29d1367d3, 0x98c0323d11967ef8,
	0xe441cb4d670939bf, 0x2f32adbac5705a70, 0x2dc042a167892e3e, 0x77c4a69b7a3736c6,
	0x640348dc756a3b1f, 0xfff51407fe1dbeae, 0xcd5a2934895ebbc4, 0xbdada52da08c6bee,
	0x14b0c4bd581e4d13, 0x4623532d2aadddf4, 0x4e595d15cb26535f, 0x9d8333bcf0ad4870,
	0xea2a72fb867f8b97, 0xa1018ebe29a4dab0, 0xe070d3ddc441ef33, 0x759f7ab22ca9b51a,
	0xaa6b48b4b9d24c6c, 0x18c4c5922bfac5e6, 0x8fc0908eff4aff65, 0x1465a0d9e6a4fa6c,
	0xf3e8a5504c10a43, 0xbb5b78390c2ac780, 0xdf82aee3bf43ef43, 0x11a78c96def064c5,
	0x1c2bb12b5877ac72, 0xdb5d54838ba71216, 0x9e4a0d8129fcb666, 0xecce1915a273225c,
	0x56d885d77db58a41, 0x31f1f0f450acc306, 0xfc4d973376e2b6df, 0xc83cbc12b4b2b01e,
	0x9b4ba1dee7a34d4a, 0x7cada277046b220c, 0x417b888698eede56, 0x34335d78612fdb6e,
	0xc15ad199e852b840, 0xf12a73a6bf4ce76b, 0xccaf392153f3a797, 0xe789e0721b7e9489,
	0x7e403cfa9ff8bd7b, 0xc30d91a31312f9e1, 0x3d5d513a9b7a4275, 0x2560960b620e4964,
	0xa3a3db23e6365bbb, 0x8f839275dabd5ca1, 0xf0ef04136aebd744, 0x477a99b1ce4d3b00,
	0x5a52cbb6f9c6e44a, 0x123d813e5201d78a, 0x551fa0b7bc125b21, 0x833e378ce476142d,
	0xf49d7dbeb65dea94, 0xa8b1a46217fed792, 0x5b7d32e08829a938, 0x304909a2f7e2ebfe,
	0x8877244317959ff2, 0x8209eee69e1646ea, 0x362be13006f86cb6, 0x477ee7d10d36bfa9,
	0x4d7da2edc0b55de4, 0xbb1aa4d8824d4446, 0x1d47d595ac5b03d2, 0xbe2ecf8d7e171cf7,
	0x7cfd6c9277d273d9, 0xbdda2ef6938a2863, 0x845a3ac7900cbf66, 0x6fe9e81b741b62d6,
	0x25ffea7d5fc5127f, 0x6579523abdc1da0a, 0x7a23094d52943cda, 0x5e3deff9a4e0734c,
	0x64f1dc3a9909dbc2, 0x8198306c63bdb84c, 0xcdf921a80f8f05f4, 0xebffa03b809893cf,
	0x34c5a5d8e3418d35, 0xaae3de97d29126c6, 0xe471cbe9440ed019, 0xa12e9e644d25299c,
	0xaa8ec58a6fc74477, 0x764b8d535169b70e, 0x971561ec3a7a63e9, 0x6e6d5ce3c022ce13,
	0x4f7172c653ebd309, 0x86575b7761d0adde, 0x803591d7706a6f44, 0xe13c198acb2b5750,
	0xfa523479625c7f8b, 0xcf0781cbf84d2c0d, 0x6ebb8c115db7f2a0, 0x226df990356cb19d,
	0xd92476f414d0b183, 0x281c5104fc20b35b, 0x4c0fd4f99cdc934f, 0xf7d3f459cd819c01,
	0x144acf8a3985af77, 0x2e54cb3009adc24c, 0x1627542ed4239463, 0x2ed199e6ca9de661,
	0x204e611cfbd9544b, 0x25dab00dc3dc77df, 0xf80fb1ad8291a724, 0xbd7587ee928c6b91,
	0xe500f76acc17ba64, 0x131bc933242614df, 0x1190b6d642ac6199, 0x8cbb2532972e70a1,
	0x6c0149cd463792c4, 0xd9ea171527fa1f07, 0x4aafc037ff1c81ba, 0x8fa705427a2edac9,
	0x9d32d0807224498b, 0x5b9a44d66c51a1d0, 0x73905f4f9a60eb2d, 0x95ce6121ab4be2e3,
	0xb208ef910e91b337, 0xc624cb31dabee9dc, 0x3e893aa9827c718b, 0xe99a9a4c2e6d8c94,
	0xf50931ffed3c2829, 0x88930e67cbca6c0d, 0x2eb2ea3092bce915, 0x153fd24a83c6d854
};

unsigned long long output[128] __attribute__((aligned(64)));

int main()
{
	// Warming up caches
	for (int i = 0; i < WARMUP; ++i)
		SubBytes__(input, output);

	// Timing the actual thing
	unsigned int proc_id;
	uint64_t timer = __rdtscp(&proc_id);
	for (int64_t i = 0; i < DATA_AMOUNT/VECTOR_ELEMENTS; ++i)
		SubBytes__(input, output);
	timer = __rdtscp(&proc_id) - timer;

	// Outputing the result
	printf("%lld cycles\n", timer);
	return 0;
}