import 'package:either_dart/either.dart';
import 'package:exam_app/features/auth/data/data_models/response/verify_reset_code_response.dart';
import 'package:injectable/injectable.dart';
import '../auth_repository/auth_repository.dart';

@injectable
class VerifyResetCodeUseCase {
  final AuthRepository authRepository;

  VerifyResetCodeUseCase(this.authRepository);

  Future<Either<Exception, VerifyResetCodeResponse>> execute(String otp) async {
    return await authRepository.verifyResetCodeResponse(otp);
  }
}
