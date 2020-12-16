# Development Repository

This is a temporary repository for development purposes. `package.zip` is an index file generated and used by [The Things Stack](https://github.com/TheThingsNetwork/lorawan-stack) using the [LoRaWAN Devices Repository](https://github.com/TheThingsNetwork/lorawan-devices).

The index file contains device defitions, as well as index files that are used by TTS to provide indexing and searching functionality.

## Updating the package file

The package file should be updated to reflect new changes from the Device Repository. Eventually, this will be a CI action, but for now:

```bash
$ ./generate.sh
$ git add package.zip && git commit -m 'Updated package.zip' && git push
```

