// lib/config/environment.dart

enum Environment { dev, prod }

class AppConfig {
  static Environment _environment = Environment.dev;
  static Environment get environment => _environment;

  static void setEnvironment(Environment env) {
    _environment = env;
  }
}
