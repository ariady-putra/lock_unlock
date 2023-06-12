pub opaque type Key {
  key: Int,
}

pub fn new(redeemer: Int) -> Key {
  Key(redeemer)
}

pub fn get_key(redeemer: Key) -> Int {
  redeemer.key
}
