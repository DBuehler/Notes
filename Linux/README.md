# Linux

* [CIFS](CIFS/README.md)
* [GitOnBuehlernas](GitOnBuehlernas/README.md)
* [SparseExt4File](SparseExt4File/README.md)
* [LXDE](LXDE/README.md)
* [LXQT](LXQT/README.md)

## SSH

### Process as of 2026-11

* `ssh-keygen -t ed25519`
* `ssh-copy-id user@destination` - assuming you want the default ssh identity for the current host

### Old ssh notes

[SSH Academy - Keygen](https://www.ssh.com/academy/ssh/keygen)
* `ssh-keygen -t ecdsa -b 521` - note 521 is not a type-o!
* `ssh-copy-id -i ~/.ssh/<key name> user@destination_host`
