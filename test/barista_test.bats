#!/usr/bin/env bats

load test_helper

@test "it has a cache installed variable" {
  [ "$BARISTA_CACHE_INSTALLED" == "yes" ]
}

@test "it defers if the cache installed variable is set" {
  BARISTA_CACHE_INSTALLED="no"
  source "$ROOT/barista.sh"
  [ "$BARISTA_CACHE_INSTALLED" == "no" ]
}

@test "it has an auto update variable" {
  [ "$BARISTA_AUTO_UPDATE" == "yes" ]
}

@test "it defers if the auto update variable is set" {
  BARISTA_AUTO_UPDATE="no"
  source "$ROOT/barista.sh"
  [ "$BARISTA_AUTO_UPDATE" == "no" ]
}

@test "it has an auto cleanup variable" {
  [ "$BARISTA_AUTO_CLEANUP" == "yes" ]
}

@test "it defers if the auto cleanup variable is set" {
  BARISTA_AUTO_CLEANUP="no"
  source "$ROOT/barista.sh"
  [ "$BARISTA_AUTO_CLEANUP" == "no" ]
}

@test "it has an cache file variable" {
  [ "$BARISTA_CACHE_FILE" == "app_cache.txt" ]
}

@test "it defers if the cache file variable is set" {
  BARISTA_CACHE_FILE="test.txt"
  source "$ROOT/barista.sh"
  [ "$BARISTA_CACHE_FILE" == "test.txt" ]
}

@test "it has an cache dir variable" {
  [ "$BARISTA_CACHE_DIR" == "$LIB" ]
}

@test "it defers if the cache dir variable is set" {
  BARISTA_CACHE_DIR="$HOME"
  source "$ROOT/barista.sh"
  [ "$BARISTA_CACHE_DIR" == "$HOME" ]
}
