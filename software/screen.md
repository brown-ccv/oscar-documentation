# Screen

`screen` is a "terminal multiplexer", it enables a number of terminals \(or windows\) to be accessed and controlled from a single terminal. `screen` is a great way to save an interactive session between connections to oscar. You can reconnect to the session from anywhere!

### Screen commands

Common commands are:

* start a new screen session with session name: `screen -S <name>`
* list running sessions/screens: `screen -ls`
* attach to a running session: `screen -x`
* attach to session by name: `screen -r <name>`  
* detach: `Ctrl+a d`
* detach and logout \(quick exit\): `Ctrl+a D D`  
* quit: `Ctrl+a :quit`

### Reconnecting to your screen session

{% hint style="warning" %}
There are several login nodes in Oscar, and the node from where you launched `screen` matters! That is, you can only reconnect from the login node in which you launched `screen` from
{% endhint %}

In order to reconnect to a running `screen` session, you need to be connected to the same login node that you launched your `screen` session from. In order to locate and identify your `screen` sessions correctly, we recommed the following:

* **Name your screen session** using the name of the login node. For instance, start your screen with a commnd similar to

1. ```text
   screen -S experiment1-login003
   ```

* Reconfigure the location where screen saves the list of current sessions. This will allow you to query sessions across different login nodes. 

1. ```text
   mkdir ~/.screen && chmod 700 ~/.screen
   ```

   Put the following line into your  `~/.bashrc` file and reload `source ~/.bashrc`

   ```text
   export SCREENDIR=$HOME/.screen
   ```



