enum AppRoutes {
  // auth
  login('/login'),
  register('/register'),
  homePage('/homePage'),
  signinPage('/signin'),
  splashPage('/');

  final String path;
  const AppRoutes(this.path);
}
