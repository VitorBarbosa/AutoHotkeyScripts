; Script para gerar CPFs válidos quando apertado ctrl + alt + v
^!v::
; Geramos valores aleatórios para os primeiros nove dígitos
Random, n1, 0, 9
Random, n2, 0, 9
Random, n3, 0, 9
Random, n4, 0, 9
Random, n5, 0, 9
Random, n6, 0, 9
Random, n7, 0, 9
Random, n8, 0, 9
Random, n9, 0, 9
; Calculamos o primeiro dígito verificador
d1 := n9 * 2 + n8 * 3 + n7 * 4 + n6 * 5 + n5 * 6 + n4 * 7 + n3 * 8 + n2 * 9 + n1 * 10
d1 := 11 - (Mod(d1, 11))
if (d1 > 9) {
    d1 := 0
}
; Calculamos o segundo dígito verificador
d2 := d1 * 2 + n9 * 3 + n8 * 4 + n7 * 5 + n6 * 6 + n5 * 7 + n4 * 8 + n3 * 9 + n2 * 10 + n1 * 11
d2 := 11 - (Mod(d2, 11))
if (d2 > 9) {
    d2 := 0
}
SendInput %n1%%n2%%n3%%n4%%n5%%n6%%n7%%n8%%n9%%d1%%d2%
return
