{ lib
, buildPythonPackage
, fetchFromGitHub
, pythonOlder

# build
, setuptools
, setuptools-scm

# runtime
, django

# test
, python
}:

buildPythonPackage rec {
  pname = "django-icons";
  version = "23.5";
  format = "pyproject";

  src = fetchFromGitHub {
    owner = "zostera";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-tEyGhH3nL+nXo9HGNqyxkW4qxRT7sInSjuwsczqurow=";
  };

  disabled = pythonOlder "3.8";

  nativeBuildInputs = [
    setuptools-scm
    setuptools
  ];

  propagatedBuildInputs = [
    django
  ];

  checkPhase = ''
    runHook preCheck
    ${python.interpreter} manage.py test
    runHook postCheck
  '';

  pythonImportsCheck = [ "django_icons" ];

  meta = with lib; {
    description = "Icons for Django";
    homepage = "https://github.com/zostera/django-icons";
    changelog = "https://github.com/zostera/django-icons/blob/${version}/CHANGELOG.rst";
    license = licenses.bsd3;
    maintainers = with maintainers; [ netali ];
  };
}
