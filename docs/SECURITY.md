# Guvenlik ve Release Kontrol Listesi

## ISO uretmeden once

- Paket listelerinde gereksiz uzak erisim servisleri olmadigini kontrol et.
- `config/hooks/normal/0100-reos-branding.hook.chroot` icindeki parolasiz sudo
  kuralinin sadece live ortam icin istenen davranis oldugundan emin ol.
- Firmware paketlerini dahil etme kararini hedef lisans politikasina gore tekrar
  degerlendir.
- Kullanilan Debian codename'inin destek aldigini kontrol et.

## ISO urettikten sonra

```sh
sha256sum live-image-*.iso > SHA256SUMS
```

Sanal makine testleri:

- UEFI boot
- BIOS boot
- Ag baglantisi
- Ses
- Ekran cozunurlugu
- Installer akisi
- Yeniden baslatma sonrasi kurulu sistem boot'u

## Yayinlamadan once

- `README.md` ve surum notlarinda bilinen sorunlari yaz.
- ISO checksum dosyasini ayni release alanina koy.
- Ucuncu taraf marka/logolar icin izinleri kontrol et.

