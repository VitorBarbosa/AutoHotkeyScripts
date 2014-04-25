; Scripts para gerar CPFs e CNPJs v�lidos e aleat�rios.
; Criado por Vitor Mascena Barbosa - vitormbarbosa@gmail.com


; Script para gerar CPFs v�lidos quando apertado ctrl + alt + v
^!v::
    ; Geramos valores aleat�rios para os primeiros nove d�gitos
    Random, n1, 0, 9
    Random, n2, 0, 9
    Random, n3, 0, 9
    Random, n4, 0, 9
    Random, n5, 0, 9
    Random, n6, 0, 9
    Random, n7, 0, 9
    Random, n8, 0, 9
    Random, n9, 0, 9
    ; Calculamos o primeiro d�gito verificador
    d1 := n9 * 2 + n8 * 3 + n7 * 4 + n6 * 5 + n5 * 6 + n4 * 7 + n3 * 8 + n2 * 9 + n1 * 10
    d1 := 11 - (Mod(d1, 11))
    if (d1 > 9) {
        d1 := 0
    }
    ; Calculamos o segundo d�gito verificador
    d2 := d1 * 2 + n9 * 3 + n8 * 4 + n7 * 5 + n6 * 6 + n5 * 7 + n4 * 8 + n3 * 9 + n2 * 10 + n1 * 11
    d2 := 11 - (Mod(d2, 11))
    if (d2 > 9) {
        d2 := 0
    }
    SendInput %n1%%n2%%n3%%n4%%n5%%n6%%n7%%n8%%n9%%d1%%d2%
return

; Script para gerar CNPJs v�lidos quando apertado ctrl + alt + b
^!b::
    ; Geramos valores aleat�rios para os primeiros oito d�gitos
    Random, n1, 0, 9
    Random, n2, 0, 9
    Random, n3, 0, 9
    Random, n4, 0, 9
    Random, n5, 0, 9
    Random, n6, 0, 9
    Random, n7, 0, 9
    Random, n8, 0, 9
    n9 := 0
    n10 := 0
    n11 := 0
    n12 := 1
    ; Calculamos o primeiro d�gito verificador
    d1 := n12 * 2 + n11 * 3 + n10 * 4 + n9 * 5 + n8 * 6 + n7 * 7 + n6 * 8 + n5 * 9 + n4 * 2 + n3 * 3 + n2 * 4 + n1 * 5
    d1 := 11 - (Mod(d1, 11))
    if (d1 > 9) {
        d1 := 0
    }
    ; Calculamos o segundo d�gito verificador
    d2 := d1 * 2 + n12 * 3 + n11 * 4 + n10 * 5 + n9 * 6 + n8 * 7 + n7 * 8 + n6 * 9 + n5 * 2 + n4 * 3 + n3 * 4 + n2 * 5 + n1 * 6
    d2 := 11 - (Mod(d2, 11))
    if (d2 > 9) {
        d2 := 0
    }
    SendInput %n1%%n2%%n3%%n4%%n5%%n6%%n7%%n8%%n9%%n10%%n11%%n12%%d1%%d2%
return
