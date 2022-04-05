import 'package:trading/data/data_source/remote_data_source.dart';
import 'package:trading/data/network/error_handler.dart';
import 'package:trading/data/network/failure.dart';
import 'package:trading/data/network/network_info.dart';
import 'package:trading/data/request/request.dart';
import 'package:trading/domain/model/model.dart';
import 'package:trading/domain/repository/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:trading/data/mapper/mapper.dart';

class RepositoryImpl extends Repository {
  RemoteDataSource _remoteDataSource;
  NetworkInfo _networkInfo;

  RepositoryImpl(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, Authentication>> login(
      LoginRequest loginRequest) async {
    if (await _networkInfo.isConnected) {
      try {
        // its safe to call the API
        final response = await _remoteDataSource.login(loginRequest);

        if (response.status == ApiInternalStatus.SUCCESS) // success
        {
          // return data (success)
          // return right
          return Right(response.toDomain());
        } else {
          // return biz logic error
          // return left
          return Left(Failure(response.status ?? ApiInternalStatus.FAILURE,
              response.message ?? ResponseMessage.DEFAULT));
        }
      } catch (error) {
        return (Left(ErrorHandler.handle(error).failure));
      }
    } else {
      // return connection error
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }
}
