//// ```
//// ┍━ lock_unlock/tests ━━━━━━━━━━━━━━━━━━━━━━━━
//// │ PASS [mem: ####, cpu: ######] should_unlock
//// │ ↳ Datum: "182a"
//// │ ↳ Redeemer: "182a"
//// │ PASS [mem: ####, cpu: ######] should_not_unlock
//// │ ↳ Datum: "182a"
//// │ ↳ Redeemer: "1818"
//// ┕━━━━━━━━━━━━━━━━━━ 2 tests | 2 passed | 0 failed
//// ```

use lock_unlock/struct/datum
use lock_unlock/struct/redeemer
use lock_unlock/unlock.{unlock}
use string_util/cbor.{print}

test should_unlock() {
  //
  // arrange:
  let datum = datum.new(42)
  let redeemer = redeemer.new(42)
  //
  // trace:
  trace "Datum"
    |> print(datum)
  trace "Redeemer"
    |> print(redeemer)
  //
  // assert:
  unlock(datum, redeemer, 42)
}

test should_not_unlock() {
  //
  // arrange:
  let datum = datum.new(42)
  let redeemer = redeemer.new(24)
  //
  // trace:
  trace "Datum"
    |> print(datum)
  trace "Redeemer"
    |> print(redeemer)
  //
  // assert:
  !unlock(datum, redeemer, 42)
}
