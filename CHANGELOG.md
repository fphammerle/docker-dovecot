# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.3.0] - 2021-12-04
### Added
- pop3 daemon

## [1.2.0] - 2020-03-12
### Added
- socat for [sieve_extprograms](https://wiki2.dovecot.org/Pigeonhole/Sieve/Plugins/Extprograms)
  (actions / filters may now run in separate container)

## [1.1.0] - 2020-03-05
### Added
- pigeonhole: sieve & managesieve plugin for dovecot

## [1.0.0] - 2020-02-26
### Added
- dovecot lmtp server
  ( https://doc.dovecot.org/configuration_manual/protocols/lmtp_server/ )

### Changed
- upgrade base image: alpine v3.10 -> v3.11

### Fixed
- pin dovecot package version
  ( https://github.com/hadolint/hadolint/wiki/DL3018 )
- remove pre-generated TLS key/cert pair

## [0.1.1] - 2019-08-25
- mount dir `/etc/ssl/dovecot` providing SSL key & cert

## [0.1.0] - 2019-08-19
### Added
- minimal dovecot on alpine 3.10

[Unreleased]: https://github.com/fphammerle/docker-dovecot/compare/v1.3.0...HEAD
[1.3.0]: https://github.com/fphammerle/docker-dovecot/compare/v1.2.0...v1.3.0
[1.2.0]: https://github.com/fphammerle/docker-dovecot/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/fphammerle/docker-dovecot/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/fphammerle/docker-dovecot/compare/0.1.0...v1.0.0
[0.1.1]: https://github.com/fphammerle/docker-dovecot/compare/0.1.0...0.1.1
[0.1.0]: https://github.com/fphammerle/docker-dovecot/tree/0.1.0
