SELECT S.U_No, COUNT(DISTINCT M_No) Mus_Sayi, SUM(Miktar) TopMiktar FROM SIPARIS S GROUP BY S.U_No

SELECT S.U_No, U.UrunAdi, COUNT(DISTINCT M_No) Mus_Sayi, SUM(Miktar) TopMiktar 
		FROM SIPARIS S, URUN U WHERE S.U_No=U.UNo GROUP BY S.U_No, U.UrunAdi 

SELECT * FROM URUN WHERE EldekiStok < 50
UPDATE URUN SET BirimFiyat = BirimFiyat * 1.1 WHERE EldekiStok < 50
