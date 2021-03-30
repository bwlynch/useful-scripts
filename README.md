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

Syntax: `./install_node.sh *version_of_node*` installs the specified version of node. The version should be without the letter v, so for example `10.15.3` as opposed to `v10.15.3`

### import_mysql_db.sh
Usage: Sets up a database within mysql and imports a .sql database dump, and sets up a new user with access to it.

Syntax: `./import_mysql_db.sh new_db_username new_db_password new_database database_dump.sql` imports a file named database_dump.sql into a mysql database called new_database, and gives access to a new user it creates named new_db_username with password new_db_password. The script assumes that there is a root user that can log in with no password (if this is not the case, add -p after root and then enter the password when prompted).

### reimage_script.sh
Usage: Running this script will reinstall many commonly used packages and applications on a fresh ubuntu box.

Syntax: Running the script automatically installs all of the packages.
