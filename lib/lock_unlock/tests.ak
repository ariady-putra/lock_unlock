use aiken/cbor
use lock_unlock/struct/datum
use lock_unlock/struct/redeemer
use lock_unlock/unlock.{unlock}

test should_unlock() {
  //
  // arrange:
  let datum = datum.new(42)
  let redeemer = redeemer.new(42)
  //
  // trace:
  trace cbor.diagnostic(datum)
  trace cbor.diagnostic(redeemer)
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
  trace cbor.diagnostic(datum)
  trace cbor.diagnostic(redeemer)
  //
  // assert:
  !unlock(datum, redeemer, 42)
}
