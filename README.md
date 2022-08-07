# Don't Starve Together Server in Docker

## Description
This is a Don't Starve Together(dst) Server runs in Docker.

`Dockerfile` creates the env and install the dependencies for steamcmd and the game.

`scripts/entrypoint.sh` install the steamcmd and update the game, and run the dst server with master shard and cave shard.

## Usage:
- Before build the docker file, make sure the scripts has execute permission:
  ```
  chmod 774 scripts/entrypoint.sh
  ```
- Build docker file:
  ```
  docker build . -t dst_server
  ```

- Create data folder:
  ```
  mkdir -p data/dst_storage
  ```

- Run docker compose once, this should create all the file structures: for `data/dst_storage`:
  ```
  docker compose up
  ```

- Put the game cluster configs into `data/dst_storage/DoNotStarveTogether/`. The configs can be downloaded from [Don't Starve's official site](https://accounts.klei.com/account/game/servers?game=DontStarveTogether). Default cluster name is `MyDediServer`. The folder structure should looked like this:
  ```
  data
  |- dst_storage
      |- DoNotStarveTogether
          |- MyDediServer               // or your cluster name
              |- Caves
                  |- ...                // caves settings and saves
              |- Master
                  |- ...                // master settings and saves
              |- cluster_token.txt      // token from Klei
              |- cluster.ini            // cluster setting
  ```

- Run `docker compose up` again, and this time the game should be up and ready for play.

## Reference
- [Don't Starve Together Dedicated Server Docker Image](https://github.com/Jamesits/docker-dst-server)
- [Dedicated Server Quick Setup Guide - Linux](https://forums.kleientertainment.com/forums/topic/64441-dedicated-server-quick-setup-guide-linux/)
- [How to setup dedicated server with cave on Linux](https://steamcommunity.com/sharedfiles/filedetails/?id=590565473)

