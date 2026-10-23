# 🩸 Bloodborne PC Port (Native / Emülatörsüz) - Kurulum ve Optimizasyon Rehberi

<p align="center">
  <img src="https://raw.githubusercontent.com/yemrezin/Bloodborne.exe-Kurulum/main/assets/banner.png" alt="Bloodborne PC Banner" width="750" onerror="this.style.display='none'"/>
</p>

<p align="center">
  <b>PlayStation 4 Klasiği Bloodborne'un PC Üzerinde Herhangi Bir Emülatör Arayüzü Olmadan, Yerel (Native) Vulkan API ile Çalıştırılması İçin Hazırlanmış Tam Kurulum Paketi.</b>
</p>

<p align="center">
  <a href="https://drive.google.com/drive/folders/1_bKHKozjwKpBE-Tmu7QB0cwkH0wTphI7?usp=sharing"><img src="https://img.shields.io/badge/Google_Drive-Tüm_Dosyaları_İndir-blue?style=for-the-badge&logo=google-drive" alt="Google Drive Download"/></a>
  <img src="https://img.shields.io/badge/Platform-Windows_10_%2F_11_64--bit-0078D6?style=for-the-badge&logo=windows" alt="Platform Windows"/>
  <img src="https://img.shields.io/badge/Graphics-Vulkan_1.3-red?style=for-the-badge&logo=vulkan" alt="Vulkan 1.3"/>
  <img src="https://img.shields.io/badge/FPS-60_FPS_Unlocked-success?style=for-the-badge" alt="60 FPS"/>
  <img src="https://img.shields.io/badge/DLC-The_Old_Hunters-orange?style=for-the-badge" alt="DLC"/>
</p>

---

## 📥 1. Oyun Dosyalarını İndirme (Google Drive)

Oyunun çalışması için gereken tüm dosyalar (Port motoru, DLC, 60 FPS yamaları, Xbox simge modları ve 29.3 GB ana oyun arşivi) Google Drive üzerinde 2 parça halinde hazırlandı:

👉 **[Google Drive İndirme Bağlantısı İçin Tıklayın](https://drive.google.com/drive/folders/1_bKHKozjwKpBE-Tmu7QB0cwkH0wTphI7?usp=sharing)**

Klasör içerisindeki dosyalar:
1. **`1_Bloodborne_Motor_Modlar_ve_DLC.zip` (~122 MB):**
   - PC port motoru (`bbport`), tek tıkla çalıştıran `Bloodborne_Oyna.bat`, grafik ayar arayüzü `Bloodborne_Ayarlar.bat`, **The Old Hunters DLC** kilit açıcısı, **Elden Ring tarzı modern Xbox simgeleri modu** ve **özel Xbox tuş atamaları**.
2. **`2_Bloodborne_Ana_Oyun_Verisi.zip` (~29.3 GB):**
   - Bloodborne ana oyun verisi (`CUSA03173` klasörü; `eboot.bin` ve `dvdroot_ps4` içerir).

---

## 📑 2. Detaylı Rehberler ve Dokümantasyon

İhtiyacınıza göre hazırlanan özel kılavuzları inceleyebilirsiniz:

| Kılavuz | Açıklama |
| :--- | :--- |
| 🤖 **[AGENT_PROMPT.md](AGENT_PROMPT.md)** | **AI Ajanları (Claude Code, OpenAI Codex, Antigravity vb.) İçin Tek Komutla Kurulum Promptu:** Ajanınızın tüm dosyaları otomatik açıp, bağıl yolları bağlayıp oyunu tek seferde hazır etmesini sağlar. |
| 🎮 **[KONTROLCU_VE_TUS_AYARLARI.md](KONTROLCU_VE_TUS_AYARLARI.md)** | **Xbox ve PlayStation Kontrolcü Kılavuzu:** Tuşların nasıl özelleştirileceği (`input.ini`), ekrandaki simgelerin nasıl değiştirileceği (PlayStation $\leftrightarrow$ Xbox) ve popüler aksiyon-RPG tuş dizilimleri. |
| 🛠️ **[KURULUM_REHBERI.md](KURULUM_REHBERI.md)** | **Adım Adım Manuel Kurulum ve Grafik Ayarları:** DLSS / FSR 4 upscaler ayarları, 60 FPS kararlılık bilgisi, sistem gereksinimleri ve sorun giderme adımları. |

---

## ⚡ 3. Hızlı Kurulum Adımları (3 Adımda Hazır)

1. **İndirin:** Yukarıdaki Google Drive linkinden her iki `.zip` dosyasını bilgisayarınıza indirin.
2. **Aynı Yere Çıkartın:**
   - Önce `1_Bloodborne_Motor_Modlar_ve_DLC.zip` dosyasını sağ tıklayıp **"Buraya Ayıkla"** deyin. Masaüstünüzde `Bloodborne_Kurulum` klasörü oluşacaktır.
   - Ardından `2_Bloodborne_Ana_Oyun_Verisi.zip` dosyasını da aynı yere **"Buraya Ayıkla"** deyin. (Oyun dosyaları otomatik olarak `Bloodborne_Kurulum\game\CUSA03173` dizinine yerleşir).
3. **Oyunu Başlatın:**
   - Klasörün içindeki **`Bloodborne_Oyna.bat`** dosyasına çift tıklayın! Oyun Vulkan ile doğrudan açılacaktır.

---

## ✨ 4. Bu Pakete Dahil Olan Özellikler

- **Emülatörsüz Yerel Çalışma:** shadPS4 arayüzü olmadan doğrudan Windows x86_64 üzerinde Vulkan API ile çalışır.
- **The Old Hunters DLC:** DLC verisi port motoru içerisine önceden entegre edilmiştir.
- **Xbox Kontrolcü Desteği & Simgeleri:** Oyundaki orijinal DualShock 4 buton simgeleri yerine ekranda A, B, X, Y, LB, RB simgeleri görünür.
- **Özel Ergonomik Tuş Düzeni:** Modern aksiyon-RPG oyuncuları için Yuvarlanma **LB**, Can basma **RB**, Saldırılar **X / Y** olarak yapılandırılmıştır.
- **Çakışmasız 60 FPS:** SuperPSX 60 FPS eboot'u ile harici yama çakışmaları temizlenmiş, takılma ve çökmeler önlenmiştir.
- **NVIDIA DLSS & AMD FSR 3.1 / FSR 4 Desteği:** Yüksek çözünürlük ve keskin grafikler için güncel upscaler entegrasyonu.
- **Türkçe Metin Desteği:** Oyun içi metinler Türkçe olarak ayarlanmıştır.

---

## 💻 5. Sistem Gereksinimleri

- **İşletim Sistemi:** Windows 10 (1903 veya üstü) ya da Windows 11 (64-bit)
- **Ekran Kartı:** Vulkan 1.3 destekli GPU (NVIDIA GeForce GTX 1060 / RTX serisi veya AMD Radeon RX 580 / RX 6000+ serisi)
- **İşlemci:** AVX komut setini destekleyen 4 çekirdek ve üzeri CPU (Intel Core 4. Nesil Haswell+ / AMD Ryzen)
- **RAM:** En az 8 GB RAM (1440p / 4K için 10-16 GB önerilir)
- **Yazılım Gereksinimi:** [Microsoft Visual C++ Redistributable 2015-2022 (x64)](https://aka.ms/vs/17/release/vc_redist.x64.exe)

---

## 📜 Lisans & Teşekkür

Bu proje, topluluk tarafından geliştirilen açık kaynaklı **bbport** (Supermedo & deadinside28) ve **shadPS4** Vulkan çevirici motoru üzerine inşa edilmiştir. Bloodborne fikri mülkiyeti Sony Interactive Entertainment ve FromSoftware'e aittir.
