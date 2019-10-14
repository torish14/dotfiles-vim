" Compatible with ranger 1.4.2 through 1.7.*
"
" Add ranger as a file chooser in vim
"
" If you add this code to the .vimrc, ranger can be started using the command
" ":RangerChooser" or the keybinding "<leader>r".  Once you select one or more
" files, press enter and ranger will quit again and vim will open the selected
" files.

function! RangeChooser()
    let temp = tempname()

    let cmd = 'silent !ranger --choosefiles=' . shellescape(temp)
    if has("gui_running")

        " let cmd = substitute(cmd, '!', '!termit -e ', '')

        " let cmd = substitute(cmd, '!', '!gnome-terminal --hide-menubar -e ', '')

        " " config like ~/.fzf/plugin/fzf.vim
        " let xterm = printf(
        "     \ '!xterm -bg "\%s" -fg "\%s" -geometry %dx%d+%d+%d -e ',
        "     \ synIDattr(hlID("Normal"), "bg"),
        "     \ synIDattr(hlID("Normal"), "fg"),
        "     \ &columns, &lines/2, getwinposx(), getwinposy()
        " \)

        " let cmd = substitute(cmd, '!', xterm, '')

        " dark xterm color scheme: http://www.futurile.net/2016/06/15/xterm-256color-themes-molokai-terminal-theme/
        " custom font: https://wiki.archlinux.org/index.php/Xterm#Fonts
        " i dont know why, but this opens xterm maximized, which is actually what I want.
        let cmd = substitute(cmd, '!', '!xterm -geometry 800x400+0+0 -e ', '')

    endif
    exec cmd
    if !filereadable(temp)
        redraw!
        " Nothing to read.
        return
    endif
    let names = readfile(temp)
    if empty(names)
        redraw!
        " Nothing to open.
        return
    endif
    " Edit the first item.
    exec 'edit ' . fnameescape(names[0])
    " Add any remaning items to the arg list/buffer list.
    for name in names[1:]
        exec 'argadd ' . fnameescape(name)
    endfor
    redraw!
endfunction
command! -bar RangerChooser call RangeChooser()
nnoremap <leader>r :<C-U>RangerChooser<CR>
