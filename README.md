# Test For Unix Socket Issue

This is a test Xcode project for [the BlueSocket Unix Socket issue on Mac](https://github.com/IBM-Swift/BlueSocket/issues/68).

## Setup

Fetch and build the BlueSocket dependency using carthage:

```
$ carthage update --platform mac
```

Start something that listens on a Unix Socket, e.g. Redis:

```
$ redis-server --port 6379 --unixsocket /tmp/redis.socket --unixsocketperm 700
```

Verify that it correctly accepts connections:

```
$ redis-cli -s /tmp/redis.socket
```

Open the project in Xcode, run it and enter the Unix path in the textbox. Click the `connect` button. It should crash with `EXC_BAD_ACCESS`.

