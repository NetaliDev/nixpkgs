{ lib
, fetchPypi
, buildPythonPackage
, aiohttp
, requests
, websockets
}:

buildPythonPackage rec {
  pname = "python-graphql-client";
  version = "0.4.3";
  format = "setuptools";

  src = fetchPypi {
    pname = "python_graphql_client";
    inherit version;
    hash = "sha256-/b0DEV3eh3bbAuYEFLg7AY19leV1LW1fq/IcmSZfW50=";
  };

  propagatedBuildInputs = [
    aiohttp
    requests
    websockets
  ];

  pythonImportsCheck = [
    "python_graphql_client"
  ];

  meta = with lib; {
    homepage = "https://github.com/prodigyeducation/python-graphql-client";
    description = "Simple package for making requests to a graphql server";
    license = licenses.mit;
    maintainers = with maintainers; [ netali ];
  };
}
