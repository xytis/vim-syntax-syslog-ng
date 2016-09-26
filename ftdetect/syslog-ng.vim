fun! s:DetectSyslogNG()
    if getline(1) =~# '^@version'
        set filetype=syslog-ng
    endif
endfun

autocmd BufNewFile,BufRead *.conf call s:DetectSyslogNG()
