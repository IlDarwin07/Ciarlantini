# Ciarlantini · Bar Italia

Sito statico per Ciarlantini (Bar Italia Ciarlantini), bar e pasticceria italiana a
7 Daly's Place, Woodquay, Galway.
Un solo file `index.html` (HTML + CSS + un piccolo script per gli orari), nessuna dipendenza.

## Struttura

```
index.html        la pagina
img/              le foto (shopfront, cannoli, tiramisu, ...)
scarica-foto.bat  doppio clic per scaricare le foto in img/
scarica-foto.ps1  lo script PowerShell usato dal .bat
```

## Vederlo in locale con XAMPP

1. Copia (o clona) la cartella in `C:\xampp\htdocs\ciarlantini`.
2. Se `img/` è vuota, fai doppio clic su `scarica-foto.bat`.
3. Avvia Apache dal pannello di XAMPP e apri http://localhost/ciarlantini/

## Note

- Le foto vengono dal profilo Google Maps del locale e sono quasi tutte caricate da clienti.
  Prima di pubblicare il sito, meglio sostituirle con le foto originali del titolare
  (stessi nomi file in `img/`).
- Orari (tutti i giorni 7:30–18:00) e telefono (091 447 838) presi da Google Maps: da confermare.
- Ripieni dei cannoli, dolci in vetrina e lista caffè vanno confermati dal locale; i prezzi non ci sono
  (c'è un commento nell'HTML dove aggiungerli).
- Sezione "The bar": confermare i posti fuori e le scatole di pasticceria da asporto.
- Accessibilità: contrasti AA, skip link, focus visibile, testi alternativi
  su ogni foto, supporto a reduced motion e forced colors.
