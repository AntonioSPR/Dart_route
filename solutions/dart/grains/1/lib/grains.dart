BigInt square(final int n) {
  if (n < 1 || n > 64) {
    throw ArgumentError('square must be between 1 and 64');
  }
  BigInt base = BigInt.from(2);
  return base.pow(n - 1);
}

BigInt total() {
  BigInt base = BigInt.from(2);
  return base.pow(64) - BigInt.from(1);
}

