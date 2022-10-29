# Elixir Mix Release Port

Repo exploring how to build FreeBSD ports from mix releases.

```
pkg install -y elixir-devel erlang-runtime25
```

Per `erlang-runtime25` instructions, add `/usr/local/lib/erlang25/bin` to `PATH`.

```
mix local.hex --force --if-missing
mix local.rebar --force --if-missing
```
