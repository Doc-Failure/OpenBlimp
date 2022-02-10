(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i64_i64_i64_i64_=>_i32 (func (param i32 i64 i64 i64 i64) (result i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_=>_none (func (param i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "wasi_snapshot_preview1" "fd_write" (func $~lib/bindings/wasi_snapshot_preview1/fd_write (param i32 i32 i32 i32) (result i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $assembly/contracts/token/NEP141/NEP141/NEP141 i32 (i32.const 3))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1100) "<")
 (data (i32.const 1112) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data (i32.const 1164) "l")
 (data (i32.const 1176) "\01\00\00\00N\00\00\00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \001\000\00 \00o\00r\00 \001\006")
 (data (i32.const 1276) "L")
 (data (i32.const 1288) "\01\00\00\00<\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00b\00i\00g\00n\00u\00m\00/\00i\00n\00t\00e\00g\00e\00r\00/\00u\002\005\006\00.\00t\00s")
 (data (i32.const 1356) "\1c")
 (data (i32.const 1368) "\01\00\00\00\02\00\00\000")
 (data (i32.const 1388) "\1c")
 (data (i32.const 1400) "\01")
 (data (i32.const 1420) "<")
 (data (i32.const 1432) "\01\00\00\00 \00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f")
 (data (i32.const 1484) ",")
 (data (i32.const 1496) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1532) "<")
 (data (i32.const 1544) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1596) "<")
 (data (i32.const 1608) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1660) "<")
 (data (i32.const 1672) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1756) ",")
 (data (i32.const 1768) "\01\00\00\00\0e\00\00\00S\00U\00C\00C\00E\00S\00S")
 (data (i32.const 1804) "\1c")
 (data (i32.const 1816) "\01\00\00\00\0c\00\00\00T\00O\00O\00B\00I\00G")
 (data (i32.const 1836) "\1c")
 (data (i32.const 1848) "\01\00\00\00\n\00\00\00A\00C\00C\00E\00S")
 (data (i32.const 1868) ",")
 (data (i32.const 1880) "\01\00\00\00\12\00\00\00A\00D\00D\00R\00I\00N\00U\00S\00E")
 (data (i32.const 1916) ",")
 (data (i32.const 1928) "\01\00\00\00\18\00\00\00A\00D\00D\00R\00N\00O\00T\00A\00V\00A\00I\00L")
 (data (i32.const 1964) ",")
 (data (i32.const 1976) "\01\00\00\00\16\00\00\00A\00F\00N\00O\00S\00U\00P\00P\00O\00R\00T")
 (data (i32.const 2012) "\1c")
 (data (i32.const 2024) "\01\00\00\00\n\00\00\00A\00G\00A\00I\00N")
 (data (i32.const 2044) ",")
 (data (i32.const 2056) "\01\00\00\00\0e\00\00\00A\00L\00R\00E\00A\00D\00Y")
 (data (i32.const 2092) "\1c")
 (data (i32.const 2104) "\01\00\00\00\08\00\00\00B\00A\00D\00F")
 (data (i32.const 2124) "\1c")
 (data (i32.const 2136) "\01\00\00\00\0c\00\00\00B\00A\00D\00M\00S\00G")
 (data (i32.const 2156) "\1c")
 (data (i32.const 2168) "\01\00\00\00\08\00\00\00B\00U\00S\00Y")
 (data (i32.const 2188) ",")
 (data (i32.const 2200) "\01\00\00\00\10\00\00\00C\00A\00N\00C\00E\00L\00E\00D")
 (data (i32.const 2236) "\1c")
 (data (i32.const 2248) "\01\00\00\00\n\00\00\00C\00H\00I\00L\00D")
 (data (i32.const 2268) ",")
 (data (i32.const 2280) "\01\00\00\00\16\00\00\00C\00O\00N\00N\00A\00B\00O\00R\00T\00E\00D")
 (data (i32.const 2316) ",")
 (data (i32.const 2328) "\01\00\00\00\16\00\00\00C\00O\00N\00N\00R\00E\00F\00U\00S\00E\00D")
 (data (i32.const 2364) ",")
 (data (i32.const 2376) "\01\00\00\00\12\00\00\00C\00O\00N\00N\00R\00E\00S\00E\00T")
 (data (i32.const 2412) "\1c")
 (data (i32.const 2424) "\01\00\00\00\0c\00\00\00D\00E\00A\00D\00L\00K")
 (data (i32.const 2444) ",")
 (data (i32.const 2456) "\01\00\00\00\16\00\00\00D\00E\00S\00T\00A\00D\00D\00R\00R\00E\00Q")
 (data (i32.const 2492) "\1c")
 (data (i32.const 2504) "\01\00\00\00\06\00\00\00D\00O\00M")
 (data (i32.const 2524) "\1c")
 (data (i32.const 2536) "\01\00\00\00\n\00\00\00D\00Q\00U\00O\00T")
 (data (i32.const 2556) "\1c")
 (data (i32.const 2568) "\01\00\00\00\n\00\00\00E\00X\00I\00S\00T")
 (data (i32.const 2588) "\1c")
 (data (i32.const 2600) "\01\00\00\00\n\00\00\00F\00A\00U\00L\00T")
 (data (i32.const 2620) "\1c")
 (data (i32.const 2632) "\01\00\00\00\08\00\00\00F\00B\00I\00G")
 (data (i32.const 2652) ",")
 (data (i32.const 2664) "\01\00\00\00\16\00\00\00H\00O\00S\00T\00U\00N\00R\00E\00A\00C\00H")
 (data (i32.const 2700) "\1c")
 (data (i32.const 2712) "\01\00\00\00\08\00\00\00I\00D\00R\00M")
 (data (i32.const 2732) "\1c")
 (data (i32.const 2744) "\01\00\00\00\n\00\00\00I\00L\00S\00E\00Q")
 (data (i32.const 2764) ",")
 (data (i32.const 2776) "\01\00\00\00\14\00\00\00I\00N\00P\00R\00O\00G\00R\00E\00S\00S")
 (data (i32.const 2812) "\1c")
 (data (i32.const 2824) "\01\00\00\00\08\00\00\00I\00N\00T\00R")
 (data (i32.const 2844) "\1c")
 (data (i32.const 2856) "\01\00\00\00\n\00\00\00I\00N\00V\00A\00L")
 (data (i32.const 2876) "\1c")
 (data (i32.const 2888) "\01\00\00\00\04\00\00\00I\00O")
 (data (i32.const 2908) "\1c")
 (data (i32.const 2920) "\01\00\00\00\0c\00\00\00I\00S\00C\00O\00N\00N")
 (data (i32.const 2940) "\1c")
 (data (i32.const 2952) "\01\00\00\00\n\00\00\00I\00S\00D\00I\00R")
 (data (i32.const 2972) "\1c")
 (data (i32.const 2984) "\01\00\00\00\08\00\00\00L\00O\00O\00P")
 (data (i32.const 3004) "\1c")
 (data (i32.const 3016) "\01\00\00\00\n\00\00\00M\00F\00I\00L\00E")
 (data (i32.const 3036) "\1c")
 (data (i32.const 3048) "\01\00\00\00\n\00\00\00M\00L\00I\00N\00K")
 (data (i32.const 3068) ",")
 (data (i32.const 3080) "\01\00\00\00\0e\00\00\00M\00S\00G\00S\00I\00Z\00E")
 (data (i32.const 3116) ",")
 (data (i32.const 3128) "\01\00\00\00\10\00\00\00M\00U\00L\00T\00I\00H\00O\00P")
 (data (i32.const 3164) ",")
 (data (i32.const 3176) "\01\00\00\00\16\00\00\00N\00A\00M\00E\00T\00O\00O\00L\00O\00N\00G")
 (data (i32.const 3212) ",")
 (data (i32.const 3224) "\01\00\00\00\0e\00\00\00N\00E\00T\00D\00O\00W\00N")
 (data (i32.const 3260) ",")
 (data (i32.const 3272) "\01\00\00\00\10\00\00\00N\00E\00T\00R\00E\00S\00E\00T")
 (data (i32.const 3308) ",")
 (data (i32.const 3320) "\01\00\00\00\14\00\00\00N\00E\00T\00U\00N\00R\00E\00A\00C\00H")
 (data (i32.const 3356) "\1c")
 (data (i32.const 3368) "\01\00\00\00\n\00\00\00N\00F\00I\00L\00E")
 (data (i32.const 3388) "\1c")
 (data (i32.const 3400) "\01\00\00\00\0c\00\00\00N\00O\00B\00U\00F\00S")
 (data (i32.const 3420) "\1c")
 (data (i32.const 3432) "\01\00\00\00\n\00\00\00N\00O\00D\00E\00V")
 (data (i32.const 3452) "\1c")
 (data (i32.const 3464) "\01\00\00\00\n\00\00\00N\00O\00E\00N\00T")
 (data (i32.const 3484) "\1c")
 (data (i32.const 3496) "\01\00\00\00\0c\00\00\00N\00O\00E\00X\00E\00C")
 (data (i32.const 3516) "\1c")
 (data (i32.const 3528) "\01\00\00\00\n\00\00\00N\00O\00L\00C\00K")
 (data (i32.const 3548) "\1c")
 (data (i32.const 3560) "\01\00\00\00\0c\00\00\00N\00O\00L\00I\00N\00K")
 (data (i32.const 3580) "\1c")
 (data (i32.const 3592) "\01\00\00\00\n\00\00\00N\00O\00M\00E\00M")
 (data (i32.const 3612) "\1c")
 (data (i32.const 3624) "\01\00\00\00\n\00\00\00N\00O\00M\00S\00G")
 (data (i32.const 3644) ",")
 (data (i32.const 3656) "\01\00\00\00\14\00\00\00N\00O\00P\00R\00O\00T\00O\00O\00P\00T")
 (data (i32.const 3692) "\1c")
 (data (i32.const 3704) "\01\00\00\00\n\00\00\00N\00O\00S\00P\00C")
 (data (i32.const 3724) "\1c")
 (data (i32.const 3736) "\01\00\00\00\n\00\00\00N\00O\00S\00Y\00S")
 (data (i32.const 3756) ",")
 (data (i32.const 3768) "\01\00\00\00\0e\00\00\00N\00O\00T\00C\00O\00N\00N")
 (data (i32.const 3804) "\1c")
 (data (i32.const 3816) "\01\00\00\00\0c\00\00\00N\00O\00T\00D\00I\00R")
 (data (i32.const 3836) ",")
 (data (i32.const 3848) "\01\00\00\00\10\00\00\00N\00O\00T\00E\00M\00P\00T\00Y")
 (data (i32.const 3884) ",")
 (data (i32.const 3896) "\01\00\00\00\1c\00\00\00N\00O\00T\00R\00E\00C\00O\00V\00E\00R\00A\00B\00L\00E")
 (data (i32.const 3932) ",")
 (data (i32.const 3944) "\01\00\00\00\0e\00\00\00N\00O\00T\00S\00O\00C\00K")
 (data (i32.const 3980) "\1c")
 (data (i32.const 3992) "\01\00\00\00\0c\00\00\00N\00O\00T\00S\00U\00P")
 (data (i32.const 4012) "\1c")
 (data (i32.const 4024) "\01\00\00\00\n\00\00\00N\00O\00T\00T\00Y")
 (data (i32.const 4044) "\1c")
 (data (i32.const 4056) "\01\00\00\00\08\00\00\00N\00X\00I\00O")
 (data (i32.const 4076) ",")
 (data (i32.const 4088) "\01\00\00\00\10\00\00\00O\00V\00E\00R\00F\00L\00O\00W")
 (data (i32.const 4124) ",")
 (data (i32.const 4136) "\01\00\00\00\12\00\00\00O\00W\00N\00E\00R\00D\00E\00A\00D")
 (data (i32.const 4172) "\1c")
 (data (i32.const 4184) "\01\00\00\00\08\00\00\00P\00E\00R\00M")
 (data (i32.const 4204) "\1c")
 (data (i32.const 4216) "\01\00\00\00\08\00\00\00P\00I\00P\00E")
 (data (i32.const 4236) "\1c")
 (data (i32.const 4248) "\01\00\00\00\n\00\00\00P\00R\00O\00T\00O")
 (data (i32.const 4268) ",")
 (data (i32.const 4280) "\01\00\00\00\1c\00\00\00P\00R\00O\00T\00O\00N\00O\00S\00U\00P\00P\00O\00R\00T")
 (data (i32.const 4316) ",")
 (data (i32.const 4328) "\01\00\00\00\12\00\00\00P\00R\00O\00T\00O\00T\00Y\00P\00E")
 (data (i32.const 4364) "\1c")
 (data (i32.const 4376) "\01\00\00\00\n\00\00\00R\00A\00N\00G\00E")
 (data (i32.const 4396) "\1c")
 (data (i32.const 4408) "\01\00\00\00\08\00\00\00R\00O\00F\00S")
 (data (i32.const 4428) "\1c")
 (data (i32.const 4440) "\01\00\00\00\n\00\00\00S\00P\00I\00P\00E")
 (data (i32.const 4460) "\1c")
 (data (i32.const 4472) "\01\00\00\00\08\00\00\00S\00R\00C\00H")
 (data (i32.const 4492) "\1c")
 (data (i32.const 4504) "\01\00\00\00\n\00\00\00S\00T\00A\00L\00E")
 (data (i32.const 4524) ",")
 (data (i32.const 4536) "\01\00\00\00\10\00\00\00T\00I\00M\00E\00D\00O\00U\00T")
 (data (i32.const 4572) "\1c")
 (data (i32.const 4584) "\01\00\00\00\0c\00\00\00T\00X\00T\00B\00S\00Y")
 (data (i32.const 4604) "\1c")
 (data (i32.const 4616) "\01\00\00\00\08\00\00\00X\00D\00E\00V")
 (data (i32.const 4636) ",")
 (data (i32.const 4648) "\01\00\00\00\14\00\00\00N\00O\00T\00C\00A\00P\00A\00B\00L\00E")
 (data (i32.const 4684) ",")
 (data (i32.const 4696) "\01\00\00\00\0e\00\00\00U\00N\00K\00N\00O\00W\00N")
 (data (i32.const 4732) "<")
 (data (i32.const 4744) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00p\00r\00o\00c\00e\00s\00s\00.\00t\00s")
 (data (i32.const 4796) "<")
 (data (i32.const 4808) "\01\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e")
 (data (i32.const 4860) ",")
 (data (i32.const 4872) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 4908) "\1c")
 (data (i32.const 4920) "\01\00\00\00\02\00\00\00\n")
 (export "tmp" (func $assembly/index/tmp))
 (export "NEP141" (global $assembly/contracts/token/NEP141/NEP141/NEP141))
 (export "NEP141#totalSupply" (func $assembly/contracts/token/NEP141/NEP141/NEP141#totalSupply))
 (export "NEP141#balanceOf" (func $assembly/contracts/token/NEP141/NEP141/NEP141#balanceOf))
 (export "NEP141#transfer" (func $assembly/contracts/token/NEP141/NEP141/NEP141#transfer))
 (export "NEP141#allowance" (func $assembly/contracts/token/NEP141/NEP141/NEP141#allowance))
 (export "NEP141#approve" (func $assembly/contracts/token/NEP141/NEP141/NEP141#approve))
 (export "NEP141#transferFrom" (func $assembly/contracts/token/NEP141/NEP141/NEP141#transferFrom))
 (export "NEP141#constructor" (func $assembly/contracts/token/NEP141/NEP141/NEP141#constructor))
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
   i32.const 1056
   i32.const 1120
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
   i32.const 1056
   i32.const 1120
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
 (func $assembly/contracts/token/NEP141/NEP141/NEP141#constructor (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 3
   call $~lib/rt/stub/__new
  end
 )
 (func $~lib/as-bignum/integer/u256/u256#constructor (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 32
   i32.const 6
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  local.get $1
  i64.store
  local.get $0
  local.get $2
  i64.store offset=8
  local.get $0
  local.get $3
  i64.store offset=16
  local.get $0
  local.get $4
  i64.store offset=24
  local.get $0
 )
 (func $assembly/contracts/token/NEP141/NEP141/NEP141#totalSupply (param $0 i32) (result i32)
  i32.const 32
  i32.const 5
  call $~lib/rt/stub/__new
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/as-bignum/integer/u256/u256#constructor
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
 (func $~lib/typedarray/Int8Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=8
  local.get $1
  i32.le_u
  if
   i32.const 1616
   i32.const 1680
   i32.const 25
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_s
 )
 (func $~lib/typedarray/Int8Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=8
  local.get $1
  i32.le_u
  if
   i32.const 1616
   i32.const 1680
   i32.const 36
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/as-bignum/utils/processU64 (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $3
  i32.const 63
  local.set $4
  loop $for-loop|0
   local.get $4
   i32.const -1
   i32.ne
   if
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $3
     i32.le_s
     if
      local.get $0
      local.get $2
      local.get $0
      local.get $2
      call $~lib/typedarray/Int8Array#__get
      local.get $0
      local.get $2
      call $~lib/typedarray/Int8Array#__get
      i32.const 5
      i32.ge_s
      i32.const 3
      i32.mul
      i32.add
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    local.set $2
    loop $for-loop|2
     local.get $2
     i32.const -1
     i32.ne
     if
      local.get $0
      local.get $2
      local.get $0
      local.get $2
      call $~lib/typedarray/Int8Array#__get
      i32.const 1
      i32.shl
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__set
      local.get $2
      local.get $3
      i32.lt_s
      if
       local.get $0
       local.get $2
       i32.const 1
       i32.add
       local.tee $5
       local.get $0
       local.get $5
       call $~lib/typedarray/Int8Array#__get
       local.get $0
       local.get $2
       call $~lib/typedarray/Int8Array#__get
       i32.const 15
       i32.gt_s
       i32.or
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__set
      end
      local.get $0
      local.get $2
      local.get $0
      local.get $2
      call $~lib/typedarray/Int8Array#__get
      i32.const 15
      i32.and
      call $~lib/typedarray/Int8Array#__set
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      br $for-loop|2
     end
    end
    local.get $0
    i32.const 0
    local.get $0
    i32.const 0
    call $~lib/typedarray/Int8Array#__get
    i64.const 1
    local.get $4
    i64.extend_i32_s
    i64.shl
    local.get $1
    i64.and
    i64.const 0
    i64.ne
    i32.add
    i32.extend8_s
    call $~lib/typedarray/Int8Array#__set
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $for-loop|0
   end
  end
 )
 (func $~lib/as-bignum/integer/u256/u256#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i64.load offset=24
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.eqz
  if
   i32.const 1376
   return
  end
  i32.const 0
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load offset=24
  call $~lib/as-bignum/integer/u256/u256#constructor
  drop
  local.get $0
  local.set $2
  i32.const 12
  i32.const 7
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
  i32.const 78
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $6
  local.tee $3
  i32.const 0
  i32.store8
  local.get $3
  i32.const 78
  i32.add
  local.tee $0
  i32.const 1
  i32.sub
  i32.const 0
  i32.store8
  local.get $3
  i32.const 0
  i32.store8 offset=1
  local.get $3
  i32.const 0
  i32.store8 offset=2
  local.get $0
  i32.const 2
  i32.sub
  i32.const 0
  i32.store8
  local.get $0
  i32.const 3
  i32.sub
  i32.const 0
  i32.store8
  local.get $3
  i32.const 0
  i32.store8 offset=3
  local.get $0
  i32.const 4
  i32.sub
  i32.const 0
  i32.store8
  local.get $3
  i32.const 0
  local.get $3
  i32.sub
  i32.const 3
  i32.and
  local.tee $0
  i32.add
  local.tee $5
  i32.const 0
  i32.store
  local.get $5
  i32.const 78
  local.get $0
  i32.sub
  i32.const -4
  i32.and
  local.tee $4
  i32.add
  local.tee $0
  i32.const 4
  i32.sub
  i32.const 0
  i32.store
  block $~lib/util/memory/memset|inlined.0
   local.get $4
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $5
   i32.const 0
   i32.store offset=4
   local.get $5
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $4
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $5
   i32.const 0
   i32.store offset=12
   local.get $5
   i32.const 0
   i32.store offset=16
   local.get $5
   i32.const 0
   i32.store offset=20
   local.get $5
   i32.const 0
   i32.store offset=24
   local.get $0
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $5
   local.get $5
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $3
   i32.add
   local.set $0
   local.get $4
   local.get $3
   i32.sub
   local.set $3
   loop $while-continue|0
    local.get $3
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
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
  local.get $1
  local.get $6
  i32.store
  local.get $1
  local.get $6
  i32.store offset=4
  local.get $1
  i32.const 78
  i32.store offset=8
  local.get $1
  local.get $2
  i64.load offset=24
  call $~lib/as-bignum/utils/processU64
  local.get $1
  local.get $2
  i64.load offset=16
  call $~lib/as-bignum/utils/processU64
  local.get $1
  local.get $2
  i64.load offset=8
  call $~lib/as-bignum/utils/processU64
  local.get $1
  local.get $2
  i64.load
  call $~lib/as-bignum/utils/processU64
  i32.const 1408
  local.set $0
  i32.const 77
  local.set $6
  loop $for-loop|0
   local.get $6
   i32.const -1
   i32.ne
   if
    i32.const 1
    local.get $7
    local.get $7
    if (result i32)
     i32.const 0
    else
     local.get $1
     local.get $6
     call $~lib/typedarray/Int8Array#__get
     i32.const 0
     i32.gt_s
    end
    select
    local.tee $7
    if
     block $__inlined_func$~lib/string/String#concat (result i32)
      local.get $1
      local.get $6
      call $~lib/typedarray/Int8Array#__get
      local.tee $3
      i32.const 1436
      i32.load
      i32.const 1
      i32.shr_u
      i32.ge_u
      if (result i32)
       i32.const 1408
      else
       i32.const 2
       i32.const 1
       call $~lib/rt/stub/__new
       local.tee $2
       local.get $3
       i32.const 1
       i32.shl
       i32.const 1440
       i32.add
       i32.load16_u
       i32.store16
       local.get $2
      end
      local.set $5
      i32.const 1408
      local.get $0
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.const 1
      i32.shl
      local.tee $4
      local.get $5
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.const 1
      i32.shl
      local.tee $3
      i32.add
      local.tee $2
      i32.eqz
      br_if $__inlined_func$~lib/string/String#concat
      drop
      local.get $2
      i32.const 1
      call $~lib/rt/stub/__new
      local.tee $2
      local.get $0
      local.get $4
      call $~lib/memory/memory.copy
      local.get $2
      local.get $4
      i32.add
      local.get $5
      local.get $3
      call $~lib/memory/memory.copy
      local.get $2
     end
     local.set $0
    end
    local.get $6
    i32.const 1
    i32.sub
    local.set $6
    br $for-loop|0
   end
  end
  local.get $0
 )
 (func $~lib/bindings/wasi_snapshot_preview1/errnoToString (param $0 i32) (result i32)
  block $break|0
   block $case76|0
    block $case75|0
     block $case74|0
      block $case73|0
       block $case72|0
        block $case71|0
         block $case70|0
          block $case69|0
           block $case68|0
            block $case67|0
             block $case66|0
              block $case65|0
               block $case64|0
                block $case63|0
                 block $case62|0
                  block $case61|0
                   block $case60|0
                    block $case59|0
                     block $case58|0
                      block $case57|0
                       block $case56|0
                        block $case55|0
                         block $case54|0
                          block $case53|0
                           block $case52|0
                            block $case51|0
                             block $case50|0
                              block $case49|0
                               block $case48|0
                                block $case47|0
                                 block $case46|0
                                  block $case45|0
                                   block $case44|0
                                    block $case43|0
                                     block $case42|0
                                      block $case41|0
                                       block $case40|0
                                        block $case39|0
                                         block $case38|0
                                          block $case37|0
                                           block $case36|0
                                            block $case35|0
                                             block $case34|0
                                              block $case33|0
                                               block $case32|0
                                                block $case31|0
                                                 block $case30|0
                                                  block $case29|0
                                                   block $case28|0
                                                    block $case27|0
                                                     block $case26|0
                                                      block $case25|0
                                                       block $case24|0
                                                        block $case23|0
                                                         block $case22|0
                                                          block $case21|0
                                                           block $case20|0
                                                            block $case19|0
                                                             block $case18|0
                                                              block $case17|0
                                                               block $case16|0
                                                                block $case15|0
                                                                 block $case14|0
                                                                  block $case13|0
                                                                   block $case12|0
                                                                    block $case11|0
                                                                     block $case10|0
                                                                      block $case9|0
                                                                       block $case8|0
                                                                        block $case7|0
                                                                         block $case6|0
                                                                          block $case5|0
                                                                           block $case4|0
                                                                            block $case3|0
                                                                             block $case2|0
                                                                              block $case1|0
                                                                               block $case0|0
                                                                                local.get $0
                                                                                i32.const 65535
                                                                                i32.and
                                                                                br_table $case0|0 $case1|0 $case2|0 $case3|0 $case4|0 $case5|0 $case6|0 $case7|0 $case8|0 $case9|0 $case10|0 $case11|0 $case12|0 $case13|0 $case14|0 $case15|0 $case16|0 $case17|0 $case18|0 $case19|0 $case20|0 $case21|0 $case22|0 $case23|0 $case24|0 $case25|0 $case26|0 $case27|0 $case28|0 $case29|0 $case30|0 $case31|0 $case32|0 $case33|0 $case34|0 $case35|0 $case36|0 $case37|0 $case38|0 $case39|0 $case40|0 $case41|0 $case42|0 $case43|0 $case44|0 $case45|0 $case46|0 $case47|0 $case48|0 $case49|0 $case50|0 $case51|0 $case52|0 $case53|0 $case54|0 $case55|0 $case56|0 $case57|0 $case58|0 $case59|0 $case60|0 $case61|0 $case62|0 $case63|0 $case64|0 $case65|0 $case66|0 $case67|0 $case68|0 $case69|0 $case70|0 $case71|0 $case72|0 $case73|0 $case74|0 $case75|0 $case76|0 $break|0
                                                                               end
                                                                               i32.const 1776
                                                                               return
                                                                              end
                                                                              i32.const 1824
                                                                              return
                                                                             end
                                                                             i32.const 1856
                                                                             return
                                                                            end
                                                                            i32.const 1888
                                                                            return
                                                                           end
                                                                           i32.const 1936
                                                                           return
                                                                          end
                                                                          i32.const 1984
                                                                          return
                                                                         end
                                                                         i32.const 2032
                                                                         return
                                                                        end
                                                                        i32.const 2064
                                                                        return
                                                                       end
                                                                       i32.const 2112
                                                                       return
                                                                      end
                                                                      i32.const 2144
                                                                      return
                                                                     end
                                                                     i32.const 2176
                                                                     return
                                                                    end
                                                                    i32.const 2208
                                                                    return
                                                                   end
                                                                   i32.const 2256
                                                                   return
                                                                  end
                                                                  i32.const 2288
                                                                  return
                                                                 end
                                                                 i32.const 2336
                                                                 return
                                                                end
                                                                i32.const 2384
                                                                return
                                                               end
                                                               i32.const 2432
                                                               return
                                                              end
                                                              i32.const 2464
                                                              return
                                                             end
                                                             i32.const 2512
                                                             return
                                                            end
                                                            i32.const 2544
                                                            return
                                                           end
                                                           i32.const 2576
                                                           return
                                                          end
                                                          i32.const 2608
                                                          return
                                                         end
                                                         i32.const 2640
                                                         return
                                                        end
                                                        i32.const 2672
                                                        return
                                                       end
                                                       i32.const 2720
                                                       return
                                                      end
                                                      i32.const 2752
                                                      return
                                                     end
                                                     i32.const 2784
                                                     return
                                                    end
                                                    i32.const 2832
                                                    return
                                                   end
                                                   i32.const 2864
                                                   return
                                                  end
                                                  i32.const 2896
                                                  return
                                                 end
                                                 i32.const 2928
                                                 return
                                                end
                                                i32.const 2960
                                                return
                                               end
                                               i32.const 2992
                                               return
                                              end
                                              i32.const 3024
                                              return
                                             end
                                             i32.const 3056
                                             return
                                            end
                                            i32.const 3088
                                            return
                                           end
                                           i32.const 3136
                                           return
                                          end
                                          i32.const 3184
                                          return
                                         end
                                         i32.const 3232
                                         return
                                        end
                                        i32.const 3280
                                        return
                                       end
                                       i32.const 3328
                                       return
                                      end
                                      i32.const 3376
                                      return
                                     end
                                     i32.const 3408
                                     return
                                    end
                                    i32.const 3440
                                    return
                                   end
                                   i32.const 3472
                                   return
                                  end
                                  i32.const 3504
                                  return
                                 end
                                 i32.const 3536
                                 return
                                end
                                i32.const 3568
                                return
                               end
                               i32.const 3600
                               return
                              end
                              i32.const 3632
                              return
                             end
                             i32.const 3664
                             return
                            end
                            i32.const 3712
                            return
                           end
                           i32.const 3744
                           return
                          end
                          i32.const 3776
                          return
                         end
                         i32.const 3824
                         return
                        end
                        i32.const 3856
                        return
                       end
                       i32.const 3904
                       return
                      end
                      i32.const 3952
                      return
                     end
                     i32.const 4000
                     return
                    end
                    i32.const 4032
                    return
                   end
                   i32.const 4064
                   return
                  end
                  i32.const 4096
                  return
                 end
                 i32.const 4144
                 return
                end
                i32.const 4192
                return
               end
               i32.const 4224
               return
              end
              i32.const 4256
              return
             end
             i32.const 4288
             return
            end
            i32.const 4336
            return
           end
           i32.const 4384
           return
          end
          i32.const 4416
          return
         end
         i32.const 4448
         return
        end
        i32.const 4480
        return
       end
       i32.const 4512
       return
      end
      i32.const 4544
      return
     end
     i32.const 4592
     return
    end
    i32.const 4624
    return
   end
   i32.const 4656
   return
  end
  i32.const 4704
 )
 (func $~lib/process/writeString (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   block $case4|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $0
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 1
        i32.shr_u
        local.tee $4
        br_table $case4|0 $case3|0 $case2|0 $case1|0 $case0|0 $break|0
       end
       local.get $0
       i32.load16_u offset=6
       local.tee $2
       i32.const 128
       i32.ge_u
       br_if $break|0
      end
      local.get $0
      i32.load16_u offset=4
      local.tee $3
      i32.const 128
      i32.ge_u
      br_if $break|0
     end
     local.get $0
     i32.load16_u offset=2
     local.tee $1
     i32.const 128
     i32.ge_u
     br_if $break|0
    end
    local.get $0
    i32.load16_u
    local.tee $5
    i32.const 128
    i32.ge_u
    br_if $break|0
    i32.const 1728
    i32.const 1736
    i32.store
    i32.const 1732
    local.get $4
    i32.store
    i32.const 1736
    local.get $1
    i32.const 8
    i32.shl
    local.get $5
    i32.or
    local.get $3
    i32.const 16
    i32.shl
    i32.or
    local.get $2
    i32.const 24
    i32.shl
    i32.or
    i32.store
    i32.const 1
    i32.const 1728
    i32.const 1
    i32.const 1740
    call $~lib/bindings/wasi_snapshot_preview1/fd_write
    local.tee $0
    i32.const 65535
    i32.and
    if
     local.get $0
     call $~lib/bindings/wasi_snapshot_preview1/errnoToString
     i32.const 4752
     i32.const 178
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
   end
   return
  end
  local.get $0
  local.get $0
  local.tee $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $2
  i32.const 0
  local.set $3
  loop $while-continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load16_u
    local.tee $5
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 1
     i32.add
    else
     local.get $5
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $3
      i32.const 2
      i32.add
     else
      local.get $5
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      local.get $2
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
  local.get $4
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/stub/__alloc
  local.tee $5
  local.tee $6
  local.set $2
  loop $while-continue|00
   local.get $0
   local.get $4
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $7
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $2
     local.get $7
     i32.store8
     local.get $2
     i32.const 1
     i32.add
    else
     local.get $7
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $2
      local.get $7
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $7
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $2
      i32.const 2
      i32.add
     else
      local.get $7
      i32.const 56320
      i32.lt_u
      local.get $4
      local.get $0
      i32.const 2
      i32.add
      i32.gt_u
      i32.and
      local.get $7
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      i32.and
      if
       local.get $0
       i32.load16_u offset=2
       local.tee $1
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $2
        local.get $7
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $1
        i32.const 1023
        i32.and
        i32.or
        local.tee $1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 24
        i32.shl
        local.get $1
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 16
        i32.shl
        i32.or
        local.get $1
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 8
        i32.shl
        i32.or
        local.get $1
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.or
        i32.store
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|00
       end
      end
      local.get $2
      local.get $7
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $7
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
      local.get $2
      local.get $7
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $2
      i32.const 3
      i32.add
     end
    end
    local.set $2
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|00
   end
  end
  local.get $2
  local.get $6
  i32.sub
  local.get $3
  i32.ne
  if
   i32.const 0
   i32.const 4752
   i32.const 184
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1728
  local.get $5
  i32.store
  i32.const 1732
  local.get $3
  i32.store
  i32.const 1
  i32.const 1728
  i32.const 1
  i32.const 1736
  call $~lib/bindings/wasi_snapshot_preview1/fd_write
  local.set $0
  local.get $5
  i32.const 15
  i32.and
  i32.const 1
  local.get $5
  select
  if
   i32.const 0
   i32.const 1120
   i32.const 70
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.get $5
  i32.const 4
  i32.sub
  local.tee $1
  i32.load
  local.get $5
  i32.add
  i32.eq
  if
   local.get $1
   global.set $~lib/rt/stub/offset
  end
  local.get $0
  i32.const 65535
  i32.and
  if
   local.get $0
   call $~lib/bindings/wasi_snapshot_preview1/errnoToString
   i32.const 4752
   i32.const 189
   i32.const 12
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $assembly/index/tmp
  i32.const 0
  i32.const 3
  call $~lib/rt/stub/__new
  drop
  i32.const 32
  i32.const 5
  call $~lib/rt/stub/__new
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/as-bignum/integer/u256/u256#constructor
  call $~lib/as-bignum/integer/u256/u256#toString
  call $~lib/process/writeString
  i32.const 4928
  call $~lib/process/writeString
 )
 (func $assembly/contracts/token/NEP141/NEP141/NEP141#balanceOf (param $0 i32) (param $1 i32) (result i32)
  i32.const 32
  i32.const 5
  call $~lib/rt/stub/__new
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/as-bignum/integer/u256/u256#constructor
 )
 (func $assembly/contracts/token/NEP141/NEP141/NEP141#transfer (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  nop
 )
 (func $assembly/contracts/token/NEP141/NEP141/NEP141#allowance (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 32
  i32.const 5
  call $~lib/rt/stub/__new
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/as-bignum/integer/u256/u256#constructor
 )
 (func $assembly/contracts/token/NEP141/NEP141/NEP141#approve (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 0
 )
 (func $assembly/contracts/token/NEP141/NEP141/NEP141#transferFrom (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  i32.const 0
 )
 (func $~start
  i32.const 4940
  global.set $~lib/rt/stub/offset
 )
)
