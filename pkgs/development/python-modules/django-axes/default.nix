{ lib
, fetchFromGitHub
, buildPythonPackage
, setuptools
, setuptools-scm
, django
, django-ipware
, python-ipware
, pytestCheckHook
, pytest-cov
, pytest-django
, pytest-subtests
, sphinx
, sphinx-rtd-theme
}:

buildPythonPackage rec {
  pname = "django-axes";
  version = "6.3.0";
  format = "pyproject";

  src = fetchFromGitHub {
    owner = "jazzband";
    repo = pname;
    rev = version;
    hash = "sha256-iHjzRaRH+WRs3IoFWlMze3c1hyjTqkK75YFguLe443E=";
  };

  nativeBuildInputs = [
    setuptools
    setuptools-scm
  ];

  propagatedBuildInputs = [
    django
    django-ipware
    python-ipware
  ];

  nativeCheckInputs = [
    pytestCheckHook
  ];

  checkInputs = [
    pytest-cov
    pytest-django
    pytest-subtests
  ];

  pythonImportsCheck = [ "axes" ];

  meta = with lib; {
    description = "A Django plugin for keeping track of suspicious login attempts for your Django based website and implementing simple brute-force attack blocking";
    homepage = "https://github.com/jazzband/django-axes";
    changelog = "https://github.com/jazzband/django-axes/releases/tag/${version}";
    license = licenses.mit;
    maintainers = with maintainers; [ netali ];
  };
}

