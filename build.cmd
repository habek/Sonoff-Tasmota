cls
echo #ifndef _USER_CONFIG_OVERRIDE_H_ > sonoff\user_config_override.h
echo #define _USER_CONFIG_OVERRIDE_H_ >> sonoff\user_config_override.h

echo #undef STA_SSID1 >> sonoff\user_config_override.h
echo #define STA_SSID1 "H_DOM" >> sonoff\user_config_override.h

echo #undef STA_PASS1 >> sonoff\user_config_override.h
echo #define STA_PASS1 "%wifi_pass%" >> sonoff\user_config_override.h

echo #undef MQTT_HOST >> sonoff\user_config_override.h
echo #define MQTT_HOST "mqtt.dom" >> sonoff\user_config_override.h

echo #undef SYS_LOG_HOST >> sonoff\user_config_override.h
echo #define SYS_LOG_HOST "SYSLOG.DOM" >> sonoff\user_config_override.h

echo #undef SYS_LOG_LEVEL >> sonoff\user_config_override.h
echo #define SYS_LOG_LEVEL LOG_LEVEL_DEBUG >> sonoff\user_config_override.h

echo #undef SAVE_STATE >> sonoff\user_config_override.h
echo #define SAVE_STATE 0 >> sonoff\user_config_override.h

echo #undef USE_DOMOTICZ >> sonoff\user_config_override.h
echo #undef USE_HOME_ASSISTANT >> sonoff\user_config_override.h
echo #undef USE_KNX >> sonoff\user_config_override.h
echo #undef USE_KNX_WEB_MENU >> sonoff\user_config_override.h
echo #undef USE_EMULATION_HUE >> sonoff\user_config_override.h
echo #undef USE_EMULATION_WEMO >> sonoff\user_config_override.h
echo #undef USE_DISCOVERY >> sonoff\user_config_override.h
echo #undef USE_TIMERS >> sonoff\user_config_override.h
echo #undef USE_RULES >> sonoff\user_config_override.h
echo #undef USE_SONOFF_RF >> sonoff\user_config_override.h
echo #define USE_SONOFF_RF >> sonoff\user_config_override.h
echo #undef USE_SONOFF_SC >> sonoff\user_config_override.h
echo #undef USE_TUYA_MCU >> sonoff\user_config_override.h
echo #undef USE_ARMTRONIX_DIMMERS >> sonoff\user_config_override.h
echo #undef USE_PS_16_DZ >> sonoff\user_config_override.h
echo #undef USE_BUZZER >> sonoff\user_config_override.h
echo #undef USE_ARILUX_RF >> sonoff\user_config_override.h

echo #undef USE_WS2812 >> sonoff\user_config_override.h
echo #undef USE_MY92X1 >> sonoff\user_config_override.h
echo #undef USE_SM16716 >> sonoff\user_config_override.h
echo #undef USE_SM2135 >> sonoff\user_config_override.h
echo #undef USE_SONOFF_L1 >> sonoff\user_config_override.h

echo #undef USE_SHT >> sonoff\user_config_override.h
echo #undef USE_BMP >> sonoff\user_config_override.h
echo #undef USE_BH1750 >> sonoff\user_config_override.h
echo #undef USE_SHT3X >> sonoff\user_config_override.h
echo #undef USE_LM75AD >> sonoff\user_config_override.h
echo #undef USE_ADE7953 >> sonoff\user_config_override.h

echo #undef USE_HX711 >> sonoff\user_config_override.h
echo #undef USE_ADE7953 >> sonoff\user_config_override.h
echo #undef USE_DISPLAY_MODES1TO5 >> sonoff\user_config_override.h
echo #undef USE_DISPLAY_LCD >> sonoff\user_config_override.h
echo #undef USE_DISPLAY_SSD1306 >> sonoff\user_config_override.h
echo #undef USE_DISPLAY_MATRIX >> sonoff\user_config_override.h



echo #endif  // _USER_CONFIG_OVERRIDE_H_ >> sonoff\user_config_override.h


set "PLATFORMIO_BUILD_FLAGS=-DUSE_CONFIG_OVERRIDE"
platformio.exe run --environment sonoff --environment sonoff-ircustom --environment sonoff-sensors