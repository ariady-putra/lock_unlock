use lock_unlock/enum/state
use lock_unlock/struct/datum
use lock_unlock/struct/redeemer

/// Unlocks the funds when `key` is equal to `lock`
pub fn unlock(lock: Data, key: Data, _: Data) -> Bool {
  expect lock: datum.Lock = lock
  expect key: redeemer.Key = key
  //
  let lock = datum.get_lock(lock)
  let key = redeemer.get_key(key)
  //
  // anonymous fn:
  let process_state =
    fn(state) {
      when state is {
        state.Locked -> False
        state.Unlocked -> True
      }
    }
  //
  // return:
  if key == lock {
    unlocked()
  } else {
    locked()
  }
    |> process_state
}

fn locked() {
  state.Locked
}

fn unlocked() {
  state.Unlocked
}
