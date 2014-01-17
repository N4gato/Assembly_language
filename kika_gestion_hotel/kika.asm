org 100h



segment .bss

segment .text

call draw_presentation
ici:
call menu
                            ;  lire le choix
MOV AH,01h
INT 21H

CMP al,31h ;if le choix et 1 donc tu est un gestionaire
je etq1

cmp al,32h
je etq10

cmp al,33h
je fin2



fin2:
jmp petitfin  




etq1:
      call gestionaire
etq10:
      call client ; else tu est un putin client qui fais chier ;)


segment .data



nom   times 50 db '$'
nomhelp db 10,13,"    ",10,13,'$'

prenom   times 50 db '$'
prenomhelp db 10,13,"     ",10,13,'$'

cin   times 50 db '$'
cinhelp db 10,13,"           ",10,13,'$'

type  times 50 db '$'
typehelp db 10,13,"      ",10,13,'$'

type1  times 50 db '$'
typehelp1 db 10,13,"      ",10,13,'$'

;dateAr   times 50 db '$'


date   times 50 db '$'
datehelp db 10,13,"       ",10,13,'$'

chambre   times 50 db '$'
chambrehelp db 10,13,"       ",'$'


nomindice      dd 0
prenomindice   dd 0
cinindice      dd 0
typeindice     dd 0
type1indice     dd 0
dateindice     dd 0 
chambreindice  dd 0
chambrenum     db 31h


nomaff    db 10,13,"Nom    : ",'$'
prenomaff db "Prenom : ",'$'
cinaff    db "CIN    : ",'$'
typeaff   db "Type1  : ",'$'
type1aff   db "Type2  : ",'$'

dateaff   db "Date   : ",'$'
chambreaff db "Chambre: ",'$'



;dateArindice   dd 0




mdr db 10,13,"==< Tout les client de cette année >==",10,13,'$'

client3ajouter   db 10,13,"Votre nom:                             ",10,13,'$'      
client4ajouter   db 10,13,"votre prenom:                          ",10,13,'$'
client5ajouter   db 10,13,"votre CIN:                             ",10,13,'$' 
client6ajouter   db 10,13,"Veillez choisire le type de chambre:     ",10,13,'$'
client7ajouter   db 10,13,"   - Fumeur                              ",10,13,'$'     
client8ajouter   db 10,13,"   - NonFumeur                          ",10,13,'$'         
ajouter   db 10,13,10,13,"     - individuel                     ",10,13,'$'             
ajouter1  db 10,13,"     - double                  ",10,13,'$'
client13ajouter db 10,13,"type de reservation                      ",10,13,'$'             
client14ajouter db 10,13,"  -Pension                              ",10,13,'$'     
client15ajouter db 10,13,"  -1/2pension                         ",10,13,'$'
client16ajouter db 10,13,"Votre date de sortis sera ?",10,13,'$'
client17ajouter db 10,13,"Votre numero de chambre est :  ",'$'
client18ajouter db 10,13,"Veillez prendre les cle dans l`acceille",'$'

readed db 0

client0 db 10,13,"      ========  GESTION Client ===========           ",'$'                        
client1 db 10,13,"   ==> Bien venu notre chere client <==               ",'$'                   
client2 db 10,13,"   Veillez remplire le formulaire suivant:  ",'$'                                 
client3 db 10,13,"        Votre nom:                             ",'$'      
client4 db 10,13,"        votre prenom:                          ",'$'         
client5 db 10,13,"        votre CIN:                             ",'$'      
client6 db 10,13,"                                               ",'$'                             
client7 db 10,13,"      Veillez choisire le type de chambre:     ",'$'                              
client8 db 10,13,"        1- Fumeur                              ",'$'     
client9 db 10,13,"        2- Non Fumeur                          ",'$'         
client10 db 10,13,"        3- chambre bouble                      ",'$'             
client11 db 10,13,"        4- chambre individuel                  ",'$'                 
client12 db 10,13,"                                               ",'$'                             
client13 db 10,13,"      type de reservation                      ",'$'             
client14 db 10,13,"        1-Pension                              ",'$'     
client15 db 10,13,"        2-Demi pension                         ",'$'          

msg1   db 10,13,                          '   ******   GESTION HOTELERIE   ******                           ',10,13,'$'  
msg2   db                 '    MENU PRINCIPALE :'                                                    ,10,13,10,13,'$'
msg3   db                 '  1-Vous etes gestionaire'                                                    ,10,13,'$' 
msg4   db                 '  2-Vous etes Client'                                                    ,10,13,'$' 
msg5   db                 '  3-Exit'                                                    ,10,13,10,13,'$'  
choix  db                 'Votre choix ? =>> '                                                    ,10,13,'$'
err    db                 'saisie errone !! refaites votre choix'                                                    ,10,13,'$'
mdp db 31h,32h,33h,34h
tab times 50 dw '$'
donner_mdp db 10,13,"==> Donner le mdp des Gestionaire <==",10,13,'$'
lol1 db 10,13,"        ==> WARNING <==",'$'
lol2 db 10,13," # Vous ete pas gestionaire ;( #",'$'

final dd 0

;gestionaire gestionaire_platform


d0 db 10,13,"  =========== Gestion  Platform ============== ",10,13,'$'
d1 db 10,13,"                                                  ",'$'
d2 db 10,13,"  1- Ajouter un client                            ",'$'
d3 db 10,13,"  2- Voire tout les client                      ",'$'
d4 db 10,13,"  3- rien faire                                   ",'$'

; let's start draing ;)

j0  db 10,13,"                                                                       ",'$'
j1  db 10,13," +---------------------+                        ,o8888boo.              ",'$'          
j2  db 10,13,"|Realise par :          |                      bd88888888888b             ",'$'           
j3  db 10,13,"|                       |                  d88oo88888888888888o.          ",'$'              
j4  db 10,13,"|                       |        /\      8888888888P Y88888888o,b       ",'$'                 
j5  db 10,13,"|                       |      _--/ \     88888888P.''.Y88P* Y8888       ",'$'                 
j6  db 10,13," +---------------------+     /__/   *\   Y888888P *.-.  Y* _. Y88P       ",'$'                 
j7  db 10,13,"                            <______   *\  *8888P  /  |    *_ *$88        ",'$'                
j8  db 10,13,"                                   \    \  888b   o  |   / \ a8Z        ",'$'                
j9  db 10,13,"                                     \     \ 8|<  B8/     Bo||P*         ",'$'               
j10 db 10,13,"                                      *.   /*--\     ._   P8/|           ",'$'             
j11 db 10,13,"                                        \ /     *\_  \     _/            ",'$'             
j12 db 10,13,"                                         \        /'-----.'              ",'$'          
j13 db 10,13,"                                          \      |  /  |\ \              ",'$'           
j14 db 10,13,"                                           *-./  | / \./|  \             ",'$'             
j15 db 10,13,"                                              |  \/   |/    |            ",'$'            
j16 db 10,13,"                                          ,---|       /\__./             ",'$'           
j17 db 10,13,"                                        _/    *-.___./ ;   \             ",'$'            
j18 db 10,13,"                                       /             \  \   \            ",'$'            
j19 db 10,13,"                                  --._/               \  \   \_          ",'$'               
j20 db 10,13,"                                   \                   \._\    --.      ",'$'                  
j21 db 10,13,"                                    \                    _''-._<''       ",'$'                  
j22 db 10,13,"                                     \                  /*               ",'$'          
j23 db 10,13,"                                      *-.            .-*                 ",'$'          
j24 db 10,13,"                                         *----._____-|                   ",'$'     
j25 db 10,13,"                                            |    |   |                   ",'$'     
j26 db 10,13,"                                           |     |   |                   ",'$'     
j27 db 10,13,"                                           |     |   |                   ",'$'     
j28 db 10,13,"                                           |      I  |                   ",'$'     
j29 db 10,13,"                                           |      |   T                  ",'$'       
j30 db 10,13,"                                           |      |   |                  ",'$'       
j31 db 10,13,"                                           |      |   |                  ",'$'       
j32 db 10,13,"                                           |      |    \                 ",'$'       
j33 db 10,13,"                                           |      *|    |                ",'$'        
j34 db 10,13,"                                           |       |    Z                ",'$'        
j35 db 10,13,"                                            *-.__.-P__.--                ",'$'        
j36 db 10,13,"                                                                       ",'$'           
j37   db 10,13,"                             +---------------------+                   ",'$'
j38   db 10,13,"                            |      Clic Entrer      |                  ",'$'
j39   db 10,13,"                             +---------------------+                   ",'$'
Message db 10,13,10,13,"        Merci notre chere utilisateur",'$'
Message1 db 10,13,10,13,10,13,"    A tres bientot",'$'


smily0  db 10,13,"                  __ooooooooo__                      ",'$'            
smily1  db 10,13,"               oOOOOOOOOOOOOOOOOOOOOOo               ",'$'                  
smily2  db 10,13,"           oOOOOOOOOOOOOOOOOOOOOOOOOOOOOOo           ",'$'                      
smily3  db 10,13,"        oOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOo        ",'$'                         
smily4  db 10,13,"      oOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOo      ",'$'                           
smily5  db 10,13,"    oOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOo    ",'$'                             
smily6  db 10,13,"   oOOOOOOOOOOO*  *OOOOOOOOOOOOOO*  *OOOOOOOOOOOOo   ",'$'                              
smily7  db 10,13,"  oOOOOOOOOOOO      OOOOOOOOOOOO      OOOOOOOOOOOOo  ",'$'                               
smily8  db 10,13,"  oOOOOOOOOOOOOo  oOOOOOOOOOOOOOOo  oOOOOOOOOOOOOOo  ",'$'                               
smily9  db 10,13," oOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOo ",'$'                                
smily10 db 10,13," oOOOO     OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO     OOOOo ",'$'                                
smily11 db 10,13," oOOOOOO OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO OOOOOOo ",'$'                                
smily12 db 10,13,"  *OOOOO  OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  OOOOO*  ",'$'                               
smily13 db 10,13,"  *OOOOOO  *OOOOOOOOOOOOOOOOOOOOOOOOOOOOO*  OOOOOO*  ",'$'                               
smily14 db 10,13,"   *OOOOOO  *OOOOOOOOOOOOOOOOOOOOOOOOOOO*  OOOOOO*   ",'$'                              
smily15 db 10,13,"    *OOOOOOo  *OOOOOOOOOOOOOOOOOOOOOOO*  oOOOOOO*    ",'$'                             
smily16 db 10,13,"      *OOOOOOOo  *OOOOOOOOOOOOOOOOO*  oOOOOOOO*      ",'$'                           
smily17 db 10,13,"        *OOOOOOOOo  *OOOOOOOOOOO*  oOOOOOOOO*        ",'$'                               
smily18 db 10,13,"           *OOOOOOOOo           oOOOOOOOO*           ",'$'                            
smily19 db 10,13,"               *OOOOOOOOOOOOOOOOOOOOO*               ",'$'                                   
smily20 db 10,13,"                     ooooooooo                       ",'$'          

cripte db 10,13," Mlle laila brada Directeur vous dit :",10,13,'$'
sleep db 10,13," => Have a good Night ",10,13,'$'


petitfin:
call clean
;pour afficher une chaine
   MOV AH,09h
   MOV Dx,Message
   INT 21h 
   MOV AH,09h
   MOV Dx,Message1
   INT 21h



MOV AH,09h
   MOV Dx,smily0
   INT 21h 
      MOV AH,09h
   MOV Dx,smily1
   INT 21h 
      MOV AH,09h
   MOV Dx,smily2
   INT 21h 
      MOV AH,09h
   MOV Dx,smily3
   INT 21h 
      MOV AH,09h
   MOV Dx,smily4
   INT 21h 
      MOV AH,09h
   MOV Dx,smily5
   INT 21h 
      MOV AH,09h
   MOV Dx,smily6
   INT 21h 
      MOV AH,09h
   MOV Dx,smily7
   INT 21h 
      MOV AH,09h
   MOV Dx,smily8
   INT 21h 
      MOV AH,09h
   MOV Dx,smily9
   INT 21h 
      MOV AH,09h
   MOV Dx,smily10
   INT 21h 
      MOV AH,09h
   MOV Dx,smily11
   INT 21h 
      MOV AH,09h
   MOV Dx,smily12
   INT 21h 
      MOV AH,09h
   MOV Dx,smily13
   INT 21h 
      MOV AH,09h
   MOV Dx,smily14
   INT 21h 
      MOV AH,09h
   MOV Dx,smily15
   INT 21h 
      MOV AH,09h
   MOV Dx,smily16
   INT 21h 
      MOV AH,09h
   MOV Dx,smily17
   INT 21h 
      MOV AH,09h
   MOV Dx,smily18
   INT 21h 
      MOV AH,09h
   MOV Dx,smily19
   INT 21h 
      MOV AH,09h
   MOV Dx,smily20
   INT 21h 
      MOV AH,09h
   

;pour lire un char | you find in AL <<<==
   MOV AH,01h
   INT 21H

ret




gestionaire:
   
  call clean    

   MOV AH,09h
   MOV Dx,donner_mdp
   INT 21h

   call read

cmpa:
      
   mov al,[mdp+0]
   mov ah,[string_buf+2]
   CMP ah,al
   jne kika 

   mov al,[mdp+1]
   mov ah,[string_buf+3]
   CMP ah,al
   jne kika

   mov al,[mdp+2]
   mov ah,[string_buf+4]
   CMP ah,al
   jne kika

   mov al,[mdp+3]
   mov ah,[string_buf+5]
   CMP ah,al
   jne kika
   JMP gestionaire_platform


kika:
   call clean
   MOV AH,09h ; lol tes pas gestionaire
   MOV Dx,lol1
   INT 21h
   MOV AH,09h ; lol tes pas gestionaire
   MOV Dx,lol2
   INT 21h

   MOV AH,01h
   INT 21H
   call clean
   JMP ici  ; va chercher ta femme sale goss


gestionaire_platform:

   call clean

      MOV AH,09h
   MOV Dx,d0
   INT 21h 
      MOV AH,09h
   MOV Dx,d1
   INT 21h 
      MOV AH,09h
   MOV Dx,d2
   INT 21h 
      MOV AH,09h
   MOV Dx,d3
   INT 21h 
      MOV AH,09h
   MOV Dx,d4
   INT 21h 

      MOV AH,09h
   MOV Dx,choix
   INT 21h 

   MOV AH,01h ; lire le choix
   INT 21H



   ;switch choix
      ;cas = 1
         CMP al,31h
         je ajouter_client
      ;cas = 2
         CMP al,32h
         je annuler_res_rang
      ;cas = 3
         CMP al,33h  ; revenire au screen
         je fin 

ajouter_client:

      call clean

   MOV AH,09h
   MOV Dx,d0
   INT 21h 

      MOV AH,09h
   MOV Dx,client2
   INT 21h 

      MOV AH,09h
   MOV Dx,client3ajouter
   INT 21h 

   
jmp kkk
annuler_res_rang:
jmp annuler_res   
kkk:  

;ajouter des espace

lirenom:
   mov edi,0
   mov esi,[nomindice]
etq2:
   MOV AH,01h
   INT 21H
   
   cmp al,13
   je etq3
   mov [nom+esi],al
   inc esi
   inc edi
   mov [nomindice],esi
   jmp etq2

etq3:

   cmp edi,15
   je lireprenom
   ; add some space ^^
   mov al,20h
   mov [nom+esi],al
   inc esi
   mov [nomindice],esi
   inc edi
   JMP etq3

jmp kk
fin:
jmp finfin   
kk:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;*********************************************

lireprenom:
call clean

   MOV AH,09h
   MOV Dx,d0
   INT 21h 

      MOV AH,09h
   MOV Dx,client2
   INT 21h 

   MOV AH,09h
   MOV Dx,client4ajouter
   INT 21h
   mov edi,0
   mov esi,[prenomindice]
etq2prenom:
   MOV AH,01h
   INT 21H
   
   cmp al,13
   je etq3prenom
   mov [prenom+esi],al
   inc esi
   inc edi
   mov [prenomindice],esi
   jmp etq2prenom

etq3prenom:
     cmp edi,15
   je lirecin
   ; add some space ^^
   mov al,20h
   mov [prenom+esi],al
   inc esi
   mov [prenomindice],esi
   inc edi
   JMP etq3prenom



lirecin:
call clean

   MOV AH,09h
   MOV Dx,d0
   INT 21h 

      MOV AH,09h
   MOV Dx,client2
   INT 21h 
   MOV AH,09h
   MOV Dx,client5ajouter
   INT 21h
   mov edi,0
   mov esi,[cinindice]
etq2cin:
   MOV AH,01h
   INT 21H
   
   cmp al,13
   je etq3cin
   mov [cin+esi],al
   inc esi
   inc edi
   
   mov [cinindice],esi
   jmp etq2cin

etq3cin:
      cmp edi,15
   je liretype
   ; add some space ^^
   mov al,20h
   mov [cin+esi],al
   inc esi
   mov [cinindice],esi
   inc edi
   JMP etq3cin




liretype:;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
call clean

   MOV AH,09h
   MOV Dx,d0
   INT 21h 

      MOV AH,09h
   MOV Dx,client2
   INT 21h 

MOV AH,09h
   MOV Dx,client6ajouter
   INT 21h

   MOV AH,09h
   MOV Dx,client7ajouter
   INT 21h

   MOV AH,09h
   MOV Dx,client8ajouter
   INT 21h

   mov edi,0
   mov esi,[typeindice]
etq2type:
   MOV AH,01h
   INT 21H
   
   cmp al,13
   je etq3type
   mov [type+esi],al
   inc esi
   inc edi
   mov [typeindice],esi
   jmp etq2type

etq3type:
     cmp edi,15
   je liretype1
   ; add some space ^^
   mov al,20h
   mov [type+esi],al
   inc esi
   mov [typeindice],esi
   inc edi
   JMP etq3type

liretype1:
   call clean

 MOV AH,09h
   MOV Dx,d0
   INT 21h 

      MOV AH,09h
   MOV Dx,client2
   INT 21h 



   MOV AH,09h
   MOV Dx,ajouter
   INT 21h

   MOV AH,09h
   MOV Dx,ajouter1
   INT 21h


      mov edi,0
   mov esi,[type1indice]
etq2type1:
   MOV AH,01h
   INT 21H
   
   cmp al,13
   je etq3type1
   mov [type1+esi],al
   inc esi
   inc edi
   mov [type1indice],esi
   jmp etq2type1

etq3type1:
     cmp edi,15
   je liredate
   ; add some space ^^
   mov al,20h
   mov [type1+esi],al
   inc esi
   mov [type1indice],esi
   inc edi
   JMP etq3type1



liredate:
call clean

   MOV AH,09h
   MOV Dx,d0
   INT 21h 

      MOV AH,09h
   MOV Dx,client2
   INT 21h 

MOV AH,09h
   MOV Dx,client16ajouter
   INT 21h

   
   mov edi,0
   mov esi,[dateindice]
etq2date:
   MOV AH,01h
   INT 21H
   
   cmp al,13
   je etq3date
   mov [date+esi],al
   inc esi
   inc edi
   mov [dateindice],esi
   jmp etq2date

etq3date:
      cmp edi,15
   je chambree
   ; add some space ^^
   mov al,20h
   mov [date+esi],al
   inc esi
   mov [dateindice],esi
   inc edi
   JMP etq3date
chambree:
   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   mov esi,[chambreindice]
   mov al, [chambrenum]
   mov [chambre+esi],al

;kan hna
   inc esi
   mov al,20h
   mov [chambre+esi],al
   inc esi
   mov [chambre+esi],al
   inc esi
   mov [chambre+esi],al
   inc esi
   mov [chambre+esi],al
   inc esi
   mov [chambre+esi],al
   inc esi
   mov [chambre+esi],al
   inc esi
   mov [chambre+esi],al
   inc esi
   mov [chambre+esi],al
   inc esi
   mov [chambre+esi],al
   inc esi
   mov [chambre+esi],al
   inc esi
   mov [chambre+esi],al
   inc esi
     mov [chambre+esi],al
   inc esi
   mov [chambre+esi],al
   inc esi
   mov [chambre+esi],al
inc esi
   mov [chambre+esi],al
   



   mov [chambreindice],esi



call clean
   MOV AH,09h
   MOV Dx,client17ajouter
   INT 21h

   MOV Dx,chambrenum
   INT 21h
   mov al,[chambrenum]
   inc al
   mov [chambrenum],al

   mov dx,cripte
   int 21h
   mov dx,sleep
   int 21h

   MOV Dx,client18ajouter
   INT 21h

   MOV AH,01h
   INT 21H

   call clean

jmp ici

annuler_res:

   call clean
   call affichage_client


ret




client:
   call clean
   call client_draw

   jmp ajouter_client
finfin:
call clean
jmp ici

ret  


affichage_client:
call clean

   MOV AH,09h
   MOV Dx,mdr
   INT 21h

    MOV AH,09h
   MOV Dx,nomaff
   INT 21h
   MOV AH,09h
   MOV Dx,nom
   INT 21h

      MOV AH,09h
   MOV Dx,nomhelp
   INT 21h

   MOV AH,09h
   MOV Dx,prenomaff
   INT 21h
   MOV AH,09h
   MOV Dx,prenom
   INT 21h

      MOV AH,09h
   MOV Dx,prenomhelp
   INT 21h

   
   MOV AH,09h
   MOV Dx,cinaff
   INT 21h
   MOV AH,09h
   MOV Dx,cin
   INT 21h

      MOV AH,09h
   MOV Dx,cinhelp
   INT 21h


      MOV AH,09h
   MOV Dx,typeaff
   INT 21h
      MOV AH,09h
   MOV Dx,type
   INT 21h
   MOV AH,09h
   MOV Dx,typehelp
   INT 21h

      MOV AH,09h
   MOV Dx,type1aff
   INT 21h
      MOV AH,09h
   MOV Dx,type1
   INT 21h
   MOV AH,09h
   MOV Dx,typehelp1
   INT 21h


      MOV AH,09h
   MOV Dx,dateaff
   INT 21h
      MOV AH,09h
   MOV Dx,date
   INT 21h
   MOV AH,09h
   MOV Dx,datehelp
   INT 21h


   MOV AH,09h
   MOV Dx,chambreaff
   INT 21h
       MOV AH,09h
   MOV Dx,chambre ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   INT 21h
   MOV AH,09h
   MOV Dx,chambrehelp
   INT 21h

   MOV AH,01h
   INT 21H
call clean

   jmp ici
ret


 draw_presentation:

   MOV AH,09h
   MOV Dx,j0
   INT 21h 
      MOV AH,09h
   MOV Dx,j1
   INT 21h 
      MOV AH,09h
   MOV Dx,j2
   INT 21h 
      MOV AH,09h
   MOV Dx,j3
   INT 21h 
      MOV AH,09h
   MOV Dx,j4
   INT 21h 
      MOV AH,09h
   MOV Dx,j5
   INT 21h 
      MOV AH,09h
   MOV Dx,j6
   INT 21h 
      MOV AH,09h
   MOV Dx,j7
   INT 21h 
      MOV AH,09h
   MOV Dx,j8
   INT 21h 
      MOV AH,09h
   MOV Dx,j9
   INT 21h 
      MOV AH,09h
   MOV Dx,j10
   INT 21h 
      MOV AH,09h
   MOV Dx,j11
   INT 21h 
      MOV AH,09h
   MOV Dx,j12
   INT 21h 
      MOV AH,09h
   MOV Dx,j13
   INT 21h 
      MOV AH,09h
   MOV Dx,j14
   INT 21h 
      MOV AH,09h
   MOV Dx,j15
   INT 21h 
      MOV AH,09h
   MOV Dx,j16
   INT 21h 
      MOV AH,09h
   MOV Dx,j17
   INT 21h 
      MOV AH,09h
   MOV Dx,j18
   INT 21h 
      MOV AH,09h
   MOV Dx,j19
   INT 21h 
      MOV AH,09h
   MOV Dx,j20
   INT 21h 
      MOV AH,09h
   MOV Dx,j21
   INT 21h 
      MOV AH,09h
   MOV Dx,j22
   INT 21h 
      MOV AH,09h
   MOV Dx,j23
   INT 21h 
      MOV AH,09h
   MOV Dx,j24
   INT 21h 
      MOV AH,09h
   MOV Dx,j25
   INT 21h 
      MOV AH,09h
   MOV Dx,j26
   INT 21h 
      MOV AH,09h
   MOV Dx,j27
   INT 21h 
      MOV AH,09h
   MOV Dx,j28
   INT 21h 
      MOV AH,09h
   MOV Dx,j29
   INT 21h 
      MOV AH,09h
   MOV Dx,j30
   INT 21h 
      MOV AH,09h
   MOV Dx,j31
   INT 21h 
      MOV AH,09h
   MOV Dx,j32
   INT 21h 
      MOV AH,09h
   MOV Dx,j33
   INT 21h 
      MOV AH,09h
   MOV Dx,j34
   INT 21h 
      MOV AH,09h
   MOV Dx,j35
   INT 21h 
      MOV AH,09h
   MOV Dx,j36
   INT 21h 

        MOV AH,09h
   MOV Dx,j37
   INT 21h 
      MOV AH,09h
   MOV Dx,j38
   INT 21h 
      MOV AH,09h
   MOV Dx,j39
   INT 21h 

   MOV AH,01h
	INT 21H
    
    mov ax,0A000h
mov es,ax
mov cx,320
cld
rep stosw
    mov ah,00h  ; clear screen
    int 10h

   ret
 
menu :


      
     MOV AH,09h
   MOV Dx,msg1
   INT 21h 
      MOV AH,09h
   MOV Dx,msg2
   INT 21h 
      MOV AH,09h
   MOV Dx,msg3
   INT 21h 
      MOV AH,09h
   MOV Dx,msg4
   INT 21h 
      MOV AH,09h
   MOV Dx,msg5
   INT 21h 
      MOV AH,09h
   MOV Dx,choix
   INT 21h 


ret

 clean : 

push eax
mov ah,0h
mov al,03h
int 10h
pop eax

ret
 
 read:

    push cs
    pop ds ; COM file, ds = cs

    mov ah, 0x0A ; Function 0Ah Buffered input
    mov dx, string_buf ; ds:dx points to string buffer
    int 0x21

    movzx si, byte [string_buf+1] ; get number of chars read
    

    mov dx, string_buf + 2 ; start of actual string

    add si, dx ; si points to string + number of chars read
    mov byte [si], '$' ; Terminate string
    ;mov [readed],si

    mov ah, 0x09 ; Function 09h Print character string
    int 0x21 ; ds:dx points to string

    ;mov [readed+0],si
    ;MOV AH,09h
    ;MOV Dx,string_buf
    ;INT 21h

    ; Exit
    ;mov ax, 0x4c00
    ;int 0x21

string_buf: 
    db 255 ; size of buffer in characters
    db 0 ; filled by DOS with actual size
    times 255 db 0 ; actual string
 
 
 ret
 
 client_draw:

   MOV AH,09h
   MOV Dx,client0
   INT 21h 
      MOV AH,09h
   MOV Dx,client1
   INT 21h 
      MOV AH,09h
   MOV Dx,client2
   INT 21h 
      MOV AH,09h
   MOV Dx,client3
   INT 21h 
      MOV AH,09h
   MOV Dx,client4
   INT 21h 
      MOV AH,09h
   MOV Dx,client5
   INT 21h 
      MOV AH,09h
   MOV Dx,client6
   INT 21h 
      MOV AH,09h
   MOV Dx,client7
   INT 21h 
      MOV AH,09h
   MOV Dx,client8
   INT 21h 
      MOV AH,09h
   MOV Dx,client9
   INT 21h 
      MOV AH,09h
   MOV Dx,client10
   INT 21h 
      MOV AH,09h
   MOV Dx,client11
   INT 21h 
      MOV AH,09h
   MOV Dx,client12
   INT 21h 
      MOV AH,09h
   MOV Dx,client13
   INT 21h 
     MOV AH,09h
   MOV Dx,client14
   INT 21h 
      MOV AH,09h
   MOV Dx,client15
   INT 21h 
ret
 
 
 
 
 
 
 
 
 
 
 
 
 
 
