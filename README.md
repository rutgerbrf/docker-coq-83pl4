# Coq(IDE) 8.3pl4 in Docker (on Debian Wheezy)

Even though virtual machines have been made available by the university, this should provide a more seamless experience for Linux users.
I have personally tested this on Arch Linux, using GNOME 41.3 with Wayland.

You should be at least a bit familiar with Docker before you use this. I can really make no guarantees about how well this works, more extensive testing would be required for that.

## Requirements

1. Bash
2. Docker
3. The `xauth` utility

   Known as:
	 - `xorg-xauth` on Arch Linux
	 - `xauth` on Ubuntu and Debian
	 - `xorg-x11-xauth` on Fedora

	 For more distributions, please take a look at xauth on [Repology](https://repology.org/project/xauth/versions)

## Running

To run CoqIDE: `./run.sh`

To run any other command: `./run.sh <command> [args]`

Because this container is based on Debian 7 Wheezy, some basic utilities like Bash are also available.

