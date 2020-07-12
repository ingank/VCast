# Virtual Box: Ubuntu 20.04 als Gast FullScreen anzeigen

## Vorbereitungen
* Virtual Box aktualisieren
* Virtual Box Extension Pack aktualisieren

## Weg 1: Offizielle Paketquellen
Auf dem Gast als root ausführen:
```
apt update
apt upgrade
apt install virtualbox-guest-dkms
apt install virtualbox-guest-x11
apt install linux-headers-$(uname -r)
```

## Weg 2: Mit Hilfe der Datei VBoxGuestAdditions.iso
Auf dem Gast als root ausführen:
```
apt update
apt upgrade
apt install linux-headers-$(uname -r)

* Gastbildschirm // Devices // Insert Guest Additions CD image...
* CD-Image in einem Dateimananger öffnen
* Terminal im Hauptverzeichnis des Images öffnen

Als root ausführen:
sh ./VBoxLinuxAdditions.run
reboot now
```
## Abwägung
In der Praxis hat sich bisher der zweite Weg als stabiler erwiesen.
