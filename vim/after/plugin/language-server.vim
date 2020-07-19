let g:LanguageClient_autoStart = 1
let g:LanguageClient_diagnosticsList = 'Location'
let g:LanguageClient_serverCommands = {}
let g:LanguageClient_rootMarkers = {
      \   'javascript': ['tsconfig.json', '.flowconfig', 'package.json'],
      \   'typescript': ['tsconfig.json', '.flowconfig', 'package.json']
      \ }

if has('popupwin')
  let g:LanguageClient_usePopupHover = 1
endif

let g:LanguageClient_diagnosticsDisplay = {
      \ 1: {
      \ "signText": ">",
      \ "signTexthl": "LanguageClientError",
      \ "virtualTexthl": "Error",
      \ },
      \ 2: {
      \ "signText": ">",
      \ "signTexthl": "LanguageClientWarning",
      \ "virtualTexthl": "Todo",
      \ },
      \ 3: {
      \ "signText": ">",
      \ "signTexthl": "LanguageClientInfo",
      \ "virtualTexthl": "Todo",
      \ },
      \ 4: {
      \ "signText": ">",
      \ "signTexthl": "LanguageClientInfo",
      \ "virtualTexthl": "Todo",
      \ }
    \ }

" TODO: Add the option for multiple arguments. Sort of like a spread operator in
" JavaScript For example:
"
"   'cpp': ['ccls', '--log-file=/tmp/cc.log']
let s:server_commands = {
      \   'javascript': 'javascript-typescript-stdio',
      \   'typescript': 'javascript-typescript-stdio',
      \   'cpp': 'ccls',
      \   'c': 'ccls',
      \ }

for [s:server_lang, s:server_command] in items(s:server_commands)
  if executable(s:server_command)
    let g:LanguageClient_serverCommands[s:server_lang] = [exepath(s:server_command)]
  endif
endfor