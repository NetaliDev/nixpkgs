{ lib
, python3
, fetchPypi
, git
, postgresql
, postgresqlTestHook
, redis
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
    pytest-asyncio
    pytest-freezegun

    redis
    postgresql
    postgresqlTestHook
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
    py.pkgs.redis
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

  preCheck = ''
    redis-server &

    while ! redis-cli --scan ; do
      echo waiting for redis
      sleep 1
    done

    export IRRD_DATABASE_URL="postgres:///$PGDATABASE"
    export IRRD_REDIS_URL="redis://localhost/1"
  '';

  # skip tests that require internet access
  pytestFlagsArray = [
    "--deselect=irrd/scripts/tests/test_irr_rpsl_submit.py::Test900Command::test_020_dash_o_noop"
    "--deselect=irrd/scripts/tests/test_irr_rpsl_submit.py::Test900Command::test_050_non_json_response"
  ];

  meta = with lib; {
    description = "An IRR database server, processing IRR objects in the RPSL format";
    license = licenses.mit;
    homepage = "https://github.com/irrdnet/irrd";
    maintainers = with maintainers; [ netali ];
  };
}

