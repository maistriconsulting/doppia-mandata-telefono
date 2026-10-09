# Doppia Mandata per iPhone

App web installabile per consultare e modificare dal telefono le password di Doppia Mandata.

In questo repository ci sono **solo i file compilati** dell'app (HTML, JavaScript, CSS, icone). Nessuna password, nessuna chiave, nessun dato personale: i dati restano nel file di backup cifrato dell'utente e vengono decifrati sul telefono, con seconda chiave e password, senza passare da nessun server.

Il codice sorgente è in un repository privato.

## Installare su iPhone

1. Apri l'indirizzo dell'app con **Safari**.
2. Tocca il pulsante **Condividi**, poi **Aggiungi alla schermata Home**.
3. Apri l'app dalla schermata Home, inserisci seconda chiave e password e tocca **Prendi da Google Drive** (oppure scegli a mano un file `.dmbak`).
4. Da lì in poi l'app prende da sola il backup cifrato più recente caricato dal computer su Google Drive.
5. Le modifiche fatte sul telefono restano cifrate sul telefono e viaggiano in un file cifrato, attraverso il server di casa (Impostazioni, Server di casa) oppure Google Drive; il programma sul computer le applica quando è aperto e sbloccato.

Accesso a Google Drive: solo l'ambito `drive.file`, cioè soltanto i file creati da Doppia Mandata. Il file scaricato è cifrato e viene aperto sul telefono.
