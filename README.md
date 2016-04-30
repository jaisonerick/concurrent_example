# Concurrent

## Getting Started

After you have cloned this repo, run this setup script to set up your machine
with the necessary dependencies to run and test this app:

    % ./bin/setup

It assumes you have a machine equipped with Ruby, Postgres, etc.

## Deploy

Provision your server using ansible. You must have a figaro settings file at
`~/.<app-name>.yml`. The foreman rake task will copy this file to the root
directory of your application. After provisioning, run:

    % cap production deploy
    % cap production deploy:restart

If you have multiple servers configured in production, the restart will be with
one server at a time, avoiding offline time.

## Puma configuration

The figaro settings is not loaded before puma, so you must setup puma variables
using the `.env` file. These environment variables are: `WEB_CONCURRENCY` and
`MAX_THREADS`.

## Get user balance:

```
curl -X "GET" "http://localhost:3000/users/1" \
  -H "Content-Type: application/json" \
  -H "Accept: application/json"
```

## Add user credit:

```
curl -X "POST" "http://localhost:3000/users/1/credits" \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -d $'{
  "credit": {
    "amount": 10
  }
}'
```
