LIB="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ -z "$BARISTA_CACHE_INSTALLED" ]; then
  BARISTA_CACHE_INSTALLED="yes"
fi

if [ -z "$BARISTA_AUTO_UPDATE" ]; then
  BARISTA_AUTO_UPDATE="yes"
fi

if [ -z "$BARISTA_AUTO_CLEANUP" ]; then
  BARISTA_AUTO_CLEANUP="yes"
fi

if [ -z "$BARISTA_CACHE_FILE" ]; then
  BARISTA_CACHE_FILE="brewed_apps.txt"
fi

if [ -z "$BARISTA_CACHE_DIR" ]; then
  BARISTA_CACHE_DIR="$LIB"
fi

function __cache_installed_apps {
  brew list | while read app; do echo "$app"; done > "$BARISTA_CACHE_DIR/$BARISTA_CACHE_FILE"
}

function _brew {
  __brew=`which brew`
  $__brew "$@"
}

function brew {
  if [ "$1" == "install" ] || [ "$1" == "upgrade" ]; then
      if [ "$BARISTA_AUTO_UPDATE" == "yes" ]; then
        _brew update
      fi

      _brew "$@"

      if [ "$BARISTA_AUTO_CLEANUP" == "yes" ]; then
        _brew cleanup
      fi

      if [ "$BARISTA_CACHE_INSTALLED" == "yes" ]; then
        __cache_installed_apps
      fi
  else
    _brew "$@"

    if [ "$1" == "uninstall" ]; then
      __cache_installed_apps
    fi
  fi
}
