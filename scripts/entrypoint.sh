#!/bin/bash

# install steamcmd if not exists
test -e ${DST_USER_DATA_PATH}/steamcmd && echo "Steamcmd detected" \
    || ( \
    echo "Installing steamcmd" \
    && mkdir -p ${DST_USER_DATA_PATH}/steamcmd \
    && wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz -O /tmp/steamcmd.tar.gz \
    && tar -xvzf /tmp/steamcmd.tar.gz -C ${DST_USER_DATA_PATH}/steamcmd \
    && rm -rf /tmp/* \
    )

# update dst server
${DST_USER_DATA_PATH}/steamcmd/steamcmd.sh +force_install_dir "${DST_USER_DATA_PATH}/dst_server" +login anonymous +app_update 343050 validate +quit

# start dst server
cd ${DST_USER_DATA_PATH}/dst_server/bin64
${DST_USER_DATA_PATH}/dst_server/bin64/dontstarve_dedicated_server_nullrenderer_x64 -persistent_storage_root ${DST_USER_DATA_PATH}/dst_storage -console -cluster ${CLUSTER_NAME} -shard Master &
${DST_USER_DATA_PATH}/dst_server/bin64/dontstarve_dedicated_server_nullrenderer_x64 -persistent_storage_root ${DST_USER_DATA_PATH}/dst_storage -console -cluster ${CLUSTER_NAME} -shard Caves
