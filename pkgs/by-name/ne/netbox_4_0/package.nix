{
  lib,
  fetchFromGitHub,
  python3,
  plugins ? _ps: [ ],
  nixosTests,
}:
let
  py = python3.override { packageOverrides = _final: prev: { django = prev.django_5; }; };

  extraBuildInputs = plugins py.pkgs;
in
py.pkgs.buildPythonApplication rec {
  pname = "netbox";
  version = "4.0.9";

  format = "other";

  src = fetchFromGitHub {
    owner = "netbox-community";
    repo = pname;
    rev = "refs/tags/v${version}";
    hash = "sha256-VOZaBiTd08XgFjlHIVlLvZQHQuQ0eN3g1T9lit4sdmw=";
  };

  patches = [ ./custom-static-root.patch ];

  propagatedBuildInputs =
    (with py.pkgs; [
      django
      django-cors-headers
      django-debug-toolbar
      django-filter
      django-graphiql-debug-toolbar
      django-htmx
      django-mptt
      django-pglocks
      django-prometheus
      django-redis
      django-rq
      django-tables2
      django-taggit
      django-timezone-field
      djangorestframework
      drf-spectacular
      drf-spectacular-sidecar
      feedparser
      jinja2
      markdown
      netaddr
      nh3
      pillow
      psycopg2
      pyyaml
      requests
      social-auth-core
      social-auth-app-django
      strawberry-graphql
      strawberry-django
      svgwrite
      tablib

      # Optional dependencies, kept here for backward compatibility

      # for the S3 data source backend
      boto3
      # for Git data source backend
      dulwich
      # for error reporting
      sentry-sdk
    ])
    ++ extraBuildInputs;

  buildInputs = with py.pkgs; [
    mkdocs-material
    mkdocs-material-extensions
    mkdocstrings
    mkdocstrings-python
  ];

  nativeBuildInputs = [ py.pkgs.mkdocs ];

  postBuild = ''
    PYTHONPATH=$PYTHONPATH:netbox/
    python -m mkdocs build
  '';

  installPhase = ''
    mkdir -p $out/opt/netbox
    cp -r . $out/opt/netbox
    chmod +x $out/opt/netbox/netbox/manage.py
    makeWrapper $out/opt/netbox/netbox/manage.py $out/bin/netbox \
      --prefix PYTHONPATH : "$PYTHONPATH"
  '';

  passthru = {
    python = python3;
    # PYTHONPATH of all dependencies used by the package
    pythonPath = py.pkgs.makePythonPath propagatedBuildInputs;
    inherit (py.pkgs) gunicorn;
    tests = {
      netbox = nixosTests.netbox_4_0;
      inherit (nixosTests) netbox-upgrade;
    };
  };

  meta = {
    homepage = "https://github.com/netbox-community/netbox";
    description = "IP address management (IPAM) and data center infrastructure management (DCIM) tool";
    mainProgram = "netbox";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [
      minijackson
      n0emis
      raitobezarius
    ];
  };
}
