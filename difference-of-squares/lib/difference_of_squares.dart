class DifferenceOfSquares {
  int square(int i) => i * i;
  int sumOfSquares(int num) {
    int sSum = 0;
    for (int i = 0; i <= num; i++) {
      sSum += square(i);
    }
    return sSum;
  }

  int squareOfSum(int num) {
    int sSqr = 0;
    for (int i = 0; i <= num; i++) {
      sSqr += i;
    }
    return (square(sSqr));
  }

  int differenceOfSquares(int num) => squareOfSum(num) - sumOfSquares(num);
}