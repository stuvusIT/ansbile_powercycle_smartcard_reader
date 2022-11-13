# Powercycle Smartcard Reader

Ansible role to setup a script to powercycle our smartcard reader.

## Requirements

- `pcscd` managing the reader

## Role Variables

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role.
Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Don't forget to indent the markdown table so it is readable even if not rendered.

| Name                                               |        Required/Default         | Description                                                                                                                          |
| -------------------------------------------------- | :-----------------------------: | ------------------------------------------------------------------------------------------------------------------------------------ |
| `powercycle_smartcard_reader_hubpower_github_repo` |       `grandrew/hubpower`       | The github repo from which to get the hubpower source code.                                                                          |
| `powercycle_smartcard_reader_hubpower_revision`    |       See `default.yaml`        | The revision of the repo from which to get the hubpower source code.                                                                 |
| `powercycle_smartcard_reader_hubpower_checksum`    |       See `default.yaml`        | The checksum of the hubpower source archiv.                                                                                          |
| `powercycle_smartcard_reader_hubpower_archive_url` |    :heavy_multiplication_x:     | Overwrite the url for the source archive of hubpower. If this is used `powercycle_smartcard_reader_hubpower_github_repo` is ignored. |
| `powercycle_smartcard_reader_log_message_pattern`  | `pcscd.*Error communicating to` | The regex to match log messages with to detect when a restart is required. ,                                                         |
| `powercycle_smartcard_reader_busnum`               |               `1`               | The bus number of the reader on the USB.                                                                                             |
| `powercycle_smartcard_reader_devnum`               |               `2`               | The device number of the reader on the USB.                                                                                          |
| `powercycle_smartcard_reader_portnum`              |               `4`               | The port number of the reader on the USB.                                                                                            |

## Example

The following example assumes, this role was cloned into `roles/powercycle_smartcard_reader`:

```yml
- hosts: doorPi
  roles:
    - role: powercycle_smartcard_reader
  powercycle_smartcard_reader_portnum: 5
```

## License

This work is licensed under the [MIT License](./LICENSE).

## Author Information

- [Tim Neumann (neumantm)](https://github.com/neumantm) _tim.neumann at stuvus.uni-stuttgart.de_
