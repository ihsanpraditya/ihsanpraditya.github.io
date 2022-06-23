---
layout: post
title: "Konfigurasi VIM"
tagline: none
---

# Konfigurasi VIM

untuk aplikasi [Neovim/Nvim](https://neovim.io/), bisa juga untuk [Vim](https://www.vim.org/).  

Kebanyakan saya menggunakan bahasa Indonesia sebagai petunjuk dalam bentuk komentar.  

Salah satu tampilannya:

```
" NUMBER
set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

" COLORSCHEME
set tgc " agar warna base15 nya nyala
set background=dark
colo desert
" light color: zellner, peachpuff, shine(dont use),morning, delek, PaperColor

" TRANSPARENT
" hi Normal ctermbg=NONE guibg=NONE
" hi NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

map <esc> :noh <CR>
sy on
set synmaxcol=120
" set nowrap
set noshowmode
set noswapfile  
set shiftwidth=4  
```

Lebih lanjut silakan lihat [disini](https://github.com/ihsanpraditya/ihsanpraditya.github.io/tree/main/files/init.vim).

Saya tidak menjelaskan panjang lebar dengan komentar di dalam init.vim, karena saya ingin membuat videonya di [channel YouTube](https://m.youtube.com/channel/UCy6dWhcb_pWIUvuSjs6bxWw). Silakan jika ingin bertanya bisa melalu [Telegram](https://t.me/ihsan_praditya).  

Lebih lanjut silakan tonton video berikut dari [Indonesia Belajar](https://youtube.com/IndonesiaBelajarKomputer),  
[![Konfigurasi VIMRC](https://raw.githubusercontent.com/ihsanpraditya/ihsanpraditya.github.io/master/images/vimrc-indonesia-belajar.jpeg)](https://m.youtube.com/watch?v=FLslTw9c8ik)  

Video lainnya dari [Indonesia Belajar](https://youtube.com/IndonesiaBelajarKomputer) mengenai VIM, [disini](https://m.youtube.com/playlist?list=PL2O3HdJI4voE_mHibdvrDqNj_vZaKCZGC).  

<pre>

















</pre>
