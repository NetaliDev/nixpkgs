{ lib
, fetchPypi
, buildPythonPackage
, async-timeout
, deprecated
, typing-extensions
, packaging
, pympler
, wrapt
, versioneer
}:

buildPythonPackage rec {
  pname = "coredis";
  version = "4.14.0";
  format = "setuptools";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-Q8RZKMqqOFibf5iIKGPzMPSuQSox+DQnnHS4CvrhXuI=";
  };

  propagatedBuildInputs = [
    async-timeout
    deprecated
    typing-extensions
    packaging
    pympler
    wrapt
    versioneer
  ] ++ versioneer.optional-dependencies.toml;

  pythonImportsCheck = [
    "coredis"
  ];

  meta = with lib; {
    homepage = "https://github.com/alisaifee/coredis";
    description = "An async redis client with support for redis server, cluster & sentinel";
    license = licenses.mit;
    maintainers = with maintainers; [ netali ];
  };
}
