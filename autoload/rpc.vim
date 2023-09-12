" Define autocommands to handle auto-update events
function rpc#SetAutoCmds()
    augroup rpc_events
        autocmd!
        if exists("g:rpc_auto_update") && g:rpc_auto_update
            autocmd FocusGained * lua package.loaded.rpc:handle_focus_gained()
            autocmd TextChanged * lua package.loaded.rpc:handle_text_changed()
            autocmd VimLeavePre * lua package.loaded.rpc:handle_vim_leave_pre()
            autocmd WinEnter * lua package.loaded.rpc:handle_win_enter()
            autocmd WinLeave * lua package.loaded.rpc:handle_win_leave()
            autocmd BufEnter * lua package.loaded.rpc:handle_buf_enter()
            autocmd BufAdd * lua package.loaded.rpc:handle_buf_add()
        endif
    augroup END
endfunction
