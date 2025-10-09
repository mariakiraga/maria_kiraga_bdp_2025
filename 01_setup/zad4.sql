INSERT INTO ksiegowosc.pracownicy (imie, nazwisko, adres, telefon) VALUES
('Jan', 'Nowak', 'Warszawa, ul. Zielona 5', '600100100'),
('Anna', 'Kowalska', 'Kraków, ul. Lipowa 10', '600100101'),
('Piotr', 'Wiśniewski', 'Gdańsk, ul. Morska 3', '600100102'),
('Joanna', 'Lewandowska', 'Poznań, ul. Kwiatowa 8', '600100103'),
('Marek', 'Wójcik', 'Łódź, ul. Polna 2', '600100104'),
('Julia', 'Kaczmarek', 'Wrocław, ul. Leśna 12', '600100105'),
('Jakub', 'Zieliński', 'Katowice, ul. Różana 4', '600100106'),
('Monika', 'Szymańska', 'Sopot, ul. Długa 15', '600100107'),
('Tomasz', 'Duda', 'Lublin, ul. Ogrodowa 9', '600100108'),
('Jolanta', 'Pawlak', 'Bydgoszcz, ul. Spacerowa 6', '600100109');

INSERT INTO ksiegowosc.pensja (stanowisko, kwota) VALUES
('kierownik', 4500),
('księgowy', 3200),
('analityk', 2800),
('sekretarka', 2200),
('magazynier', 1800),
('sprzedawca', 2000),
('asystent', 1600),
('informatyk', 4000),
('menedżer', 5000),
('praktykant', 1200);

INSERT INTO ksiegowosc.premia (rodzaj, kwota) VALUES
('brak', 0),
('uznaniowa', 500),
('świąteczna', 300),
('brak', 0),
('motywacyjna', 800),
('brak', 0),
('świąteczna', 300),
('brak', 0),
('uznaniowa', 500),
('brak', 0);

INSERT INTO ksiegowosc.godziny (data, liczba_godzin, id_pracownika) VALUES
('2025-10-01', 168, 1),
('2025-10-01', 150, 2),
('2025-10-01', 172, 3),
('2025-10-01', 160, 4),
('2025-10-01', 162, 5),
('2025-10-01', 155, 6),
('2025-10-01', 180, 7),
('2025-10-01', 140, 8),
('2025-10-01', 165, 9),
('2025-10-01', 175, 10);

INSERT INTO ksiegowosc.wynagrodzenie (data, id_pracownika, id_godziny, id_pensji, id_premii) VALUES
('2025-10-01', 1, 1, 1, 2),
('2025-10-01', 2, 2, 2, 1),
('2025-10-01', 3, 3, 3, 3),
('2025-10-01', 4, 4, 4, 4),
('2025-10-01', 5, 5, 5, 5),
('2025-10-01', 6, 6, 6, 6),
('2025-10-01', 7, 7, 7, 7),
('2025-10-01', 8, 8, 8, 8),
('2025-10-01', 9, 9, 9, 9),
('2025-10-01', 10, 10, 10, 10);
