" Fallback to setting up the plugin automatically
if !exists("g:rpc_has_setup")
lua << EOF
    local RPC = require("rpc"):setup()
    RPC.log:debug("Custom setup not detected, using defaults")
EOF
endif
