# Assorted very basic useful scripts


A centralized repository of some useful scripts that automate several routine tasks.

### add_user.sh
Usage: Adds a user to a basic ubuntu server.

Syntax: `./add_user.sh *name_of_user*` creates a user on a server with the ability to become root with no password require. The user's key must then still be copied into `*name_of_user*/.ssh/authorized_keys` for the user to be able to ssh into the box.

### installdocker.sh
Usage: Installs docker based on the [install method from docker.com](https://docs.docker.com/engine/install/ubuntu/).

Syntax: Simply running the script will install docker automatically.

### install_node.sh
Usage: Install a specific version of node. For managing multiple versions of node, nvm is a better option, but this script is useful for quickly installing one specifc version without having to go through setting up nvm.

Syntax: `./install_node.sh *version.of.node*` installs the specified version of node. The version should be without the letter v, so for example `10.15.3` as opposed to `v10.15.3`

### reimage_script.sh
Usage: Running this script will reinstall many commonly used packages and applications on a fresh ubuntu box.

Syntax: Running the script automatically installs all of the packages.
