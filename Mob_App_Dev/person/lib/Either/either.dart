import 'package:dartz/dartz.dart';

class Arithmetic {
  final int first;
  final int second;

  Arithmetic(this.first, this.second);

  int sub() {
    return first - second;
  }

  // Using Either

  Either<String, int> add() {
    try {
      return Right(first + second);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
