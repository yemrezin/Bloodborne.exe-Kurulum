# 🎮 Kontrolcü (Gamepad) ve Tuş Özelleştirme Kılavuzu

Bu kılavuz, **Xbox**, **PlayStation (DualShock 4 / DualSense)** veya **Üçüncü Parti** kontrolcüler ile oynarken:
1. **Ekrandaki buton simgelerini (Xbox $\leftrightarrow$ PlayStation) değiştirmeyi**,
2. **Tuş atamalarını dilediğiniz gibi özelleştirmeyi** adım adım açıklar.

---

## 🎨 1. Ekrandaki Buton Simgelerini (Yazıları / Glyphs) Değiştirme

Bloodborne orijinalde PlayStation 4'e özel geliştirildiği için normalde ekranda PlayStation sembollerini (**Üçgen, Kare, Daire, X, L1, R1**) gösterir. Bu pakette her iki kontrolcü türü için de tam esneklik sağlanmıştır:

### A) Xbox Simgelerini Görmek İstiyorsanız (Varsayılan Olarak Aktif)
- Bu pakette **Elden Ring Style Modern Xbox Prompts** modu önceden yüklenmiştir (`bbport\mods\XboxUI\dvdroot_ps4\menu\common.tpf.dcx`).
- `Bloodborne_Oyna.bat` dosyası başlatıldığında `BB_MODS_ENABLED=1` komutuyla ekrandaki tüm yazılar ve ipuçları otomatik olarak **A, B, X, Y, LB, RB, LT, RT** simgelerine dönüşür.
- Herhangi bir ek ayar yapmanıza gerek yoktur.

### B) PlayStation (DualShock / DualSense) Simgelerini Görmek İstiyorsanız
Eğer PS4 veya PS5 kontrolcüsüyle oynuyorsanız ve ekranda orijinal PlayStation simgelerini (Üçgen, Daire vb.) görmek isterseniz modu devre dışı bırakmak çok kolaydır:
- **Yöntem 1:** `Bloodborne_Oyna.bat` dosyasını Not Defteri ile açın ve `set BB_MODS_ENABLED=1` satırını `set BB_MODS_ENABLED=0` olarak değiştirin.
- **Yöntem 2:** `bbport\mods\XboxUI` klasörünün adını `_XboxUI` olarak değiştirin.
- Oyunu başlattığınızda ekranda orijinal PlayStation simgeleri görüntülenecektir.

---

## 🕹️ 2. Tuş Atamalarını Değiştirme (`bbport\input.ini`)

Tuş atamaları, `bbport\input.ini` dosyası üzerinden yapılandırılır.

### Temel Sentaks Mantığı:
```ini
Oyundaki_Eylem = Kontrolcünüzdeki_Fiziksel_Tuş
```
Sol taraf oyun motorunun aldığı PS4 komutudur; sağ taraf ise kumandanızda bastığınız fiziksel tuştur.

### ⚡ Canlı Yenileme (Oyunu Kapatmadan Değiştirme):
- `bbport\input.ini` dosyasını Not Defteri ile düzenleyip kaydedin.
- Oyundayken klavyeden **F8** tuşuna basın. Yeni tuş atamalarınız **oyunu kapatıp açmaya gerek kalmadan anında** yüklenir!
- Ayrıca oyun içinde klavyeden **Insert** (veya kumandada **L3 + R3**) tuşlarına basarak ayar menüsünü ekrana getirebilirsiniz.

---

## 📋 3. Popüler Kontrolcü Şablonları

### 🏆 Şablon 1: Özel Aksiyon-RPG / Souls Düzeni (Bu Pakette Yüklü Olan)
Modern aksiyon oyunlarındaki (Witcher, Dragon's Dogma, Elden Ring) en rahat kontrol düzenidir. Parmağınızı sağ analogdan ayırmadan yuvarlanabilir ve saldırabilirsiniz:

| Xbox Tuşu | PlayStation Kolu | Oyun İçi Eylem |
| :--- | :--- | :--- |
| **A** | **Cross (X)** | **Etkileşim / Toplama / Konuşma** |
| **B** | **Square (Kare)** | **Seçili Eşyayı Kullanma** (Molotof vb.) |
| **X** | **R1** | **Hafif / Hızlı Saldırı** |
| **Y** | **R2** | **Ağır / Güçlü Saldırı** |
| **LB** | **L1** | **Yuvarlanma / Koşma (Sprint & Roll)** |
| **RB** | **Triangle (Üçgen)** | **Can Basma / İksir (Kan Şişesi)** |
| **LT** | **L2** | **Sol El Silahı / Savuşturma (Parry)** |
| **RT** | **Circle (Daire)** | **Silah Dönüştürme (Trick Weapon)** |
| **LS (Sol Çubuk Tık)** | **L3** | **Çömelme / Hızlı Adım** |
| **RS (Sağ Çubuk Tık)** | **R3** | **Düşmana Kilitlenme (Lock-On)** |
| **View (Back)** | **Touchpad** | **Dokunmatik Yüzey Menüsü** |
| **Menu (Start)** | **Options** | **Oyun Menüsü / Duraklatma** |

Bu şablon için `input.ini` içindeki `# Controller` bloğu:
```ini
# Controller (Ozel Xbox Dizilimi)
cross = cross
square = circle
r1 = square
r2 = triangle
circle = l1
triangle = r1
l2 = l2
l1 = r2
l3 = l3
r3 = r3
pad_up = pad_up
pad_down = pad_down
pad_left = pad_left
pad_right = pad_right
options = options
touchpad_left = back
axis_left_x = axis_left_x
axis_left_y = axis_left_y
axis_right_x = axis_right_x
axis_right_y = axis_right_y
```

---

### 🗡️ Şablon 2: Orijinal Bloodborne (Klasik FromSoftware) Düzeni
Orijinal PS4 konsolundaki klasik tuş dizilimine geri dönmek isterseniz `input.ini` dosyasındaki `# Controller` bloğunu şu şekilde yapın:

```ini
# Controller (Orijinal Klasik Duzen)
cross = cross
circle = circle
square = square
triangle = triangle
l1 = l1
r1 = r1
l2 = l2
r2 = r2
l3 = l3
r3 = r3
options = options
touchpad_left = back
pad_up = pad_up
pad_down = pad_down
pad_left = pad_left
pad_right = pad_right
axis_left_x = axis_left_x
axis_left_y = axis_left_y
axis_right_x = axis_right_x
axis_right_y = axis_right_y
```

Bu düzende:
- **A / Cross:** Etkileşim
- **B / Circle:** Yuvarlanma / Koşma
- **X / Square:** Eşya Kullanma
- **Y / Triangle:** Can Basma
- **RB / R1:** Hafif Saldırı
- **RT / R2:** Güçlü Saldırı
- **LB / L1:** Silah Dönüştürme
- **LT / L2:** Ateş Etme

---

## 💡 Ekstra Konfor İpucu: Touchpad / View Tuşu
Bloodborne'da dokunmatik yüzeyin solu **Jestler (Hareketler)** menüsünü, sağı ise **Kişisel Eşyalar Hızlı Cebi**ni (Avcı İşareti, Fener, Molotof vb.) açar.
- Eğer Xbox'taki **View (Back)** tuşunun Jestler yerine Kişisel Eşyalar menüsünü açmasını isterseniz:
  `input.ini` içerisindeki `touchpad_left = back` satırını `touchpad_right = back` olarak değiştirmeniz yeterlidir.
