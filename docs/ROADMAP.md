# reOS Yol Haritasi

## 0.1 - Canli ISO

- live-build ile boot eden `amd64` ISO uret.
- Xfce masaustu, NetworkManager ve temel uygulamalari ekle.
- Turkce locale/klavye ve reOS marka dosyalarini uygula.
- Gercek donanim icin yaygin firmware paketlerini dahil et.

## 0.2 - Kurulum Deneyimi

- Debian Installer live akisini test et.
- Bolumleme, kullanici olusturma ve bootloader adimlarini belgeleyip dogrula.
- Gerekirse Calamares tabanli grafik installer arastir.

## 0.3 - Paket Politikasi

- Varsayilan paket listesini kucult ve hedef kitleye gore netlestir.
- Ek paketler icin ayri `recommended`, `developer`, `minimal` profilleri olustur.
- Kendi APT deposu gerekiyorsa imzalama anahtari ve repo pipeline'i tasarla.

## 0.4 - Release Sureci

- ISO checksum dosyalari uret.
- Surum notlari ve bilinen sorunlar dokumani ekle.
- Sanal makine ve gercek cihaz test matrisini olustur.

