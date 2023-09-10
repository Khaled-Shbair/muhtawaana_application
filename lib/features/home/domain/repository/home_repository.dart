import 'package:dartz/dartz.dart';
import '/config/all_imports.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeModel>> getHomeData();
}
