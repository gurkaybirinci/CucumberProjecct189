@E2E
Feature: Dean Ekleme, Dogrulama ve Silme

  @UI
  Scenario: Admin Web Sitesinde Dean Ekleyebilmeli
    Given Kullanici web sitesine girer
    When Kullanici login e tiklar
    And  Username kutusuna "AdminGurkay" girer
    And Password kutusuna "Gurkay123+" girer
    And Login butonuna tiklar
    And Menu butonuna tiklar
    And Dean Management butonuna tiklar
    And DeanName kutusuna "Ayşe" girer
    And DeanSurName kutusuna "Yılmaz" girer
    And DeanBirthPlace kutusuna "İstanbul" girer
    And DeanGender "Female" secenegini girer
    And DeanDateOfBirth kutusuna "05051975" girer
    And DeanPhone kutusuna "555-275-7695" girer
    And DeanSSN kutusuna "568-76-7867" girer
    And DeanUserName kutusuna "ayseyilmaz" girer
    And DeanPassword kutusuna sifre girer
    And DeanSubmit butonuna tiklar
    Then Dean kaydi yapildigi dogrulanir

  Scenario: Olusturulan Dean hesap bilgisini alma testi
    Given "Admin" yetkisi ile giris yapilir
    And Kayitli Dean versinin ID numarasini alma
    And Dean GetManagerById icin URL duzenlenir
    And Dean GetManagerById icin beklenen veriler duzenlenir
    When Dean GetManagerById icin GET Request gonderilir ve response alinir
    Then Status kodun 200 oldugu dogrulanir
    And Dean GetManagerById icin gelen Response Body dogrulanir

  Scenario: Kayitli Dean Bilgisi Dogrulama Testi
    Given Database baglantisi kurulur
    And Beklenen Dean verisi hazirlanir
    When Kayitli Dean bilgisini almak icin Query gonderilir
    Then Kayitli Dean verisi dogrulanir

  Scenario: Kayitli Dean hesabini silme testi
    Given "Admin" yetkisi ile giris yapilir
    And Dean Delete icin URL duzenlenir
    When Dean Delete icin DELETE Request gonderilir ve Response alinir
    Then Status kodun 200 oldugu dogrulanir




