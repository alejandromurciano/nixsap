{ mkDerivation, aeson, base, blaze-html, blaze-markup, bytestring
, data-default-class, directory, docopt, fast-logger, fetchgit
, filepath, http-types, interpolatedstring-perl6, mtl, network
, postgresql-simple, resource-pool, scotty, stdenv, text, unix, wai
, wai-extra, wai-middleware-static, warp
}:
mkDerivation {
  pname = "sproxy-web";
  version = "0.4.1";
  src = fetchgit {
    url = "https://github.com/zalora/sproxy-web.git";
    sha256 = "529597548a3fbd0999acdbd3a382ed4f152043db01f275b08d4c4883b8fe5f5f";
    rev = "5d7ee61deb55359ae8ce6013dd7fe81bcdc0f9a9";
  };
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson base blaze-html blaze-markup bytestring data-default-class
    directory docopt fast-logger filepath http-types
    interpolatedstring-perl6 mtl network postgresql-simple
    resource-pool scotty text unix wai wai-extra wai-middleware-static
    warp
  ];
  description = "Web interface to sproxy database";
  license = stdenv.lib.licenses.mit;
}