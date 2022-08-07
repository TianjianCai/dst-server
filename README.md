# Don't Starve Together Server in Docker

## Usage:

- Build docker file:
  ```
  docker build . -t dst_server
  ```

- Create data folder:
  ```
  mkdir -p data/dst_storage
  ```

- Put the game cluster configs into `data/dst_storage/DoNotStarveTogether/`. The configs can be downloaded from [Don't Starve's official site](https://accounts.klei.com/account/game/servers?game=DontStarveTogether).

- Run docker compose:
  ```
  docker compose up
  ```

## Reference
- [Don't Starve Together Dedicated Server Docker Image](https://github.com/Jamesits/docker-dst-server)
- [Dedicated Server Quick Setup Guide - Linux](https://forums.kleientertainment.com/forums/topic/64441-dedicated-server-quick-setup-guide-linux/)
- [How to setup dedicated server with cave on Linux](https://steamcommunity.com/sharedfiles/filedetails/?id=590565473)

