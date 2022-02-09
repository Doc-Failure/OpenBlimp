(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i64_i64_=>_none (func (param i64 i64)))
 (type $none_=>_i32 (func (result i32)))
 (type $i64_=>_none (func (param i64)))
 (type $i64_=>_i64 (func (param i64) (result i64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $f64_i32_=>_f64 (func (param f64 i32) (result f64)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (import "env" "input" (func $~lib/near-sdk-core/env/env/env.input (param i64)))
 (import "env" "register_len" (func $~lib/near-sdk-core/env/env/env.register_len (param i64) (result i64)))
 (import "env" "panic" (func $~lib/near-sdk-core/env/env/env.panic))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "read_register" (func $~lib/near-sdk-core/env/env/env.read_register (param i64 i64)))
 (import "env" "value_return" (func $~lib/near-sdk-core/env/env/env.value_return (param i64 i64)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/JSON/_JSON.handler (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/JSON/_JSON.decoder (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/util/string/__fixmulShift (mut i64) (i64.const 0))
 (global $~lib/assemblyscript-json/JSON/NULL (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1084) "<")
 (data (i32.const 1096) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1148) "<")
 (data (i32.const 1160) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1212) "<")
 (data (i32.const 1224) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data (i32.const 1276) ",")
 (data (i32.const 1288) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1324) "\1c")
 (data (i32.const 1336) "\01")
 (data (i32.const 1356) "<")
 (data (i32.const 1368) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 1420) "\\")
 (data (i32.const 1432) "\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00d\00e\00c\00o\00d\00e\00r\00.\00t\00s")
 (data (i32.const 1516) "<")
 (data (i32.const 1528) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1580) "<")
 (data (i32.const 1592) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1644) "<")
 (data (i32.const 1656) "\01\00\00\00(\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00p\00u\00t\00 \00e\00n\00d")
 (data (i32.const 1708) "\1c")
 (data (i32.const 1720) "\01\00\00\00\02\00\00\00{")
 (data (i32.const 1740) "|")
 (data (i32.const 1752) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 1868) "<")
 (data (i32.const 1880) "\01\00\00\00\"\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00u\00p\00c\00a\00s\00t")
 (data (i32.const 1932) "\\")
 (data (i32.const 1944) "\01\00\00\00@\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00J\00S\00O\00N\00.\00t\00s")
 (data (i32.const 2028) "\1c")
 (data (i32.const 2040) "\01\00\00\00\02\00\00\00}")
 (data (i32.const 2060) "\1c")
 (data (i32.const 2072) "\01\00\00\00\02\00\00\00,")
 (data (i32.const 2092) ",")
 (data (i32.const 2104) "\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00,\00\'")
 (data (i32.const 2140) "\1c")
 (data (i32.const 2152) "\01\00\00\00\02\00\00\00\"")
 (data (i32.const 2172) "L")
 (data (i32.const 2184) "\01\00\00\00:\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00d\00o\00u\00b\00l\00e\00-\00q\00u\00o\00t\00e\00d\00 \00s\00t\00r\00i\00n\00g")
 (data (i32.const 2252) "L")
 (data (i32.const 2264) "\01\00\00\008\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 2332) ",")
 (data (i32.const 2344) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 2380) "\1c")
 (data (i32.const 2392) "\01\00\00\00\02\00\00\00\\")
 (data (i32.const 2412) "\1c")
 (data (i32.const 2424) "\01\00\00\00\02\00\00\00/")
 (data (i32.const 2444) "\1c")
 (data (i32.const 2456) "\01\00\00\00\02\00\00\00b")
 (data (i32.const 2476) "\1c")
 (data (i32.const 2488) "\01\00\00\00\02\00\00\00\08")
 (data (i32.const 2508) "\1c")
 (data (i32.const 2520) "\01\00\00\00\02\00\00\00n")
 (data (i32.const 2540) "\1c")
 (data (i32.const 2552) "\01\00\00\00\02\00\00\00\n")
 (data (i32.const 2572) "\1c")
 (data (i32.const 2584) "\01\00\00\00\02\00\00\00r")
 (data (i32.const 2604) "\1c")
 (data (i32.const 2616) "\01\00\00\00\02\00\00\00\0d")
 (data (i32.const 2636) "\1c")
 (data (i32.const 2648) "\01\00\00\00\02\00\00\00t")
 (data (i32.const 2668) "\1c")
 (data (i32.const 2680) "\01\00\00\00\02\00\00\00\t")
 (data (i32.const 2700) "\1c")
 (data (i32.const 2712) "\01\00\00\00\02\00\00\00u")
 (data (i32.const 2732) "<")
 (data (i32.const 2744) "\01\00\00\00&\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\\\00u\00 \00d\00i\00g\00i\00t")
 (data (i32.const 2796) "L")
 (data (i32.const 2808) "\01\00\00\00<\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00s\00c\00a\00p\00e\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00:\00 ")
 (data (i32.const 2876) "\1c")
 (data (i32.const 2888) "\01\00\00\00\02\00\00\00:")
 (data (i32.const 2908) ",")
 (data (i32.const 2920) "\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00:\00\'")
 (data (i32.const 2956) "L")
 (data (i32.const 2968) "\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00o\00b\00j\00e\00c\00t")
 (data (i32.const 3036) ",")
 (data (i32.const 3048) "\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data (i32.const 3084) "\1c")
 (data (i32.const 3096) "\01\00\00\00\02\00\00\00[")
 (data (i32.const 3116) "\1c")
 (data (i32.const 3128) "\01\00\00\00\02\00\00\00]")
 (data (i32.const 3148) "L")
 (data (i32.const 3160) "\01\00\00\00.\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00a\00r\00r\00a\00y")
 (data (i32.const 3228) "\1c")
 (data (i32.const 3240) "\01\00\00\00\n\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 3260) ",")
 (data (i32.const 3272) "\01\00\00\00\14\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'")
 (data (i32.const 3308) "\1c")
 (data (i32.const 3320) "\01\00\00\00\02\00\00\00\'")
 (data (i32.const 3340) "\1c")
 (data (i32.const 3352) "\01\00\00\00\08\00\00\00t\00r\00u\00e")
 (data (i32.const 3372) "\1c")
 (data (i32.const 3384) "\01\00\00\00\04\00\00\00-\000")
 (data (i32.const 3414) "\f0?\00\00\00\00\00\00$@\00\00\00\00\00\00Y@\00\00\00\00\00@\8f@\00\00\00\00\00\88\c3@\00\00\00\00\00j\f8@\00\00\00\00\80\84.A\00\00\00\00\d0\12cA\00\00\00\00\84\d7\97A\00\00\00\00e\cd\cdA\00\00\00 _\a0\02B\00\00\00\e8vH7B\00\00\00\a2\94\1amB\00\00@\e5\9c0\a2B\00\00\90\1e\c4\bc\d6B\00\004&\f5k\0cC\00\80\e07y\c3AC\00\a0\d8\85W4vC\00\c8Ngm\c1\abC\00=\91`\e4X\e1C@\8c\b5x\1d\af\15DP\ef\e2\d6\e4\1aKD\92\d5M\06\cf\f0\80D")
 (data (i32.const 3596) "\1c")
 (data (i32.const 3608) "\01\00\00\00\08\00\00\00n\00u\00l\00l")
 (data (i32.const 3628) "<")
 (data (i32.const 3640) "\01\00\00\00\"\00\00\00C\00a\00n\00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00J\00S\00O\00N")
 (data (i32.const 3692) "L")
 (data (i32.const 3704) "\01\00\00\00<\00\00\00~\00l\00i\00b\00/\00n\00e\00a\00r\00-\00s\00d\00k\00-\00b\00i\00n\00d\00g\00e\00n\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data (i32.const 3772) "\1c")
 (data (i32.const 3784) "\01\00\00\00\02\00\00\00a")
 (data (i32.const 3804) "<")
 (data (i32.const 3816) "\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 3868) ",")
 (data (i32.const 3880) "\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data (i32.const 3916) "\1c")
 (data (i32.const 3928) "\01\00\00\00\n\00\00\00t\00y\00p\00e\00 ")
 (data (i32.const 3948) "\1c")
 (data (i32.const 3960) "\01\00\00\00\06\00\00\00i\003\002")
 (data (i32.const 3980) "<")
 (data (i32.const 3992) "\01\00\00\00 \00\00\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00n\00u\00l\00l\00.")
 (data (i32.const 4044) "<")
 (data (i32.const 4056) "\01\00\00\00 \00\00\00V\00a\00l\00u\00e\00 \00w\00i\00t\00h\00 \00K\00e\00y\00:\00 ")
 (data (i32.const 4108) ",")
 (data (i32.const 4120) "\01\00\00\00\16\00\00\00 \00w\00i\00t\00h\00 \00t\00y\00p\00e\00 ")
 (data (i32.const 4156) "<")
 (data (i32.const 4168) "\01\00\00\00$\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00I\00n\00t\00e\00g\00e\00r")
 (data (i32.const 4220) ",")
 (data (i32.const 4232) "\01\00\00\00\14\00\00\00P\00a\00r\00a\00m\00e\00t\00e\00r\00 ")
 (data (i32.const 4268) "L")
 (data (i32.const 4280) "\01\00\00\000\00\00\00 \00i\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d\00 \00b\00u\00t\00 \00m\00i\00s\00s\00i\00n\00g")
 (data (i32.const 4348) "\\")
 (data (i32.const 4360) "\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00e\00n\00c\00o\00d\00e\00r\00.\00t\00s")
 (data (i32.const 4444) "\1c")
 (data (i32.const 4456) "\01\00\00\00\04\00\00\00\\\00\"")
 (data (i32.const 4476) "\1c")
 (data (i32.const 4488) "\01\00\00\00\04\00\00\00\\\00\\")
 (data (i32.const 4508) "\1c")
 (data (i32.const 4520) "\01\00\00\00\04\00\00\00\\\00b")
 (data (i32.const 4540) "\1c")
 (data (i32.const 4552) "\01\00\00\00\04\00\00\00\\\00n")
 (data (i32.const 4572) "\1c")
 (data (i32.const 4584) "\01\00\00\00\04\00\00\00\\\00r")
 (data (i32.const 4604) "\1c")
 (data (i32.const 4616) "\01\00\00\00\04\00\00\00\\\00t")
 (data (i32.const 4636) "\\")
 (data (i32.const 4648) "\01\00\00\00H\00\00\00U\00n\00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00 \00c\00o\00d\00e\00:\00 ")
 (data (i32.const 4732) "|")
 (data (i32.const 4744) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 4860) "<")
 (data (i32.const 4872) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 4924) "\1c")
 (data (i32.const 4936) "\01\00\00\00\02\00\00\000")
 (data (i32.const 4956) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 5356) "\1c\04")
 (data (i32.const 5368) "\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data (i32.const 6412) "\\")
 (data (i32.const 6424) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 6508) "<")
 (data (i32.const 6520) "\01\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e")
 (data (i32.const 6576) "\17\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 6608) "\04\00\00\00 \00\00\00\00\00\00\00\10A\82\00\00\00\00\00A\00\00\00\02\00\00\00\00\00\00\00\08\00\00\00 \00\00\00\00\00\00\00\02A")
 (data (i32.const 6680) "\04\00\00\00\02A")
 (data (i32.const 6696) "\04\00\00\00 \00\00\00\04\00\00\00 \00\00\00\11\00\00\00 \00\00\00\04\00\00\00 \00\00\00\04\00\00\00 \00\00\00\04\00\00\00\00\00\00\00\15")
 (data (i32.const 6756) "\02\t")
 (export "add" (func $assembly/index/__wrapper_add))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1168
   i32.const 1232
   i32.const 33
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.tee $1
  i32.const 4
  i32.add
  local.tee $2
  local.get $0
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $0
  i32.add
  local.tee $3
  memory.size
  local.tee $4
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $5
  i32.gt_u
  if
   local.get $4
   local.get $3
   local.get $5
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $5
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $3
  global.set $~lib/rt/stub/offset
  local.get $1
  local.get $0
  i32.store
  local.get $2
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1168
   i32.const 1232
   i32.const 86
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/stub/__alloc
  local.tee $3
  i32.const 4
  i32.sub
  local.tee $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $2
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $1
   i32.add
   local.tee $2
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $2
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $2
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $2
   i32.add
   local.set $0
   local.get $1
   local.get $2
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/typedarray/Uint8Array#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 12
  i32.const 6
  call $~lib/rt/stub/__new
  local.tee $1
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/stub/__new
   local.set $1
  end
  local.get $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1056
   i32.const 1104
   i32.const 19
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
  local.get $2
  i32.store
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 16
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  i32.const 32
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 32
  call $~lib/memory/memory.fill
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 32
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=8
  local.get $1
  i32.le_u
  if
   i32.const 1536
   i32.const 1600
   i32.const 166
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  block $folding-inner0
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.eqz
   br_if $folding-inner0
   local.get $1
   i32.load offset=4
   local.set $2
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.eqz
   br_if $folding-inner0
   local.get $1
   i32.load offset=8
   i32.load offset=8
   local.get $2
   i32.le_s
   if
    i32.const -1
    return
   end
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.eqz
   br_if $folding-inner0
   local.get $1
   i32.load offset=8
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.eqz
   br_if $folding-inner0
   local.get $0
   i32.load offset=4
   call $~lib/typedarray/Uint8Array#__get
   return
  end
  i32.const 1376
  i32.const 1440
  i32.const 127
  i32.const 26
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  block $folding-inner0
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.eqz
   br_if $folding-inner0
   local.get $1
   i32.load offset=4
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.eqz
   br_if $folding-inner0
   local.get $2
   i32.load offset=8
   i32.load offset=8
   i32.ge_s
   if
    i32.const 1664
    i32.const 1440
    i32.const 156
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.eqz
   br_if $folding-inner0
   local.get $1
   i32.load offset=8
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.eqz
   br_if $folding-inner0
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.eqz
   br_if $folding-inner0
   local.get $2
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $0
   call $~lib/typedarray/Uint8Array#__get
   return
  end
  i32.const 1376
  i32.const 1440
  i32.const 127
  i32.const 26
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace (param $0 i32)
  (local $1 i32)
  loop $while-continue|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
   local.tee $1
   i32.const 10
   i32.eq
   local.get $1
   i32.const 9
   i32.eq
   i32.or
   local.get $1
   i32.const 13
   i32.eq
   i32.or
   local.get $1
   i32.const 32
   i32.eq
   i32.or
   if
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    drop
    br $while-continue|0
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1056
   i32.const 1104
   i32.const 52
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $while-continue|0
   local.get $1
   i32.const 3
   i32.and
   i32.const 0
   local.get $2
   select
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     local.get $1
     i32.load offset=4
     i32.store offset=4
     local.get $0
     local.get $1
     i32.load offset=8
     i32.store offset=8
     local.get $0
     local.get $1
     i32.load offset=12
     i32.store offset=12
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    local.get $1
    i32.load offset=4
    i32.store offset=4
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       i32.const 1
       i32.sub
       br_table $case0|2 $case1|2 $case2|2 $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      local.get $1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get $0
      i32.const 2
      i32.add
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 2
      i32.add
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.load offset=1
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        local.get $1
        i32.load offset=5
        local.tee $4
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=4
        local.get $0
        local.get $1
        i32.load offset=9
        local.tee $3
        i32.const 8
        i32.shl
        local.get $4
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=8
        local.get $0
        local.get $1
        i32.load offset=13
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=12
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $3
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     local.tee $4
     i32.const 2
     i32.add
     local.set $1
     local.get $3
     local.get $4
     i32.load8_u offset=1
     i32.store8 offset=1
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.load offset=2
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       local.get $1
       i32.load offset=6
       local.tee $4
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=4
       local.get $0
       local.get $1
       i32.load offset=10
       local.tee $3
       i32.const 16
       i32.shl
       local.get $4
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=8
       local.get $0
       local.get $1
       i32.load offset=14
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=12
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $5
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.load offset=3
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      local.get $1
      i32.load offset=7
      local.tee $4
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=4
      local.get $0
      local.get $1
      i32.load offset=11
      local.tee $3
      i32.const 24
      i32.shl
      local.get $4
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=8
      local.get $0
      local.get $1
      i32.load offset=15
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=12
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $3
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $1
   local.get $0
   i32.sub
   local.get $4
   i32.sub
   i32.const 0
   local.get $4
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $0
    local.get $1
    local.get $4
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/stub/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1168
   i32.const 1232
   i32.const 99
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.tee $0
  i32.const 15
  i32.and
  i32.const 1
  local.get $0
  select
  if
   i32.const 0
   i32.const 1232
   i32.const 45
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.get $0
  local.get $0
  i32.const 4
  i32.sub
  local.tee $3
  i32.load
  local.tee $4
  i32.add
  i32.eq
  local.set $5
  local.get $1
  i32.const 16
  i32.add
  local.tee $6
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $2
  local.get $4
  local.get $6
  i32.lt_u
  if
   local.get $5
   if
    local.get $6
    i32.const 1073741820
    i32.gt_u
    if
     i32.const 1168
     i32.const 1232
     i32.const 52
     i32.const 33
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.add
    local.tee $4
    memory.size
    local.tee $5
    i32.const 16
    i32.shl
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    local.tee $6
    i32.gt_u
    if
     local.get $5
     local.get $4
     local.get $6
     i32.sub
     i32.const 65535
     i32.add
     i32.const -65536
     i32.and
     i32.const 16
     i32.shr_u
     local.tee $6
     local.get $5
     local.get $6
     i32.gt_s
     select
     memory.grow
     i32.const 0
     i32.lt_s
     if
      local.get $6
      memory.grow
      i32.const 0
      i32.lt_s
      if
       unreachable
      end
     end
    end
    local.get $4
    global.set $~lib/rt/stub/offset
    local.get $3
    local.get $2
    i32.store
   else
    local.get $2
    local.get $4
    i32.const 1
    i32.shl
    local.tee $3
    local.get $2
    local.get $3
    i32.gt_u
    select
    call $~lib/rt/stub/__alloc
    local.tee $2
    local.get $0
    local.get $4
    call $~lib/memory/memory.copy
    local.get $2
    local.set $0
   end
  else
   local.get $5
   if
    local.get $0
    local.get $2
    i32.add
    global.set $~lib/rt/stub/offset
    local.get $3
    local.get $2
    i32.store
   end
  end
  local.get $0
  i32.const 4
  i32.sub
  local.get $1
  i32.store offset=16
  local.get $0
  i32.const 16
  i32.add
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.const 2
  i32.shr_u
  local.get $1
  i32.lt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1056
    i32.const 1296
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $0
   i32.load
   local.tee $3
   local.get $2
   i32.const 1
   i32.shl
   local.tee $4
   i32.const 1073741820
   local.get $4
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $4
   local.get $1
   i32.const 8
   local.get $1
   i32.const 8
   i32.gt_u
   select
   i32.const 2
   i32.shl
   local.tee $1
   local.get $1
   local.get $4
   i32.lt_u
   select
   local.tee $1
   call $~lib/rt/stub/__renew
   local.tee $4
   i32.add
   local.get $1
   local.get $2
   i32.sub
   call $~lib/memory/memory.fill
   local.get $3
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $4
    i32.store
    local.get $0
    local.get $4
    i32.store offset=4
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
 )
 (func $~lib/assemblyscript-json/JSON/Handler#get:peek (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $1
  i32.load offset=12
  local.tee $0
  i32.const 1
  i32.sub
  local.tee $2
  local.get $0
  i32.ge_u
  if
   i32.const 1536
   i32.const 1296
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 1760
   i32.const 1296
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/util/hash/HASH<~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  if (result i32)
   local.get $0
   local.tee $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $3
   i32.const 16
   i32.ge_u
   if (result i32)
    i32.const 606290984
    local.set $2
    i32.const -2048144777
    local.set $4
    i32.const 1640531535
    local.set $5
    local.get $1
    local.get $3
    i32.add
    i32.const 16
    i32.sub
    local.set $7
    loop $while-continue|0
     local.get $1
     local.get $7
     i32.le_u
     if
      local.get $1
      i32.load
      i32.const -2048144777
      i32.mul
      local.get $2
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $2
      local.get $1
      i32.load offset=4
      i32.const -2048144777
      i32.mul
      local.get $4
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $4
      local.get $1
      i32.load offset=8
      i32.const -2048144777
      i32.mul
      local.get $6
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $6
      local.get $1
      i32.load offset=12
      i32.const -2048144777
      i32.mul
      local.get $5
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $5
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    local.get $2
    i32.const 1
    i32.rotl
    local.get $4
    i32.const 7
    i32.rotl
    i32.add
    local.get $6
    i32.const 12
    i32.rotl
    i32.add
    local.get $5
    i32.const 18
    i32.rotl
    i32.add
    local.get $3
    i32.add
   else
    local.get $3
    i32.const 374761393
    i32.add
   end
   local.set $2
   local.get $0
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $4
   loop $while-continue|1
    local.get $1
    local.get $4
    i32.le_u
    if
     local.get $1
     i32.load
     i32.const -1028477379
     i32.mul
     local.get $2
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.set $2
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   local.get $0
   local.get $3
   i32.add
   local.set $0
   loop $while-continue|2
    local.get $0
    local.get $1
    i32.gt_u
    if
     local.get $1
     i32.load8_u
     i32.const 374761393
     i32.mul
     local.get $2
     i32.add
     i32.const 11
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $while-continue|2
    end
   end
   local.get $2
   i32.const 15
   i32.shr_u
   local.get $2
   i32.xor
   i32.const -2048144777
   i32.mul
   local.tee $0
   i32.const 13
   i32.shr_u
   local.get $0
   i32.xor
   i32.const -1028477379
   i32.mul
   local.tee $0
   i32.const 16
   i32.shr_u
   local.get $0
   i32.xor
  else
   i32.const 0
  end
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $3
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  local.tee $2
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  local.get $3
  local.tee $0
  i32.const 4
  i32.ge_u
  i32.and
  if
   loop $do-loop|0
    local.get $2
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $0
     i32.const 4
     i32.sub
     local.tee $0
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  block $__inlined_func$~lib/util/string/compareImpl
   loop $while-continue|1
    local.get $0
    local.tee $3
    i32.const 1
    i32.sub
    local.set $0
    local.get $3
    if
     local.get $2
     i32.load16_u
     local.tee $5
     local.get $1
     i32.load16_u
     local.tee $4
     i32.sub
     local.set $3
     local.get $4
     local.get $5
     i32.ne
     br_if $__inlined_func$~lib/util/string/compareImpl
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   i32.const 0
   local.set $3
  end
  local.get $3
  i32.eqz
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  local.get $2
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load
     local.get $1
     call $~lib/string/String.__eq
    end
    if
     local.get $0
     return
    end
    local.get $2
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/JSON/Handler#addValue (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.load
   i32.load offset=12
  end
  i32.eqz
  if
   local.get $0
   i32.load
   local.get $2
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/JSON/Handler#get:peek
  local.tee $3
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof (result i32)
    local.get $3
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $3
    i32.const 6576
    i32.load
    i32.le_u
    if
     loop $do-loop|0
      i32.const 1
      local.get $3
      i32.const 3
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof
      drop
      local.get $3
      i32.const 3
      i32.shl
      i32.const 6580
      i32.add
      i32.load offset=4
      local.tee $3
      br_if $do-loop|0
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   block $__inlined_func$~lib/rt/__instanceof0 (result i32)
    local.get $0
    call $~lib/assemblyscript-json/JSON/Handler#get:peek
    local.tee $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $4
    i32.const 6576
    i32.load
    i32.le_u
    if
     loop $do-loop|02
      i32.const 1
      local.get $4
      i32.const 3
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof0
      drop
      local.get $4
      i32.const 3
      i32.shl
      i32.const 6580
      i32.add
      i32.load offset=4
      local.tee $4
      br_if $do-loop|02
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 1888
    i32.const 1952
    i32.const 78
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.tee $5
   local.get $1
   local.get $1
   call $~lib/util/hash/HASH<~lib/string/String>
   local.tee $8
   call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
   local.tee $0
   if
    local.get $0
    local.get $2
    i32.store offset=4
   else
    local.get $5
    i32.load offset=16
    local.get $5
    i32.load offset=12
    i32.eq
    if
     local.get $5
     i32.load offset=20
     local.get $5
     i32.load offset=12
     i32.const 3
     i32.mul
     i32.const 4
     i32.div_s
     i32.lt_s
     if (result i32)
      local.get $5
      i32.load offset=4
     else
      local.get $5
      i32.load offset=4
      i32.const 1
      i32.shl
      i32.const 1
      i32.or
     end
     local.tee $6
     i32.const 1
     i32.add
     local.tee $0
     i32.const 2
     i32.shl
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.set $7
     local.get $0
     i32.const 3
     i32.shl
     i32.const 3
     i32.div_s
     local.tee $9
     i32.const 12
     i32.mul
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.set $0
     local.get $5
     i32.load offset=8
     local.tee $4
     local.get $5
     i32.load offset=16
     i32.const 12
     i32.mul
     i32.add
     local.set $10
     local.get $0
     local.set $3
     loop $while-continue|0
      local.get $4
      local.get $10
      i32.ne
      if
       local.get $4
       i32.load offset=8
       i32.const 1
       i32.and
       i32.eqz
       if
        local.get $3
        local.get $4
        i32.load
        local.tee $11
        i32.store
        local.get $3
        local.get $4
        i32.load offset=4
        i32.store offset=4
        local.get $3
        local.get $11
        call $~lib/util/hash/HASH<~lib/string/String>
        local.get $6
        i32.and
        i32.const 2
        i32.shl
        local.get $7
        i32.add
        local.tee $11
        i32.load
        i32.store offset=8
        local.get $11
        local.get $3
        i32.store
        local.get $3
        i32.const 12
        i32.add
        local.set $3
       end
       local.get $4
       i32.const 12
       i32.add
       local.set $4
       br $while-continue|0
      end
     end
     local.get $5
     local.get $7
     i32.store
     local.get $5
     local.get $6
     i32.store offset=4
     local.get $5
     local.get $0
     i32.store offset=8
     local.get $5
     local.get $9
     i32.store offset=12
     local.get $5
     local.get $5
     i32.load offset=20
     i32.store offset=16
    end
    local.get $5
    i32.load offset=8
    local.set $0
    local.get $5
    local.get $5
    i32.load offset=16
    local.tee $3
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $3
    i32.const 12
    i32.mul
    local.get $0
    i32.add
    local.tee $0
    local.get $1
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
    local.get $5
    local.get $5
    i32.load offset=20
    i32.const 1
    i32.add
    i32.store offset=20
    local.get $0
    local.get $5
    i32.load
    local.get $5
    i32.load offset=4
    local.get $8
    i32.and
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load
    i32.store offset=8
    local.get $1
    local.get $0
    i32.store
   end
  else
   local.get $0
   call $~lib/assemblyscript-json/JSON/Handler#get:peek
   local.tee $1
   if (result i32)
    block $__inlined_func$~lib/rt/__instanceof3 (result i32)
     local.get $1
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $4
     i32.const 6576
     i32.load
     i32.le_u
     if
      loop $do-loop|05
       i32.const 1
       local.get $4
       i32.const 12
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof3
       drop
       local.get $4
       i32.const 3
       i32.shl
       i32.const 6580
       i32.add
       i32.load offset=4
       local.tee $4
       br_if $do-loop|05
      end
     end
     i32.const 0
    end
   else
    i32.const 0
   end
   if
    block $__inlined_func$~lib/rt/__instanceof6 (result i32)
     local.get $0
     call $~lib/assemblyscript-json/JSON/Handler#get:peek
     local.tee $0
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $1
     i32.const 6576
     i32.load
     i32.le_u
     if
      loop $do-loop|08
       i32.const 1
       local.get $1
       i32.const 12
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof6
       drop
       local.get $1
       i32.const 3
       i32.shl
       i32.const 6580
       i32.add
       i32.load offset=4
       local.tee $1
       br_if $do-loop|08
      end
     end
     i32.const 0
    end
    i32.eqz
    if
     i32.const 1888
     i32.const 1952
     i32.const 80
     i32.const 13
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.load
    local.get $2
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
   end
  end
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 16
  i32.const 13
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  i32.const 32
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 32
  call $~lib/memory/memory.fill
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 32
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#readString@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.load offset=4
   local.set $2
  end
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.load
  local.tee $3
  local.get $0
  i32.load offset=4
  local.get $3
  i32.sub
  i32.add
  i32.add
  local.tee $0
  local.get $0
  local.get $2
  i32.const 1
  i32.sub
  local.get $1
  i32.sub
  local.tee $1
  i32.add
  local.tee $3
  i32.gt_u
  if
   i32.const 0
   i32.const 2352
   i32.const 769
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $5
  local.set $2
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    block $while-break|0
     local.get $0
     i32.load8_u
     local.set $4
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     local.get $4
     i32.const 128
     i32.and
     if
      local.get $0
      local.get $3
      i32.eq
      br_if $while-break|0
      local.get $0
      i32.load8_u
      i32.const 63
      i32.and
      local.set $6
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      local.get $4
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $2
       local.get $6
       local.get $4
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       i32.or
       i32.store16
      else
       local.get $0
       local.get $3
       i32.eq
       br_if $while-break|0
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       local.set $1
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       local.get $4
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $1
        local.get $4
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $6
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $1
       else
        local.get $0
        local.get $3
        i32.eq
        br_if $while-break|0
        local.get $0
        i32.load8_u
        i32.const 63
        i32.and
        local.get $4
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $6
        i32.const 12
        i32.shl
        i32.or
        local.get $1
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $1
        local.get $0
        i32.const 1
        i32.add
        local.set $0
       end
       local.get $1
       i32.const 65536
       i32.lt_u
       if
        local.get $2
        local.get $1
        i32.store16
       else
        local.get $2
        local.get $1
        i32.const 65536
        i32.sub
        local.tee $1
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        local.get $1
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        i32.const 16
        i32.shl
        i32.or
        i32.store
        local.get $2
        i32.const 2
        i32.add
        local.set $2
       end
      end
     else
      local.get $2
      local.get $4
      i32.store16
     end
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
  end
  local.get $5
  local.get $2
  local.get $5
  i32.sub
  call $~lib/rt/stub/__renew
 )
 (func $~lib/array/Array<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 1344
  local.set $3
  block $__inlined_func$~lib/util/string/joinStringArray
   local.get $0
   i32.load offset=12
   local.tee $6
   i32.const 1
   i32.sub
   local.tee $0
   i32.const 0
   i32.lt_s
   br_if $__inlined_func$~lib/util/string/joinStringArray
   local.get $0
   i32.eqz
   if
    local.get $5
    i32.load
    local.tee $3
    i32.eqz
    if
     i32.const 1344
     local.set $3
    end
    br $__inlined_func$~lib/util/string/joinStringArray
   end
   loop $for-loop|0
    local.get $4
    local.get $6
    i32.lt_s
    if
     local.get $4
     i32.const 2
     i32.shl
     local.get $5
     i32.add
     i32.load
     local.tee $3
     if
      local.get $3
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      local.get $1
      i32.add
      local.set $1
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   local.get $1
   local.get $0
   i32.const 1340
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $1
   i32.mul
   i32.add
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__new
   local.set $3
   i32.const 0
   local.set $4
   loop $for-loop|1
    local.get $0
    local.get $4
    i32.gt_s
    if
     local.get $4
     i32.const 2
     i32.shl
     local.get $5
     i32.add
     i32.load
     local.tee $6
     if
      local.get $2
      i32.const 1
      i32.shl
      local.get $3
      i32.add
      local.get $6
      local.get $6
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      local.tee $6
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $2
      local.get $6
      i32.add
      local.set $2
     end
     local.get $1
     if
      local.get $2
      i32.const 1
      i32.shl
      local.get $3
      i32.add
      i32.const 1344
      local.get $1
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $1
      local.get $2
      i32.add
      local.set $2
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|1
    end
   end
   local.get $0
   i32.const 2
   i32.shl
   local.get $5
   i32.add
   i32.load
   local.tee $0
   if
    local.get $2
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $0
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
   end
  end
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  local.tee $1
  i32.const 48
  i32.sub
  local.tee $0
  i32.const 9
  i32.gt_s
  if
   local.get $1
   i32.const 55
   i32.sub
   local.tee $0
   i32.const 10
   i32.lt_s
   local.get $0
   i32.const 15
   i32.gt_s
   i32.or
   if
    local.get $1
    i32.const 87
    i32.sub
    local.set $0
   end
  end
  local.get $0
  i32.const 16
  i32.lt_s
  local.get $0
  i32.const 0
  i32.ge_s
  i32.and
  i32.eqz
  if
   i32.const 2752
   i32.const 1440
   i32.const 319
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/string/String.fromCharCode@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const -1
   local.set $1
  end
  i32.const 2
  local.get $1
  i32.const 0
  i32.gt_s
  local.tee $3
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  i32.store16
  local.get $3
  if
   local.get $2
   local.get $1
   i32.store16 offset=2
  end
  local.get $2
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $2
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $3
  i32.add
  local.tee $4
  i32.eqz
  if
   i32.const 1344
   return
  end
  local.get $4
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $4
  local.get $0
  local.get $2
  call $~lib/memory/memory.copy
  local.get $2
  local.get $4
  i32.add
  local.get $1
  local.get $3
  call $~lib/memory/memory.copy
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  i32.const 2156
  i32.load
  i32.const 1
  i32.shr_u
  if (result i32)
   i32.const 2160
   i32.load16_u
  else
   i32.const -1
  end
  i32.ne
  if
   i32.const 2192
   i32.const 1440
   i32.const 245
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  block $folding-inner0
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.eqz
   br_if $folding-inner0
   local.get $1
   i32.load offset=4
   local.set $1
   call $~lib/array/Array<~lib/string/String>#constructor
   local.set $2
   loop $for-loop|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    local.tee $3
    i32.const 32
    i32.lt_s
    if
     i32.const 2272
     i32.const 1440
     i32.const 254
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    i32.const 2156
    i32.load
    i32.const 1
    i32.shr_u
    if (result i32)
     i32.const 2160
     i32.load16_u
    else
     i32.const -1
    end
    local.get $3
    i32.eq
    if
     local.get $0
     i32.load offset=4
     local.tee $0
     i32.eqz
     br_if $folding-inner0
     i32.const 1
     global.set $~argumentsLength
     local.get $0
     local.get $1
     call $~lib/assemblyscript-json/decoder/DecoderState#readString@varargs
     local.set $0
     local.get $2
     i32.load offset=12
     i32.eqz
     if
      local.get $0
      return
     end
     local.get $2
     local.get $0
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
     local.get $2
     call $~lib/array/Array<~lib/string/String>#join
     return
    else
     i32.const 2396
     i32.load
     i32.const 1
     i32.shr_u
     if (result i32)
      i32.const 2400
      i32.load16_u
     else
      i32.const -1
     end
     local.get $3
     i32.eq
     if
      local.get $0
      i32.load offset=4
      local.tee $3
      i32.eqz
      br_if $folding-inner0
      local.get $3
      i32.load offset=4
      local.get $1
      i32.const 1
      i32.add
      i32.gt_s
      if
       local.get $0
       i32.load offset=4
       local.tee $3
       i32.eqz
       br_if $folding-inner0
       i32.const 1
       global.set $~argumentsLength
       local.get $2
       local.get $3
       local.get $1
       call $~lib/assemblyscript-json/decoder/DecoderState#readString@varargs
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
      end
      block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
       local.get $0
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
       local.tee $1
       i32.const 2156
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 2160
        i32.load16_u
       else
        i32.const -1
       end
       i32.eq
       if
        i32.const 2160
        local.set $1
        br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
       end
       i32.const 2396
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 2400
        i32.load16_u
       else
        i32.const -1
       end
       local.get $1
       i32.eq
       if
        i32.const 2400
        local.set $1
        br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
       end
       i32.const 2428
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 2432
        i32.load16_u
       else
        i32.const -1
       end
       local.get $1
       i32.eq
       if
        i32.const 2432
        local.set $1
        br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
       end
       i32.const 2460
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 2464
        i32.load16_u
       else
        i32.const -1
       end
       local.get $1
       i32.eq
       if
        i32.const 2496
        local.set $1
        br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
       end
       i32.const 2524
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 2528
        i32.load16_u
       else
        i32.const -1
       end
       local.get $1
       i32.eq
       if
        i32.const 2560
        local.set $1
        br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
       end
       i32.const 2588
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 2592
        i32.load16_u
       else
        i32.const -1
       end
       local.get $1
       i32.eq
       if
        i32.const 2624
        local.set $1
        br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
       end
       i32.const 2652
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 2656
        i32.load16_u
       else
        i32.const -1
       end
       local.get $1
       i32.eq
       if
        i32.const 2688
        local.set $1
        br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
       end
       i32.const 2716
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 2720
        i32.load16_u
       else
        i32.const -1
       end
       local.get $1
       i32.eq
       if
        i32.const 2
        local.get $0
        call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
        i32.const 12
        i32.shl
        local.get $0
        call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
        i32.const 8
        i32.shl
        i32.add
        local.get $0
        call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
        i32.const 4
        i32.shl
        i32.add
        local.get $0
        call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
        i32.add
        local.tee $3
        i32.const 65535
        i32.gt_u
        local.tee $4
        i32.shl
        i32.const 1
        call $~lib/rt/stub/__new
        local.set $1
        local.get $4
        if
         local.get $3
         i32.const 1114111
         i32.gt_u
         if
          i32.const 0
          i32.const 2352
          i32.const 39
          i32.const 7
          call $~lib/builtins/abort
          unreachable
         end
         local.get $1
         local.get $3
         i32.const 65536
         i32.sub
         local.tee $3
         i32.const 10
         i32.shr_u
         i32.const 55296
         i32.or
         local.get $3
         i32.const 1023
         i32.and
         i32.const 56320
         i32.or
         i32.const 16
         i32.shl
         i32.or
         i32.store
        else
         local.get $1
         local.get $3
         i32.store16
        end
        br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
       end
       i32.const 1
       global.set $~argumentsLength
       i32.const 2816
       local.get $1
       call $~lib/string/String.fromCharCode@varargs
       call $~lib/string/String#concat
       i32.const 1440
       i32.const 306
       i32.const 5
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $1
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
      local.get $0
      i32.load offset=4
      local.tee $1
      i32.eqz
      br_if $folding-inner0
      local.get $1
      i32.load offset=4
      local.set $1
     end
     br $for-loop|0
    end
    unreachable
   end
   unreachable
  end
  i32.const 1376
  i32.const 1440
  i32.const 127
  i32.const 26
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 0
  i32.le_s
  if
   i32.const 3056
   i32.const 1296
   i32.const 291
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseObject (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  local.set $1
  i32.const 1724
  i32.load
  i32.const 1
  i32.shr_u
  if (result i32)
   i32.const 1728
   i32.load16_u
  else
   i32.const -1
  end
  local.get $1
  i32.ne
  if
   i32.const 0
   return
  end
  block $folding-inner0
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.eqz
   br_if $folding-inner0
   local.get $1
   i32.load
   local.set $1
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.eqz
   br_if $folding-inner0
   local.get $2
   i32.const 1344
   i32.store
   local.get $0
   i32.load
   local.tee $3
   local.get $1
   i32.const 4
   i32.const 3
   call $~lib/rt/stub/__new
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   i32.eqz
   if
    i32.const 0
    i32.const 4
    call $~lib/rt/stub/__new
    local.set $1
   end
   i32.const 24
   i32.const 5
   call $~lib/rt/stub/__new
   local.tee $2
   i32.const 16
   call $~lib/arraybuffer/ArrayBuffer#constructor
   i32.store
   local.get $2
   i32.const 3
   i32.store offset=4
   local.get $2
   i32.const 48
   call $~lib/arraybuffer/ArrayBuffer#constructor
   i32.store offset=8
   local.get $2
   i32.const 4
   i32.store offset=12
   local.get $2
   i32.const 0
   i32.store offset=16
   local.get $2
   i32.const 0
   i32.store offset=20
   local.get $1
   local.get $2
   i32.store
   local.get $1
   call $~lib/assemblyscript-json/JSON/Handler#addValue
   local.get $3
   i32.load
   local.get $1
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
   i32.const 1
   local.set $1
   loop $while-continue|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    local.set $2
    i32.const 2044
    i32.load
    i32.const 1
    i32.shr_u
    if (result i32)
     i32.const 2048
     i32.load16_u
    else
     i32.const -1
    end
    local.get $2
    i32.ne
    if
     local.get $1
     if
      i32.const 0
      local.set $1
     else
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
      local.set $2
      i32.const 2076
      i32.load
      i32.const 1
      i32.shr_u
      if (result i32)
       i32.const 2080
       i32.load16_u
      else
       i32.const -1
      end
      local.get $2
      i32.ne
      if
       i32.const 2112
       i32.const 1440
       i32.const 190
       i32.const 11
       call $~lib/builtins/abort
       unreachable
      end
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
     local.get $0
     i32.load offset=4
     local.tee $2
     i32.eqz
     br_if $folding-inner0
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString
     i32.store
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
     local.set $2
     i32.const 2892
     i32.load
     i32.const 1
     i32.shr_u
     if (result i32)
      i32.const 2896
      i32.load16_u
     else
      i32.const -1
     end
     local.get $2
     i32.ne
     if
      i32.const 2928
      i32.const 1440
      i32.const 207
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
     drop
     br $while-continue|0
    end
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   local.set $1
   i32.const 2044
   i32.load
   i32.const 1
   i32.shr_u
   if (result i32)
    i32.const 2048
    i32.load16_u
   else
    i32.const -1
   end
   local.get $1
   i32.ne
   if
    i32.const 2976
    i32.const 1440
    i32.const 197
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.tee $0
   i32.load
   i32.load offset=12
   i32.const 1
   i32.gt_s
   if
    local.get $0
    i32.load
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
   end
   i32.const 1
   return
  end
  i32.const 1376
  i32.const 1440
  i32.const 127
  i32.const 26
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  loop $for-loop|0
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.get $2
   i32.gt_s
   if
    local.get $1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.get $2
    i32.le_u
    if (result i32)
     i32.const -1
    else
     local.get $2
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     i32.load16_u
    end
    local.set $3
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    local.get $3
    i32.ne
    if
     i32.const 3280
     local.get $1
     call $~lib/string/String#concat
     i32.const 3328
     call $~lib/string/String#concat
     i32.const 1440
     i32.const 396
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/assemblyscript-json/JSON/Handler#setBoolean (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  i32.const 1
  i32.const 15
  call $~lib/rt/stub/__new
  local.tee $3
  local.get $2
  i32.store8
  local.get $0
  local.get $1
  local.get $3
  if (result i32)
   local.get $3
  else
   i32.const 0
   i32.const 4
   call $~lib/rt/stub/__new
  end
  call $~lib/assemblyscript-json/JSON/Handler#addValue
 )
 (func $~lib/math/ipow32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 5
  local.set $1
  i32.const 1
  local.set $2
  local.get $0
  i32.const 0
  i32.le_s
  if
   local.get $0
   i32.eqz
   return
  else
   local.get $0
   i32.const 1
   i32.eq
   if
    i32.const 5
    return
   else
    local.get $0
    i32.const 2
    i32.eq
    if
     i32.const 25
     return
    else
     local.get $0
     i32.const 32
     i32.lt_s
     if
      block $break|0
       block $case4|0
        block $case3|0
         block $case2|0
          block $case1|0
           block $case0|0
            i32.const 31
            local.get $0
            i32.clz
            i32.sub
            br_table $case4|0 $case3|0 $case2|0 $case1|0 $case0|0 $break|0
           end
           i32.const 5
           i32.const 1
           local.get $0
           i32.const 1
           i32.and
           select
           local.set $2
           local.get $0
           i32.const 1
           i32.shr_u
           local.set $0
           i32.const 25
           local.set $1
          end
          local.get $1
          local.get $2
          i32.mul
          local.get $2
          local.get $0
          i32.const 1
          i32.and
          select
          local.set $2
          local.get $0
          i32.const 1
          i32.shr_u
          local.set $0
          local.get $1
          local.get $1
          i32.mul
          local.set $1
         end
         local.get $1
         local.get $2
         i32.mul
         local.get $2
         local.get $0
         i32.const 1
         i32.and
         select
         local.set $2
         local.get $0
         i32.const 1
         i32.shr_u
         local.set $0
         local.get $1
         local.get $1
         i32.mul
         local.set $1
        end
        local.get $1
        local.get $2
        i32.mul
        local.get $2
        local.get $0
        i32.const 1
        i32.and
        select
        local.set $2
        local.get $0
        i32.const 1
        i32.shr_u
        local.set $0
        local.get $1
        local.get $1
        i32.mul
        local.set $1
       end
       local.get $1
       local.get $2
       i32.mul
       local.get $2
       local.get $0
       i32.const 1
       i32.and
       select
       local.set $2
      end
      local.get $2
      return
     end
    end
   end
  end
  loop $while-continue|1
   local.get $0
   if
    local.get $1
    local.get $2
    i32.mul
    local.get $2
    local.get $0
    i32.const 1
    i32.and
    select
    local.set $2
    local.get $0
    i32.const 1
    i32.shr_u
    local.set $0
    local.get $1
    local.get $1
    i32.mul
    local.set $1
    br $while-continue|1
   end
  end
  local.get $2
 )
 (func $~lib/math/NativeMath.scalbn (param $0 f64) (param $1 i32) (result f64)
  local.get $1
  i32.const 1023
  i32.gt_s
  if (result f64)
   local.get $0
   f64.const 8988465674311579538646525e283
   f64.mul
   local.set $0
   local.get $1
   i32.const 1023
   i32.sub
   local.tee $1
   i32.const 1023
   i32.gt_s
   if (result f64)
    local.get $1
    i32.const 1023
    i32.sub
    local.tee $1
    i32.const 1023
    local.get $1
    i32.const 1023
    i32.lt_s
    select
    local.set $1
    local.get $0
    f64.const 8988465674311579538646525e283
    f64.mul
   else
    local.get $0
   end
  else
   local.get $1
   i32.const -1022
   i32.lt_s
   if (result f64)
    local.get $0
    f64.const 2.004168360008973e-292
    f64.mul
    local.set $0
    local.get $1
    i32.const 969
    i32.add
    local.tee $1
    i32.const -1022
    i32.lt_s
    if (result f64)
     local.get $1
     i32.const 969
     i32.add
     local.tee $1
     i32.const -1022
     local.get $1
     i32.const -1022
     i32.gt_s
     select
     local.set $1
     local.get $0
     f64.const 2.004168360008973e-292
     f64.mul
    else
     local.get $0
    end
   else
    local.get $0
   end
  end
  local.get $1
  i64.extend_i32_s
  i64.const 1023
  i64.add
  i64.const 52
  i64.shl
  f64.reinterpret_i64
  f64.mul
 )
 (func $~lib/util/string/strtod (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 f64)
  (local $11 f64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  block $folding-inner0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.tee $7
   i32.eqz
   br_if $folding-inner0
   local.get $0
   i32.load16_u
   local.set $5
   f64.const 1
   local.set $11
   loop $while-continue|0
    local.get $7
    if (result i32)
     block $__inlined_func$~lib/util/string/isSpace (result i32)
      local.get $5
      i32.const 128
      i32.or
      i32.const 160
      i32.eq
      local.get $5
      i32.const 9
      i32.sub
      i32.const 4
      i32.le_u
      i32.or
      local.get $5
      i32.const 5760
      i32.lt_u
      br_if $__inlined_func$~lib/util/string/isSpace
      drop
      i32.const 1
      local.get $5
      i32.const -8192
      i32.add
      i32.const 10
      i32.le_u
      br_if $__inlined_func$~lib/util/string/isSpace
      drop
      block $break|0
       block $case6|0
        local.get $5
        i32.const 5760
        i32.eq
        br_if $case6|0
        local.get $5
        i32.const 8232
        i32.eq
        br_if $case6|0
        local.get $5
        i32.const 8233
        i32.eq
        br_if $case6|0
        local.get $5
        i32.const 8239
        i32.eq
        br_if $case6|0
        local.get $5
        i32.const 8287
        i32.eq
        br_if $case6|0
        local.get $5
        i32.const 12288
        i32.eq
        br_if $case6|0
        local.get $5
        i32.const 65279
        i32.eq
        br_if $case6|0
        br $break|0
       end
       i32.const 1
       br $__inlined_func$~lib/util/string/isSpace
      end
      i32.const 0
     end
    else
     i32.const 0
    end
    if
     local.get $0
     i32.const 2
     i32.add
     local.tee $0
     i32.load16_u
     local.set $5
     local.get $7
     i32.const 1
     i32.sub
     local.set $7
     br $while-continue|0
    end
   end
   local.get $7
   i32.eqz
   br_if $folding-inner0
   local.get $5
   i32.const 45
   i32.eq
   if (result i32)
    local.get $7
    i32.const 1
    i32.sub
    local.tee $7
    i32.eqz
    br_if $folding-inner0
    f64.const -1
    local.set $11
    local.get $0
    i32.const 2
    i32.add
    local.tee $0
    i32.load16_u
   else
    local.get $5
    i32.const 43
    i32.eq
    if (result i32)
     local.get $7
     i32.const 1
     i32.sub
     local.tee $7
     i32.eqz
     br_if $folding-inner0
     local.get $0
     i32.const 2
     i32.add
     local.tee $0
     i32.load16_u
    else
     local.get $5
    end
   end
   local.tee $5
   i32.const 73
   i32.eq
   local.get $7
   i32.const 8
   i32.ge_s
   i32.and
   if
    local.get $0
    i64.load
    i64.const 29555310648492105
    i64.eq
    if (result i32)
     local.get $0
     i64.load offset=8
     i64.const 34058970405077102
     i64.eq
    else
     i32.const 0
    end
    if
     local.get $11
     f64.const inf
     f64.mul
     return
    end
    br $folding-inner0
   end
   local.get $5
   i32.const 46
   i32.ne
   local.get $5
   i32.const 48
   i32.sub
   i32.const 10
   i32.ge_u
   i32.and
   br_if $folding-inner0
   local.get $0
   local.set $4
   loop $while-continue|1
    local.get $5
    i32.const 48
    i32.eq
    if
     local.get $0
     i32.const 2
     i32.add
     local.tee $0
     i32.load16_u
     local.set $5
     local.get $7
     i32.const 1
     i32.sub
     local.set $7
     br $while-continue|1
    end
   end
   local.get $7
   i32.const 0
   i32.le_s
   if
    f64.const 0
    return
   end
   local.get $5
   i32.const 46
   i32.eq
   if
    local.get $0
    local.get $4
    i32.eq
    local.set $4
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    i32.const 0
    local.get $4
    local.get $7
    i32.const 1
    i32.sub
    local.tee $7
    select
    br_if $folding-inner0
    i32.const 1
    local.set $9
    loop $for-loop|2
     local.get $0
     i32.load16_u
     local.tee $5
     i32.const 48
     i32.eq
     if
      local.get $7
      i32.const 1
      i32.sub
      local.set $7
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      local.get $0
      i32.const 2
      i32.add
      local.set $0
      br $for-loop|2
     end
    end
    local.get $7
    i32.const 0
    i32.le_s
    if
     f64.const 0
     return
    end
    local.get $5
    i32.const 48
    i32.sub
    i32.const 10
    i32.ge_u
    i32.const 0
    i32.const 0
    local.get $4
    local.get $2
    select
    select
    br_if $folding-inner0
   end
   local.get $5
   i32.const 48
   i32.sub
   local.set $4
   loop $for-loop|3
    local.get $9
    i32.eqz
    local.get $5
    i32.const 46
    i32.eq
    i32.and
    local.get $4
    i32.const 10
    i32.lt_u
    i32.or
    if
     block $for-break3
      local.get $4
      i32.const 10
      i32.lt_u
      if
       local.get $1
       i32.const 19
       i32.lt_s
       if (result i64)
        local.get $4
        i64.extend_i32_u
        local.get $6
        i64.const 10
        i64.mul
        i64.add
       else
        local.get $4
        i32.eqz
        i32.eqz
        i64.extend_i32_u
        local.get $6
        i64.or
       end
       local.set $6
       local.get $1
       i32.const 1
       i32.add
       local.set $1
      else
       local.get $1
       local.set $2
       i32.const 1
       local.set $9
      end
      local.get $7
      i32.const 1
      i32.sub
      local.tee $7
      i32.eqz
      br_if $for-break3
      local.get $0
      i32.const 2
      i32.add
      local.tee $0
      i32.load16_u
      local.tee $5
      i32.const 48
      i32.sub
      local.set $4
      br $for-loop|3
     end
    end
   end
   block $~lib/util/string/scientific|inlined.0 (result f64)
    local.get $2
    local.get $1
    local.get $9
    select
    i32.const 19
    local.get $1
    local.get $1
    i32.const 19
    i32.gt_s
    select
    i32.sub
    local.set $5
    f64.const 0
    local.get $6
    i64.eqz
    block $~lib/util/string/parseExp|inlined.0 (result i32)
     i32.const 1
     local.set $1
     i32.const 0
     local.get $0
     i32.load16_u
     i32.const 32
     i32.or
     i32.const 101
     i32.ne
     br_if $~lib/util/string/parseExp|inlined.0
     drop
     i32.const 0
     local.get $7
     i32.const 1
     i32.sub
     local.tee $4
     i32.eqz
     br_if $~lib/util/string/parseExp|inlined.0
     drop
     local.get $0
     i32.const 2
     i32.add
     local.tee $0
     i32.load16_u
     local.tee $2
     i32.const 45
     i32.eq
     if (result i32)
      i32.const 0
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      i32.eqz
      br_if $~lib/util/string/parseExp|inlined.0
      drop
      i32.const -1
      local.set $1
      local.get $0
      i32.const 2
      i32.add
      local.tee $0
      i32.load16_u
     else
      local.get $2
      i32.const 43
      i32.eq
      if (result i32)
       i32.const 0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       i32.eqz
       br_if $~lib/util/string/parseExp|inlined.0
       drop
       local.get $0
       i32.const 2
       i32.add
       local.tee $0
       i32.load16_u
      else
       local.get $2
      end
     end
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 48
      i32.eq
      if
       i32.const 0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       i32.eqz
       br_if $~lib/util/string/parseExp|inlined.0
       drop
       local.get $0
       i32.const 2
       i32.add
       local.tee $0
       i32.load16_u
       local.set $2
       br $while-continue|4
      end
     end
     local.get $2
     i32.const 48
     i32.sub
     local.set $2
     loop $for-loop|5
      local.get $2
      i32.const 10
      i32.lt_u
      i32.const 0
      local.get $4
      select
      if
       local.get $1
       i32.const 3200
       i32.mul
       local.get $3
       i32.const 3200
       i32.ge_s
       br_if $~lib/util/string/parseExp|inlined.0
       drop
       local.get $2
       local.get $3
       i32.const 10
       i32.mul
       i32.add
       local.set $3
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       i32.const 2
       i32.add
       local.tee $0
       i32.load16_u
       i32.const 48
       i32.sub
       local.set $2
       br $for-loop|5
      end
     end
     local.get $1
     local.get $3
     i32.mul
    end
    local.get $5
    i32.add
    local.tee $0
    i32.const -342
    i32.lt_s
    i32.or
    br_if $~lib/util/string/scientific|inlined.0
    drop
    f64.const inf
    local.get $0
    i32.const 308
    i32.gt_s
    br_if $~lib/util/string/scientific|inlined.0
    drop
    local.get $6
    f64.convert_i64_u
    local.tee $10
    local.get $0
    i32.eqz
    br_if $~lib/util/string/scientific|inlined.0
    drop
    local.get $0
    i32.const 37
    i32.le_s
    local.get $0
    i32.const 22
    i32.gt_s
    i32.and
    if
     local.get $10
     local.get $0
     i32.const 3
     i32.shl
     i32.const 3232
     i32.add
     f64.load
     f64.mul
     local.set $10
     i32.const 22
     local.set $0
    end
    local.get $6
    i64.const 9007199254740991
    i64.le_u
    if (result i32)
     local.get $0
     i32.const 31
     i32.shr_s
     local.tee $1
     local.get $0
     local.get $1
     i32.add
     i32.xor
     i32.const 22
     i32.le_s
    else
     i32.const 0
    end
    if (result f64)
     local.get $0
     i32.const 0
     i32.gt_s
     if
      local.get $10
      local.get $0
      i32.const 3
      i32.shl
      i32.const 3408
      i32.add
      f64.load
      f64.mul
      br $~lib/util/string/scientific|inlined.0
     end
     local.get $10
     i32.const 0
     local.get $0
     i32.sub
     i32.const 3
     i32.shl
     i32.const 3408
     i32.add
     f64.load
     f64.div
    else
     local.get $0
     i32.const 0
     i32.lt_s
     if (result f64)
      local.get $6
      local.get $6
      i64.clz
      local.tee $8
      i64.shl
      local.set $6
      local.get $0
      local.tee $1
      i64.extend_i32_s
      local.get $8
      i64.sub
      local.set $8
      loop $for-loop|6
       local.get $1
       i32.const -14
       i32.le_s
       if
        local.get $6
        i64.const 6103515625
        i64.rem_u
        local.get $6
        i64.const 6103515625
        i64.div_u
        local.tee $6
        i64.clz
        local.tee $12
        i64.const 18
        i64.sub
        i64.shl
        f64.convert_i64_u
        f64.const 0.00004294967296
        f64.mul
        f64.nearest
        i64.trunc_f64_u
        local.get $6
        local.get $12
        i64.shl
        i64.add
        local.set $6
        local.get $8
        local.get $12
        i64.sub
        local.set $8
        local.get $1
        i32.const 14
        i32.add
        local.set $1
        br $for-loop|6
       end
      end
      local.get $6
      i32.const 0
      local.get $1
      i32.sub
      call $~lib/math/ipow32
      i64.extend_i32_s
      local.tee $13
      i64.div_u
      local.tee $14
      i64.clz
      local.set $12
      local.get $6
      local.get $13
      i64.rem_u
      f64.convert_i64_u
      i64.reinterpret_f64
      local.get $12
      i64.const 52
      i64.shl
      i64.add
      f64.reinterpret_i64
      local.get $13
      f64.convert_i64_u
      f64.div
      i64.trunc_f64_u
      local.get $14
      local.get $12
      i64.shl
      i64.add
      f64.convert_i64_u
      local.get $8
      local.get $12
      i64.sub
      i32.wrap_i64
      call $~lib/math/NativeMath.scalbn
     else
      local.get $6
      local.get $6
      i64.ctz
      local.tee $8
      i64.shr_u
      local.set $6
      local.get $0
      local.tee $3
      i64.extend_i32_s
      local.get $8
      i64.add
      global.set $~lib/util/string/__fixmulShift
      loop $for-loop|7
       local.get $3
       i32.const 13
       i32.ge_s
       if
        i64.const 32
        local.get $6
        i64.const 32
        i64.shr_u
        i64.const 1220703125
        i64.mul
        local.get $6
        i64.const 4294967295
        i64.and
        i64.const 1220703125
        i64.mul
        local.tee $6
        i64.const 32
        i64.shr_u
        i64.add
        local.tee $8
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        i32.clz
        i64.extend_i32_u
        local.tee $12
        i64.sub
        local.tee $13
        global.get $~lib/util/string/__fixmulShift
        i64.add
        global.set $~lib/util/string/__fixmulShift
        local.get $6
        local.get $12
        i64.shl
        i64.const 31
        i64.shr_u
        i64.const 1
        i64.and
        local.get $8
        local.get $12
        i64.shl
        local.get $6
        i64.const 4294967295
        i64.and
        local.get $13
        i64.shr_u
        i64.or
        i64.add
        local.set $6
        local.get $3
        i32.const 13
        i32.sub
        local.set $3
        br $for-loop|7
       end
      end
      local.get $3
      call $~lib/math/ipow32
      i64.extend_i32_u
      local.tee $8
      local.get $6
      i64.const 4294967295
      i64.and
      i64.mul
      local.set $12
      i64.const 32
      local.get $8
      local.get $6
      i64.const 32
      i64.shr_u
      i64.mul
      local.get $12
      i64.const 32
      i64.shr_u
      i64.add
      local.tee $6
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      i32.clz
      i64.extend_i32_u
      local.tee $8
      i64.sub
      local.tee $13
      global.get $~lib/util/string/__fixmulShift
      i64.add
      global.set $~lib/util/string/__fixmulShift
      local.get $12
      local.get $8
      i64.shl
      i64.const 31
      i64.shr_u
      i64.const 1
      i64.and
      local.get $6
      local.get $8
      i64.shl
      local.get $12
      i64.const 4294967295
      i64.and
      local.get $13
      i64.shr_u
      i64.or
      i64.add
      f64.convert_i64_u
      global.get $~lib/util/string/__fixmulShift
      i32.wrap_i64
      call $~lib/math/NativeMath.scalbn
     end
    end
   end
   local.get $11
   f64.copysign
   return
  end
  f64.const nan:0x8000000000000
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNumber (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  f64.const 1
  local.set $4
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 45
  i32.eq
  if (result i32)
   f64.const -1
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   local.set $1
   i32.const 1
   global.set $~argumentsLength
   i32.const 1344
   local.get $1
   call $~lib/string/String.fromCharCode@varargs
   call $~lib/string/String#concat
  else
   i32.const 1344
  end
  local.set $1
  loop $while-continue|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
   i32.const 48
   i32.ge_s
   if (result i32)
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 57
    i32.le_s
   else
    i32.const 0
   end
   if (result i32)
    i32.const 1
   else
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 46
    i32.eq
   end
   if (result i32)
    i32.const 1
   else
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 45
    i32.eq
   end
   if (result i32)
    i32.const 1
   else
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 43
    i32.eq
   end
   if (result i32)
    i32.const 1
   else
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 69
    i32.eq
   end
   if (result i32)
    i32.const 1
   else
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 101
    i32.eq
   end
   if
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    local.set $7
    i32.const 1
    global.set $~argumentsLength
    local.get $1
    local.get $7
    call $~lib/string/String.fromCharCode@varargs
    call $~lib/string/String#concat
    local.set $1
    local.get $7
    i32.const 101
    i32.eq
    local.get $7
    i32.const 69
    i32.eq
    i32.or
    local.get $7
    i32.const 46
    i32.eq
    i32.or
    local.get $7
    i32.const 43
    i32.eq
    i32.or
    local.get $7
    i32.const 45
    i32.eq
    i32.or
    if
     i32.const 1
     local.set $3
    else
     local.get $2
     local.get $2
     f64.const 10
     f64.mul
     local.get $7
     i32.const 48
     i32.sub
     f64.convert_i32_s
     f64.add
     local.get $3
     select
     local.set $2
     local.get $5
     i32.const 1
     i32.add
     local.set $5
    end
    br $while-continue|0
   end
  end
  block $folding-inner0
   local.get $5
   i32.const 0
   i32.gt_s
   if
    local.get $3
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 3392
     call $~lib/string/String.__eq
    end
    if
     local.get $0
     i32.load
     local.get $0
     i32.load offset=4
     local.tee $0
     i32.eqz
     br_if $folding-inner0
     local.get $0
     i32.load
     local.get $1
     call $~lib/util/string/strtod
     local.set $2
     i32.const 8
     i32.const 16
     call $~lib/rt/stub/__new
     local.tee $0
     i32.eqz
     if
      i32.const 8
      i32.const 17
      call $~lib/rt/stub/__new
      local.set $0
     end
     local.get $0
     local.get $2
     f64.store
     local.get $0
     if (result i32)
      local.get $0
     else
      i32.const 0
      i32.const 4
      call $~lib/rt/stub/__new
     end
     call $~lib/assemblyscript-json/JSON/Handler#addValue
    else
     local.get $0
     i32.load
     local.get $0
     i32.load offset=4
     local.tee $0
     i32.eqz
     br_if $folding-inner0
     local.get $0
     i32.load
     local.get $2
     local.get $4
     f64.mul
     i64.trunc_f64_s
     local.set $6
     i32.const 8
     i32.const 18
     call $~lib/rt/stub/__new
     local.tee $3
     local.get $6
     i64.store
     local.get $3
     if (result i32)
      local.get $3
     else
      i32.const 0
      i32.const 4
      call $~lib/rt/stub/__new
     end
     call $~lib/assemblyscript-json/JSON/Handler#addValue
    end
    i32.const 1
    return
   end
   i32.const 0
   return
  end
  i32.const 1376
  i32.const 1440
  i32.const 127
  i32.const 26
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  block $folding-inner1
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseObject
   local.tee $1
   i32.eqz
   if
    block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseArray
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
     i32.const 3100
     i32.load
     i32.const 1
     i32.shr_u
     if (result i32)
      i32.const 3104
      i32.load16_u
     else
      i32.const -1
     end
     i32.ne
     if
      i32.const 0
      local.set $1
      br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseArray
     end
     block $folding-inner0
      local.get $0
      i32.load offset=4
      local.tee $1
      i32.eqz
      br_if $folding-inner0
      local.get $1
      i32.load
      local.set $2
      local.get $0
      i32.load offset=4
      local.tee $1
      i32.eqz
      br_if $folding-inner0
      local.get $1
      i32.const 1344
      i32.store
      local.get $0
      i32.load
      local.set $3
      i32.const 4
      i32.const 12
      call $~lib/rt/stub/__new
      local.tee $1
      i32.const 0
      i32.store
      local.get $1
      i32.eqz
      if
       i32.const 0
       i32.const 4
       call $~lib/rt/stub/__new
       local.set $1
      end
      local.get $1
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#constructor
      i32.store
      local.get $3
      i32.load
      i32.load offset=12
      if
       local.get $3
       local.get $2
       local.get $1
       call $~lib/assemblyscript-json/JSON/Handler#addValue
      end
      local.get $3
      i32.load
      local.get $1
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
      drop
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
      i32.const 1
      local.set $1
      loop $while-continue|0
       local.get $0
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
       i32.const 3132
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 3136
        i32.load16_u
       else
        i32.const -1
       end
       i32.ne
       if
        local.get $1
        if
         i32.const 0
         local.set $1
        else
         local.get $0
         call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
         i32.const 2076
         i32.load
         i32.const 1
         i32.shr_u
         if (result i32)
          i32.const 2080
          i32.load16_u
         else
          i32.const -1
         end
         i32.ne
         if
          i32.const 2112
          i32.const 1440
          i32.const 224
          i32.const 11
          call $~lib/builtins/abort
          unreachable
         end
        end
        local.get $0
        call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
        drop
        br $while-continue|0
       end
      end
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
      i32.const 3132
      i32.load
      i32.const 1
      i32.shr_u
      if (result i32)
       i32.const 3136
       i32.load16_u
      else
       i32.const -1
      end
      i32.ne
      if
       i32.const 3168
       i32.const 1440
       i32.const 230
       i32.const 7
       call $~lib/builtins/abort
       unreachable
      end
      local.get $0
      i32.load
      local.tee $1
      i32.load
      i32.load offset=12
      i32.const 1
      i32.gt_s
      if
       local.get $1
       i32.load
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
      end
      i32.const 1
      local.set $1
      br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseArray
     end
     br $folding-inner1
    end
   end
   block $folding-inner00
    local.get $1
    i32.eqz
    if
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
     i32.const 2156
     i32.load
     i32.const 1
     i32.shr_u
     if (result i32)
      i32.const 2160
      i32.load16_u
     else
      i32.const -1
     end
     i32.ne
     if (result i32)
      i32.const 0
     else
      local.get $0
      i32.load
      local.get $0
      i32.load offset=4
      local.tee $1
      i32.eqz
      br_if $folding-inner00
      local.get $1
      i32.load
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString
      local.set $3
      i32.const 4
      i32.const 14
      call $~lib/rt/stub/__new
      local.tee $4
      local.get $3
      i32.store
      local.get $4
      if (result i32)
       local.get $4
      else
       i32.const 0
       i32.const 4
       call $~lib/rt/stub/__new
      end
      call $~lib/assemblyscript-json/JSON/Handler#addValue
      i32.const 1
     end
     local.set $1
    end
    local.get $1
    i32.eqz
    if
     block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean (result i32)
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
      i32.const 3244
      i32.load
      i32.const 1
      i32.shr_u
      if (result i32)
       i32.const 3248
       i32.load16_u
      else
       i32.const -1
      end
      i32.eq
      if
       local.get $0
       i32.const 3248
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
       local.get $0
       i32.load
       local.get $0
       i32.load offset=4
       local.tee $2
       i32.eqz
       br_if $folding-inner00
       local.get $2
       i32.load
       i32.const 0
       call $~lib/assemblyscript-json/JSON/Handler#setBoolean
       i32.const 1
       br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean
      end
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
      i32.const 3356
      i32.load
      i32.const 1
      i32.shr_u
      if (result i32)
       i32.const 3360
       i32.load16_u
      else
       i32.const -1
      end
      i32.eq
      if
       local.get $0
       i32.const 3360
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
       local.get $0
       i32.load
       local.get $0
       i32.load offset=4
       local.tee $2
       i32.eqz
       br_if $folding-inner00
       local.get $2
       i32.load
       i32.const 1
       call $~lib/assemblyscript-json/JSON/Handler#setBoolean
       i32.const 1
       br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean
      end
      i32.const 0
     end
     local.set $1
    end
    local.get $1
    i32.eqz
    if
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNumber
     local.set $1
    end
    local.get $1
    i32.eqz
    if
     block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNull (result i32)
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
      i32.const 3612
      i32.load
      i32.const 1
      i32.shr_u
      if (result i32)
       i32.const 3616
       i32.load16_u
      else
       i32.const -1
      end
      i32.eq
      if
       local.get $0
       i32.const 3616
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
       local.get $0
       i32.load
       local.get $0
       i32.load offset=4
       local.tee $2
       i32.eqz
       br_if $folding-inner00
       local.get $2
       i32.load
       global.get $~lib/assemblyscript-json/JSON/NULL
       call $~lib/assemblyscript-json/JSON/Handler#addValue
       i32.const 1
       br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNull
      end
      i32.const 0
     end
     local.set $1
    end
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
    local.get $1
    return
   end
  end
  i32.const 1376
  i32.const 1440
  i32.const 127
  i32.const 26
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/near-sdk-bindgen/index/decode<i32,~lib/assemblyscript-json/JSON/Obj> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $2
    i32.const 6576
    i32.load
    i32.le_u
    if
     loop $do-loop|0
      i32.const 1
      local.get $2
      i32.const 3
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 6580
      i32.add
      i32.load offset=4
      local.tee $2
      br_if $do-loop|0
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 1344
   call $~lib/string/String.__eq
  else
   i32.const 1
  end
  i32.eqz
  if
   block $__inlined_func$~lib/rt/__instanceof0 (result i32)
    local.get $0
    local.tee $2
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $0
    i32.const 6576
    i32.load
    i32.le_u
    if
     loop $do-loop|02
      i32.const 1
      local.get $0
      i32.const 3
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof0
      drop
      local.get $0
      i32.const 3
      i32.shl
      i32.const 6580
      i32.add
      i32.load offset=4
      local.tee $0
      br_if $do-loop|02
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 1888
    i32.const 3712
    i32.const 310
    i32.const 37
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.load
   local.get $1
   local.get $1
   call $~lib/util/hash/HASH<~lib/string/String>
   call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
   if (result i32)
    local.get $2
    i32.load
    local.get $1
    local.get $1
    call $~lib/util/hash/HASH<~lib/string/String>
    call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
    local.tee $0
    i32.eqz
    if
     i32.const 3824
     i32.const 3888
     i32.const 105
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.load offset=4
   else
    i32.const 0
   end
   local.tee $0
   i32.eqz
   if
    i32.const 3936
    i32.const 3968
    call $~lib/string/String#concat
    i32.const 4000
    call $~lib/string/String#concat
    i32.const 3712
    i32.const 323
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof6 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $2
    i32.const 6576
    i32.load
    i32.le_u
    if
     loop $do-loop|08
      i32.const 1
      local.get $2
      i32.const 18
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof6
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 6580
      i32.add
      i32.load offset=4
      local.tee $2
      br_if $do-loop|08
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4064
   local.get $1
   call $~lib/string/String#concat
   i32.const 4128
   call $~lib/string/String#concat
   i32.const 3968
   call $~lib/string/String#concat
   i32.const 4176
   call $~lib/string/String#concat
   i32.const 3712
   i32.const 358
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$~lib/rt/__instanceof13 (result i32)
   local.get $0
   local.tee $1
   i32.const 20
   i32.sub
   i32.load offset=12
   local.tee $0
   i32.const 6576
   i32.load
   i32.le_u
   if
    loop $do-loop|015
     i32.const 1
     local.get $0
     i32.const 18
     i32.eq
     br_if $__inlined_func$~lib/rt/__instanceof13
     drop
     local.get $0
     i32.const 3
     i32.shl
     i32.const 6580
     i32.add
     i32.load offset=4
     local.tee $0
     br_if $do-loop|015
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 1888
   i32.const 3712
   i32.const 367
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i64.load
  i32.wrap_i64
 )
 (func $~lib/near-sdk-bindgen/index/requireParameter<i32> (param $0 i32) (result i32)
  i32.const 4240
  local.get $0
  call $~lib/string/String#concat
  i32.const 4128
  call $~lib/string/String#concat
  i32.const 3968
  call $~lib/string/String#concat
  i32.const 4288
  call $~lib/string/String#concat
  i32.const 3712
  i32.const 33
  i32.const 3
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String#substring (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 0
  local.get $0
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  i32.const 1340
  i32.load
  i32.const 1
  i32.shr_u
  local.tee $0
  local.get $0
  local.get $2
  i32.gt_s
  select
  local.tee $2
  local.get $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $1
  local.get $0
  local.get $0
  local.get $1
  i32.gt_s
  select
  local.tee $1
  local.get $1
  local.get $2
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.set $3
  local.get $2
  local.get $1
  local.get $1
  local.get $2
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.tee $1
  local.get $3
  i32.sub
  local.tee $2
  i32.eqz
  if
   i32.const 1344
   return
  end
  i32.const 0
  local.get $0
  i32.const 1
  i32.shl
  local.get $1
  i32.eq
  local.get $3
  select
  if
   i32.const 1344
   return
  end
  local.get $2
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $0
  local.get $3
  i32.const 1344
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $0
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   if
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $3
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $1
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.get $3
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.const 4956
    i32.add
    i64.load32_u
    local.get $3
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 4956
    i32.add
    i64.load32_u
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $1
   i32.const 100
   i32.rem_u
   i32.const 2
   i32.shl
   i32.const 4956
   i32.add
   i32.load
   i32.store
   local.get $1
   i32.const 100
   i32.div_u
   local.set $1
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $1
   i32.const 2
   i32.shl
   i32.const 4956
   i32.add
   i32.load
   i32.store
  else
   local.get $2
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $1
   i32.const 48
   i32.add
   i32.store16
  end
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeString (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  i32.const 2160
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
  loop $for-loop|0
   i32.const 1340
   i32.load
   i32.const 1
   i32.shr_u
   local.get $2
   i32.gt_s
   if
    i32.const 1340
    i32.load
    i32.const 1
    i32.shr_u
    local.get $2
    i32.le_u
    if (result i32)
     i32.const -1
    else
     local.get $2
     i32.const 1
     i32.shl
     i32.const 1344
     i32.add
     i32.load16_u
    end
    local.tee $4
    i32.const 32
    i32.lt_s
    local.tee $1
    i32.eqz
    if
     i32.const 2156
     i32.load
     i32.const 1
     i32.shr_u
     if (result i32)
      i32.const 2160
      i32.load16_u
     else
      i32.const -1
     end
     local.get $4
     i32.eq
     local.set $1
    end
    local.get $1
    if (result i32)
     local.get $1
    else
     i32.const 2396
     i32.load
     i32.const 1
     i32.shr_u
     if (result i32)
      i32.const 2400
      i32.load16_u
     else
      i32.const -1
     end
     local.get $4
     i32.eq
    end
    if
     local.get $3
     local.get $2
     call $~lib/string/String#substring
     local.set $1
     local.get $0
     i32.load offset=4
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
     local.get $2
     i32.const 1
     i32.add
     local.set $3
     i32.const 2156
     i32.load
     i32.const 1
     i32.shr_u
     if (result i32)
      i32.const 2160
      i32.load16_u
     else
      i32.const -1
     end
     local.get $4
     i32.eq
     if
      local.get $0
      i32.load offset=4
      i32.const 4464
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
     else
      i32.const 2396
      i32.load
      i32.const 1
      i32.shr_u
      if (result i32)
       i32.const 2400
       i32.load16_u
      else
       i32.const -1
      end
      local.get $4
      i32.eq
      if
       local.get $0
       i32.load offset=4
       i32.const 4496
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
      else
       i32.const 2492
       i32.load
       i32.const 1
       i32.shr_u
       if (result i32)
        i32.const 2496
        i32.load16_u
       else
        i32.const -1
       end
       local.get $4
       i32.eq
       if
        local.get $0
        i32.load offset=4
        i32.const 4528
        call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
       else
        i32.const 2556
        i32.load
        i32.const 1
        i32.shr_u
        if (result i32)
         i32.const 2560
         i32.load16_u
        else
         i32.const -1
        end
        local.get $4
        i32.eq
        if
         local.get $0
         i32.load offset=4
         i32.const 4560
         call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
        else
         i32.const 2620
         i32.load
         i32.const 1
         i32.shr_u
         if (result i32)
          i32.const 2624
          i32.load16_u
         else
          i32.const -1
         end
         local.get $4
         i32.eq
         if
          local.get $0
          i32.load offset=4
          i32.const 4592
          call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
         else
          i32.const 2684
          i32.load
          i32.const 1
          i32.shr_u
          if (result i32)
           i32.const 2688
           i32.load16_u
          else
           i32.const -1
          end
          local.get $4
          i32.eq
          if
           local.get $0
           i32.load offset=4
           i32.const 4624
           call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
          else
           i32.const 4656
           local.get $4
           if (result i32)
            i32.const 0
            local.get $4
            i32.sub
            local.get $4
            local.get $4
            i32.const 31
            i32.shr_u
            local.tee $0
            select
            local.tee $1
            i32.const 100000
            i32.lt_u
            if (result i32)
             local.get $1
             i32.const 100
             i32.lt_u
             if (result i32)
              local.get $1
              i32.const 10
              i32.ge_u
              i32.const 1
              i32.add
             else
              local.get $1
              i32.const 10000
              i32.ge_u
              i32.const 3
              i32.add
              local.get $1
              i32.const 1000
              i32.ge_u
              i32.add
             end
            else
             local.get $1
             i32.const 10000000
             i32.lt_u
             if (result i32)
              local.get $1
              i32.const 1000000
              i32.ge_u
              i32.const 6
              i32.add
             else
              local.get $1
              i32.const 1000000000
              i32.ge_u
              i32.const 8
              i32.add
              local.get $1
              i32.const 100000000
              i32.ge_u
              i32.add
             end
            end
            local.get $0
            i32.add
            local.tee $2
            i32.const 1
            i32.shl
            i32.const 1
            call $~lib/rt/stub/__new
            local.tee $3
            local.get $1
            local.get $2
            call $~lib/util/number/utoa32_dec_lut
            local.get $0
            if
             local.get $3
             i32.const 45
             i32.store16
            end
            local.get $3
           else
            i32.const 4944
           end
           call $~lib/string/String#concat
           i32.const 4368
           i32.const 112
           i32.const 11
           call $~lib/builtins/abort
           unreachable
          end
         end
        end
       end
      end
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
  i32.const 1340
  i32.load
  i32.const 1
  i32.shr_u
  call $~lib/string/String#substring
  local.set $1
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
  local.get $0
  i32.load offset=4
  i32.const 2160
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
 )
 (func $~lib/util/number/itoa64 (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i64.eqz
  if
   i32.const 4944
   return
  end
  i64.const 0
  local.get $0
  i64.sub
  local.get $0
  local.get $0
  i64.const 63
  i64.shr_u
  i32.wrap_i64
  local.tee $3
  select
  local.tee $0
  i64.const 4294967295
  i64.le_u
  if
   local.get $0
   i32.wrap_i64
   local.tee $1
   i32.const 100000
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 100
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 10
     i32.ge_u
     i32.const 1
     i32.add
    else
     local.get $1
     i32.const 10000
     i32.ge_u
     i32.const 3
     i32.add
     local.get $1
     i32.const 1000
     i32.ge_u
     i32.add
    end
   else
    local.get $1
    i32.const 10000000
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 1000000
     i32.ge_u
     i32.const 6
     i32.add
    else
     local.get $1
     i32.const 1000000000
     i32.ge_u
     i32.const 8
     i32.add
     local.get $1
     i32.const 100000000
     i32.ge_u
     i32.add
    end
   end
   local.get $3
   i32.add
   local.tee $4
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__new
   local.tee $2
   local.get $1
   local.get $4
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $0
   i64.const 1000000000000000
   i64.lt_u
   if (result i32)
    local.get $0
    i64.const 1000000000000
    i64.lt_u
    if (result i32)
     local.get $0
     i64.const 100000000000
     i64.ge_u
     i32.const 10
     i32.add
     local.get $0
     i64.const 10000000000
     i64.ge_u
     i32.add
    else
     local.get $0
     i64.const 100000000000000
     i64.ge_u
     i32.const 13
     i32.add
     local.get $0
     i64.const 10000000000000
     i64.ge_u
     i32.add
    end
   else
    local.get $0
    i64.const 100000000000000000
    i64.lt_u
    if (result i32)
     local.get $0
     i64.const 10000000000000000
     i64.ge_u
     i32.const 16
     i32.add
    else
     local.get $0
     i64.const -8446744073709551616
     i64.ge_u
     i32.const 18
     i32.add
     local.get $0
     i64.const 1000000000000000000
     i64.ge_u
     i32.add
    end
   end
   local.get $3
   i32.add
   local.tee $1
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__new
   local.set $2
   loop $while-continue|0
    local.get $0
    i64.const 100000000
    i64.ge_u
    if
     local.get $1
     i32.const 4
     i32.sub
     local.tee $1
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     local.get $0
     local.get $0
     i64.const 100000000
     i64.div_u
     local.tee $0
     i64.const 100000000
     i64.mul
     i64.sub
     i32.wrap_i64
     local.tee $4
     i32.const 10000
     i32.rem_u
     local.tee $5
     i32.const 100
     i32.div_u
     i32.const 2
     i32.shl
     i32.const 4956
     i32.add
     i64.load32_u
     local.get $5
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 4956
     i32.add
     i64.load32_u
     i64.const 32
     i64.shl
     i64.or
     i64.store
     local.get $1
     i32.const 4
     i32.sub
     local.tee $1
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     local.get $4
     i32.const 10000
     i32.div_u
     local.tee $4
     i32.const 100
     i32.div_u
     i32.const 2
     i32.shl
     i32.const 4956
     i32.add
     i64.load32_u
     local.get $4
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 4956
     i32.add
     i64.load32_u
     i64.const 32
     i64.shl
     i64.or
     i64.store
     br $while-continue|0
    end
   end
   local.get $2
   local.get $0
   i32.wrap_i64
   local.get $1
   call $~lib/util/number/utoa32_dec_lut
  end
  local.get $3
  if
   local.get $2
   i32.const 45
   i32.store16
  end
  local.get $2
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.fromString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 2
  global.set $~argumentsLength
  local.get $0
  local.tee $1
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $4
  loop $while-continue|0
   local.get $1
   local.get $4
   i32.lt_u
   if
    local.get $1
    i32.load16_u
    local.tee $2
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 1
     i32.add
    else
     local.get $2
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $3
      i32.const 2
      i32.add
     else
      local.get $2
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      local.get $4
      local.get $1
      i32.const 2
      i32.add
      i32.gt_u
      i32.and
      if
       local.get $1
       i32.load16_u offset=2
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $3
        i32.const 4
        i32.add
        local.set $3
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        br $while-continue|0
       end
      end
      local.get $3
      i32.const 3
      i32.add
     end
    end
    local.set $3
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  local.get $3
  i32.const 0
  call $~lib/rt/stub/__new
  local.set $2
  local.get $0
  local.tee $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.get $1
  i32.add
  local.set $4
  local.get $2
  local.set $3
  loop $while-continue|00
   local.get $1
   local.get $4
   i32.lt_u
   if
    local.get $1
    i32.load16_u
    local.tee $5
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $3
     local.get $5
     i32.store8
     local.get $3
     i32.const 1
     i32.add
    else
     local.get $5
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $3
      local.get $5
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $5
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $3
      i32.const 2
      i32.add
     else
      local.get $5
      i32.const 56320
      i32.lt_u
      local.get $4
      local.get $1
      i32.const 2
      i32.add
      i32.gt_u
      i32.and
      local.get $5
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      i32.and
      if
       local.get $1
       i32.load16_u offset=2
       local.tee $0
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $3
        local.get $5
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $0
        i32.const 1023
        i32.and
        i32.or
        local.tee $0
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 24
        i32.shl
        local.get $0
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 16
        i32.shl
        i32.or
        local.get $0
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 8
        i32.shl
        i32.or
        local.get $0
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.or
        i32.store
        local.get $3
        i32.const 4
        i32.add
        local.set $3
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        br $while-continue|00
       end
      end
      local.get $3
      local.get $5
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $5
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $3
      local.get $5
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $3
      i32.const 3
      i32.add
     end
    end
    local.set $3
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|00
   end
  end
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.eqz
  if
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   return
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  local.set $1
  i32.const 12
  i32.const 6
  call $~lib/rt/stub/__new
  local.tee $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $assembly/index/__wrapper_add
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.input
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.register_len
  local.tee $2
  i64.const 4294967295
  i64.eq
  if
   call $~lib/near-sdk-core/env/env/env.panic
  end
  i64.const 0
  local.get $2
  i32.wrap_i64
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.read_register
  block $__inlined_func$~lib/rt/__instanceof (result i32)
   global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
   local.set $1
   i32.const 12
   i32.const 11
   call $~lib/rt/stub/__new
   local.tee $3
   local.get $0
   i32.store offset=8
   local.get $3
   i32.const 1344
   i32.store
   local.get $3
   i32.const 0
   i32.store offset=4
   local.get $1
   local.get $3
   i32.store offset=4
   local.get $1
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
   i32.eqz
   if
    i32.const 3648
    i32.const 1440
    i32.const 144
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
   i32.load
   call $~lib/assemblyscript-json/JSON/Handler#get:peek
   local.set $1
   global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
   i32.load
   local.set $0
   loop $while-continue|0
    local.get $0
    i32.load
    i32.load offset=12
    i32.const 0
    i32.gt_s
    if
     local.get $0
     i32.load
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
     br $while-continue|0
    end
   end
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=12
   local.tee $0
   i32.const 6576
   i32.load
   i32.le_u
   if
    loop $do-loop|0
     i32.const 1
     local.get $0
     i32.const 3
     i32.eq
     br_if $__inlined_func$~lib/rt/__instanceof
     drop
     local.get $0
     i32.const 3
     i32.shl
     i32.const 6580
     i32.add
     i32.load offset=4
     local.tee $0
     br_if $do-loop|0
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 1888
   i32.const 3712
   i32.const 96
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 3792
  i32.const 3792
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $1
   i32.const 3792
   call $~lib/near-sdk-bindgen/index/decode<i32,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 3792
   call $~lib/near-sdk-bindgen/index/requireParameter<i32>
  end
  local.get $1
  i32.load
  i32.const 2464
  i32.const 2464
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $1
   i32.const 2464
   call $~lib/near-sdk-bindgen/index/decode<i32,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 2464
   call $~lib/near-sdk-bindgen/index/requireParameter<i32>
  end
  i32.const 1
  global.set $~argumentsLength
  i32.const 8
  i32.const 20
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 8
   i32.const 21
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  i32.const 16
  i32.const 22
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  i32.const 40
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $5
  i32.const 40
  call $~lib/memory/memory.fill
  local.get $1
  local.get $5
  i32.store
  local.get $1
  local.get $5
  i32.store offset=4
  local.get $1
  i32.const 40
  i32.store offset=8
  local.get $1
  i32.const 10
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store
  local.get $0
  call $~lib/array/Array<~lib/string/String>#constructor
  i32.store offset=4
  local.get $0
  i32.load
  local.tee $1
  i32.load offset=12
  local.tee $5
  i32.const 1
  i32.add
  local.set $6
  local.get $1
  local.get $6
  call $~lib/array/ensureCapacity
  local.get $1
  i32.load offset=4
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  i32.const 1
  i32.store
  local.get $1
  local.get $6
  i32.store offset=12
  local.get $0
  local.tee $1
  i32.load
  local.tee $5
  i32.load offset=12
  local.tee $6
  i32.const 1
  i32.sub
  local.tee $7
  local.get $6
  i32.ge_u
  if
   i32.const 1536
   i32.const 1296
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.load offset=4
  local.get $7
  i32.const 2
  i32.shl
  i32.add
  i32.load
  if
   local.get $1
   i32.load
   local.tee $5
   i32.load offset=12
   local.tee $6
   i32.const 1
   i32.sub
   local.tee $7
   local.get $6
   i32.ge_u
   if
    local.get $7
    i32.const 0
    i32.lt_s
    if
     i32.const 1536
     i32.const 1296
     i32.const 130
     i32.const 22
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    local.get $7
    i32.const 1
    i32.add
    local.tee $6
    call $~lib/array/ensureCapacity
    local.get $5
    local.get $6
    i32.store offset=12
   end
   local.get $5
   i32.load offset=4
   local.get $7
   i32.const 2
   i32.shl
   i32.add
   i32.const 0
   i32.store
  else
   local.get $1
   i32.load offset=4
   i32.const 2080
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
  end
  i32.const 1344
  i32.const 0
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 0
  else
   i32.const 1340
   i32.load
   i32.const 1
   i32.shr_u
  end
  if
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
   local.get $1
   i32.load offset=4
   i32.const 2896
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
  end
  i32.add
  i64.extend_i32_s
  call $~lib/util/number/itoa64
  local.set $1
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
  local.get $0
  i32.load offset=4
  call $~lib/array/Array<~lib/string/String>#join
  call $~lib/assemblyscript-json/util/index/Buffer.fromString
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.value_return
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  i32.const 6764
  global.set $~lib/rt/stub/offset
  i32.const 4
  i32.const 7
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#constructor
  i32.store
  local.get $0
  global.set $~lib/assemblyscript-json/JSON/_JSON.handler
  global.get $~lib/assemblyscript-json/JSON/_JSON.handler
  local.set $1
  i32.const 8
  i32.const 10
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store
  local.get $0
  global.set $~lib/assemblyscript-json/JSON/_JSON.decoder
  i32.const 0
  i32.const 19
  call $~lib/rt/stub/__new
  local.tee $0
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4
   call $~lib/rt/stub/__new
  end
  global.set $~lib/assemblyscript-json/JSON/NULL
 )
)
