import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'secretKey', obfuscate: true)
  static final String secretKey = _Env.secretKey;
  @EnviedField(varName: 'publishableKey', obfuscate: true)
  static final String publishableKey = _Env.publishableKey;
}
