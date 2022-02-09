(module
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $assembly/contracts/token/NEP141/NEP141/NEP141 i32 (i32.const 3))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1100) "<")
 (data (i32.const 1112) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
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
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
  local.tee $4
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
  local.tee $3
  i32.const 4
  i32.add
  local.tee $2
  local.get $4
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $4
  i32.add
  local.tee $5
  memory.size
  local.tee $6
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $7
  i32.gt_u
  if
   local.get $6
   local.get $5
   local.get $7
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $7
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $5
  global.set $~lib/rt/stub/offset
  local.get $3
  local.get $4
  i32.store
  local.get $2
  i32.const 4
  i32.sub
  local.tee $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $3
  local.get $0
  i32.store offset=16
  local.get $2
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
 (func $~lib/as-bignum/integer/safe/u256/u256#constructor (result i32)
  (local $0 i32)
  i32.const 32
  i32.const 5
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 32
   i32.const 6
   call $~lib/rt/stub/__new
   local.set $0
  end
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
  local.get $0
 )
 (func $assembly/contracts/token/NEP141/NEP141/NEP141#totalSupply (param $0 i32) (result i32)
  call $~lib/as-bignum/integer/safe/u256/u256#constructor
 )
 (func $assembly/contracts/token/NEP141/NEP141/NEP141#balanceOf (param $0 i32) (param $1 i32) (result i32)
  call $~lib/as-bignum/integer/safe/u256/u256#constructor
 )
 (func $assembly/contracts/token/NEP141/NEP141/NEP141#transfer (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  nop
 )
 (func $assembly/contracts/token/NEP141/NEP141/NEP141#allowance (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  call $~lib/as-bignum/integer/safe/u256/u256#constructor
 )
 (func $assembly/contracts/token/NEP141/NEP141/NEP141#approve (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 0
 )
 (func $assembly/contracts/token/NEP141/NEP141/NEP141#transferFrom (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  i32.const 0
 )
 (func $~start
  i32.const 1164
  global.set $~lib/rt/stub/offset
 )
)
