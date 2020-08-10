# Shell Parameter Expansion

Ref: https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html

`${parameter:-word}`  
If parameter is empty then `word` is returned.

`${parameter:=word}`  
If parameter is empty then `word` is assigned and returned.

`${parameter:?word}`  
If parameter is empty then show message `word` to stdout.

`${parameter:+word}`  
If parameter is not empty then `word` is returned.

`${parameter:offset}`  
`${parameter:offset:length}`  
Substring.

`${!prefix*}`  
`${!prefix@}`  
List of variables matching `prefix` at beginning. `@` will double-quote them.

`${!name[@]}`  
`${!name[*]}`  
List of values in array `nme`. `@` will double-quote them.

`${#parameter}`  
String Length.

`${parameter#word}`  
`${parameter##word}`  
Replace at begin of string if matching `word`. `%%` is longest match.

`${parameter%word}`  
`${parameter%%word}`  
Replace at end of string if matching `word`. `%%` is longest match.

`${parameter/pattern/string}`  
Replace `pattern` with `string`.

`${parameter^pattern}`  
Converts lowercase letters matching pattern to uppercase. Matching only 1 character.

`${parameter^^pattern}`  
Converts lowercase letters matching pattern to uppercase. Matching multiple characters.

`${parameter,pattern}`  
Converts lowercase letters matching uppercase to lowercase. Matching only 1 character.

`${parameter,,pattern}`  
Converts lowercase letters matching uppercase to lowercase. Matching multiple characters.
