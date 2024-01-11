@API
Feature: Dean Controller
  Scenario: Admin yetkisi ile Dean hesabi olusturma testi
    Given "Admin" yetkisi ile giris yapilir
    And Dean Save icin URL duzenlenir
    And Dean Save icin Payload duzenlenir
    When Dean Save icin POST Request gonderilir ve Response alinir
    Then Status kodun 200 oldugu dogrulanir
    And Dean Save icin  Response Body dogrulanir

