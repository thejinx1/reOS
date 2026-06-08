# reOS UI Katmani

Bu iskelet iki ayri UI parcasindan olusur:

- Sistem masaustu: Debian/Xfce uzerinde reOS markali, macOS esintili bir panel,
  dock, tema ve efekt duzeni.
- Yerel UI demo: `JoaoGabriel-Lima/macos-ui-clone` reposunun MIT lisansli
  kopyasi.

## Sistem masaustu

Yeni live kullanicinin varsayilanlari `/etc/skel` altindan gelir:

- `config/includes.chroot/etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml`
- `config/includes.chroot/etc/skel/.config/plank/dock1/settings`
- `config/includes.chroot/etc/skel/.config/autostart/plank.desktop`
- `config/includes.chroot/etc/skel/.config/autostart/picom.desktop`
- `config/includes.chroot/etc/skel/.config/gtk-3.0/settings.ini`

Paket katmani `config/package-lists/reos-desktop.list.chroot` icinde tutulur.
Ilgili paketler: `plank`, `picom`, `orchis-gtk-theme`,
`papirus-icon-theme`, `fonts-inter`, `fonts-roboto`, `fonts-jetbrains-mono`,
`libjs-jquery`, `libjs-jquery-ui`.

## UI demo

Upstream repo:

```text
https://github.com/JoaoGabriel-Lima/macos-ui-clone
```

Hazirlanan tabanda kullanilan commit:

```text
f4f28429e38ff47f60deab83e6d11030b2c475b4
```

ISO icinde hedef konum:

```text
/usr/share/reos/ui/macos-ui-clone
```

Baslatma kisayolu:

```text
/usr/share/applications/reos-ui-demo.desktop
```

Demo sayfalari CDN yerine Debian'in yerel `libjs-jquery` ve
`libjs-jquery-ui` dosyalarina yonlendirildi. Bu sayede canli sistem internet
baglantisi olmadan da temel UI demosunu acabilir.

## Marka notu

reOS sistem kimligi reOS olarak kalir. Upstream macOS UI clone sadece demo ve
gorsel referans olarak paketlenir; sistemin urun adi, logo ve destek bilgileri
Apple/macOS olarak degistirilmez.

