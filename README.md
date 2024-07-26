# Apollo User Agent Fix

A simple tweak to fix the blocked user agent in the Apollo app.

*Tested on iOS 16.6.1 with Serotonin semi-jailbreak. Make sure to enable Apollo in Bootstrap if you are using Serotonin.*

### Compilation

Running `make package` is all you need to compile the tweak. The `.deb` will be available in the `packages` folder. Make sure you have [THEOS](https://theos.dev/docs/installation-macos) installed.

Alternatively, you can grab the compiled `.deb` from the [releases](https://github.com/paradoxally/Apollo-User-Agent-Fix/releases) section. There are rootful and rootless versions.

### Installation

This tweak is **rootless** when compiled.

If you have Serotonin, you will also need RootHide Patcher (install it via Sileo). Open the rootless `.deb` with Sileo. When it prompts you to open in the patcher do so, then **uncheck** "Using Rootless Compat Layer". After converting, you can install it with Sileo.

### Credits

- [EthanArbuckle](https://github.com/EthanArbuckle/Apollo-CustomApiCredentials) for the original overload of `onqueue_resume()`.


