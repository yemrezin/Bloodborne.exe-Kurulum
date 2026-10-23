# 🛠️ Bloodborne PC - Detaylı Kurulum ve Optimizasyon Kılavuzu

Bu kılavuz, Google Drive üzerinden indirilen dosyalarla Bloodborne'un PC üzerinde sıfırdan nasıl kurulacağını, grafik/çözünürlük ayarlarını ve karşılaşabileceğiniz olası durumların çözümlerini ayrıntılı olarak açıklar.

---

## 📥 1. Dosyaların İndirilmesi

Aşağıdaki bağlantıdan 2 adet zip dosyasını indirin:
👉 **[Google Drive İndirme Klasörü](https://drive.google.com/drive/folders/1_bKHKozjwKpBE-Tmu7QB0cwkH0wTphI7?usp=sharing)**

1. **`1_Bloodborne_Motor_Modlar_ve_DLC.zip` (~122 MB):** Port dosyaları, scriptler ve eklentiler.
2. **`2_Bloodborne_Ana_Oyun_Verisi.zip` (~29.3 GB):** Ana oyun dosyaları.

---

## 📂 2. Dosyaları Doğru Dizine Çıkartma

Dosyaların bağıl (relative) yollarla otomatik eşleşmesi için:

1. Masaüstünüzde boş bir alana sağ tıklayın.
2. Önce **`1_Bloodborne_Motor_Modlar_ve_DLC.zip`** dosyasını buraya ayıklayın (Masaüstünüzde `Bloodborne_Kurulum` klasörü oluşacaktır).
3. Ardından **`2_Bloodborne_Ana_Oyun_Verisi.zip`** dosyasını da aynı yere ayıklayın.

### Kurulum Sonrası Klasör Yapısı Şöyle Olmalıdır:
```text
Bloodborne_Kurulum\
├── Bloodborne_Oyna.bat        <-- Oyunu başlatan ana dosya
├── Bloodborne_Ayarlar.bat     <-- Grafik ve çözünürlük ayarları arayüzü
├── KURULUM_VE_KULLANIM_KILAVUZU.md
├── bbport\                    <-- PC port motoru
│   ├── Bloodborne.exe
│   ├── input.ini
│   ├── bbport.ini
│   ├── mods\XboxUI\           <-- Xbox tuş simgeleri
│   └── user\addcont\          <-- The Old Hunters DLC
└── game\
    └── CUSA03173\             <-- 29 GB Ana oyun klasörü
        ├── eboot.bin
        └── dvdroot_ps4\
```

---

## 🎮 3. Oyunu Başlatma

- Klasör içerisindeki **`Bloodborne_Oyna.bat`** dosyasına çift tıklayın.
- Script ortam değişkenlerini otomatik yükler, eski askıda kalan süreçleri temizler ve oyunu doğrudan Vulkan API ile başlatır.

---

## 🖥️ 4. Grafik, Çözünürlük ve Upscaler Ayarları

Grafik ayarlarını değiştirmek için **`Bloodborne_Ayarlar.bat`** dosyasını çalıştırın:

### A) NVIDIA Ekran Kartları (GeForce RTX 20/30/40 Serisi):
- **Upscaler:** `DLSS` (Varsayılan olarak açıktır).
- **Preset:** `Quality` veya `Balanced`.
- Keskin, pürüzsüz ve yüksek FPS deneyimi sunar.

### B) AMD Radeon ve Intel Ekran Kartları:
- **Upscaler:** `FSR 3.1` veya `FSR 4`.
- **Preset:** `Quality` (Kalite).
- RTX olmayan kartlarda da yüksek performans ve net görüntü sağlar.

### C) 60 FPS Kararlılık Ayarı:
- Paketteki oyun verisi SuperPSX'in 60 FPS entegreli sürümüdür.
- Harici yama enjektörlerinin (patches.py) oyun koduna ikinci kez müdahale edip bellek hatası (`0x1514c24`) vermemesi için `Bloodborne_Oyna.bat` içerisinde `BB_FPS=30` parametresi sabitlenmiştir. Bu sayede oyun dahili 60 FPS motoruyla kusursuz çalışır.

---

## 🔧 5. Sorun Giderme (Sık Karşılaşılan Sorular)

### Soru 1: Oyun açılır açılmaz bir pencere yanıp sönüp kapanıyor?
- **Çözüm:** Bilgisayarınızda Visual C++ kütüphaneleri eksik olabilir. [Microsoft VC++ Redistributable x64](https://aka.ms/vs/17/release/vc_redist.x64.exe) paketini indirip kurun ve bilgisayarınızı yeniden başlatın.

### Soru 2: Oyun siyah ekranda kalıyor veya shader derlemesinde donuyor?
- **Çözüm:** `Bloodborne_Ayarlar.bat` dosyasını açın. **Advanced** sekmesine gidin ve **Clear shader cache** butonuna basın. Ardından oyunu tekrar başlatın.

### Soru 3: Ekran kartı sürücüsü hatası veriyor?
- **Çözüm:** Bloodborne yerel portu **Vulkan 1.3** gerektirir. NVIDIA GeForce Experience veya AMD Adrenalin üzerinden ekran kartı sürücünüzü en son sürüme güncelleyin.
