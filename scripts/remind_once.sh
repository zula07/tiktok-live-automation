#!/bin/bash
# Tek seferlik hatırlatıcı
# Kullanım: ./remind_once.sh "HH:MM" "Mesaj"
TARGET_TIME="$1"
MESSAGE="$2"

# Şu anki zamanı saniye cinsinden al
CURRENT_TIME=$(date +%s)
# Hedef zamanı saniye cinsinden hesapla
TARGET_TIME_SECONDS=$(date -d "$TARGET_TIME" +%s)

# Eğer hedef zaman geçmişse bugünkü gün için, yarınkine ayarla
if [ "$TARGET_TIME_SECONDS" -lt "$CURRENT_TIME" ]; then
    TARGET_TIME_SECONDS=$(date -d "$TARGET_TIME tomorrow" +%s)
fi

# Bekleme süresini hesapla
WAIT_SECONDS=$((TARGET_TIME_SECONDS - CURRENT_TIME))

# Belirtilen süre kadar bekle
sleep $WAIT_SECONDS

# Mesajı gönder
/root/.openclaw/workspace/scripts/send_telegram.sh "$MESSAGE"
