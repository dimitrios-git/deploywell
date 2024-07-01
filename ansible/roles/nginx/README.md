# Role Name

## Nginx

This role installs the Nginx web server on Debian- and RedHat-based systems.

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
    - name: Nginx installation
      hosts: all
      become: true

      vars:
        nginx_proxy_configs:
          - server_name: example.com
            upstreams:
              - 127.0.0.1:8080
            ssl: enabled
            ssl_email: webmaster@example.com
          - server_name: app1.example.com
            upstreams:
              - 127.0.0.1:8081
            ssl: enabled
            ssl_email: webmaster@example.com
          - server_name: app2.example.com
            upstreams:
              - 127.0.0.1:8082
            ssl: disabled

      tasks:
        - name: Include nginx role
          ansible.builtin.include_role:
            name: nginx

## License

MIT

## Author Information

Dimitrios Charalampidis

<dimitrios@charalampidis.pro> - signed with my [0xEB90A5A2D628F2A6](https://keys.openpgp.org/vks/v1/by-fingerprint/99DB5AFD449482F61D251384EB90A5A2D628F2A6)
