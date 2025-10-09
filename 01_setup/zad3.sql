CREATE TABLE ksiegowosc.pracownicy (
    id_pracownika SERIAL PRIMARY KEY,
    imie VARCHAR(50) NOT NULL,
    nazwisko VARCHAR(50) NOT NULL,
    adres VARCHAR(100),
    telefon VARCHAR(20)
);
COMMENT ON TABLE ksiegowosc.pracownicy IS 'Dane pracownikow';


CREATE TABLE ksiegowosc.godziny (
    id_godziny SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    liczba_godzin INT CHECK (liczba_godzin >= 0),
    id_pracownika INT REFERENCES ksiegowosc.pracownicy(id_pracownika)
);
COMMENT ON TABLE ksiegowosc.godziny IS 'Godziny przepracowane przez pracowników';


CREATE TABLE ksiegowosc.pensja (
    id_pensji SERIAL PRIMARY KEY,
    stanowisko VARCHAR(50) NOT NULL,
    kwota NUMERIC(10,2) CHECK (kwota >= 0)
);
COMMENT ON TABLE ksiegowosc.pensja IS 'Wartość pensji dla stanowiska';


CREATE TABLE ksiegowosc.premia (
    id_premii SERIAL PRIMARY KEY,
    rodzaj VARCHAR(50),
    kwota NUMERIC(10,2) CHECK (kwota >= 0)
);
COMMENT ON TABLE ksiegowosc.premia IS 'Premie';


CREATE TABLE ksiegowosc.wynagrodzenie (
    id_wynagrodzenia SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    id_pracownika INT REFERENCES ksiegowosc.pracownicy(id_pracownika),
    id_godziny INT REFERENCES ksiegowosc.godziny(id_godziny),
    id_pensji INT REFERENCES ksiegowosc.pensja(id_pensji),
    id_premii INT REFERENCES ksiegowosc.premia(id_premii)
);
COMMENT ON TABLE ksiegowosc.wynagrodzenie IS 'Wynagrodzenie pracowików';


