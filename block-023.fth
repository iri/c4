#256  #71 or const key-home ( 27 91 72 )
#256  #72 or const key-up   ( 27 91 65 )
#256  #73 or const key-pgup ( 27 91 53 126 )
#256  #75 or const key-left ( 27 91 68 )
#256  #77 or const key-right( 27 91 67 )
#256  #79 or const key-end  ( 27 91 70 )
#256  #80 or const key-down ( 27 91 66 )
#256  #81 or const key-pgdn ( 27 91 54 126 )
#256  #82 or const key-ins  ( 27 91 50 126 )
#256  #83 or const key-del  ( 27 91 51 126 )
#256 #119 or const key-chome( 27 91 49 59 53 72 )
#256 #117 or const key-cend ( 27 91 49 59 53 70 )

win-key( --k )key #256 or ;
vk2( --k )key 126 <>if27 exitthen
   a@ 50 =ifkey-ins   exitthen
   a@ 51 =ifkey-del   exitthen
   a@ 53 =ifkey-pgup  exitthen
   a@ 54 =ifkey-pgdn  exitthen  27 ;
vk1( --k )key a!
   a@ 65 =ifkey-up    exitthen
   a@ 66 =ifkey-down  exitthen
   a@ 67 =ifkey-right exitthen
   a@ 68 =ifkey-left  exitthen
   a@ 70 =ifkey-end   exitthen
   a@ 72 =ifkey-home  exitthen
   a@ 50 55 btwiifvk2 exitthen  27 ;
vt-key( --k )key 91 =ifvk1 exitthen27 ;
vkey( --k )key
   dup 224 =ifdrop win-key exitthen
   dup  27 =ifdrop vt-key  exitthen;

