# reOS

reOS, Debian tabanli bir canli ISO ve ileride kurulabilir bir isletim sistemi
uretebilmek icin hazirlanmis baslangic iskeletidir.

Bu proje varsayilan olarak Debian 13 `trixie` tabanini, `amd64` mimarisini ve
hafif bir Xfce masaustu deneyimini hedefler. Debian tarafinda `trixie`, 8
Haziran 2026 itibariyla guncel stable surumdur.

## Neler var?

- `auto/`: `live-build` icin otomatik `config`, `build` ve `clean` girisleri.
- `config/package-lists/`: ISO icine girecek temel, masaustu ve firmware paketleri.
- `config/includes.chroot/`: hedef sistemin dosya agacina kopyalanacak marka ve ayar dosyalari.
- `config/hooks/normal/`: chroot icinde calisan kurulum/markalama hook'lari.
- `scripts/`: host hazirlama, ISO uretme, temizleme ve proje kontrol betikleri.
- `docs/`: yol haritasi, marka notlari ve guvenlik/release kontrol listesi.

## Gereksinimler

ISO uretimi Linux uzerinde root yetkisi ister. Windows kullaniyorsan en rahat
yol WSL2 icinde Debian/Ubuntu kullanmaktir.

Gerekli araclar:

- `live-build`
- `debootstrap`
- `squashfs-tools`
- `xorriso`
- `isolinux` / `syslinux`
- `grub-pc-bin`
- `grub-efi-amd64-bin`
- `mtools`
- `dosfstools`

Host'u hazirlamak icin:

```sh
sudo sh ./scripts/prepare-host.sh
```

Live-build'in `auto/` betiklerini dogrudan kullanmak istersen dosyalari bir kez
calistirilabilir yap:

```sh
chmod +x auto/* scripts/*.sh config/hooks/normal/*.hook.chroot
```

## ISO uretimi

```sh
sh ./scripts/check-project.sh
sudo sh ./scripts/build-iso.sh
```

Uretim basarili olursa live-build genelde proje kokune
`live-image-amd64.hybrid.iso` benzeri bir ISO dosyasi koyar.

Temizlemek icin:

```sh
sudo sh ./scripts/clean.sh
```

Tam temizlemek icin:

```sh
sudo sh ./scripts/clean.sh --purge
```

## Ilk degistirilecek yerler

- Dagitim adi/surumu: `reos.env`, `auto/config`, `config/hooks/normal/0100-reos-branding.hook.chroot`
- Paket secimi: `config/package-lists/*.list.chroot`
- Varsayilan dil/klavye: `config/hooks/normal/0200-reos-locale.hook.chroot`
- Masaustu arka plani: `config/includes.chroot/usr/share/backgrounds/reos/wallpaper.svg`
- Yol haritasi: `docs/ROADMAP.md`

## Notlar

Bu iskelet bir "Debian remix" baslangicidir. Kendi paket deponu, installer
ayarlarini, imzalama anahtarlarini ve marka varliklarini ekledikce gercek bir
dagitim surecine yaklasirsin.

Debian markasini kullanirken Debian'in marka kurallarina dikkat et. Kendi
dagitimin icin kullaniciya gorunen ad ve logolari reOS olarak tutmak daha temiz
bir baslangictir.
