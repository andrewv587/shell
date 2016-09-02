"打开对文件类型插件的支持
filetype plugin on
filetype plugin indent on
"窗口最大化设置（如果不想打开vim后就自动最大化，把这行删去）
au GUIEnter * simalt ~x
"字符设置，和中文显示有关
set ambiwidth=double 
set fileencoding=gb18030
set fileencodings=utf-8,gb18030,utf-16,big5
"设置无备份文件
"set writebackup
"set nobackup
"显示行号
set nu!
"配置主题，默认安装不包括graywh主题，大家可以使用desert主题
colorscheme desert
"语法高亮
syntax enable
syntax on
"缩进线设置，这里你可以把“|”改为你喜欢的缩进线符号，推荐使用“:”或者“.”。这里要注意的是，缩进线只有对Tab缩进有效，而空格缩进无效
"set list
"set listchars=tab:\|\
"配置字体，Consolas是我使用的字体名，你可以替换自己喜欢的字体，XP中不包含Consolas字体。h10表示字体大小，按自己喜好调整
set guifont=Consolas:h12:cANSI
set encoding=utf8
"设定文件浏览器目录为当前目录
set autochdir
"设置不自动换行
set nowrap
"显示下方的横向滚动条
set guioptions+=b
"设置制表符宽度，默认为8
set tabstop=4
set cindent shiftwidth=4
set autoindent shiftwidth=4
"类windows的快捷操作
"source $VIMRUNTIME/mswin.vim
"behave mswin
source $VIMRUNTIME/macros/matchit.vim
autocmd BufEnter *.m    compiler mlint

"fortran
let s:extfname = expand("%:e")
 if s:extfname ==? "f90"
     let fortran_free_source=1
     unlet! fortran_fixed_source
 else
     let fortran_fixed_source=1
    unlet! fortran_free_source
endif
"let fortran_more_precise=1
"let fortran_do_enddo=1
"去掉固定格式每行开头的红色填充
"let fortran_have_tabs=1
"允许折叠
let fortran_fold=1
let fortran_fold_conditionals=1
"折叠方式
 set foldmethod=syntax
 "新加入的东西
 :inoremap ( ()<ESC>i
 :inoremap ) <c-r>=ClosePair(')')<CR>
 :inoremap { {}<ESC>i
 :inoremap } <c-r>=ClosePair('}')<CR>
 :inoremap [ []<ESC>i
 :inoremap ] <c-r>=ClosePair(']')<CR>
 :inoremap < <><ESC>i
 :inoremap > <c-r>=ClosePair('>')<CR>

 function ClosePair(char)
	   if getline('.')[col('.') - 1] == a:char
			 return "\<Right>"
	   else
			 return a:char
	   endif
 endf
