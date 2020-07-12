# Virtual Box: Ubuntu 20.04 als Gast FullScreen anzeigen

## Vorbereitungen
* Virtual Box aktualisieren
* Virtual Box Extension Pack aktualisieren

## Weg 1: Mit Hilfe der Datei VBoxGuestAdditions.iso
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
* Es ist von Vorteil den Hauptbenutzer beim Booten **nicht** automatisch anzumelden.
