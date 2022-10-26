# Laboratorio di Programmazione

Questa repository contiene i progetti svolti per il Lab di Programmazione, corso dell'Università di Padova.
È presente un'utility per inizializzare un progetto C++ molto semplice.

## Utilizzo

1. Rendere il file pinit eseguibile `chmod 744 pinit`
2. Lanciare il comando con il nome della cartella `./pinit <nome-cartella>`

Nel progetto è presente un Makefile preso dal modello Makefile.model e una repository git inizializzata con un file .gitignore preso dal modello .gitignore.model.

## Gestione progetto

Di base è presente un Makefile che permette le seguenti operazioni
- `make compile` Compila tutti i file .cpp nella cartella src e mette i file oggetto nella cartella build
- `make link` Compila e crea un file eseguibile chiamato main (richiede che esista un file main.o con il main)
- `make clean` Elimina tutti i file oggetto e l'eseguibile
- `make` Esegue `make compile` e `make link`

## Dockerfile

Nella repository è presente anche un Dockerfile per creare un immagine Docker con un ambiente di sviluppo funzionante.

### Esempio di utilizzo

Si suppone di essere nella radice della repository con la cartella del sotto-progetto chiamata \<nome-cartella\>

1. Creazione immagine `docker build -t <tag-immagine> .`
2. Esecuzione di container con bind mount nella cartella di un progetto `docker run -it -v ./<nome-cartella>/:/<nome-cartella> <tag-immagine>`
3. Nel container `cd /<nome-cartella>`

**Fine!** (Nel container è disponibile neovim)
