{ lib
, fetchFromGitHub
, buildPythonPackage
, pdm-backend
, pythonRelaxDepsHook
, django
, flake8
, pytestCheckHook
, pytest-cov
, pytest-django
, pytest-sugar
, python-dateutil
, tox
, sphinx
, sphinx-rtd-theme
}:

buildPythonPackage rec {
  pname = "django-recurrence";
  version = "1.12";
  format = "pyproject";

  src = fetchFromGitHub {
    owner = "jazzband";
    repo = pname;
    rev = version;
    hash = "sha256-0VQ2sPBDghhKJ/00fkv5rj7lQAFfV3WssM8nLMoguCg=";
  };

  nativeBuildInputs = [
    pdm-backend
    pythonRelaxDepsHook
  ];

  propagatedBuildInputs = [
    django
    flake8
    python-dateutil
    sphinx
    sphinx-rtd-theme
  ];

  pythonRelaxDeps = true;

  # test inputs, not required for building
  pythonRemoveDeps = [
    "pytest"
    "pytest-cov"
    "pytest-django"
    "pytest-sugar"
    "tox"
  ];

  nativeCheckInputs = [
    pytestCheckHook
  ];

  checkInputs = [
    pytest-cov
    pytest-django
    pytest-sugar
    tox
  ];

  pythonImportsCheck = [ "recurrence" ];

  meta = with lib; {
    description = "A utility for working with recurring dates in Django";
    homepage = "https://github.com/jazzband/django-recurrence";
    changelog = "https://github.com/jazzband/django-recurrence/releases/tag/${version}";
    license = licenses.bsd3;
    maintainers = with maintainers; [ netali ];
  };
}

