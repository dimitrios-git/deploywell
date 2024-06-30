# Role Name

## Firewall

This role installs and configures UFW on Debian-based systems and firewalld on RedHat-based systems.

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

In this example, we allow SSH, HTTP, and HTTPS traffic.
Change `all` to your target host, or use `--limit=<your-target-host>`:

    ---
    - name: Set up firewall
      hosts: all
      become: true
      roles:
        - role: firewall
          vars:
            firewall_allowed_port:
              - 22
              - 80
              - 443

## License

MIT

## Author Information

Dimitrios Charalampidis

<dimitrios@charalampidis.pro> - signed with my [0xEB90A5A2D628F2A6](https://keys.openpgp.org/vks/v1/by-fingerprint/99DB5AFD449482F61D251384EB90A5A2D628F2A6)
