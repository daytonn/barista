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
