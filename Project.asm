[org 0x100]
jmp start
;-------------------------------------------
oldisr: dd 0
tickcount:    dw   0
seconds: dw 0
;-------------------------------------------
clrscr:
	push es
	push ax
	push di
	mov ax ,0xb800
	mov es,ax
	mov di,0
nextloc:
	mov word [es:di],0x6020
	add di,2
	cmp di,4000
	jne nextloc
	pop di
	pop ax
	pop es
	ret 
;-------------------------------------------
upperborder:
	push es
	push ax
	push di
	mov di,0
	mov ax,0xb800
	mov es,ax
loopsec:
	mov word [es:di] , 0xA000
	add di,2
	cmp di,160
	jne loopsec
	pop di
	pop ax
	pop es
	ret
;-------------------------------------------
leftborder:
	push es
	push ax
	push di
	mov di,160
	mov ax,0xb800
	mov es,ax
loopsect2:
	mov word [es:di] , 0xA000
	add di,160
	cmp di,3840
	jne loopsect2
	pop di
	pop ax
	pop es
	ret
;-------------------------------------------
bottomborder:
	push es
	push ax
	push di
	mov di,3840
	mov ax,0xb800
	mov es,ax
sec:
	mov word [es:di] , 0xA000
	add di,2
	cmp di,4000
	jne sec
	pop di
	pop ax
	pop es
	ret
;-------------------------------------------
rightborder:
	push es
	push ax
	push di
	mov di,318
	mov ax,0xb800
	mov es,ax
sec1:
	mov word [es:di] , 0xA000
	add di,160
	cmp di,3998
	jne sec1
	pop di
	pop ax
	pop es
	ret
;-------------------------------------------
line1:
	push es
	push ax
	push di
	mov ax,0xb800
	mov es,ax
	mov di,162
s1:
	mov word [es:di],0x6020
	add di,2
	cmp di,178
	jne s1
	mov word [es:di], 0xA000
	add di,2
s2:
	mov word [es:di],0x6020
	add di,2
	cmp di,210
	jne s2
	mov word [es:di], 0xA000
	add di,2
	pop di
	pop ax
	pop es
	ret
;-------------------------------------------
line2:
	push es
	push ax
	push di
	mov ax,0xb800
	mov es,ax
	mov di,322
se1:
	mov word [es:di],0x6020
	add di,2
	cmp di,338
	jne se1
	mov word [es:di], 0xA000
	add di,2
se2:
	mov word [es:di],0x6020
	add di,2
	cmp di,370
	jne se2
	mov word [es:di], 0xA000
	add di,2
	pop di
	pop ax
	pop es
	ret
;-------------------------------------------
line3:
	push es
	push ax
	push di
	mov ax,0xb800
	mov es,ax
	mov di,482
s01:
	mov word [es:di],0x6020
	add di,2
	cmp di,498
	jne s01
	mov word [es:di], 0xA000
	mov di,508
s02:
	mov word [es:di],0xA000
	add di,2
	cmp di,518
	jne s02
	mov word [es:di], 0x6020
	mov di,544
s03:
	mov word [es:di],0xA000
	add di,2
	cmp di,608
	jne s03
	mov word [es:di], 0x6020
	mov di,530
	mov word [es:di],0xA000
	pop di
	pop ax
	pop es
	ret
;-------------------------------------------
line4:
	push es
	push ax
	push di
	mov ax,0xb800
	mov es,ax
	mov di,658
s001:
	mov word [es:di],0xA000
	add di,160
	cmp di,3538
	jne s001
	mov word [es:di], 0xA000
	pop di
	pop ax
	pop es
	ret
;-------------------------------------------
l200:
	push es
	push ax
	push di
	mov ax,0xb800
	mov es,ax
	mov di,3538
a1:
	mov word [es:di],0xA000
	add di,2
	cmp di,3648
	jne a1
	mov word [es:di], 0xA000
	pop di
	pop ax
	pop es
	ret
;-------------------------------------------
l201:
	push es
	push ax
	push di
	mov ax,0xb800
	mov es,ax
	mov di,3256
a2:
	mov word [es:di],0xA000
	add di,2
	cmp di,3358
	jne a2
	mov word [es:di], 0xA000
	mov di,668
a3:
	mov word [es:di],0xA000
	add di,160
	cmp di,3548
	jne a3
	mov word [es:di], 0xA000
	mov di,842
a4:
	mov word [es:di],0xA000
	add di,160
	cmp di,2602
	jne a4
	mov word [es:di], 0xA000
	mov di,210
a5:
	mov word [es:di],0xA000
	add di,160
	cmp di,850
	jne a5
	mov word [es:di], 0xA000
	mov di,544
a6:
	mov word [es:di],0xA000
	add di,160
	cmp di,1184
	jne a6
	mov word [es:di], 0xA000
	mov di,1170
a7:
	mov word [es:di],0xA000
	add di,160
	cmp di,2930
	jne a7
	mov word [es:di], 0xA000
	mov di,842
a8:
	mov word [es:di],0xA000
	add di,2
	cmp di,850
	jne a8
	mov word [es:di], 0xA000
	mov di,1170
a9:
	mov word [es:di],0xA000
	add di,2
	cmp di,1248
	jne a9
	mov word [es:di], 0xA000
	mov di,880
b1:
	mov word [es:di],0xA000
	add di,2
	cmp di,958
	jne b1
	mov word [es:di], 0xA000
	mov di,2908
b2:
	mov word [es:di],0xA000
	add di,2
	cmp di,3020
	jne b2
	mov word [es:di], 0xA000
	mov di,1504
b3:
	mov word [es:di],0xA000
	add di,2
	cmp di,1598
	jne b3
	mov word [es:di], 0xA000
	mov di,2144
b4:
	mov word [es:di],0xA000
	add di,2
	cmp di,2238
	jne b4
	mov word [es:di], 0xA000
	mov di,1810
b5:
	mov word [es:di],0xA000
	add di,2
	cmp di,1888
	jne b5
	mov word [es:di], 0xA000
	mov di,2450
b6:
	mov word [es:di],0xA000
	add di,2
	cmp di,2528
	jne b6
	mov word [es:di], 0xA000
	mov di,170
b7:
	mov word [es:di],0xA000
	add di,160
	cmp di,2730
	jne b7
	mov word [es:di], 0xA000
	mov di,470
c1:
	mov word [es:di],0x6E4F
	add di,2
	cmp di,472
	jne c1
	mov word [es:di], 0x6E4F
	mov di,628
c2:
	mov word [es:di],0x6E4F
	add di,2
	cmp di,634
	jne c2
	mov word [es:di], 0x6E4F
	mov di,790
c3:
	mov word [es:di],0x6E4F
	add di,2
	cmp di,792
	jne c3
	mov word [es:di], 0x6E4F
	mov di,2228
b9:
	mov word [es:di],0xA000
	add di,160
	cmp di,2708
	jne b9
	mov word [es:di], 0xA000
	mov di,2480
d1:
	mov word [es:di],0xA000
	add di,160
	cmp di,2640
	jne d1
	mov word [es:di], 0xA000
	mov di,3368
	pop di
	pop ax
	pop es
	ret
;-------------------------------------------
screen_border:

	call upperborder
	call leftborder
	call bottomborder
	call rightborder
	ret
;-------------------------------------------
maze:
	call line1
	call line2
	call line3
	call line4
	call l200
	call l201	
	ret
;-------------------------------------------
kbisr:
	push ax
	push es
	cmp si,0
	je near g1
t1:
	mov ax,0xb800
	mov es,ax
	in al, 0x60   ; wait for the keyboard interupt
	jmp W

W:
	cmp al,0x11 ; W
	jne A
	cmp di,466
	je near next_screen
	cmp di,624
	je near next_screen
	cmp di,786
	je near next_screen

	mov dx ,[es:di-160]     ;condition(body) to not go above if there is wall
	cmp dx, 0xA000
	je near n1
	mov dx ,[es:di+2-160]   ;condition(head-rightside) to not go above if there is wall
	cmp dx, 0xA000
	je near n1
	mov dx ,[es:di-2-160]   ;condition(head-leftside) to not go above if there is wall
	cmp dx, 0xA000
	je near n1

	mov word [es:di],0x6020          ; current position 'orange'
	mov word [es:di+2],0x6020        ; right side position    'orange'
	mov word [es:di-2],0x6020        ; left side position 'orange' 
	sub di,160
	mov word [es:di] , 0x0000        ; new location bee body print
	mov word [es:di+2] , 0x6029      ; bee head code with ) print 
A:
	cmp al,0x1E
	jne S

	cmp di,466
	je near next_screen
	cmp di,624
	je near next_screen
	cmp di,786
	je near next_screen

	mov dx ,[es:di-4]                ;condition(body) to not go above if there is wall
	cmp dx, 0xA000
	je near n1

	mov word [es:di],0x6020
	mov word [es:di+2],0x6020
	sub di, 2
	mov word [es:di] , 0x0000
	mov word [es:di-2] , 0x6028      ; bee code with (
S: 
	cmp al,0x1F
	jne D

	cmp di,466
	je near next_screen
	cmp di,624
	je near next_screen
	cmp di,786
	je near next_screen

	mov dx ,[es:di+160]     ;condition(body) to not go above if there is wall
	cmp dx, 0xA000
	je near n1
	mov dx ,[es:di+2+160]   ;condition(head-rightside) to not go below if there is wall
	cmp dx, 0xA000
	je near n1
	mov dx ,[es:di-2+160]   ;condition(head-leftside) to not go below if there is wall
	cmp dx, 0xA000
	je near n1

	mov word [es:di],0x6020
	mov word [es:di-2],0x6020
	mov word [es:di+2],0x6020
	add di,160
	cmp di,3838             ; condition to not let the bee slip below the blinking X
	jg near a44
	mov word [es:di] , 0x0000
	mov word [es:di+2] , 0x6029      ; bee code with )
D:
	cmp al,0x20
	jne nomatch

	cmp di,466
	je near next_screen
	cmp di,624
	je near next_screen
	cmp di,786
	je near next_screen

	mov dx ,[es:di+4]     ;condition(body) to not go above if there is wall
	cmp dx, 0xA000
	je near n1
	mov word [es:di],0x6020
	mov word [es:di+2],0x6020
	mov word [es:di-2],0x6020
	add di,2
	mov word [es:di] , 0x0000 
	mov word [es:di+2] , 0x6029       ; bee code with )
nomatch:
	mov al,0x20
	out 0x20 ,al
	mov ax,0x4c00
	int 0x21
	pop es
	pop ax
	iret
;-------------------------------------------
g1:
	inc si
	mov di,3686
	jmp t1
;-------------------------------------------
mover:
	xor ax,ax
	mov es,ax
	mov ax,[es:9*4]
	mov [oldisr],ax
	mov ax,[es:9*4+2]
	mov [oldisr+2],ax
	cli 
	mov word [es:9*4],kbisr
	mov [es:9*4+2],cs
	sti
l1:
jmp l1
	ret
;-------------------------------------------
a44:
sub di,160
n1:
in al,0x60
cmp al,0x11
je W
cmp al,0x1E
je A
cmp al,0x1F
je S
cmp al,0x20
je D
jmp t1
;-------------------------------------------
printnum:
	push bp
	mov  bp, sp
	push es
	push ax
	push bx
	push cx
	push dx
	push di
	mov  ax, 0xb800
	mov  es, ax
	mov  ax, [bp+4]
	mov  bx, 10
	mov cx, 0
nextdigit:
	mov  dx, 0
	div  bx
	add  dl, 0x30
	push dx
	inc  cx
	cmp  ax, 0
	jnz  nextdigit
	mov di, 140
nextpos:
	pop  dx
	mov  dh, 0x07
	mov  [es:di], dx
	add  di, 2
	loop nextpos
	pop  di
	pop  dx
	pop  cx
	pop  bx
	pop  ax
	pop  es
	pop  bp
	ret  2
;-------------------------------------------
printnum2:
	push bp
	mov  bp, sp
	push es
	push ax
	push bx
	push cx
	push dx
	push di
	mov  ax, 0xb800
	mov  es, ax
	mov  ax, [bp+4]
	mov  bx, 10
	mov cx, 0
nextdigi:
	mov  dx, 0
	div  bx
	add  dl, 0x30
	push dx
	inc  cx
	cmp  ax, 0
	jnz  nextdigi
	mov di, 2010
nextpost:
	pop  dx
	mov  dh, 0x60
	mov  [es:di], dx
	add  di, 2
	loop nextpost
	pop  di
	pop  dx
	pop  cx
	pop  bx
	pop  ax
	pop  es
	pop  bp
	ret  2
;-------------------------------------------
timer:
	push ax
	inc  word [cs:tickcount]; increment tick count
	mov ax, [cs:tickcount]
	mov bl, 18
	div bl
	cmp ah, 0
	jne templabel
	mov word [seconds],ax
	push ax
	call printnum

templabel:
	mov  al, 0x20
	out  0x20, al
	pop ax
	iret
;-------------------------------------------
tim:
	xor  ax, ax
	mov  es, ax
	cli
	mov  word [es:8*4], timer; store offset at n*4
	mov  [es:8*4+2], cs
	sti
	call clrscr
	call screen_border
	call maze
	call mover
	mov  dx, start
	add  dx, 15
	mov  cl, 4
	shr  dx, cl
	mov  ax, 0x3100
	int  0x21
	ret
;-------------------------------------------
next_screen:
	mov word dx, [seconds]
	cmp dx,100
	jge lost_screen
	jle score_screen
;-------------------------------------------
lost_screen:
	push ax
	push es
	push di
	call clrscr
	mov ax,0xb800
	mov es,ax
	mov di,1994
	mov byte [es:di],'Y'
	mov byte [es:di+2],'O'
	mov byte [es:di+4],'U'
	mov byte [es:di+8],'L'
	mov byte [es:di+10],'O'
	mov byte [es:di+12],'S'
	mov byte [es:di+14],'T'
	mov byte [es:di+16],'!'
	pop di
	pop es
	pop ax
	iret 
	iret 
	jmp end
;-------------------------------------------
score_screen:
	push ax
	push es
	push di
	call clrscr
	mov di,1986
	mov byte [es:di],'Y'
	mov byte [es:di+2],'O'
	mov byte [es:di+4],'U'
	mov byte [es:di+6],'R'
	mov byte [es:di+10],'S'
	mov byte [es:di+12],'C'
	mov byte [es:di+14],'O'
	mov byte [es:di+16],'R'
	mov byte [es:di+18],'E'
	mov byte [es:di+20],':'
	mov ax,dx
	mov dx,100
	sub dx,ax
	push dx 
	call printnum2
	pop di
	pop es
	pop ax
	iret 
	iret 
	jmp end
;-------------------------------------------
start:
	call tim
end:
	mov ax,0x4c00
	int 0x21
;-------------------------------------------