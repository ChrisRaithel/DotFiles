nnoremap <leader>c :w<cr> :!clear & rubber --warn all --inplace --pdf "%:p"<cr> :!rubber --clean "%"<cr>
nnoremap <leader>v :silent !mupdf "%:p:r.pdf" &<cr>
