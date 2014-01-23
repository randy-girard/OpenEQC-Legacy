EQClassic source code from January 1st, 2010
Requires EverQuest Trilogy client (out of box, no patches)

Required Library Files & Source Includes
-----------------------------------
OpenSSL dll: http://slproweb.com/products/Win32OpenSSL.html
MySQL 5.1 x86: http://dev.mysql.com/downloads/mysql/5.1.html
Zlib: http://sourceforge.net/projects/libpng/files/zlib/1.2.3/zlib123-dll.zip/download
ActivePerl x86: http://www.activestate.com/activeperl/downloads/

ActivePerl commands...
ppm install DBI
ppm install IO-stringy

VS.NET 2010 Includes & Libraries...
Include files: C:\mysql\include
Include files: C:\perl\lib\CORE
Include files: C:\zlib\include
Library files: C:\mysql\lib\opt
Library files: C:\perl\lib\CORE
Library files: C:\zlib\lib

Additional Notes...
Database files located in db folder.
LoginServer solution located in LS folder.
Changes to original source commented with //newage.
Host eqclassic server by opening MiniLogin.exe, World.exe and Boot5zones.bat