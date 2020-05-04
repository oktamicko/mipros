#include <LiquidCrystal.h>

LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

void setup() {
  lcd.begin(16, 2);
  lcd.print("hello, world");
}

void loop() {
  lcd.noDisplay();
  delay(2000);
  lcd.display();
  delay(2000);

  lcd.blink();
  delay(2000);
  lcd.noBlink();
  delay(2000);

  lcd.cursor();
  delay(2000);
  lcd.noCursor();
  delay(2000);

  lcd.setCursor(0, 1);
  lcd.print(millis()/1000);

  if (millis()/1000 > 25) {
    lcd.clear();
    delay(2000);
    lcd.print("Hellow World 2");
  }
}
