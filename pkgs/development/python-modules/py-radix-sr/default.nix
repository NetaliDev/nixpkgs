{ lib
, buildPythonPackage
, fetchPypi
, coverage
, nose
}:

buildPythonPackage rec {
  pname = "py-radix-sr";
  version = "1.0.0.post1";
  format = "setuptools";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-4MD5IjgIVrvfeFxwH2dmHxtcXLZ3kwhTLOPCemIEzX0=";
  };

  pythonImportsCheck = [
    "radix"
  ];

  nativeCheckInputs = [ coverage nose ];

  meta = with lib; {
    description = "Python radix tree for IPv4 and IPv6 prefix matching";
    homepage = "https://github.com/SEKOIA-IO/py-radix";
    license = with licenses; [ isc bsdOriginal ];
    maintainers = with maintainers; [ netali ];
  };
}
