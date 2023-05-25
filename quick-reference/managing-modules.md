# Managing Modules

### `module list`

Lists all modules that are **currently loaded** in your software environment.

### `module avail`

Lists all **available** modules on the system. Note that a module can have multiple versions. Use `module avail <name>` to list available modules which start with \<name>

### `module help <name>`

Prints additional information about the given software.&#x20;

### `module load <name>`

Adds a module to your current environment. If you load using just the name of a module, you will get the default version. To load a specific version, load the module using its full name with the version: "`module load gcc/10.2`"

### `module unload <name>`

Removes a module from your current environment.

