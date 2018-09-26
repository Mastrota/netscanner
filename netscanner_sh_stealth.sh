  GNU nano 2.7.4                                                                         File: net_scan.sh                                                                          Modificato  

#!/bin/bash

#RIPULISCE SCHERMO
clear

#FUNZIONE DI SCRITTURA A VIDEO
echo "##############################################"
echo "# BASH NETWORK SCANNER BASILARE PER RETI /24 #"
echo "##############################################"

#FUNZIONE CHE UTILIZZA NETCAT PER TESTARE SE LA PORTA HTTP E’ APERTA
function checkweb {
echo "Provo il $1.$2..."
timeout --preserve-status 3 nc $1"."$2 $3 -w 3; echo $?
}

#COMANDO BASE PER VEDERE CONF SCHEDE DI RETE, PASSATO AL MANIPOLATORE AWK
ifconfig -s | awk '{print $1}'

echo "DIGITARE LA SCHEDA RELATIVA ALLA RETE /24 DA SCANSIONARE:"

#COMANDO PER ATTENDERE INPUT DALL’UTENTE
read ITF
clear

#ASSEGNO A VAR
IABILE “NET” L’IP RETE. DIVERSI COMANDI IN PIPE, FILTRATI CON GREP E PROCESSATI DA AWK
NET=$(ifconfig $ITF | grep netmask | awk '{print $2}' | awk -F "." '{print $1"."$2"."$3""}')

#CICLO CHE IMPEDISCE DI PROSEGUIRE SE NON SI SCRIVE “SCAN”
while [ "$ACTION" != "SCAN" ]; do
clear
echo "DIGITARE 'SCAN' PER SCANSIONARE LA RETE: $NET, CTRL-C PER ANNULLARE"
read ACTION
done
#DOMANDA ALL'UTENTE QUALE PORTA SCANSIONARE
echo "INSERISCI LA PORTA DESIDERATA"
read P_SCAN
echo "SCANSIONE"

#CICLO PER ITERARE DA 1 A 254 I NUMERI FINALI DELL’IP DA TESTARE

^G Guida         ^O Salva         ^W Cerca         ^K Taglia        ^J Giustifica    ^C Posizione     ^Y Pag Prec.     M-\ Prima riga   M-W Successivo   ^^ Marca testo   M-} Indenta
^X Esci          ^R Inserisci     ^\ Sostituisci   ^U Incolla       ^T Linter        ^_ Vai a riga    ^V Pag Succ.     M-/ Ultima riga  M-] Parentesi    M-^ Copia        M-{ Deindenta
