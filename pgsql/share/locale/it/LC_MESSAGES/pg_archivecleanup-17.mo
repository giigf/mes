��          �   %   �      p  �   q  
   K  �   V     �  3   �  +   )  7   U  6   �  L   �  <        N  6   b  %   �     �  $   �  )   �  (     (   ?     h     �     �     �     �     �  !   �     �  	     �  $  �   �  
   �	  �   �	     >
  2   V
  -   �
  <   �
  3   �
  ;   (  4   d     �  >   �  ,   �  
   "  ,   -  8   Z  6   �  7   �  #        &     2     :     I  +   h  4   �  &   �     �                                                                              
                    	                         
For use as archive_cleanup_command in postgresql.conf:
  archive_cleanup_command = 'pg_archivecleanup [OPTION]... ARCHIVELOCATION %%r'
e.g.
  archive_cleanup_command = 'pg_archivecleanup /mnt/server/archiverdir %%r'
 
Options:
 
Or for use as a standalone archive cleaner:
e.g.
  pg_archivecleanup /mnt/server/archiverdir 000000010000000000000010.00000020.backup
 
Report bugs to <%s>.
   %s [OPTION]... ARCHIVELOCATION OLDESTKEPTWALFILE
   -?, --help     show this help, then exit
   -V, --version  output version information, then exit
   -d             generate debug output (verbose mode)
   -n             dry run, show the names of the files that would be removed
   -x EXT         clean up files if they have this extension
 %s home page: <%s>
 %s removes older WAL files from PostgreSQL archives.

 Try "%s --help" for more information. Usage:
 archive location "%s" does not exist could not close archive location "%s": %m could not open archive location "%s": %m could not read archive location "%s": %m could not remove file "%s": %m detail:  error:  hint:  invalid file name argument must specify archive location must specify oldest kept WAL file too many command-line arguments warning:  Project-Id-Version: pg_archivecleanup (PostgreSQL) 15
Report-Msgid-Bugs-To: pgsql-bugs@lists.postgresql.org
POT-Creation-Date: 2022-09-26 08:20+0000
PO-Revision-Date: 2022-09-30 14:18+0200
Language: it
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Last-Translator: Domenico Sgarbossa <sgarbossa.domenico@gmail.com>
Language-Team: 
X-Generator: Poedit 2.3
 
Da utilizzare come archive_cleanup_command in postgresql.conf:
  archive_cleanup_command = 'pg_archivecleanup [OPZIONE]... ARCHIVELOCATION %%r'
per esempio.
  archive_cleanup_command = 'pg_archivecleanup /mnt/server/archiverdir %%r'
 
Opzioni:
 
O per l'uso come pulitore di archivi autonomo:
per esempio.
  pg_archivecleanup /mnt/server/archiverdir 0000000100000000000000010.00000020.backup
 
Segnala i bug a <%s>.
 %s [OPZIONE]... ARCHIVELOCATION OLDESTKEPTWALFILE
   -?, --help     mostra questo aiuto ed esci
   -V --version   mostra informazioni sulla versione ed esci
  -d genera output di debug (modalità dettagliata)
  -n dry run, mostra i nomi dei file che verrebbero rimossi
  -x EXT ripulisce i file se hanno questa estensione
 Pagina iniziale di %s: <%s>
 %s rimuove i file WAL meno recenti dagli archivi PostgreSQL.

 Prova "%s --help" per maggiori informazioni. Utilizzo:
 il percorso di archiviazione "%s" non esiste impossibile chiudere la posizione dell'archivio "%s": %m impossibile aprire la posizione dell'archivio "%s": %m impossibile leggere la posizione dell'archivio "%s": %m rimozione del file "%s" fallita: %m dettaglio:  errore: suggerimento:  argomento nome file non valido deve specificare la posizione dell'archivio deve specificare il file WAL più vecchio conservato troppi argomenti della riga di comando avvertimento:  