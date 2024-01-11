@DB
  Feature: Dean Bilgisi Dogrulama
    Scenario: Kayitli Dean Bilgisi Dogrulama Testi
      Given Database baglantisi kurulur
      And Beklenen Dean verisi hazirlanir
      When Kayitli Dean bilgisini almak icin Query gonderilir
      Then Kayitli Dean verisi dogrulanir