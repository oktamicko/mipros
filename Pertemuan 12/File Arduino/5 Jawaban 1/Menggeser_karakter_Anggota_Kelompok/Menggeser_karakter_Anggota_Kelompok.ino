#include <LiquidCrystal.h>

LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

String anggotaKelompok[] = {
  "Okta Graedmicko",
  "M Faris Ramdhani",
  "M Daffa Hanan",
  "Tria Febriyanti"
};

void setup() {
  lcd.begin(16, 2);
}

void loop() {

  for (int i = 0; i < 4; i++) {
    lcd.setCursor(17, 0);
    lcd.print(anggotaKelompok[i]);

    for (int j = 0; j < 32; j++) {
      lcd.scrollDisplayLeft();
      delay(150);
    }
    lcd.clear();
  }
}
