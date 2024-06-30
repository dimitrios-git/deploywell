# Role Name

## Docker

This role installs Docker on Debian- and RedHat-based systems. Additionally, it configures Docker to use the journald logging driver.

### Tested on

- Debian 12
- Ubuntu 24.04 LTS, 22.04 LTS, 20.04 LTS
- Fedora 40
- CentOS Stream 9
- Rocky Linux 9
- AlmaLinux 9

## Requirements

None.

## Role Variables

None.

## Dependencies

None.

## Example Playbook

Change `all` to your target host, or use `--limit=<your-target-host>`:

    ---
    - name: Set up Docker
      hosts: all
      become: true
      roles:
        - docker

## License

MIT

## Author Information

Dimitrios Charalampidis

<dimitrios@charalampidis.pro> - signed with my [0xEB90A5A2D628F2A6](https://keys.openpgp.org/vks/v1/by-fingerprint/99DB5AFD449482F61D251384EB90A5A2D628F2A6)
