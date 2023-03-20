#!/bin/sh

clientui_path="/usr/lib/lua/luci/model/cbi/openclash/client.lua"

patching1 () {
    sed -i "101s|^|-- |" ${clientui_path}
    sed -i "131s|^|-- |" ${clientui_path}
    sed -i "132s|^|-- |" ${clientui_path}
    sed -i "133s|^|-- |" ${clientui_path}
    sed -i "134s|^|-- |" ${clientui_path}
    sed -i "135s|^|-- |" ${clientui_path}
}

patching2 () {
    sed -i "137s|^|-- |" ${clientui_path}
    sed -i "138s|^|-- |" ${clientui_path}
    sed -i "139s|^|-- |" ${clientui_path}
    sed -i "140s|^|-- |" ${clientui_path}
}

patch_done () {
    echo "patching done..."
}

patching1
patching2
patch_done

exit 0
