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

## Weg 1: Systemeinstellungen tweaken
Zum einmaligen Testen:
```
$ cvt 1920 1080 60
# 1920x1080 59.96 Hz (CVT 2.07M9) hsync: 67.16 kHz; pclk: 173.00 MHz
Modeline "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
$ xrandr --newmode "1920x1080"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
$ xrandr --addmode Virtual1 1920x1080
$ xrandr --output Virtual1 --mode 1920x1080
```
Diese Einstellung kann auch permanent gemacht werden. Dazu hinzufügen zu ~/.profile:
```
$ xrandr --newmode "1920x1080"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
$ xrandr --addmode Virtual1 1920x1080
$ xrandr --output Virtual1 --mode 1920x1080
```
Danach abmelden und wieder anmelden.

## Weg 2: Mit Hilfe der Datei VBoxGuestAdditions.iso
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

## Weg 3: Offizielle Paketquellen
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
