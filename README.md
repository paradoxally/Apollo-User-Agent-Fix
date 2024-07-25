# Apollo User Agent Fix

A simple tweak to fix the blocked user agent in the Apollo app.

*Tested on iOS 16.6.1 with Serotonin semi-jailbreak. Make sure to enable Apollo in Bootstrap if you are using Serotonin.*

### Compilation

Running `make package` is all you need to compile the tweak. The `.deb` will be available in the `packages` folder. Make sure you have [THEOS](https://theos.dev/docs/installation-macos) installed.

Alternatively, you can grab the compiled `.deb` from the [releases](https://github.com/paradoxally/Apollo-User-Agent-Fix/releases) section.

### Installation

This tweak is **rootful** when compiled. You need to install [Derootifier](https://github.com/haxi0/Derootifier) if you have a rootless JB. Make sure you install its dependencies. 

After that, convert the tweak to rootless and the converted `.deb` will be available in `/var/mobile/.Derootifier` folder.

If you have Serotonin, you will also need RootHide Patcher (install it via Sileo). Open the derootified `.deb` with Sileo. When it prompts you to open in the patcher do so, then **uncheck** "Using Rootless Compat Layer". After converting, you can install it with Sileo.

### Credits

- [EthanArbuckle](https://github.com/EthanArbuckle/Apollo-CustomApiCredentials) for the original overload of `onqueue_resume()`.


