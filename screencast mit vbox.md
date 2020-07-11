# Screencasts und VBox

## Vorteile
* Sandboxprinzip
* einfaches Rücksetzen auf einen definierten Zustand
* Versionsverwaltung
* einfaches Klonen
* einfache Installation von anderen Distros (keine besondere Partitionierung nötig)

## Nachteile
* Ressourcenteilung mit dem Host
  * Prozessor
  * Hauptspeicher
* Prosessor muss VM untertützen
* Zusätzliches Wissen über VM's notwendig

## Host
* Oracle VM VirtualBox *Extension Pack* (Version passt zum VM Host)

## Gast
* Betriebssystem *Guest Additions*
* sudo apt install virtualbox-guest-dkms virtualbox-guest-x11 linux-headers-$(uname -r)
