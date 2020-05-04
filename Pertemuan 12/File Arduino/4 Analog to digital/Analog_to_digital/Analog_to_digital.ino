#include <LiquidCrystal.h>
int sensorPin = A0;
int sensorValue = 0;
float Volt = 0;

LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

void setup() {
  lcd.begin(16, 2);
  lcd.print("Nilai Tegangan");
  delay(2000);
}

void loop() {
  analogReference(DEFAULT);
  sensorValue = analogRead(sensorPin);
  Volt = sensorValue * 5.0 / 1023.0;
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("DEFAULT");
  lcd.setCursor(0, 1);
  lcd.print(sensorValue);
  lcd.setCursor(6, 1);
  lcd.print(Volt, 4);
  delay(2000);

  analogReference(INTERNAL);
  sensorValue = analogRead(sensorPin);
  Volt = sensorValue * 1.1 / 1023.0;
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("INTERNAL");
  lcd.setCursor(0, 1);
  lcd.print(sensorValue);
  lcd.setCursor(6, 1);
  lcd.print(Volt, 4);
  delay(2000);

  analogReference(EXTERNAL);
  sensorValue = analogRead(sensorPin);
  Volt = sensorValue * 3.3 / 1023.0;
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("EXTERNAL");
  lcd.setCursor(0, 1);
  lcd.print(sensorValue);
  lcd.setCursor(6, 1);
  lcd.print(Volt, 4);
  delay(2000);
}
