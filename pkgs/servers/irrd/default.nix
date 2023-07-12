{ lib
, python3
, fetchPypi
, git
}:

let
  py = python3.override {
    packageOverrides = self: super: {
      sqlalchemy = super.sqlalchemy.overridePythonAttrs (oldAttrs: rec {
        version = "1.3.24";
        src = fetchPypi {
          inherit (oldAttrs) pname;
          inherit version;
          hash = "sha256-67t3fL+TEjWbiXv4G6ANrg9ctp+6KhgmXcwYpvXvdRk=";
        };
        doCheck = false;
      });
      starlette = super.starlette.overridePythonAttrs (oldAttrs: rec {
        version = "0.20.4";
        src = fetchPypi {
          inherit (oldAttrs) pname;
          inherit version;
          hash = "sha256-QvzzEi+Zj+/OPixa1+Xtvw8Cz2hdZGqDoI1ARyavUIQ=";
        };
        buildInputs = with python3.pkgs; [
          setuptools
        ];
        doCheck = false;
      });
      ariadne = super.ariadne.overridePythonAttrs (oldAttrs: rec {
        version = "0.17.1";
        src = fetchPypi {
          inherit (oldAttrs) pname;
          inherit version;
          hash = "sha256-B98wl/NkNOyq99AKsVQem9TZ0meOnvg7IdWIEAI2vy8=";
        };
        buildInputs = with python3.pkgs; [
          setuptools
        ];
        doCheck = false;
      });
      alembic = super.alembic.overridePythonAttrs (lib.const {
        doCheck = false;
      });
      beautifultable = super.beautifultable.overridePythonAttrs (oldAttrs: rec {
        version = "0.8.0";
        src = fetchPypi {
          inherit (oldAttrs) pname;
          inherit version;
          hash = "sha256-1E2VUbvte/qIZ1Mk+E77mqhXOE1E6fsh61MPCgutuBU=";
        };
        doCheck = false;
      });
    };
  };
in
with py.pkgs;

buildPythonPackage rec {
  pname = "irrd";
  version = "4.3.0.post1";
  format = "setuptools";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-hayfdcYAgIopfUiAR/AUWMuTzwpXvXuq6iPp9uhWN1M=";
  };

  pythonRelaxDeps = true;

  nativeBuildInputs = [
    pythonRelaxDepsHook
  ];

  pythonRemoveDeps = [
    "psycopg2-binary"
  ];

  postPatch = ''
    sed -i 's/==/>=/' setup.py
    sed -i '/^.*psycopg2-binary.*$/d' setup.py
  '';

  nativeCheckInputs = [
    pytestCheckHook
    git
    pytest
    pytest-cov
    pytest-env
    coverage
    twisted
    python-graphql-client
    pytest-asyncio
    freezegun
    pytest-freezegun
    sqlalchemy
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
    sqlalchemy
    alembic
    ujson
    wheel
    websockets
  ] ++ uvicorn.optional-dependencies.standard;

  meta = with lib; {
    description = "An IRR database server, processing IRR objects in the RPSL format";
    license = licenses.mit;
    homepage = "https://github.com/irrdnet/irrd";
    maintainers = with maintainers; [ netali ];
  };
}

