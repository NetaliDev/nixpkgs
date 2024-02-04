{ lib
, buildPythonPackage
, fetchFromGitHub
, pythonRelaxDepsHook

# build
, setuptools

# runtime
, django
, bleach
, cfgv
, click
, distlib
, filelock
, identify
, platformdirs
, pluggy
, py
, pyparsing
, pyyaml
, six
, toml
, tomli
, tinycss2

# testing
, python
}:

buildPythonPackage rec {
  pname = "django-bleach";
  version = "3.1.0";
  format = "pyproject";

  src = fetchFromGitHub {
    owner = "marksweb";
    repo = pname;
    rev = version;
    hash = "sha256-49IJWTRIs1HjEjODOnW0X5QVKz06Xl8YwjmRAmh+Li4=";
  };

  nativeBuildInputs = [
    pythonRelaxDepsHook
    setuptools
  ];

  pythonRelaxDeps = true;

  propagatedBuildInputs = [
    django
    bleach
    cfgv
    click
    distlib
    filelock
    identify
    platformdirs
    pluggy
    py
    pyparsing
    pyyaml
    six
    toml
    tomli
    tinycss2
  ];

  checkPhase = ''
    runHook preCheck
    ${python.interpreter} testproject/manage.py test
    runHook postCheck
  '';

pythonImportsCheck = [ "django_bleach" ];

  meta = with lib; {
    description = "Bleach is a Python module that takes any HTML input, and returns valid, sanitised HTML that contains only an allowed subset of HTML tags, attributes and styles, django-bleach is a Django app that makes using bleach extremely easy";
    homepage = "https://github.com/marksweb/django-bleach";
    changelog = "https://github.com/marksweb/django-bleach/blob/${version}/CHANGELOG.md";
    license = licenses.mit;
    maintainers = with maintainers; [ netali ];
  };
}
