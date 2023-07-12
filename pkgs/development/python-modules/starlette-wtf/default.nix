{ lib
, buildPythonPackage
, fetchPypi
, itsdangerous
, python-multipart
, starlette
, wtforms
}:

buildPythonPackage rec {
  pname = "starlette-wtf";
  version = "0.4.3";
  format = "setuptools";

  src = fetchPypi {
    pname = "Starlette-WTF";
    inherit version;
    hash = "sha256-SwHWcPZREvE9GapFjMmTL5Txes4Uqq4bbwgiT0qrLYY=";
  };

  pythonImportsCheck = [
    "starlette_wtf"
  ];

  propagatedBuildInputs = [
    itsdangerous
    python-multipart
    starlette
    wtforms
  ];

  meta = with lib; {
    description = "A simple tool for integrating Starlette and WTForms";
    homepage = "https://github.com/muicss/starlette-wtf";
    license = licenses.mit;
    maintainers = with maintainers; [ netali ];
  };
}
