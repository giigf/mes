��    �      T  �   �      `     a  *   {  
   �     �  F   �       3   )  D   ]  ?   �  �   �  A   �  �   �  M   t  K   �  A     0   P  =   �  ;   �  (   �     $     8  +   S       )   �  )   �  )   �       )   *  )   T  +   ~  )   �  R   �  )   '  )   Q     {  7   �  U   �  5   &  A   \  )   �  )   �  )   �  ,     )   I  )   s  )   �  )   �  )   �  )     )   E  )   o  )   �  )   �  )   �  )     )   A  )   k  )   �  )   �  )   �  )        =  )   T  )   ~  )   �  )   �  :   �  )   7  %   a     �  )   �     �  ,   �  8   �     6     C     L     c  /   �  '   �  &   �  "   �     "  1   @     r     �  7   �  !   �  (   	     2  ,   O  :   |  !   �     �  (   �  0     &   P  8   w     �  3   �       "     )   B     l     u     }     �     �      �     �  &   �  +     )   =     g  7   �     �  -   �  >   �  )   ,     V     Y  ;   h  =   �  �   �  )        �   ,   �!  /   �!  D   "  7   Q"  (   �"     �"     �"  	   �"  �  �"     �$  ;   �$     	%     %  O   5%  !   �%  @   �%  x   �%  @   a&    �&  �   �'  �   D(  �   �(  �   p)     �)  =   *  |   �*  w   :+  C   �+     �+  $   ,  :   8,     s,  ;   �,  ;   �,  <   �,  #   8-  =   \-  <   �-  ?   �-  ;   .  i   S.  =   �.  ;   �.  #   7/  R   [/  o   �/  T   0  O   s0  <   �0  <    1  <   =1  ?   z1  <   �1  <   �1  <   42  <   q2  <   �2  <   �2  <   (3  <   e3  <   �3  ;   �3  <   4  ;   X4  ;   �4  )   �4  )   �4  )   $5  )   N5  )   x5     �5  )   �5  )   �5  )   6  )   ?6  S   i6  ;   �6  1   �6     +7  ;   47  /   p7  A   �7  G   �7     *8  
   :8  !   E8  *   g8  7   �8  .   �8  4   �8  .   .9  *   ]9  8   �9  -   �9  C   �9  N   3:  .   �:  ;   �:  *   �:  ;   ;  ?   T;  ,   �;  (   �;  5   �;  7    <  8   X<  O   �<  *   �<  `   =  -   m=  2   �=  A   �=  
   >  	   >     %>  	   7>  "   A>  )   d>  !   �>  ;   �>  ;   �>  )   (?  &   R?  Q   y?     �?  J   �?  U   "@  )   x@     �@     �@  C   �@  D   A  �   GA  <   �A  8  ;B  J   tC  B   �C  L   D  F   OD  I   �D     �D  ,    E     -E     a   j       h       Q         G   v   F   +   D   z   :   *                        ~   @           [      "   x      E              Y   w   2       <         `          %           5   A   R   e      p                     Z   	       X   k       H             _   r   #   J       >   y       0       m   K   C   7          M   l   &   �   )              (   |   q       V                 �   ?               S   .   4   /   �   ,       !          9   U          b   s   �           c   �   6            =   t               �                 }   L   $          
      d   \   �   B   ;   �       1   ]       u   f   o   3       P   T   W   8   {   -       ^   N   g   O   i   I   '   n        

Values to be changed:

 
Options to override control file values:
 
Options:
 
Report bugs to <%s>.
       --wal-segsize=SIZE           size of WAL segments, in megabytes
   %s [OPTION]... DATADIR
   -?, --help             show this help, then exit
   -O, --multixact-offset=OFFSET    set next multitransaction offset
   -V, --version          output version information, then exit
   -c, --commit-timestamp-ids=XID,XID
                                   set oldest and newest transactions bearing
                                   commit timestamp (zero means no change)
   -e, --epoch=XIDEPOCH             set next transaction ID epoch
   -f, --force            force update to be done even after unclean shutdown or
                         if pg_control values had to be guessed
   -l, --next-wal-file=WALFILE      set minimum starting location for new WAL
   -m, --multixact-ids=MXID,MXID    set next and oldest multitransaction ID
   -n, --dry-run          no update, just show what would be done
   -o, --next-oid=OID               set next OID
   -u, --oldest-transaction-id=XID  set oldest transaction ID
   -x, --next-transaction-id=XID    set next transaction ID
  [-D, --pgdata=]DATADIR  data directory
 %s home page: <%s>
 %s must be in range %d..%d %s resets the PostgreSQL write-ahead log.

 64-bit integers Blocks per segment of large relation: %u
 Bytes per WAL segment:                %u
 Catalog version number:               %u
 Current pg_control values:

 Data page checksum version:           %u
 Database block size:                  %u
 Database system identifier:           %llu
 Date/time type storage:               %s
 File "%s" contains "%s", which is not compatible with this program's version "%s". First log segment after reset:        %s
 Float8 argument passing:              %s
 Guessed pg_control values:

 If these values seem acceptable, use -f to force reset. If you are sure the data directory path is correct, execute
  touch %s
and try again. If you want to proceed anyway, use -f to force reset. Is a server running?  If not, delete the lock file and try again. Latest checkpoint's NextMultiOffset:  %u
 Latest checkpoint's NextMultiXactId:  %u
 Latest checkpoint's NextOID:          %u
 Latest checkpoint's NextXID:          %u:%u
 Latest checkpoint's TimeLineID:       %u
 Latest checkpoint's full_page_writes: %s
 Latest checkpoint's newestCommitTsXid:%u
 Latest checkpoint's oldestActiveXID:  %u
 Latest checkpoint's oldestCommitTsXid:%u
 Latest checkpoint's oldestMulti's DB: %u
 Latest checkpoint's oldestMultiXid:   %u
 Latest checkpoint's oldestXID's DB:   %u
 Latest checkpoint's oldestXID:        %u
 Maximum columns in an index:          %u
 Maximum data alignment:               %u
 Maximum length of identifiers:        %u
 Maximum size of a TOAST chunk:        %u
 NextMultiOffset:                      %u
 NextMultiXactId:                      %u
 NextOID:                              %u
 NextXID epoch:                        %u
 NextXID:                              %u
 OID (-o) must not be 0 OldestMulti's DB:                     %u
 OldestMultiXid:                       %u
 OldestXID's DB:                       %u
 OldestXID:                            %u
 Resetting the write-ahead log might cause data to be lost. Size of a large-object chunk:         %u
 Try "%s --help" for more information. Usage:
 WAL block size:                       %u
 Write-ahead log reset
 You must run %s as the PostgreSQL superuser. argument of %s must be a power of two between 1 and 1024 by reference by value byte ordering mismatch cannot be executed by "root" cannot duplicate null pointer (internal error)
 could not allocate SIDs: error code %lu could not change directory to "%s": %m could not close directory "%s": %m could not close file "%s": %m could not create restricted token: error code %lu could not delete file "%s": %m could not fsync file "%s": %m could not get exit code from subprocess: error code %lu could not open directory "%s": %m could not open file "%s" for reading: %m could not open file "%s": %m could not open process token: error code %lu could not re-execute with restricted token: error code %lu could not read directory "%s": %m could not read file "%s": %m could not read file "%s": read %d of %zu could not read permissions of directory "%s": %m could not rename file "%s" to "%s": %m could not start process for command "%s": error code %lu could not stat file "%s": %m could not synchronize file system for file "%s": %m could not write file "%s": %m data directory is of wrong version database server was not shut down cleanly detail:  error:  fsync error: %m hint:  invalid argument for option %s invalid value "%s" for option %s lock file "%s" exists multitransaction ID (-m) must not be 0 multitransaction offset (-O) must not be -1 newestCommitTsXid:                    %u
 no data directory specified not proceeding because control file values were guessed off oldest multitransaction ID (-m) must not be 0 oldest transaction ID (-u) must be greater than or equal to %u oldestCommitTsXid:                    %u
 on out of memory
 pg_control exists but has invalid CRC; proceed with caution pg_control exists but is broken or wrong version; ignoring it pg_control specifies invalid WAL segment size (%d byte); proceed with caution pg_control specifies invalid WAL segment size (%d bytes); proceed with caution pg_control version number:            %u
 possible byte ordering mismatch
The byte ordering used to store the pg_control file might not match the one
used by this program.  In that case the results below would be incorrect, and
the PostgreSQL installation would be incompatible with this data directory. this build does not support sync method "%s" too many command-line arguments (first is "%s") transaction ID (-c) must be either %u or greater than or equal to %u transaction ID (-x) must be greater than or equal to %u transaction ID epoch (-e) must not be -1 unexpected empty file "%s" unrecognized sync method: %s warning:  Project-Id-Version: PostgreSQL 15
Report-Msgid-Bugs-To: pgsql-bugs@lists.postgresql.org
POT-Creation-Date: 2024-08-22 10:21+0000
PO-Revision-Date: 2024-08-23 11:15+0200
Last-Translator: Guillaume Lelarge <guillaume@lelarge.info>
Language-Team: French <guillaume@lelarge.info>
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Poedit 3.4.4
 

Valeurs à changer :

 
Options contrôlant les valeurs du fichier de contrôle :
 
Options :
 
Rapporter les bogues à <%s>.
       --wal-segsize=TAILLE         configure la taille des segments WAL, en Mo
   %s [OPTION]... [RÉP_DONNÉES]
   -?, --help                     affiche cette aide puis quitte
   -O, --multixact-offset=DÉCALAGE  configure le prochain décalage
                                   multitransaction
   -V, --version                  affiche la version puis quitte
   -c, --commit-timestamp-ids=XID,XID
                                   configure les transactions la plus ancienne
                                   et la plus récente contenant les dates/heures
                                   de validation (zéro signifie aucun changement)
   -e, --epoch=XIDEPOCH             configure la valeur epoch du prochain
                                   identifiant de transaction
   -i, --interactive              force la mise à jour, y compris un arrêt pas propre ou si les valeurs de pg_control doivent être devinées
   -l, --next-wal-file=FICHIERWAL   configure l'emplacement minimal de début
                                   des WAL du nouveau journal de transactions
   -m, --multixact-ids=MXID,MXID    configure le prochain et le plus ancien
                                   identifiants multi-transactions
   -n, --dry-run                    pas de mise à jour, affiche
                                   simplement ce qui sera fait
   -o, --next-oid=OID               configure le prochain OID
   -u, --oldest-transaction-id=XID  configure l'identifiant de transaction le
                                   plus ancien
   -x, --next-transaction-id=XID    configure le prochain identifiant de
                                   transaction
   [-D, --pgdata] RÉP_DONNEES   répertoire de la base de données
 Page d'accueil de %s : <%s>
 %s doit être compris entre %d et %d %s réinitialise le journal des transactions PostgreSQL.

 entiers 64-bits Blocs par segment des relations volumineuses :          %u
 Octets par segment du journal de transaction :          %u
 Numéro de version du catalogue :                        %u
 Valeurs actuelles de pg_control :

 Version des sommes de contrôle des pages de données :   %u
 Taille du bloc de la base de données :                  %u
 Identifiant du système de base de données :             %llu
 Stockage du type date/heure :                           %s
 Le fichier « %s » contient « %s », qui n'est pas compatible avec la version « %s » de ce programme. Premier segment du journal après réinitialisation :     %s
 Passage d'argument float8 :                             %s
 Valeurs de pg_control devinées :

 Si ces valeurs semblent acceptables, utiliser -f pour forcer la réinitialisation. Si vous êtes certain que le chemin du répertoire de données est correct, exécuter
  touch %s
et réessayer. Si vous voulez continuer malgré tout, utiliser -f pour forcer la réinitialisation. Le serveur est-il démarré ? Sinon, supprimer le fichier verrou et réessayer. Dernier NextMultiOffset du point de contrôle :          %u
 Dernier NextMultiXactId du point de contrôle :          %u
 Dernier NextOID du point de contrôle :                  %u
 Dernier NextXID du point de contrôle :                  %u:%u
 Dernier TimeLineID du point de contrôle :               %u
 Dernier full_page_writes du point de contrôle :         %s
 Dernier newestCommitTsXid du point de contrôle :        %u
 Dernier oldestActiveXID du point de contrôle :          %u
 Dernier oldestCommitTsXid du point de contrôle :        %u
 Dernier oldestMulti du point de contrôle de la base :   %u
 Dernier oldestMultiXid du point de contrôle :           %u
 Dernier oldestXID du point de contrôle de la base :     %u
 Dernier oldestXID du point de contrôle :                %u
 Nombre maximum de colonnes d'un index:                  %u
 Alignement maximal des données :                        %u
 Longueur maximale des identifiants :                    %u
 Longueur maximale d'un morceau TOAST :                  %u
 NextMultiOffset:                      %u
 NextMultiXactId:                      %u
 NextOID:                              %u
 NextXID Epoch:                        %u
 NextXID:                              %u
 l'OID (-o) ne doit pas être 0 OldestMulti's DB:                     %u
 OldestMultiXid:                       %u
 OldestXID's DB:                       %u
 OldestXID:                            %u
 Réinitialiser les journaux de transactions pourrait causer des pertes de données. Taille d'un morceau de Large Object :                   %u
 Essayez « %s --help » pour plus d'informations. Usage :
 Taille de bloc du journal de transaction :              %u
 Réinitialisation des journaux de transactions
 Vous devez exécuter %s en tant que super-utilisateur PostgreSQL. l'argument de %s doit être une puissance de 2 comprise entre 1 et 1024 par référence par valeur différence de l'ordre des octets ne peut pas être exécuté par « root » ne peut pas dupliquer un pointeur nul (erreur interne)
 n'a pas pu allouer les SID : code d'erreur %lu n'a pas pu modifier le répertoire par « %s » : %m n'a pas pu fermer le répertoire « %s » : %m n'a pas pu fermer le fichier « %s » : %m n'a pas pu créer le jeton restreint : code d'erreur %lu n'a pas pu supprimer le fichier « %s » : %m n'a pas pu synchroniser sur disque (fsync) le fichier « %s » : %m n'a pas pu récupérer le code de statut du sous-processus : code d'erreur %lu n'a pas pu ouvrir le répertoire « %s » : %m n'a pas pu ouvrir le fichier « %s » pour une lecture : %m n'a pas pu ouvrir le fichier « %s » : %m n'a pas pu ouvrir le jeton du processus : code d'erreur %lu n'a pas pu ré-exécuter le jeton restreint : code d'erreur %lu n'a pas pu lire le répertoire « %s » : %m n'a pas pu lire le fichier « %s » : %m n'a pas pu lire le fichier « %s » : a lu %d sur %zu n'a pas pu lire les droits du répertoire « %s » : %m n'a pas pu renommer le fichier « %s » en « %s » : %m n'a pas pu démarrer le processus pour la commande « %s » : code d'erreur %lu n'a pas pu tester le fichier « %s » : %m n'a pas pu synchroniser sur disque (fsync) le système de fichiers pour le fichier « %s » : %m impossible d'écrire le fichier « %s » : %m le répertoire des données a une mauvaise version le serveur de bases de données n'a pas été arrêté proprement détail :  erreur :  erreur fsync : %m astuce :  argument invalide pour l'option %s valeur « %s » invalide pour l'option %s le fichier verrou « %s » existe l'identifiant de multi-transaction (-m) ne doit pas être 0 le décalage de multi-transaction (-O) ne doit pas être -1 newestCommitTsXid:                    %u
 aucun répertoire de données indiqué ne continue pas car les valeurs du fichier de contrôle devraient être devinées désactivé l'identifiant de multi-transaction le plus ancien (-m) ne doit pas être 0 l'identifiant de transaction le plus ancien (-u) doit être supérieur ou égal à %u oldestCommitTsXid:                    %u
 activé mémoire épuisée
 pg_control existe mais son CRC est invalide ; agir avec précaution pg_control existe mais est corrompu ou de mauvaise version ; ignoré pg_control spécifie une taille invalide de segment WAL (%d octet) ; agir avec précaution pg_control spécifie une taille invalide de segment WAL (%d octets) ; agir avec précaution Numéro de version de pg_control :                       %u
 possible incohérence dans l'ordre des octets
L'ordre des octets utilisé pour enregistrer le fichier pg_control peut ne
pas correspondre à celui utilisé par ce programme. Dans ce cas, les
résultats ci-dessous sont incorrects, et l'installation de PostgreSQL
est incompatible avec ce répertoire des données. cette construction ne supporte pas la méthode de synchronisation « %s » trop d'arguments en ligne de commande (le premier étant « %s ») l'identifiant de transaction (-c) doit être %u ou supérieur ou égal à %u l'identifiant de transaction (-x) doit être supérieur ou égal à %u la valeur epoch de l'identifiant de transaction (-e) ne doit pas être -1 fichier vide inattendu « %s » méthode de synchronisation non reconnu : %s attention :  