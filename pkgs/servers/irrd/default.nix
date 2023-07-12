{ lib
, python3
, fetchPypi
}:

let
  py = python3.override {
    packageOverrides = self: super: {
      sqlalchemy = super.sqlalchemy.overridePythonAttrs (oldAttrs: rec {
        version = "1.3.24";
        src = oldAttrs.src.override {
          inherit version;
          hash = "sha256-05GhFearTA9At8MgmEfeXfbS3MAZ0Rmx8jER18q7fmI=";
        };
      });

      beautifultable = super.beautifultable.overridePythonAttrs (oldAttrs: rec {
        version = "0.8.0";
        src = oldAttrs.src.override {
          inherit version;
          hash = "sha256-/SReCEvSwiNjBoz/3tGJ9zUNBAag4mLsHlUXwm47zCw=";
        };
      });
    };
  };
in
with py.pkgs;

buildPythonPackage rec {
  pname = "irrd";
  version = "4.3.0.post1";
  format = "pyproject";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-hayfdcYAgIopfUiAR/AUWMuTzwpXvXuq6iPp9uhWN1M=";
  };

  pythonRelaxDeps = true;

  nativeBuildInputs = [
    poetry-core
    pythonRelaxDepsHook
  ];

  pythonRemoveDeps = [
    "psycopg2-binary"
  ];

  propagatedBuildInputs = [
    python-gnupg
    passlib
    bcrypt
    ipy
    ordered-set
    beautifultable
    pyyaml
    datrie
    setproctitle
    python-daemon
    pid
    redis
    hiredis
    coredis
    requests
    pytz
    ariadne
    uvicorn
    starlette
    psutil
    asgiref
    pydantic
    typing-extensions
    py-radix-sr
    psycopg2
    psycopg2cffi
    sqlalchemy
    alembic
    ujson
    wheel
    python-multipart
    imia
    starlette-wtf
    limits
    webauthn
    pyotp
    click
    zxcvbn
    wtforms-bootstrap5
    email-validator
  ] ++ uvicorn.optional-dependencies.standard;

  meta = with lib; {
    description = "An IRR database server, processing IRR objects in the RPSL format";
    license = licenses.mit;
    homepage = "https://github.com/irrdnet/irrd";
    maintainers = with maintainers; [ n0emis netali ];
  };
}

