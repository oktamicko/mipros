#include <LiquidCrystal.h>

LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

byte heart[8] = {
  0b00000,
  0b01010,
  0b11111,
  0b11111,
  0b11111,
  0b01110,
  0b00100,
  0b00000
};

byte smiley[8] = {
  0b00000,
  0b00000,
  0b01010,
  0b00000,
  0b00000,
  0b10001,
  0b01110,
  0b00000
};

byte frownie[8] = {
  0b00000,
  0b00000,
  0b01010,
  0b00000,
  0b00000,
  0b00000,
  0b01110,
  0b10001
};

byte armsDown[8] = {
  0b00100,
  0b01010,
  0b00100,
  0b00100,
  0b01110,
  0b10101,
  0b00100,
  0b01010
};

byte armsUp[8] = {
  0b00100,
  0b01010,
  0b00100,
  0b10101,
  0b01110,
  0b00100,
  0b00100,
  0b01010
};
void setup() {
  lcd.createChar(1, heart);
  lcd.createChar(2, smiley);
  lcd.createChar(3, frownie);
  lcd.createChar(4, armsDown);
  lcd.createChar(5, armsUp);

  lcd.begin(16, 2);
  lcd.print("Tekom ");
  lcd.print(" IPB ");
  lcd.write(1);
}

void loop() {
  lcd.setCursor(4, 1);
  for (int i = 1; i < 6; i++) {
    lcd.write(i);
    delay(1000);
  }
}
