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
        jb p2.6, satu
        mov p1, #00110000b
        ljmp satu

ok:
        ljmp satu
end