#include <LiquidCrystal.h>

LiquidCrystal lcd(12, 11, 5, 4, 3, 2);
float volt;

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
  analogReference(DEFAULT);
  int val = analogRead(A0);
  volt = (5.0/1023.0) * val;

  lcd.setCursor(0, 0);
  if (volt > 4) {
    lcd.print(anggotaKelompok[0]);
  } else if (volt > 3) {
    lcd.print(anggotaKelompok[1]);
  } else if (volt > 2) {
    lcd.print(anggotaKelompok[2]);
  } else if (volt > 1) {
    lcd.print(anggotaKelompok[3]);
  } else {
    lcd.print("Naikan Tegangan!");
  }
  lcd.clear();
}
