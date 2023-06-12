use lock_unlock/unlock.{unlock}

validator {
  fn spend(datum: Data, redeemer: Data, context: Data) -> Bool {
    unlock(datum, redeemer, context)
  }
}
// aiken check
// aiken build
// aiken blueprint convert
// aiken address
// aiken docs
