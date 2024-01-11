@E2E
Feature: Dean Controller E2E

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
    And DeanPhone kutusuna "bir telefon numarasi" girer
    And DeanSSN kutusuna "bir ssn numarasi" girer
    And DeanUserName kutusuna "ayseyilmaz" girer
    And DeanPassword kutusuna sifre girer
    And DeanSubmit butonuna tiklar
    Then Dean kaydi yapildigi dogrulanir

  Scenario: API GetAll ile çağırıp doğrulayacağız


  Scenario: Kayitli Dean Bilgisi Dogrulama Testi
    Given Database baglantisi kurulur
    And Beklenen Dean verisi hazirlanir
    When Kayitli Dean bilgisini almak icin Query gonderilir
    Then Kayitli Dean verisi dogrulanir