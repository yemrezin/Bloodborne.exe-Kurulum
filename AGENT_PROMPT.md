# 🤖 AI Coding Agents (Claude Code, OpenAI Codex, Antigravity) Tek Komutla Kurulum Promptu

Bu dosya; **Claude Code**, **OpenAI Codex**, **Google Antigravity**, **Cursor** veya **Aider** gibi terminal ve dosya erişimine sahip yapay zeka kodlama ajanlarını kullanan geliştiriciler için hazırlanmıştır.

Ajanınıza aşağıdaki promptu tek seferde verdiğinizde; indirilen Google Drive arşivlerini otomatik olarak tespit edecek, doğru klasör yapısıyla ayıklayacak, Vulkan ve kontrolcü uyumluluğunu doğrulayacak ve oyunu oynamaya hazır hale getirecektir.

---

## 📋 Ajanınıza Kopyalayıp Yapıştıracağınız Tek Komutluk Prompt

Aşağıdaki metnin tamamını kopyalayıp ajanınıza gönderin:

```markdown
Sen bir sistem ve oyun optimizasyon uzmanısın. PC üzerinde Bloodborne yerel (native) portunu kurmak ve sorunsuz çalıştırmak istiyorum.

Lütfen aşağıdaki adımları sırasıyla ve eksiksiz uygula:

1. [DOSYA VE ARŞİV KONTROLÜ]
   - Kullanıcının İndirilenler (Downloads) klasöründe veya çalışma dizininde aşağıdaki Google Drive arşivlerinin bulunup bulunmadığını kontrol et:
     * `1_Bloodborne_Motor_Modlar_ve_DLC.zip` (~122 MB)
     * `2_Bloodborne_Ana_Oyun_Verisi.zip` (~29.3 GB)
   - Eğer arşivler henüz indirilmediyse kullanıcıya şu linkten indirmesini hatırlat:
     https://drive.google.com/drive/folders/1_bKHKozjwKpBE-Tmu7QB0cwkH0wTphI7?usp=sharing

2. [KLASÖR YAPISI VE AYIKLAMA]
   - Çalışma dizininde `Bloodborne_Kurulum` ana klasörünü oluştur.
   - Önce `1_Bloodborne_Motor_Modlar_ve_DLC.zip` arşivini ayıkla (içinden `bbport`, `Bloodborne_Oyna.bat`, `DLC` ve kılavuzlar çıkacaktır).
   - Ardından `2_Bloodborne_Ana_Oyun_Verisi.zip` arşivini ayıkla ve `CUSA03173` oyun klasörünün tam olarak `Bloodborne_Kurulum/game/CUSA03173` yoluna yerleştiğini doğrula.
   - `Bloodborne_Kurulum/game/CUSA03173/eboot.bin` dosyasının fiziksel olarak var olduğunu doğrula.

3. [60 FPS ÇÖKME ÖNLEME AYARI (ÇOK ÖNEMLİ)]
   - SuperPSX GOTY sürümünde eboot.bin içine 60 FPS yaması önceden enjekte edilmiştir.
   - bbport'un dışarıdan tekrar 60 FPS yaması enjekte edip bellek hatası (0x1514c24 execute access fault) vermesini önlemek için:
     * `Bloodborne_Oyna.bat` ve launcher ayarlarında ortam değişkenini `BB_FPS=30` olarak ayarla.
     * Bu sayede oyunun kendi dahili 60 FPS motoru pürüzsüz çalışacaktır.

4. [MOD VE KONTROLCÜ ENTEGRASYONU]
   - `Bloodborne_Kurulum/bbport/mods/XboxUI/dvdroot_ps4/menu/common.tpf.dcx` dosyasının mevcut olduğunu kontrol et.
   - `Bloodborne_Oyna.bat` dosyasına `set BB_MODS_ENABLED=1` ve `set BB_MODS_DIR=%~dp0bbport\mods` tanımlarının eklendiğini doğrula.
   - Kullanıcının kumandasına göre (Xbox veya PlayStation) `Bloodborne_Kurulum/bbport/input.ini` dosyasını doğrula:
     * Eğer Xbox kullanıyorsa özel ergonomik dizilim (LB: Yuvarlanma, RB: İksir, X: Hafif Saldırı, Y: Ağır Saldırı, A: Etkileşim, B: Eşya) aktif olsun.
     * Eğer DualShock / DualSense kullanıyorsa orijinal eşleşmelerin çalıştığını kontrol et.

5. [BAĞIL (PORTABLE) ÇALIŞMA KONTROLÜ]
   - Hiçbir dosyada mutlak (C:\Users\...) sabit kullanıcı adı kalmadığından, tüm scriptlerin `%~dp0` bağıl yollarıyla çalıştığından emin ol.
   - Oyunu başlatmak için `Bloodborne_Kurulum/Bloodborne_Oyna.bat` dosyasının hazır olduğunu doğrula ve bana kurulum özetini bildir.
```

---

## 🔍 Ajanın Doğrulayacağı Kontrol Listesi (Checklist)

Ajanınızın arka planda başarıyla gerçekleştireceği işlemler:

- [x] **ZIP64 Desteğiyle Ayıklama:** 29 GB'lık `2_Bloodborne_Ana_Oyun_Verisi.zip` dosyasını bozulmadan açar.
- [x] **Dizin Hiyerarşisi:** `Bloodborne_Kurulum\game\CUSA03173\eboot.bin` yolunun doğruluğunu garanti eder.
- [x] **Bellek Çökme Önlemi:** SuperPSX 60 FPS eboot'u ile harici `patches.py` çakışmasını engellemek için `BB_FPS=30` parametresini kilitler.
- [x] **Mod Katmanı Entegrasyonu:** `scripts/mods.py`'nin `XboxUI` doku paketini otomatik bağlamasını sağlar.
- [x] **Girdi Eşleme:** `input.ini` dosyasını kullanıcının tercihine göre yapılandırır.
