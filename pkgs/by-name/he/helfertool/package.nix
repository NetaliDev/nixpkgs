{ lib
, python3
, fetchFromGitHub
}:

python3.pkgs.buildPythonPackage rec {
  pname = "helfertool";
  version = "3.2.2";
  format = "pyproject";

  src = fetchFromGitHub {
    owner = pname;
    repo = pname;
    rev = "v${version}";
    hash = "sha256-p17ZlpYQASCiFDm5fEwD8lTSeg8dK6XnqdJHrhS3sn0=";
  };

  propagatedBuildInputs = with python3.pkgs; [
    django
    django-compressor
    django-ical
    django-select2
    django-auth-ldap
    django-axes
    django-bleach
    django-bootstrap5
    django-ckeditor
    django-countries
    django-icons
    django-libsass
    django-modeltranslation
    django-multiselectfield
    django-celery-results
    celery
    csscompressor
    jmespath
    mozilla-django-oidc
    pillow
    python-dateutil
    python-magic
    pyyaml
    reportlab
    xlsxwriter
    mysqlclient
    psycopg
  ];

  meta = with lib; {
    description = "Python3 and Django based tool that allows to manage the volunteers or staff for an event";
    license = licenses.agpl3;
    homepage = "https://github.com/helfertool/helfertool";
    maintainers = with maintainers; [ netali ];
  };
}
