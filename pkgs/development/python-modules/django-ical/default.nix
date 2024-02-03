{ lib
, fetchPypi
, buildPythonPackage
, setuptools
, setuptools-scm
, django
, django-recurrence
, icalendar
}:

buildPythonPackage rec {
  pname = "django-ical";
  version = "1.9.2";
  format = "pyproject";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-RMm2+pDQnyXp66qR7Z6wB/B5r7wj1qrJCc/BgYio6Qw=";
  };

  nativeBuildInputs = [
    setuptools
    setuptools-scm
  ];

  propagatedBuildInputs = [
    django
    django-recurrence
    icalendar
  ];

  pythonImportsCheck = [ "django_ical" ];

  meta = with lib; {
    description = "A utility for working with recurring dates in Django";
    homepage = "https://github.com/jazzband/django-ical";
    changelog = "https://github.com/jazzband/django-ical/releases/tag/${version}";
    license = licenses.mit;
    maintainers = with maintainers; [ netali ];
  };
}
