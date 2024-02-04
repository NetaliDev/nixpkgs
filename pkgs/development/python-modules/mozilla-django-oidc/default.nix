{ lib
, buildPythonPackage
, fetchFromGitHub

# build
, setuptools

# runtime
, cryptography
, django
, djangorestframework
, josepy
, requests

# tests
, python
}:

buildPythonPackage rec {
  pname = "mozilla-django-oidc";
  version = "4.0.0";
  format = "setuptools";

  src = fetchFromGitHub {
    owner = "mozilla";
    repo = "mozilla-django-oidc";
    rev = version;
    hash = "sha256-8X/dZSQw2lgM9brrbeAl/zBolotgfnSiEt6dO7c4b18=";
  };

  nativeBuildInputs = [
    setuptools
  ];

  propagatedBuildInputs = [
    django
    djangorestframework
    josepy
    requests
    cryptography
  ];

  checkPhase = ''
    runHook preCheck
    export DJANGO_SETTINGS_MODULE=tests.settings
    ${python.interpreter} -m django test tests
    runHook postCheck
  '';

  pythonImportsCheck = [ "mozilla_django_oidc" ];

  meta = with lib; {
    description = "A Django OpenID Connect library";
    homepage = "https://github.com/mozilla/mozilla-django-oidc/tree/main";
    license = licenses.mpl20;
    maintainers = with maintainers; [ netali ];
  };
}
