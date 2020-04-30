        ORG 0H

satu:
        mov p2, #11111110b
        jb  p2.4, dua
        mov p1, #01111001b
        ljmp satu

dua:
        jb p2.5, tiga
        mov p1, #00100100b
        ljmp satu

tiga:
        jb p2.6, empat
        mov p1, #00110000b
        ljmp satu

empat:
        mov p2, #11111101b
        jb p2.4, lima
        mov p1, #00011001b
        ljmp satu

lima:
        jb p2.5, enam
        mov p1, #00010010b
        ljmp satu

enam:
        jb p2.6, tujuh
        mov p1, #00000010b
        ljmp satu

tujuh:
        mov p2, #11111011b
        jb p2.4, delapan
        mov p1, #01111000b
        ljmp satu

delapan:
        jb p2.5, sembilan
        mov p1, #00000000b
        ljmp satu

sembilan:
        jb p2.6, bintang
        mov p1, #00010000
        ljmp satu

bintang:
        mov p2, #11110111b
        jb p2.4, nol
        mov p1, #01111111b
        ljmp satu

nol:
        jb p2.5, pager
        mov p1, #01000000b
        ljmp satu

pager:
        jb p2.6, satu
        mov p1, #10001001b
        ljmp satu        

ok:
        ljmp satu
end