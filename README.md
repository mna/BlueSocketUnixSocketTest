# Test For Unix Socket Issue

This is a test Xcode project for [the BlueSocket Unix Socket issue on Mac]().

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

Open the project in Xcode, run it and enter the Unix path in the textbox. Click the `connect` button. It should crash.

