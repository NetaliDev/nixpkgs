{ lib
, fetchFromGitHub
, buildPythonPackage
, flit-core
, flit-scm
, django
, django-appconf
, pytestCheckHook
, pytest-cov
, pytest-django
, selenium
}:

buildPythonPackage rec {
  pname = "django-select2";
  version = "8.1.2";
  format = "pyproject";

  src = fetchFromGitHub {
    owner = "codingjoe";
    repo = pname;
    rev = version;
    hash = "sha256-Jr0lFVOwiC9eLkK6suJdJBlDnDsOUoFDmGLLzmQuv3A=";
  };

  nativeBuildInputs = [
    flit-core
    flit-scm
  ];

  propagatedBuildInputs = [
    django
    django-appconf
  ];

  nativeCheckInputs = [
    pytestCheckHook
  ];

  checkInputs = [
    pytest-cov
    pytest-django
    selenium
  ];

  pythonImportsCheck = [ "django_select2" ];

  meta = with lib; {
    description = "Custom autocomplete fields for Django";
    homepage = "https://github.com/codingjoe/django-select2";
    changelog = "https://github.com/codingjoe/django-select2/releases/tag/${version}";
    license = licenses.mit;
    maintainers = with maintainers; [ netali ];
  };
}
