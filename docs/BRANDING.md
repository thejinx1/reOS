# reOS Marka Notlari

Baslangic marka katmani su anda bilincli olarak kucuk tutuldu:

- Dagitim adi: `reOS`
- Surum: `0.1`
- Debian tabani: `trixie`
- Varsayilan hostname: `reos`
- Varsayilan live kullanici: `reos`
- Varsayilan locale: `tr_TR.UTF-8`
- Varsayilan klavye: `tr`

## Degistirilecek dosyalar

- `reos.env`: yardimci betikler ve `auto/config` icin ana varsayilanlar.
- `auto/config`: ISO metadata, mimari, Debian codename ve live boot parametreleri.
- `config/hooks/normal/0100-reos-branding.hook.chroot`: `/etc/os-release`,
  `/etc/lsb-release`, `/etc/issue`, hostname ve sudo davranisi.
- `config/hooks/normal/0200-reos-locale.hook.chroot`: locale ve klavye.
- `config/includes.chroot/usr/share/backgrounds/reos/wallpaper.svg`: ilk duvar kagidi.

## Dagitim karari

Debian temelli bir sistem yayinlarken kullaniciya gorunen urun adini kendi
markanla tut. Debian adini taban teknoloji olarak anmak temizdir; Debian logosu
ve markasini urunun kendi logosu gibi kullanmadan once Debian marka kurallarini
kontrol et.

