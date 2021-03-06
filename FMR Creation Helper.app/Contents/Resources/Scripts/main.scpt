FasdUAS 1.101.10   ��   ��    k             l     ��  ��    t n "on open" handler specifies the code to be executed when the user drops a folder onto the application droplet     � 	 	 �   " o n   o p e n "   h a n d l e r   s p e c i f i e s   t h e   c o d e   t o   b e   e x e c u t e d   w h e n   t h e   u s e r   d r o p s   a   f o l d e r   o n t o   t h e   a p p l i c a t i o n   d r o p l e t   
  
 l     ��  ��    r l dropped_folder variable will be an array of POSIX file paths (Users:tarrlab:Desktop:) of the dropped folder     �   �   d r o p p e d _ f o l d e r   v a r i a b l e   w i l l   b e   a n   a r r a y   o f   P O S I X   f i l e   p a t h s   ( U s e r s : t a r r l a b : D e s k t o p : )   o f   t h e   d r o p p e d   f o l d e r      i         I     �� ��
�� .aevtodocnull  �    alis  o      ���� 0 dropped_folder  ��    k     �       l     ��  ��    d ^ Set variable "theScript" to the path of the Ruby script located in the app's package contents     �   �   S e t   v a r i a b l e   " t h e S c r i p t "   t o   t h e   p a t h   o f   t h e   R u b y   s c r i p t   l o c a t e d   i n   t h e   a p p ' s   p a c k a g e   c o n t e n t s      r         n         1    ��
�� 
strq  l      ����   n      ! " ! 1    ��
�� 
psxp " l     #���� # c      $ % $ l    	 &���� & l    	 '���� ' b     	 ( ) ( l     *���� * I    �� + ,
�� .earsffdralis        afdr +  f      , �� -��
�� 
rtyp - m    ��
�� 
ctxt��  ��  ��   ) m     . . � / / > C o n t e n t s : F M R _ C r e a t i o n _ H e l p e r . r b��  ��  ��  ��   % m   	 
��
�� 
alis��  ��  ��  ��    o      ���� 0 	thescript 	theScript   0 1 0 l   ��������  ��  ��   1  2 3 2 l   �� 4 5��   4 ] W Set variable "thePath" to the path of the folder that was dropped onto the application    5 � 6 6 �   S e t   v a r i a b l e   " t h e P a t h "   t o   t h e   p a t h   o f   t h e   f o l d e r   t h a t   w a s   d r o p p e d   o n t o   t h e   a p p l i c a t i o n 3  7 8 7 r     9 : 9 c     ; < ; n     = > = 1    ��
�� 
psxp > o    ���� 0 dropped_folder   < m    ��
�� 
ctxt : o      ���� 0 thepath thePath 8  ? @ ? l   ��������  ��  ��   @  A B A l   �� C D��   C � � Ask the user to enter a name for the text file that will be generated and store whatever they enter in the variable textFileName    D � E E   A s k   t h e   u s e r   t o   e n t e r   a   n a m e   f o r   t h e   t e x t   f i l e   t h a t   w i l l   b e   g e n e r a t e d   a n d   s t o r e   w h a t e v e r   t h e y   e n t e r   i n   t h e   v a r i a b l e   t e x t F i l e N a m e B  F G F O    , H I H r    + J K J n    ) L M L 1   ' )��
�� 
psxp M l   ' N���� N I   '���� O
�� .sysonwflfile    ��� null��   O �� P Q
�� 
prmt P m     ! R R � S S Z S e l e c t   a   n a m e   a n d   l o c a t i o n   f o r   t h e   t e x t   f i l e . Q �� T��
�� 
dfnm T m   " # U U � V V  ��  ��  ��   K o      ���� 0 textfilename textFileName I m     W W�                                                                                  MACS  alis    b  blintz                     �J�rH+   �|
Finder.app                                                      F��R        ����  	                CoreServices    �K/�      �͒     �| Y� Y�  0blintz:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    b l i n t z  &System/Library/CoreServices/Finder.app  / ��   G  X Y X l  - -��������  ��  ��   Y  Z [ Z l  - -�� \ ]��   \ ^ X Ask the user to enter the number of slices for the data set, row number, and resolution    ] � ^ ^ �   A s k   t h e   u s e r   t o   e n t e r   t h e   n u m b e r   o f   s l i c e s   f o r   t h e   d a t a   s e t ,   r o w   n u m b e r ,   a n d   r e s o l u t i o n [  _ ` _ r   - J a b a n   - H c d c 1   D H��
�� 
ttxt d l  - D e���� e I  - D�� f g
�� .sysodlogaskr        TEXT f m   - . h h � i i � E n t e r   n u m b e r   o f   s l i c e s   f o r   t h i s   d a t a   s e t .   A l l   d a t a   t o   b e   p r o c e s s e d   m u s t   h a v e   t h e   s a m e   n u m b e r   o f   s l i c e s . g �� j k
�� 
dtxt j m   / 2 l l � m m   k �� n o
�� 
btns n J   5 : p p  q�� q m   5 8 r r � s s  C o n t i n u e &��   o �� t��
�� 
dflt t m   = >���� ��  ��  ��   b o      ���� 0 slice_number   `  u v u r   K j w x w n   K h y z y 1   d h��
�� 
ttxt z l  K d {���� { I  K d�� | }
�� .sysodlogaskr        TEXT | m   K N ~ ~ �   � E n t e r   n u m b e r   o f   r o w s / c o l u m n s   ( o n l y   e n t e r   o n e   n u m b e r ,   m u s t   b e   t h e   s a m e   f o r   a l l   d a t a   t o   b e   p r o c e s s e d . ) . } �� � �
�� 
dtxt � m   O R � � � � �   � �� � �
�� 
btns � J   U Z � �  ��� � m   U X � � � � �  C o n t i n u e &��   � �� ���
�� 
dflt � m   ] ^���� ��  ��  ��   x o      ���� 0 
row_number   v  � � � r   k � � � � n   k � � � � 1   � ���
�� 
ttxt � l  k � ����� � I  k ��� � �
�� .sysodlogaskr        TEXT � m   k n � � � � � � E n t e r   X / Y   r e s o l u t i o n   ( o n l y   e n t e r   o n e   n u m b e r ,   m u s t   b e   t h e   s a m e   f o r   a l l   d a t a   t o   b e   p r o c e s s e d . ) . � �� � �
�� 
dtxt � m   o r � � � � �   � �� � �
�� 
btns � J   u z � �  ��� � m   u x � � � � � & G e n e r a t e   T e x t   F i l e &��   � �� ���
�� 
dflt � m   } ~���� ��  ��  ��   � o      ���� 0 
resolution   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � � � Set variable "the_path" to execute the Ruby script - this will allow the Ruby script to send information back to the Applescript    � � � �   S e t   v a r i a b l e   " t h e _ p a t h "   t o   e x e c u t e   t h e   R u b y   s c r i p t   -   t h i s   w i l l   a l l o w   t h e   R u b y   s c r i p t   t o   s e n d   i n f o r m a t i o n   b a c k   t o   t h e   A p p l e s c r i p t �  � � � l  � ��� � ���   � R L Execute the Ruby script, and send the variable "thePath" to the Ruby script    � � � � �   E x e c u t e   t h e   R u b y   s c r i p t ,   a n d   s e n d   t h e   v a r i a b l e   " t h e P a t h "   t o   t h e   R u b y   s c r i p t �  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � 
 R u b y   � o   � ����� 0 	thescript 	theScript � m   � � � � � � �    � l  � � ����� � n   � � � � � 1   � ���
�� 
strq � l  � � ����� � n   � � � � � 1   � ���
�� 
psxp � o   � ����� 0 thepath thePath��  ��  ��  ��   � m   � � � � � � �    � o   � ����� 0 textfilename textFileName � m   � � � � � � �    � o   � ����� 0 slice_number   � m   � � � � � � �    � o   � ����� 0 
row_number   � m   � � � � � � �    � o   � ����� 0 
resolution   � m   � � � � � � �   ��   � o      ���� 0 the_path   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � Z T Once the Ruby script finishes, it'll send back the path to the text file it created    � � � � �   O n c e   t h e   R u b y   s c r i p t   f i n i s h e s ,   i t ' l l   s e n d   b a c k   t h e   p a t h   t o   t h e   t e x t   f i l e   i t   c r e a t e d �  � � � l  � ��� � ���   � m g The path is stored in the_path, so we'll extract it by setting a new variable to the items of the_path    � � � � �   T h e   p a t h   i s   s t o r e d   i n   t h e _ p a t h ,   s o   w e ' l l   e x t r a c t   i t   b y   s e t t i n g   a   n e w   v a r i a b l e   t o   t h e   i t e m s   o f   t h e _ p a t h �  � � � r   � � � � � c   � � � � � n   � � � � � 2  � ���
�� 
cobj � o   � ����� 0 the_path   � m   � ���
�� 
TEXT � o      ���� 0 textfile_path textFile_path �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � � z Copy the_path to the clipboard so it can be easily pasted into the JavaScript BV script that the user will run afterwards    � � � � �   C o p y   t h e _ p a t h   t o   t h e   c l i p b o a r d   s o   i t   c a n   b e   e a s i l y   p a s t e d   i n t o   t h e   J a v a S c r i p t   B V   s c r i p t   t h a t   t h e   u s e r   w i l l   r u n   a f t e r w a r d s �  � � � I  � ��� ���
�� .JonspClpnull���     **** � o   � ����� 0 textfile_path textFile_path��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� ��      Open BrainVoyager    � $   O p e n   B r a i n V o y a g e r �  O  � � I  � �������
�� .miscactvnull��� ��� null��  ��   m   � ��                                                                                      @ alis    �  blintz                     �J�rH+   -BrainVoyager QX.app                                             @��u�        ����  	                BrainVoyager QX_2.6     �K/�      ���.     -  &z  =blintz:Applications: BrainVoyager QX_2.6: BrainVoyager QX.app   (  B r a i n V o y a g e r   Q X . a p p    b l i n t z  4Applications/BrainVoyager QX_2.6/BrainVoyager QX.app  / ��   	 l  � ��������  ��  �  	 

 l  � ��~�~   O I Open the "Edit and Run Scripts" pane (see below for menu_click handlers)    � �   O p e n   t h e   " E d i t   a n d   R u n   S c r i p t s "   p a n e   ( s e e   b e l o w   f o r   m e n u _ c l i c k   h a n d l e r s ) �} I   � ��|�{�| 0 
menu_click   �z J   � �  m   � � �  B r a i n V o y a g e r   Q X  m   � � �  S c r i p t s �y m   � � � . E d i t   a n d   R u n   S c r i p t s . . .�y  �z  �{  �}     l     �x�w�v�x  �w  �v    !  l     �u�t�s�u  �t  �s  ! "#" l     �r$%�r  $ l f Both handlers below were obtained from: http://hints.macworld.com/article.php?story=20060921045743404   % �&& �   B o t h   h a n d l e r s   b e l o w   w e r e   o b t a i n e d   f r o m :   h t t p : / / h i n t s . m a c w o r l d . c o m / a r t i c l e . p h p ? s t o r y = 2 0 0 6 0 9 2 1 0 4 5 7 4 3 4 0 4# '(' l     �q�p�o�q  �p  �o  ( )*) i    +,+ I      �n-�m�n 0 
menu_click  - .�l. o      �k�k 0 mlist mList�l  �m  , k     T// 010 q      22 �j3�j 0 appname appName3 �i4�i 0 topmenu topMenu4 �h�g�h 0 r  �g  1 565 l     �f�e�d�f  �e  �d  6 787 l     �c9:�c  9   Validate our input   : �;; &   V a l i d a t e   o u r   i n p u t8 <=< Z    >?�b�a> A     @A@ n    BCB 1    �`
�` 
lengC o     �_�_ 0 mlist mListA m    �^�^ ? R    �]D�\
�] .ascrerr ****      � ****D m   
 EE �FF 8 M e n u   l i s t   i s   n o t   l o n g   e n o u g h�\  �b  �a  = GHG l   �[�Z�Y�[  �Z  �Y  H IJI l   �XKL�X  K ; 5 Set these variables for clarity and brevity later on   L �MM j   S e t   t h e s e   v a r i a b l e s   f o r   c l a r i t y   a n d   b r e v i t y   l a t e r   o nJ NON r    +PQP l   R�W�VR n    STS 7  �UUV
�U 
cobjU m    �T�T V m    �S�S T o    �R�R 0 mlist mList�W  �V  Q J      WW XYX o      �Q�Q 0 appname appNameY Z�PZ o      �O�O 0 topmenu topMenu�P  O [\[ r   , ;]^] l  , 9_�N�M_ n   , 9`a` 7 - 9�Lbc
�L 
cobjb m   1 3�K�K c l  4 8d�J�Id n  4 8efe 1   6 8�H
�H 
lengf o   4 6�G�G 0 mlist mList�J  �I  a o   , -�F�F 0 mlist mList�N  �M  ^ o      �E�E 0 r  \ ghg l  < <�D�C�B�D  �C  �B  h iji l  < <�Akl�A  k A ; This overly-long line calls the menu_recurse function with   l �mm v   T h i s   o v e r l y - l o n g   l i n e   c a l l s   t h e   m e n u _ r e c u r s e   f u n c t i o n   w i t hj non l  < <�@pq�@  p > 8 two arguments: r, and a reference to the top-level menu   q �rr p   t w o   a r g u m e n t s :   r ,   a n d   a   r e f e r e n c e   t o   t h e   t o p - l e v e l   m e n uo s�?s O  < Ttut n  @ Svwv I   A S�>x�=�> 0 menu_click_recurse  x yzy o   A B�<�< 0 r  z {�;{ l  B O|�:�9| n  B O}~} l  L O�8�7 4   L O�6�
�6 
menE� o   M N�5�5 0 topmenu topMenu�8  �7  ~ n  B L��� l  I L��4�3� 4   I L�2�
�2 
mbri� o   J K�1�1 0 topmenu topMenu�4  �3  � n  B I��� l 	 F I��0�/� l  F I��.�-� 4   F I�,�
�, 
mbar� m   G H�+�+ �.  �-  �0  �/  � l  B F��*�)� 4   B F�(�
�( 
prcs� o   D E�'�' 0 appname appName�*  �)  �:  �9  �;  �=  w  f   @ Au m   < =���                                                                                  sevs  alis    �  blintz                     �J�rH+   �|System Events.app                                               c��Ɖ        ����  	                CoreServices    �K/�      ���     �| Y� Y�  7blintz:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    b l i n t z  -System/Library/CoreServices/System Events.app   / ��  �?  * ��� l     �&�%�$�&  �%  �$  � ��#� i    ��� I      �"��!�" 0 menu_click_recurse  � ��� o      � �  0 mlist mList� ��� o      �� 0 parentobject parentObject�  �!  � k     H�� ��� q      �� ��� 0 f  � ��� 0 r  �  � ��� l     ����  �  �  � ��� l     ����  � , & `f` = first item, `r` = rest of items   � ��� L   ` f `   =   f i r s t   i t e m ,   ` r `   =   r e s t   o f   i t e m s� ��� r     ��� n     ��� 4    ��
� 
cobj� m    �� � o     �� 0 mlist mList� o      �� 0 f  � ��� Z   "����� ?    ��� n   
��� 1    
�
� 
leng� o    �� 0 mlist mList� m   
 �� � r    ��� l   ���� n    ��� 7  ���
� 
cobj� m    �
�
 � l   ��	�� n   ��� 1    �
� 
leng� o    �� 0 mlist mList�	  �  � o    �� 0 mlist mList�  �  � o      �� 0 r  �  �  � ��� l  # #����  �  �  � ��� l  # #� ���   � < 6 either actually click the menu item, or recurse again   � ��� l   e i t h e r   a c t u a l l y   c l i c k   t h e   m e n u   i t e m ,   o r   r e c u r s e   a g a i n� ���� O   # H��� Z   ' G������ =  ' ,��� n  ' *��� 1   ( *��
�� 
leng� o   ' (���� 0 mlist mList� m   * +���� � I  / 7�����
�� .prcsclicuiel    ��� uiel� n  / 3��� 4   0 3���
�� 
menI� o   1 2���� 0 f  � o   / 0���� 0 parentobject parentObject��  ��  � n  : G��� I   ; G������� 0 menu_click_recurse  � ��� o   ; <���� 0 r  � ���� l  < C������ n  < C��� l  @ C������ 4   @ C���
�� 
menE� o   A B���� 0 f  ��  ��  � n  < @��� l  = @������ 4   = @���
�� 
menI� o   > ?���� 0 f  ��  ��  � o   < =���� 0 parentobject parentObject��  ��  ��  ��  �  f   : ;� m   # $���                                                                                  sevs  alis    �  blintz                     �J�rH+   �|System Events.app                                               c��Ɖ        ����  	                CoreServices    �K/�      ���     �| Y� Y�  7blintz:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    b l i n t z  -System/Library/CoreServices/System Events.app   / ��  ��  �#       ��������  � ������
�� .aevtodocnull  �    alis�� 0 
menu_click  �� 0 menu_click_recurse  � �� ��������
�� .aevtodocnull  �    alis�� 0 dropped_folder  ��  � 	�������������������� 0 dropped_folder  �� 0 	thescript 	theScript�� 0 thepath thePath�� 0 textfilename textFileName�� 0 slice_number  �� 0 
row_number  �� 0 
resolution  �� 0 the_path  �� 0 textfile_path textFile_path� .������ .������ W�� R�� U���� h�� l�� r�������� ~ � � � � � � � � � � � �������������
�� 
rtyp
�� 
ctxt
�� .earsffdralis        afdr
�� 
alis
�� 
psxp
�� 
strq
�� 
prmt
�� 
dfnm�� 
�� .sysonwflfile    ��� null
�� 
dtxt
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
ttxt
�� .sysoexecTEXT���     TEXT
�� 
cobj
�� 
TEXT
�� .JonspClpnull���     ****
�� .miscactvnull��� ��� null�� 0 
menu_click  �� �)��l �%�&�,�,E�O��,�&E�O� *����� �,E�UO��a a a kva ka  a ,E�Oa �a a a kva ka  a ,E�Oa �a a a kva ka  a ,E�Oa �%a %��,�,%a %�%a  %�%a !%�%a "%�%a #%j $E�O�a %-a &&E�O�j 'Oa ( *j )UO*a *a +a ,mvk+ -� ��,���������� 0 
menu_click  �� ����� �  ���� 0 mlist mList��  � ���������� 0 mlist mList�� 0 appname appName�� 0 topmenu topMenu�� 0 r  � 	��E�������������
�� 
leng
�� 
cobj
�� 
prcs
�� 
mbar
�� 
mbri
�� 
menE�� 0 menu_click_recurse  �� U��,m 	)j�Y hO�[�\[Zk\Zl2E[�k/E�Z[�l/E�ZO�[�\[Zm\Z��,2E�O� )�*�/�k/�/�/l+ U� ������������� 0 menu_click_recurse  �� ����� �  ������ 0 mlist mList�� 0 parentobject parentObject��  � ���������� 0 mlist mList�� 0 parentobject parentObject�� 0 f  �� 0 r  � �������������
�� 
cobj
�� 
leng
�� 
menI
�� .prcsclicuiel    ��� uiel
�� 
menE�� 0 menu_click_recurse  �� I��k/E�O��,k �[�\[Zl\Z��,2E�Y hO� "��,k  ��/j Y )���/�/l+ U ascr  ��ޭ