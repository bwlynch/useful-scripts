#Assorted very basic useful scripts


A centralized repository of some useful scripts.

### add_user.sh
  Syntax: `add_user.sh *name_of_user*` creates a user on a server with ability to become root. The user's key must then still be copied into `*name_of_user*/.ssh/authorized_keys`

### install_node.sh
  Syntax: `install_node.sh *version.of.node*` installs the specified version of node. The version should be without the letter v, so `10.15.3` as opposed to `v10.15.3`

### reimage_script.sh
  Running this script will reinstall many commonly used packages and applications on a fresh ubuntu box.
