pub opaque type Lock {
  lock: Int,
}

pub fn new(datum: Int) -> Lock {
  Lock(datum)
}

pub fn get_lock(datum: Lock) -> Int {
  datum.lock
}
