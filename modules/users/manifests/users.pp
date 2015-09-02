class users::users {

  import 'adduser.pp'

# adduser { 'username':
#   name     => 'Full Name',
#   password => 'Pre Hashed Password',
#   shell    => 'Preferred Shell',
#   uid      => 'increment this by 1',
# }

  adduser { 'prestrepo':
    name     => 'Pablo Restrepo',
    password => '$6$W8wKlIZTfN1fEhZS$4B0bjsecs2ZknNsDFy/cI8Inxv/qWqQ/7aqpyNUI87hlsH10HSy1PwpY6fioFG.mrmOO1vKi.jSbI4cOykW0z0',
    shell    => '/bin/bash',
    uid      => 101,
  }

  adduser { 'lev':
    name     => 'Lev Gorenstein',
    password => '$6$W8wKlIZTfN1fEhZS$V9eSIl772GfG8Gk6B95Xh10Ftbb2VxZV5CuUXQ/USvXdHrau.3IZlP8hV5WzcCa.8oVvZg2H91PRIqzAydd331',
    shell    => '/bin/tcsh',
    uid      => 102,
  }

  adduser { 'mgomezzul':
    name     => 'Mateo Gomez',
    password => '$6$W8wKlIZTfN1fEhZS$VceZikvD2kbGoQH71AIkvGMFt2cRSUoe8yScBIIOqPkj1bigr20Aa/6eRVTqOpFS5OcUnXV/VOT1jbxJxTdKy/',
    shell    => '/bin/bash',
    uid      => 103,
  }

  adduser { 'jpineda':
    name     => 'Juan Pineda',
    password => '$6$W8wKlIZTfN1fEhZS$rXn2S2NFE5R6aeHRAehLSx1W1Wo5Xvzh06I3/2jM3qqLjFpYetSzJNBfgajZFUcPiyA3dDyJRkxH.Qp7WjpwM/',
    shell    => '/bin/bash',
    uid      => 104,
  }

  adduser { 'mmolo':
    name     => 'Matt Molo',
    password => '$6$W8wKlIZTfN1fEhZS$c7uOU0/mRYshDokQ.ZxHX9Ml9Sj5ki0KLHbCCt7g24ZyrcWJQo6ZeZM.LJs7gQFISei4Uo.55BT1NMjLQyHd11',
    shell    => '/bin/zsh',
    uid      => 105,
  }

  adduser { 'jlee':
    name     => 'John Lee',
    password => '$6$W8wKlIZTfN1fEhZS$u7MuIr50c9cPUACKgi0or2tiaabdRPWFJ5FR63WSevRnPuHbBQ5/iTG/YF5sC2omVqdQizskvDKYGnhGaLkmb',
    shell    => '/bin/zsh',
    uid      => 106,
  }

  adduser { 'agomezl':
    name     => 'Alejandro Gomez',
    password => '$6$W8wKlIZTfN1fEhZS$6flQ3BW7Sgl/FUpi.y2zKvRxLs/ZtmiGW4eClw.B5e7HJU27kdI/kSfeA3uSwRGMDS93ZhfOK6E/UObmzykFW1',
    shell    => '/bin/bash',
    uid      => 107,
  }
  
  adduser { 'ewynne':
    name     => 'Emma Wynne',
    password => '$6$W8wKlIZTfN1fEhZS$mOo.mgxtBYejseMbB0I5qUHY26jaz22JV4eO2alL1ZfgD1IGZK3ISj//dbFHWoLc4QGFZsaB6rfKhCeLpm2/H.',
    shell    => '/bin/bash',
    uid      => 108,
  }

  adduser { 'chuck':
    name     => 'Herr Chuck Schwarz',
    password => '$6$W8wKlIZTfN1fEhZS$shoGiNrCUQRFvdv.5TzXMOIcqEAnnzUbVjxgVsgIEZ/DPOHPuzvFsK9/XdKb6UKQiaZy0IbyaeA7hfQu6m.HX1',
    shell    => '/bin/bash',
    uid      => 109,
  }
  
  adduser { 'ccorre20':
    name     => 'Camilo Correa',
    password => '$6$W8wKlIZTfN1fEhZS$MfsQ8.pW3gc2LRpvxLwazveVvaH7gycZnvCOjuwwhMOmDFRwxCP.F6mD7RNxzye4uH1symICqdf7sXYTtE6.j.',
    shell    => '/bin/bash',
    uid      => 110,
  }

  adduser { 'tgomez':
    name     => 'Tomas Gomez',
    password => '$6$W8wKlIZTfN1fEhZS$GDyxhpo5Kjx/8vhdCR7Vq.NxmvrelIaZGXIlxTRfGXBMjUIS9wsDx2BN5Pfa.nPIyifc59wxgmmzhkV9au3Pv0',
    shell    => '/bin/bash',
    uid      => 111,
  }

 
  adduser { 'jyepes':
    name     => 'Johan mariquita',
    password => '$6$W8wKlIZTfN1fEhZS$uyertBc0N4BusKmWkVqeaL/MPd2endCgjO5nhen6TCbxlMDOKVLh2hjNxBOnEPITi9rLw0b1z7dYWxYh2NGgx.',
    shell    => '/bin/bash',
    uid      => 112,
  }

  adduser { 'asalgado':
    name     => 'Alejandro Salgado',
    password => '$6$W8wKlIZTfN1fEhZS$ls8xGhhWqktzGiX74s2sVU.SWdtl9obIPB5BPZRnm5Zbwdq7Fc7ZYaulslDHH/lwxAqMD9TubOoKFoybuXB3//',
    shell    => '/bin/bash',
    uid      => 113,
  }

  adduser { 'lmejia':
    name     => 'Luis Mejia',
    password => '$6$W8wKLIZTfN1fEhZS$lQ8aYUNiRL7D0X8VFL4ESVMVHo/.OSybn7jCZbTRzrDn7hsC.BwBO/fi.J8xacWNGp5Z71dpEJmUkqUSH90Rl.',
    shell    => '/bin/bash',
    uid      => 114,
  }


  adduser { 'dsalazar':
    name     => 'Daniel Salazar',
    password => '$6$W8wKlIZTfN1fEhZS$gIoeYBoSW2gR/vJ1jv/TWplR56FRL83XkLq8HXOYhBqIssW1N9iP0ZiKWw.pfjujwMPM49JyX.XfTe8hVdupL1',
    shell    => '/bin/bash',
    uid      => 115,
  }

  adduser { 'jvasquez':
    name     => 'Danilo Algo',
    password => '$6$W8wKlIZTfN1fEhZS$81TSk5hM3.QhlpMyyZia1D5slmjUxemsoY9VXaMSAeTJ5uyOYdq576xlqV1pHW/FQM2vR/ZR7mDD5O9j2J57e.',
    shell    => '/bin/bash',
    uid      => 116,
  }

}


