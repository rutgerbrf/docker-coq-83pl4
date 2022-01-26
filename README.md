# Coq(IDE) 8.3pl4 in Docker (on Debian Wheezy)

Even though virtual machines have been made available by the university, this should provide a more seamless experience for Linux users.
I have personally tested this on Arch Linux, using GNOME 41.3 with Wayland.

You should be at least a bit familiar with Docker before you use this. I can really make no guarantees about how well this works, more extensive testing would be required for that.

## Running

To run CoqIDE: `./run.sh`

To run any other command: `./run.sh <command> [args]`

Because this container is based on Debian 7 Wheezy, some basic utilities like bash are also available.

