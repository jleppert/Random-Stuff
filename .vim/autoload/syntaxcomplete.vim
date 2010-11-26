" Vim completion script
" Language:    All languages, uses existing syntax highlighting rules
" Maintainer:  David Fishburn <fishburn@ianywhere.com>
" Last Change: Sat Jan 07 2006 10:25:02 PM

" Set completion with CTRL-X CTRL-O to autoloaded function.
if exists('&ofu')
    setlocal ofu=syntaxcomplete#Complete
endif

if exists('g:loaded_syntax_completion')
    finish
endif
let g:loaded_syntax_completion = 1

" This script will build a completion list based on the syntax
" elements defined by the files in $VIMRUNTIME/syntax.

let s:synend_words = 'match,matchgroup=,contains,'.
            \ 'links to,start=,end=,nextgroup='

" This function is used for the 'omnifunc' option.
function! syntaxcomplete#Complete(findstart, base)

    if a:findstart
        " Locate the start of the item, including "."
        let line = getline('.')
        let start = col('.') - 1
        let lastword = -1
        while start > 0
            if line[start - 1] =~ '\w'
                let start -= 1
            elseif line[start - 1] =~ '\.'
                " The user must be specifying a column name
                if lastword == -1
                    let lastword = start
                endif
                let start -= 1
                let b:sql_compl_type = 'column'
            else
                break
            endif
        endwhile

        " Return the column of the last word, which is going to be changed.
        " Remember the text that comes before it in s:prepended.
        if lastword == -1
            let s:prepended = ''
            return start
        endif
        let s:prepended = strpart(line, start, lastword - start)
        return lastword
    endif

    let base = s:prepended . a:base

    let compl_list = s:SyntaxList()

    " Return list of matches.

    if base =~ '\w'
        let compstr = join(compl_list, ' ')
        let compstr = substitute(compstr, '\<\%('.base.'\)\@!\w\+\s*', '', 'g')
        let compl_list = split(compstr, '\s\+')
    endif

    return compl_list
endfunc

function! s:SyntaxList()
    let saveL = @l

    " Loop through all the syntax groupnames, and build a
    " syntax file which contains these names.  This can
    " work generically for any filetype that does not already
    " have a plugin defined.
    " This ASSUMES the syntax groupname BEGINS with the name
    " of the filetype.  From my casual viewing of the vim63\sytax
    " directory.
    redir @l
    silent! exec 'syntax list '
    redir END

    let syntax_groups = @l
    let @l = saveL

    if syntax_groups =~ 'E28'
                \ || syntax_groups =~ 'E411'
                \ || syntax_groups =~ 'E415'
                \ || syntax_groups =~ 'No sytax items'
        return -1
    endif

    " Abort names - match, links to, matchgroup=, start=, contains=, contained,
    "               cluster=, nextgroup=, end=
    let next_group_regex = '\n' .
                \ '\zs'.&filetype.'\w\+\ze'.
                \ '\s\+xxx\s\+'.
                \ '\<\('.
                \ substitute(s:synend_words, ',', '\\|', 'g').
                \ '\)\@!'
    let syn_list = ''
    let index    = 0
    let index    = match(syntax_groups, next_group_regex, index)


    while index > 0
        let group_name = matchstr( syntax_groups, '\w\+', index )

        let extra_syn_list = s:SyntaxGroupItems(group_name)

        let syn_list = syn_list . extra_syn_list . "\n"

        let index = index + strlen(group_name)
        let index = match(syntax_groups, next_group_regex, index)
    endwhile

    return sort(split(syn_list))
endfunction

function! s:SyntaxGroupItems( group_name, ... )

    let icon_id = ''

    if a:0 > 0
        let icon_id = a:1
    endif

    let saveL = @l

    " Generate (based on the syntax highlight rules) a list of
    " the Statements, functions, keywords and so on available
    " If this needs updating, the syntax\sql.vim file should be
    " updated
    redir @l
    silent! exec 'syntax list ' . a:group_name
    redir END

    if @l !~ 'E28'
        let syn_list = substitute( @l, '^.*xxx\s*', "", '' )
                    " \ (icon_id!=''?(icon_id):'18').":", '' )
        let syn_list = substitute( syn_list, '\<\('.
                    \ substitute(s:synend_words, ',', '\\|', 'g').
                    \ '\).*$'
                    \ , "\n", '' )
        let syn_list = substitute( syn_list, "[\n]", ' ', 'g' )
        let syn_list = substitute( syn_list, '\s*\_$', '', '' )
        let syn_list = substitute( syn_list, '\<contained\>', '', 'g' )
        let syn_list = substitute( syn_list, '\s\+', "\n", 'g' )
    else
        let syn_list = ''
    endif

    let @l = saveL

    return syn_list
endfunction

