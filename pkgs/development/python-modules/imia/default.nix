{ lib
, buildPythonPackage
, fetchPypi
, aiosqlite
, poetry-core
, sqlalchemy
, starlette
, fastapi
}:

buildPythonPackage rec {
  pname = "imia";
  version = "0.5.3";
  format = "pyproject";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-4CzevO7xgo8Hb1JHe/eGEtq/KCrJM0hV/7SRV2wmux8=";
  };

  nativeBuildInputs = [
    poetry-core
  ];

  propagatedBuildInputs = [
    sqlalchemy
    aiosqlite
    starlette
    fastapi
  ];

  pythonImportsCheck = [
    "imia"
  ];

  meta = with lib; {
    description = "An authentication library for Starlette and FastAPI";
    homepage = "https://github.com/alex-oleshkevich/imia";
    license = licenses.mit;
    maintainers = with maintainers; [ netali ];
  };
}
