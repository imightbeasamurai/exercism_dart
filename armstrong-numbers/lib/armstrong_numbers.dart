class ArmstrongNumbers {
  bool isArmstrongNumber(String nbr) {
    final length = nbr.length;
    final number = BigInt.parse(nbr);

    if (number == BigInt.zero) return true;

    var total = BigInt.zero;
    for (var digit in number.toString().split('')) {
      total += BigInt.parse(digit).pow(length);
    }

    return number == total;
  }
}