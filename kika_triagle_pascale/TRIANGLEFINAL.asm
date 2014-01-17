segment .data
org 100h
affichage1 db 10,10,"      ",177,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,177,'$'
affichage2 db 10,13,13,"      ",219," Ecole Nationale Des              Ann",130,"e universitaire : 2013/2014 ",219,'$'
affichage3 db 10,13,13,"      ",219," Sciences Appliqu",130,"es                                              ",219,'$'
affichage4 db 10,13,13,"      ",219,"    - Kenitra-                                                    ",219,'$'
affichage5 db 10,13,13,"      ",219,"                                                                  ",219,'$'
affichage6 db 10,13,13,"      ",219,"                     Mini-projet en Assembleur   :                ",219,'$'
affichage7 db 10,13,13,"      ",219,"                       Petit theoreme de Fermat                   ",219,'$' 
affichage8 db 10,13,13,"      ",219,"                                                                  ",219,'$'
affichage9 db 10,13,13,"      ",219,"                                                                  ",219,'$'
affichage10 db 10,13,13,"      ",219,"                                                                  ",219,'$'
affichage11 db 10,13,13,"      ",219,"                                                                  ",219,'$'
affichage12 db 10,13,13,"      ",219,"                                                                  ",219,'$'
affichage13 db 10,13,13,"      ",219,"  Elabor",130," par :                                                   ",219,'$'
affichage14 db 10,13,13,"      ",219,"     - Sanaa mosleh                  Encadr",-126," par :                ",219,'$' 
affichage15 db 10,13,13,"      ",219,"     - Ayman rezouk                      - Mme Aouatif Amine      ",219,'$'
affichage16 db 10,13,13,"      ",219,"     - Othman bouayad                                             ",219,'$'
affichage17 db 10,13,13,"      ",219,"     - Mohamed Amine Jaima                                        ",219,'$'
affichage18 db 10,13,13,"      ",219,"                                                                  ",219,'$'
affichage19 db 10,13,13,"      ",177,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,178,177,10,13,10,10,'$'
affichage20 db "ENTREZ NIMPORTE QUELLE TOUCHE POUR AVANCER",'$'


msg db " Bonjour utilisateur !entrer le nombre de ligne du triangle de pascal a afficher  ( inferieur ou egal a 13) :",'$'
msg2 db "les lignes de fond vert correspondent a un indice de ligne premier ",'$'
msg3 db  "             les nombres de fond rouge sont divisibles par leurs indice de ligne",'$'
var5 db 0

var2 dw 0
var dw 0
var1 db 0
t dw 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
segment .bss
segment .text
global _main
_main:

 call couleur

	
mov edx,0
mov ah,09h
mov dx,affichage1
int 21h
mov dx,affichage5
int 21h
mov dx,affichage2
int 21h
mov dx,affichage3
int 21h
mov dx,affichage4
int 21h
mov dx,affichage5
int 21h
mov dx,affichage6
int 21h
mov dx,affichage7
int 21h
mov dx,affichage8
int 21h
mov dx,affichage9
int 21h
mov dx,affichage10
int 21h
mov dx,affichage11
int 21h
mov dx,affichage12
int 21h
mov dx,affichage13
int 21h
mov dx,affichage14
int 21h
mov dx,affichage15
int 21h
mov dx,affichage16
int 21h
mov dx,affichage17
int 21h
mov dx,affichage18
int 21h
mov dx,affichage5
int 21h
mov dx,affichage19
int 21h
mov dx,affichage20
int 21h	
mov ah,00h
int 16h

mov	ah,0H
mov	al,03
int	10h

call clean

call couleur    

mov ah, 09h
   mov edx,msg           
   int 21h
 
mov ah,01h
int 21h
mov[var1],al
mov ah,01h
int 21h
if:
cmp al,0dh
jne else
mov al,[var1]
sub al,30h
jmp endif
else:
sub al,30h



add al,10


endif:



add al,1
add al,al
mov ah,0
mov [var],ax
mov ah,02h
mov dl,0Ah
int 21h
mov ah,02h
mov dl,0Ah
int 21h
mov ah,03h
int 10h
mov [var5],dh

mov ah,02h
mov dl,0
mov dh,[var5]
add dh,1
int 10h
call affichage

for1:
mov edi,2
jmp etiq
next1:
mov esi,edi
while:
cmp esi,2
jl endwhile
mov ax,[t+esi]
sub esi,2
mov bx,[t+esi]
add esi,2
add ax,bx
mov [t+esi],ax
sub esi,2
jmp while
endwhile:
call affichage

add edi,2
etiq:
mov ax,[var]
cmp di,ax

jl next1
endfor1:


mov ah,02h
mov dl,0Ah
int 21h
mov ah,02h
mov dl,0Ah
int 21h
mov ah,09h
mov dx,msg2
int 21h
mov ah,02h
mov dl,0Ah
int 21h
mov ah,09h
mov dx,msg3
int 21h




mov ah,00
int 16h
fin:
ret



affichage: 

mov esi,0
etq1: 
mov ax,[t+esi]
cmp ax,1
je etq16
mov ax,[t+esi] 
cmp ax,792
je etq18
mov ax,[t+esi] 
cmp ax,4
je etq18
mov ax,[t+esi] 
cmp ax,8
je etq18
mov ax,[t+esi] 
cmp ax,56
je etq18
mov ax,[t+esi] 
cmp ax,924
je etq18
mov ax,[t+esi] 
cmp ax,120
je etq18
mov ax,[t+esi] 
cmp ax,210
je etq18
jmp etq17
etq16:
jmp etq13
jmp etq17
etq18:
jmp etq14
etq17:
mov ax,[t+esi] 
cmp ax,12
je etq18
mov ax,[t+esi] 
cmp ax,10
jne etq15
mov bx,[var2]
cmp bx,10
je etq18
etq15:
mov ax,[t+esi] 
cmp ax,6
jne etq12
mov bx,[var2]
cmp bx,6
je etq18
jmp etq12
etq13:
jmp etq10
etq12:
mov ax,[var2]
switch:
cmp ax,0
jne case1
jmp etq11
jmp endswitch
case1:
cmp ax,1
jne case4
jmp etq11
jmp endswitch
case4:
cmp ax,4
jne case6
call space
jmp etq11
jmp endswitch
jmp case6
etq14:
jmp etq8
case6:
cmp ax,6
jne case8
call space
jmp etq11
jmp endswitch
case8:
cmp ax,8
jne case10
call space
jmp etq11
jmp endswitch
case10:
cmp ax,10
jne case12
call space
jmp etq11
jmp endswitch
case12:
cmp ax,12
jne default
call space
jmp etq11
jmp endswitch
default:
endswitch:
jmp etq9

etq8:
mov ah,09h
mov cx,7
mov bl,4Fh ; le premier octet = background , le deusieme octet = text color
int 10h
jmp etq10
etq9:
mov ah,09h
mov cx,7
mov bl,3Bh ; le premier octet = background , le deusieme octet = text color
int 10h
etq10:
mov ah,02h
mov dl,20h
int 21h
mov ah,02h
mov dl,20h
int 21h
mov ah,02h
mov dl,20h
int 21h
etq11:
mov ax,[t+esi]
mov cx,"$$"  ;on empile pour signaler que l'on est arrivé a la fin de la chaine
push cx
mov cx,10
mov dx,0
boucle1:
xor dx,dx             ;pas oublier de mettre dx a zéro, la division l'uttilise aussi
div cx
add dl,"0"        ;ou 30h (le code ascii du zéros)
push dx                           
cmp ax,0
jne boucle1
boucle2:
pop dx
cmp dx,"$$"
je fin1

mov ah,02h
int 21h

jmp boucle2
 
fin1:


add esi,2



mov cx,[t+esi]
cmp cx,0
jne etq1

mov ah,03h
int 10h
mov [var5],dh

mov ah,02h
mov dl,0
mov dh,[var5]
add dh,1
int 10h



mov ax,[var2]
inc ax
mov [var2],ax


ret

space:
push ax
mov ah,02h
mov dl,20h
int 21h
mov ah,02h
mov dl,20h
int 21h
mov ah,02h
mov dl,20h
int 21h
pop ax
ret

couleur:

push eax
push ebx
push ecx
push edx

mov bh,5
mov al,0 
mov ah,6 
mov cx,0 
mov dh,70
mov dl,79 
int 10h

pop eax
pop ebx
pop ecx
pop edx

ret
clean :	

push eax
mov ah,0h
mov al, 3
int 10h
pop eax

ret


