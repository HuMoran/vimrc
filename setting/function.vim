" Set minibufexpl colors
function! SetMBPColors()
    " MiniBufExpl Colors
    hi MBEVisibleActive guifg=#A6DB29 guibg=fg
    hi MBEVisibleChangedActive guifg=#F1266F guibg=fg
    hi MBEVisibleChanged guifg=#F1266F guibg=fg
    hi MBEVisibleNormal guifg=#5DC2D6 guibg=fg
    hi MBEChanged guifg=#CD5907 guibg=fg
    hi MBENormal guifg=#ffffff guibg=fg
endfunction

" Close all buffers
function! CloseAllBufs()
    execute "Bonly"
    execute "Bclose"
endfunction

" Switch buffer
function! BufferSwitch(to)
  if !CanBufferSwitch(bufnr('%'))
    if a:to == 'next'
      bn
    else
      bp
    endif
  else
    echo "Can't switch this buffer."
  endif
endfunction

function! CanBufferSwitch(buf)
  " Skip unlisted buffers.
  if buflisted(a:buf) == 0
    return 1
  endif

  " Skip non normal buffers.
  if getbufvar(a:buf, "&buftype") != ''
    return 1
  endif

  " Only show modifiable buffers.
  if getbufvar(a:buf, '&modifiable') != 1
    return 1
  endif

  return 0
endfunction

