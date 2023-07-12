{ lib
, buildPythonPackage
, wtforms
, poetry-core
, fetchPypi
}:

buildPythonPackage rec {
  pname = "wtforms-bootstrap5";
  version = "0.2.3";
  format = "pyproject";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-nF60VAvR4PItt5ToNteDJCiLz/SjQWGncPNoNjQrELo=";
  };

  nativeBuildInputs = [
    poetry-core
  ];

  propagatedBuildInputs = [
    wtforms
  ];

  pythonImportsCheck = [
    "wtforms_bootstrap5"
  ];

  meta = with lib; {
    description = "Simple library for rendering WTForms in HTML as Bootstrap 5 form controls";
    homepage = "https://github.com/LaunchPlatform/wtforms-bootstrap5";
    license = licenses.mit;
    maintainers = with maintainers; [ netali ];
  };
}
