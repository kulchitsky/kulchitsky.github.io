module Paths_kulchitsky_github_io (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/shadowknight/.cabal/bin"
libdir     = "/home/shadowknight/.cabal/lib/x86_64-linux-ghc-7.10.1/kulchitsky-github-io-0.1.0.0-BtkfIEthSGc0dbEYIRrFk9"
datadir    = "/home/shadowknight/.cabal/share/x86_64-linux-ghc-7.10.1/kulchitsky-github-io-0.1.0.0"
libexecdir = "/home/shadowknight/.cabal/libexec"
sysconfdir = "/home/shadowknight/.cabal/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "kulchitsky_github_io_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "kulchitsky_github_io_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "kulchitsky_github_io_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "kulchitsky_github_io_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "kulchitsky_github_io_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
