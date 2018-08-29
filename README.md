EQClassic source code from January 1st, 2010

Requires EverQuest Trilogy client (out of box, no patches)

Dependencies
---
- MySQL 5.1 (http://dev.mysql.com/downloads/mysql/5.1.html)
  - Install with Developer option
- ActivePerl 5.16 (http://www.activestate.com/activeperl/downloads)
- OpenSSL (This is bundled with project, in Dependencies folder)
- zlib (in Dependencies folder)

Required Files
---
- Download the maps and database files from http://newagesoldier.com/myfiles/openeqc/
- MISC folder has all files required to run the server.
- Query all sql files from the db folder.

Setup
---
You may need to make updates to the location of includes and lib folders for MySQL and ActivePerl if they are not in the default locations:
- MySQL
  - C:\Program Files (x85)\MySQL\MySQL Server 5.1\include
  - C:\Program Files (x85)\MySQL\MySQL Server 5.1\lib
  - C:\Program Files (x85)\MySQL\MySQL Server 5.1\lib\debug
- ActivePerl
  - C:\perl\lib\Core

Database
---
Source the files that are in the db folder.
