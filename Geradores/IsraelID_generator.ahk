; Script to generate a valid Israel ID number on ctrl + alt + b
^!b::
; Generate random values
Random, n1, 0, 9
Random, n2, 0, 9
Random, n3, 0, 9
Random, n4, 0, 9
Random, n5, 0, 9
Random, n6, 0, 9
Random, n7, 0, 9
Random, n8, 0, 9
Random, n9, 0, 9
; Concatenate random values
concat := %n1%%n2%%n3%%n4%%n5%%n6%%n7%%n8%%n9%
; Verify if they pass Luhn
x := 9
while (x--) {

}
; Return
SendInput %n1%%n2%%n3%%n4%%n5%%n6%%n7%%n8%%n9%
return
