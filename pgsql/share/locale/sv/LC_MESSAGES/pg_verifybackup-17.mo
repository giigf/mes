��    z      �  �   �      H
     I
  8   `
  8   �
  D   �
  8     4   P  >   �  <   �  I     9   K  ?   �  7   �     �  /     /   M  1   }     �     �  3   �       A   &  #   h  ,   �  #   �  &   �  &        +  &   K  0   r  (   �  )   �  "   �  .     6   H       	   �  6   �  $   �     �  %     I   4  d   ~  8   �  3     #   P  "   t  #   �     �  $   �     �  /        E     c     �  "   �     �     �  (   �  '   #     K  *   i  )   �  !   �  (   �     	  #   &     J     b     |  )   �  (   �  +   �       )   5  &   _  %   �     �     �     �  ,   �          %     ?  4   Z  6   �     �     �  $   �           .     O     j     �     �     �     �     �     �                /     =    L  L   R  A   �     �  ,   �       /   1     a     |     �     �     �     �     �             %   2     X  	   u  �       (  ?   D  8   �  F   �  5     =   :  G   x  <   �  L   �  H   J   F   �   ;   �   "   !  )   9!  -   c!  0   �!     �!     �!  5   �!     +"  H   A"  $   �"  *   �"  #   �"  /   �"  2   .#  (   a#  -   �#  9   �#  1   �#  3   $$  )   X$  2   �$  :   �$     �$  	   �$  >   %  $   E%     j%  .   �%  J   �%  r   �%  J   q&  C   �&  *    '  +   +'  &   W'     ~'  !   �'     �'  -   �'     (  )   "(     L(  #   h(     �(     �(  4   �(  9   �(     5)  1   U)  6   �)  "   �)  .   �)     *  $   /*     T*     n*     �*  ,   �*  +   �*  .    +  (   /+  3   X+  2   �+  7   �+     �+     ,     4,  +   =,     i,     o,  !   �,  >   �,  ;   �,     *-     I-  )   P-  )   z-  %   �-  (   �-     �-  "   .  #   5.     Y.     i.     y.     �.     �.     �.     �.     �.  �   �.  H   �/  E   0     d0  3   m0     �0  3   �0     �0     1     $1     91     K1     d1     x1     �1     �1  (   �1     �1  	   �1         0         '   r       @          &   y                     j   Y       G              z       s          n       W       6          Q   h         o          A   +   9   :   ?         	   B   R   E   7       e   8      )   K   F   Z       H   t               [   <      "   *      %   g       ;             _              P       x   D   T   =   f       O   J   .   M                 q   S   $   d       2   5   !   U   ]      V   L   i       k      ,   4           l   /   X   (   w   v          u   1   \       I   
   b       `       p       #   N   3   ^                 C   >   m                 -       a   c    
Report bugs to <%s>.
   -?, --help                  show this help, then exit
   -P, --progress              show progress information
   -V, --version               output version information, then exit
   -e, --exit-on-error         exit immediately on error
   -i, --ignore=RELATIVE_PATH  ignore indicated path
   -m, --manifest-path=PATH    use specified path for manifest
   -n, --no-parse-wal          do not try to parse WAL files
   -q, --quiet                 do not print any output, except for errors
   -s, --skip-checksums        skip checksum verification
   -w, --wal-directory=PATH    use specified path for WAL files
 "%s" has size %lld on disk but size %zu in the manifest "%s" is not a file or directory "%s" is present in the manifest but not on disk "%s" is present on disk but not in the manifest "\u" must be followed by four hexadecimal digits. %*s/%s kB (%d%%) verified %s home page: <%s>
 %s verifies a backup against the backup manifest.

 %s: CRC is incorrect %s: manifest system identifier is %llu, but control file has %llu %s: unexpected control file version Character with value 0x%02x must be escaped. Escape sequence "\%.*s" is invalid. Expected "," or "]", but found "%.*s". Expected "," or "}", but found "%.*s". Expected ":", but found "%.*s". Expected JSON value, but found "%.*s". Expected array element or "]", but found "%.*s". Expected end of input, but found "%.*s". Expected string or "}", but found "%.*s". Expected string, but found "%.*s". Incremental parser requires incremental lexer. JSON nested too deep, maximum permitted depth is 6400. OpenSSL failure Options:
 Recursive descent parser cannot use incremental lexer. The input string ended unexpectedly. Token "%.*s" is invalid. Try "%s --help" for more information. Unicode escape value could not be translated to the server's encoding %s. Unicode escape values cannot be used for code point values above 007F when the encoding is not UTF8. Unicode high surrogate must not follow a high surrogate. Unicode low surrogate must follow a high surrogate. Usage:
  %s [OPTION]... BACKUPDIR

 WAL parsing failed for timeline %u \u0000 cannot be converted to text. backup successfully verified
 both path name and encoded path name byte ordering mismatch cannot duplicate null pointer (internal error)
 cannot specify both %s and %s checksum mismatch for file "%s" checksum without algorithm could not close directory "%s": %m could not close file "%s": %m could not decode file name could not finalize checksum of file "%s" could not finalize checksum of manifest could not fsync file "%s": %m could not initialize checksum of file "%s" could not initialize checksum of manifest could not open directory "%s": %m could not open file "%s" for reading: %m could not open file "%s": %m could not parse backup manifest: %s could not parse end LSN could not parse start LSN could not read file "%s": %m could not read file "%s": read %d of %lld could not read file "%s": read %d of %zu could not read file "%s": read %lld of %lld could not stat file "%s": %m could not stat file or directory "%s": %m could not update checksum of file "%s" could not update checksum of manifest could not write file "%s": %m destination buffer too small detail:  duplicate path name in backup manifest: "%s" error:  expected at least 2 lines expected version indicator file "%s" has checksum of length %d, but expected %d file "%s" should contain %zu bytes, but read %zu bytes file size is not an integer hint:  invalid checksum for file "%s": "%s" invalid manifest checksum: "%s" last line not newline-terminated manifest checksum mismatch manifest ended unexpectedly manifest has no checksum manifest version not an integer missing end LSN missing path name missing size missing start LSN missing timeline no backup directory specified out of memory out of memory
 possible byte ordering mismatch
The byte ordering used to store the pg_control file might not match the one
used by this program.  In that case the results below would be incorrect, and
the PostgreSQL installation would be incompatible with this data directory. program "%s" is needed by %s but was not found in the same directory as "%s" program "%s" was found by "%s" but was not the same version as %s success system identifier in manifest not an integer timeline is not an integer too many command-line arguments (first is "%s") unexpected WAL range field unexpected array end unexpected array start unexpected file field unexpected manifest version unexpected object end unexpected object field unexpected object start unexpected scalar unrecognized checksum algorithm: "%s" unrecognized top-level field warning:  Project-Id-Version: PostgreSQL 17
Report-Msgid-Bugs-To: pgsql-bugs@lists.postgresql.org
POT-Creation-Date: 2024-08-31 06:18+0000
PO-Revision-Date: 2024-09-01 20:47+0200
Last-Translator: Dennis Björklund <db@zigo.dhs.org>
Language-Team: Swedish <pgsql-translators@postgresql.org>
Language: sv
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
 
Rapportera fel till <%s>.
   -?, --help                  visa denna hjälp, avsluta sedan
   -P, --progress              visa förloppsinformation
   -V, --version               visa versionsinformation, avsluta sedan
   -e, --exit-on-error         avsluta direkt vid fel
   -i, --ignore=RELATIV_SÖKVÄG hoppa över angiven sökväg
   -m, --manifest-path=SÖKVÄG  använd denna sökväg till manifestet
   -n, --no-parse-wal          försök inte parsa WAL-filer
   -q, --quiet                 skriv inte ut några meddelanden förutom fel
   -s, --skip-checksums        hoppa över verifiering av kontrollsummor
   -w, --wal-directory=SÖKVÄG  använd denna sökväg till WAL-filer
 "%s" har storlek %lld på disk men storlek %zu i manifestet "%s" är inte en fil eller katalog "%s" finns i manifestet men inte på disk "%s" finns på disk men är inte i manifestet "\u" måste följas av fyra hexdecimala siffror. %*s/%s kB (%d%%) verifierad hemsida för %s: <%s>
 %s verifierar en backup gentemot backup-manifestet.

 %s: CRC är inkorrekt %s: manifestets systemidentifierare är %llu men kontrollfilern har %llu %s: oväntad version på kontrollfil Tecken med värde 0x%02x måste escape:as. Escape-sekvens "\%.*s" är ogiltig. Förväntade "," eller "]", men hittade "%.*s". Förväntade sig "," eller "}" men hittade "%.*s". Förväntade sig ":" men hittade "%.*s". Förväntade JSON-värde, men hittade "%.*s". Färväntade array-element eller "]", men hittade "%.*s". Förväntade slut på indata, men hittade "%.*s". Färväntade sträng eller "}", men hittade "%.*s". Förväntade sträng, men hittade "%.*s". Inkrementell parser kräver en inkrementell lexer. JSON nästlad för djupt, maximal tillåtet djup är 6400. OpenSSL-fel Flaggor:
 Recursive-descent-parser kan inte använda inkrementell lexer. Indatasträngen avslutades oväntat. Token "%.*s" är ogiltig. Försök med "%s --help" för mer information. Escape-värde för unicode kan inte översättas till serverns kodning %s. Escape-värden för unicode kan inte användas för kodpunkter med värde över 007F när kodningen inte är UTF8. Unicodes övre surrogathalva får inte komma efter en övre surrogathalva. Unicodes lägre surrogathalva måste följa en övre surrogathalva. Användning:
  %s [FLAGGOR]... BACKUPKAT

 WAL-parsning misslyckades för tidslinje %u \u0000 kan inte konverteras till text. korrekt verifierad backup
 både sökväg och kodad sökväg byte-ordning stämmer inte kan inte duplicera null-pekare (internt fel)
 kan inte ange både %s och %s kontrollsumman matchar inte för fil "%s" kontrollsumma utan algoritm kunde inte stänga katalog "%s": %m kunde inte stänga fil "%s": %m kunde inte avkoda filnamn kunde inte göra klart kontrollsumma för filen "%s" kunde inte göra klart kontrollsumma för backup-manifest kunde inte fsync:a fil "%s": %m kunde inte initiera kontrollsumma för filen "%s" kunde inte initiera kontrollsumma för backup-manifest kunde inte öppna katalog "%s": %m kunde inte öppna filen "%s" för läsning: %m kunde inte öppna fil "%s": %m kunde inte parsa backup-manifest: %s kunde inte parsa slut-LSN kunde inte parsa start-LSN kunde inte läsa fil "%s": %m kunde inte läsa fil "%s": läste %d av %lld kunde inte läsa fil "%s": läste %d av %zu kunde inte läsa fil "%s": läste %lld av %lld kunde inte göra stat() på fil "%s": %m kunde inte ta status på fil eller katalog "%s": %m kunde inte uppdatera kontrollsumma för filen "%s" kunde inte uppdatera kontrollsumma för backup-manifest kunde inte skriva fil "%s": %m destinationsbuffer för liten detalj:  duplicerad sökväg i backup-manifest: "%s" fel:  förväntade minst två rader förväntade en versionsindikator filen "%s" har kontrollsumma med längd %d men förväntade %d filen "%s" skall innehålla %zu byte men vi läste %zu byte filstorlek är inte ett haltal tips:  ogiltig kontrollsumma för fil "%s": "%s" ogiltig kontrollsumma för manifest: "%s" sista raden är inte nyradsterminerad kontrollsumma för manifest matchar inte manifestet avslutades oväntat manifestet har ingen kontrollsumma manifestversion är inte ett heltal saknar slut-LSN saknas sökväg saknar storlek saknar start-LSN saknar tidslinje ingen backup-katalog angiven slut på minne slut på minne
 möjligt fel i byteordning
Den byteordning som filen från pg_control lagrats med passar kanske
inte detta program. I så fall kan nedanstående resultat vara felaktiga
och PostgreSQL-installationen vara inkompatibel med databaskatalogen. programmet "%s" behövs av %s men hittades inte i samma katalog som "%s" programmet "%s" hittades av "%s" men är inte av samma version som %s lyckades manifestets systemidentifierare är inte ett heltal tidslinje är inte ett heltal för många kommandoradsargument (första är "%s") oväntat WAL-intervall-fält oväntat array-slut oväntad array-start oväntat filfält oväntad manifestversion oväntat objektslut oväntat objektfält oväntad objektstart oväntad skalar okänd algoritm för kontrollsumma: "%s" okänt toppnivåfält varning:  