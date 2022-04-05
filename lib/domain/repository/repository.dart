
import 'package:dartz/dartz.dart';
import 'package:trading/data/network/failure.dart';
import 'package:trading/data/request/request.dart';

import '../model/model.dart';

abstract class Repository{
  Future<Either<Failure,Authentication>> login(LoginRequest loginRequest);
}