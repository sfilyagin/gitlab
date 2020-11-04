DROP TABLE IF EXISTS product CASCADE;
DROP SEQUENCE IF EXISTS global_seq;

CREATE SEQUENCE global_seq START WITH 1;

CREATE TABLE product(
    id          INTEGER PRIMARY KEY DEFAULT nextval('global_seq'),
    name        VARCHAR         NOT NULL,
    brand       VARCHAR         NOT NULL,
    price       INTEGER         NOT NULL,
    quantity    INTEGER         NOT NULL
);

INSERT INTO public.product (name, brand, price, quantity) VALUES ('Молоко', 'Простоквашино', 50, 50);
INSERT INTO public.product (name, brand, price, quantity) VALUES ('Сыр', 'VIOLETTE', 90, 40);
INSERT INTO public.product (name, brand, price, quantity) VALUES ('Сыр плавленный', 'VIOLA', 101, 35);
INSERT INTO public.product (name, brand, price, quantity) VALUES ('Пельмени', 'Сытоедов', 150, 10);
INSERT INTO public.product (name, brand, price, quantity) VALUES ('Вода газированная', 'Святой Источник', 40, 80);
INSERT INTO public.product (name, brand, price, quantity) VALUES ('Вода негазированная', 'Святой Источник', 35, 80);