# mini-statsd

A docker image running [Mini-StatsD] - a simple development tool showing you
the messages your app(s) are pumping into StatsD.

## Usage

```
docker run --rm -p 8125:8125 --name=mini-statsd mini-statsd
```

Now pipe all of your StatsD messages to `localhost:8125`.

[mini_statsd]: https://github.com/IgorMarques/Mini-StatsD
