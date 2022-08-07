# Don't Starve Together Server in Docker

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

- Put the game cluster configs into `data/dst_storage/DoNotStarveTogether/`. The configs can be downloaded from [Don't Starve's official site](https://accounts.klei.com/account/game/servers?game=DontStarveTogether).

- Run `docker compose up` again, and this time the game should be up and ready for play.

## Reference
- [Don't Starve Together Dedicated Server Docker Image](https://github.com/Jamesits/docker-dst-server)
- [Dedicated Server Quick Setup Guide - Linux](https://forums.kleientertainment.com/forums/topic/64441-dedicated-server-quick-setup-guide-linux/)
- [How to setup dedicated server with cave on Linux](https://steamcommunity.com/sharedfiles/filedetails/?id=590565473)

