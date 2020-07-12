# Virtual Box: Ubuntu 20.04 als Gast FullScreen anzeigen

## Anwendungsbeispiel
* Erlärvideos – persönliche Daten sollen nicht im Video gezeigt werden.
* Schnell zurücksetzbares aufgeräumtes System.
* Betrachter wird nicht vom eigentlichen Thema abgelenkt.

## Ziele
* Gast-Betriebssystem Ubuntu 20.04 in voller Bildschirmauflösung (Full-Screen).
* Zwei mögliche Wege beschreiben.

## Voraussetzungen
* Virtual Box wurde auf einem beliebigen Hostsystem installiert.
* Ubuntu 20.04 wurde als Gastbetriebssystemes installiert.
* Das Ubuntu-Gastbetriebssystems wurde aktualisiert.

## Vorbereitungen
* Virtual Box aktualisieren // siehe Homepage
* Virtual Box Extension Pack aktualisieren // siehe Homepage

## Weg 1: Mit Hilfe der Datei VBoxGuestAdditions.iso
Auf dem Gast als root ausführen:
```
apt update
apt upgrade
apt install linux-headers-$(uname -r)
```
Mit Hilfe der grafischen Benutzeroberfläche ausführen:

* Gastbildschirm // Devices // Insert Guest Additions CD image...
* CD-Image in einem Dateimananger öffnen
* Terminal im Hauptverzeichnis des Images öffnen und folgende Befehle als root ausführen:
```
sh ./VBoxLinuxAdditions.run
reboot now
```

## Weg 2: Offizielle Paketquellen
Auf dem Gast als root ausführen:
```
apt update
apt upgrade
apt install virtualbox-guest-dkms
apt install virtualbox-guest-x11
apt install linux-headers-$(uname -r)
reboot now
```

## Anmerkungen
* In der Praxis hat sich bisher der erste Weg als stabiler erwiesen.
* Es ist von Vorteil den Hauptbenutzer auf dem Gastsystem beim Booten **nicht** automatisch anzumelden.
