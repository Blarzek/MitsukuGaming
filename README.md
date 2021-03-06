# MitsukuGaming
Online Gaming Shop.
Allows you to navigate across the web to make a purchase of the published products. 

# Main features:
* As client:
  * You can search products using several filters.
  * You can register and login to have a history of purchases.
  * You can add products to your wishlist.
  * You can write a review of a product, giving a score for the product.
  * You can rate the reviews from other users.
  * You can report the reviews from other users.
  * You can add other users as friends.
  * You can gift products to users in your friend list.
  * You can send suggestion messages.
  * You can send support messages.

* As admin:
  * You can read received suggestion messages.
  * You can read received support messages.
  * You can manage the products, adding, editing or removing products from the shop.
  * You can manage the reports of reviews from users.
  * You can ban/block users from posting reviews, and remove this status too.

DATABASE
---------------------------------------------------------------------------------------------------

The system use a database named *"sample"*. This is the SQL script to create the necessary tables:

CREATE TABLE **PRODUCT** (PRODUCT_ID INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, "NAME" VARCHAR(144) NOT NULL, DESCRIPTION LONG VARCHAR, SYNOPSIS LONG VARCHAR, QUANTITY INTEGER DEFAULT 0  NOT NULL, RELEASE_DATE DATE NOT NULL, AVAILABLE INTEGER NOT NULL, PRICE REAL, COST REAL, CATEGORY VARCHAR(15), LOGO VARCHAR(50), DISCOUNT INTEGER DEFAULT 0  NOT NULL, PLATFORM VARCHAR(30) DEFAULT 'DRM-Free'  NOT NULL, DEVELOPER VARCHAR(40) DEFAULT 'God'  NOT NULL);

INSERT INTO APP.PRODUCT ("NAME", DESCRIPTION, SYNOPSIS, QUANTITY, RELEASE_DATE, AVAILABLE, PRICE, COST, CATEGORY, LOGO, DISCOUNT, PLATFORM, DEVELOPER) 
    VALUES ('The Division', 'Ubisoft', 'Action, Coop, Multiplayer.', 313, '2016-03-08', 1, 39.92, 32.55, 'FPS', 'logo-the-division.jpg', 0, 'DRM-Free', 'Ubisoft');
    
INSERT INTO APP.PRODUCT ("NAME", DESCRIPTION, SYNOPSIS, QUANTITY, RELEASE_DATE, AVAILABLE, PRICE, COST, CATEGORY, LOGO, DISCOUNT, PLATFORM, DEVELOPER) 
    VALUES ('Metal Gear Solid V: The Phantom Pain', 'Konami', 'Stealth.', 772, '2015-09-01', 1, 27.0, 19.99, 'Stealth', 'logo-mgsv-tpp.jpg', 10, 'Steam', 'Konami');
    
INSERT INTO APP.PRODUCT ("NAME", DESCRIPTION, SYNOPSIS, QUANTITY, RELEASE_DATE, AVAILABLE, PRICE, COST, CATEGORY, LOGO, DISCOUNT, PLATFORM, DEVELOPER) 
    VALUES ('Fallout 4', 'Bethesda', 'Post-Apocalypse.', 269, '2015-11-10', 1, 28.98, 21.9, 'RPG', 'logo-fallout-4.jpg', 25, 'DRM-Free', 'Bethesda');
    
INSERT INTO APP.PRODUCT ("NAME", DESCRIPTION, SYNOPSIS, QUANTITY, RELEASE_DATE, AVAILABLE, PRICE, COST, CATEGORY, LOGO, DISCOUNT, PLATFORM, DEVELOPER) 
    VALUES ('DOOM', 'id Software ', 'FPS.', 422, '2016-05-13', 0, 34.49, 28.75, 'FPS', 'logo-doom.jpg', 0, 'Steam', 'Id Software');
    
INSERT INTO APP.PRODUCT ("NAME", DESCRIPTION, SYNOPSIS, QUANTITY, RELEASE_DATE, AVAILABLE, PRICE, COST, CATEGORY, LOGO, DISCOUNT, PLATFORM, DEVELOPER) 
    VALUES ('Metal Gear Solid V: Ground Zeroes', 'Konami', 'Stealth.', 124, '2014-12-18', 1, 4.95, 2.54, 'Stealth', 'logo-mgsv-gz.jpg', 0, 'Origin', 'Konami');
    
INSERT INTO APP.PRODUCT ("NAME", DESCRIPTION, SYNOPSIS, QUANTITY, RELEASE_DATE, AVAILABLE, PRICE, COST, CATEGORY, LOGO, DISCOUNT, PLATFORM, DEVELOPER) 
    VALUES ('Dark Souls III', 'From Software', 'Hard game.', 551, '2016-04-12', 0, 39.49, 30.49, 'RPG', 'logo-dark-souls-3.jpg', 0, 'Origin', 'From Software');
    
INSERT INTO APP.PRODUCT ("NAME", DESCRIPTION, SYNOPSIS, QUANTITY, RELEASE_DATE, AVAILABLE, PRICE, COST, CATEGORY, LOGO, DISCOUNT, PLATFORM, DEVELOPER) 
    VALUES ('Stories The Path Of Destinies', 'Aventura', 'Aventura', 20, '2016-04-19', 1, 30.0, 20.0, 'RPG', 'logo-stories-the-path-of-destinies.jpg', 0, 'DRM-Free', 'God');
    
INSERT INTO APP.PRODUCT ("NAME", DESCRIPTION, SYNOPSIS, QUANTITY, RELEASE_DATE, AVAILABLE, PRICE, COST, CATEGORY, LOGO, DISCOUNT, PLATFORM, DEVELOPER) 
    VALUES ('Mushroom Wars', 'Estrategia', 'Estrategia', 20, '2016-04-19', 1, 26.5, 15.0, 'RPG', 'logo-mushroom-wars.png', 0, 'DRM-Free', 'God');
    
INSERT INTO APP.PRODUCT ("NAME", DESCRIPTION, SYNOPSIS, QUANTITY, RELEASE_DATE, AVAILABLE, PRICE, COST, CATEGORY, LOGO, DISCOUNT, PLATFORM, DEVELOPER) 
    VALUES ('MXGP2', 'Motos', 'Motos', 20, '2016-04-19', 1, 10.0, 10.0, 'FPS', 'logo-MXGP2.jpg', 0, 'uPlay', 'God');
    
INSERT INTO APP.PRODUCT ("NAME", DESCRIPTION, SYNOPSIS, QUANTITY, RELEASE_DATE, AVAILABLE, PRICE, COST, CATEGORY, LOGO, DISCOUNT, PLATFORM, DEVELOPER) 
    VALUES ('Final Fantasy IX', 'Aventura', 'Aventura', 126, '2016-04-14', 1, 20.99, 15.0, 'RPG', 'logo-final-fantasy-ix.jpg', 0, 'Steam', 'Square Enix');
    
INSERT INTO APP.PRODUCT ("NAME", DESCRIPTION, SYNOPSIS, QUANTITY, RELEASE_DATE, AVAILABLE, PRICE, COST, CATEGORY, LOGO, DISCOUNT, PLATFORM, DEVELOPER) 
    VALUES ('Final Fantasy VIII', 'Aventura', 'Aventura', 20, '2016-04-19', 1, 40.0, 10.0, 'RPG', 'logo-final-fantasy-viii.png', 0, 'DRM-Free', 'Square Enix');
    
INSERT INTO APP.PRODUCT ("NAME", DESCRIPTION, SYNOPSIS, QUANTITY, RELEASE_DATE, AVAILABLE, PRICE, COST, CATEGORY, LOGO, DISCOUNT, PLATFORM, DEVELOPER) 
    VALUES ('Hitman', 'Square Enix', 'Stealth', 20, '2016-03-11', 1, 37.89, 29.86, 'Stealth', 'logo-hitman.jpg', 0, 'DRM-Free', 'Square Enix');
    
INSERT INTO APP.PRODUCT ("NAME", DESCRIPTION, SYNOPSIS, QUANTITY, RELEASE_DATE, AVAILABLE, PRICE, COST, CATEGORY, LOGO, DISCOUNT, PLATFORM, DEVELOPER) 
    VALUES ('Overwatch', 'Blizzard', 'FPS', 30, '2016-05-24', 0, 36.99, 27.5, 'FPS', 'logo-overwatch.jpg', 0, 'Battle.net', 'Blizzard');
    
INSERT INTO APP.PRODUCT ("NAME", DESCRIPTION, SYNOPSIS, QUANTITY, RELEASE_DATE, AVAILABLE, PRICE, COST, CATEGORY, LOGO, DISCOUNT, PLATFORM, DEVELOPER) 
    VALUES ('Splinter Cell Blacklist', 'Espias', 'Espias', 20, '2016-04-19', 1, 32.8, 26.75, 'Stealth', 'logo-splinter-cell-blacklist.jpg', 0, 'Steam', 'God');
    
INSERT INTO APP.PRODUCT ("NAME", DESCRIPTION, SYNOPSIS, QUANTITY, RELEASE_DATE, AVAILABLE, PRICE, COST, CATEGORY, LOGO, DISCOUNT, PLATFORM, DEVELOPER) 
    VALUES ('Soul Reaver 2', 'Eidos Interactive', 'Adventure', 25, '2001-11-23', 1, 11.75, 5.0, 'RPG', 'logo-soul-reaver-2.jpg', 0, 'DRM-Free', 'God');
    
INSERT INTO APP.PRODUCT ("NAME", DESCRIPTION, SYNOPSIS, QUANTITY, RELEASE_DATE, AVAILABLE, PRICE, COST, CATEGORY, LOGO, DISCOUNT, PLATFORM, DEVELOPER) 
    VALUES ('Borderlands 2', 'Shooter', 'Shooter', 25, '2016-04-19', 1, 30.0, 5.0, 'FPS', 'logo-borderlands-2.jpg', 0, 'Steam', 'Gearbox Software');

------------------------------------------------------------------------------------------------------------------------

CREATE TABLE **FOLLOWER_LIST** (FOLLOWER_ID INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, USER_ID INTEGER NOT NULL, FOLLOWER INTEGER NOT NULL);

INSERT INTO APP.FOLLOWER_LIST (USER_ID, FOLLOWER)
    VALUES (1, 2);
    
INSERT INTO APP.FOLLOWER_LIST (USER_ID, FOLLOWER)
    VALUES (2, 1);
    
INSERT INTO APP.FOLLOWER_LIST (USER_ID, FOLLOWER)
    VALUES (1, 3);

------------------------------------------------------------------------------------------------------------------------

CREATE TABLE **IMAGE** (IMAGE_ID INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, PRODUCT_ID INTEGER NOT NULL, "PATH" VARCHAR(50));

INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH")
    VALUES (3, 'fallout-4_1.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH")
    VALUES (3, 'fallout-4_2.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH")
    VALUES (6, 'dark-souls-3_1.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH")
    VALUES (6, 'dark-souls-3_2.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH")
    VALUES (2, 'mgsv-tpp_1.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH")
    VALUES (2, 'mgsv-tpp_2.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH")
    VALUES (8, 'mushroom-wars_1.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH")
    VALUES (9, 'mxgp2_1.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH")
    VALUES (10, 'final-fantasy-ix_1.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH")
    VALUES (13, 'overwatch_1.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH") 
    VALUES (4, 'doom_1.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH") 
    VALUES (4, 'doom_2.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH") 
    VALUES (5, 'mg5GZ_1.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH") 
    VALUES (5, 'mg5GZ_2.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH") 
    VALUES (14, 'SCblacklist_1.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH") 
    VALUES (14, 'SCblacklist_2.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH") 
    VALUES (15, 'soulreaver_1.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH") 
    VALUES (16, 'BD2_1.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH") 
    VALUES (16, 'BD2_2.jpg');
    
INSERT INTO APP.IMAGE (PRODUCT_ID, "PATH") 
    VALUES (11, 'FF8_1.jpg');

------------------------------------------------------------------------------------------------------------------------

CREATE TABLE **REVIEW** (REVIEW_ID INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, PRODUCT_ID INTEGER NOT NULL, TEXT LONG VARCHAR NOT NULL, SCORE INTEGER NOT NULL, USER_ID INTEGER NOT NULL, "DATE" DATE NOT NULL);

INSERT INTO APP.REVIEW (PRODUCT_ID, TEXT, SCORE, USER_ID, "DATE")
    VALUES (2, 'The best game of the world.', 10, 1, '2016-03-28');
    
INSERT INTO APP.REVIEW (PRODUCT_ID, TEXT, SCORE, USER_ID, "DATE")
    VALUES (2, 'A Hideo Kojima Game.', 9, 2, '2016-03-27');
    
INSERT INTO APP.REVIEW (PRODUCT_ID, TEXT, SCORE, USER_ID, "DATE")
    VALUES (3, 'Bethesda rocks!', 10, 3, '2016-04-25');
    
INSERT INTO APP.REVIEW (PRODUCT_ID, TEXT, SCORE, USER_ID, "DATE")
    VALUES (6, 'Hard game', 5, 1, '2016-04-25');
    
INSERT INTO APP.REVIEW (PRODUCT_ID, TEXT, SCORE, USER_ID, "DATE")
    VALUES (3, 'Elite', 4, 1, '2016-04-28');
    
INSERT INTO APP.REVIEW (PRODUCT_ID, TEXT, SCORE, USER_ID, "DATE")
    VALUES (2, 'Pure stealth.', 10, 4, '2016-04-28');
    
INSERT INTO APP.REVIEW (PRODUCT_ID, TEXT, SCORE, USER_ID, "DATE")
    VALUES (6, 'Praise the Sun!', 10, 4, '2016-04-28');
    
INSERT INTO APP.REVIEW (PRODUCT_ID, TEXT, SCORE, USER_ID, "DATE")
    VALUES (6, 'I can''t pass the tutorial...', 1, 5, '2016-04-28');
    
INSERT INTO APP.REVIEW (PRODUCT_ID, TEXT, SCORE, USER_ID, "DATE")
    VALUES (2, 'Best Stealth game.', 8, 5, '2016-04-28');
    
INSERT INTO APP.REVIEW (PRODUCT_ID, TEXT, SCORE, USER_ID, "DATE")
    VALUES (6, 'Prepare To Die.', 7, 6, '2016-04-28');
    
INSERT INTO APP.REVIEW (PRODUCT_ID, TEXT, SCORE, USER_ID, "DATE")
    VALUES (6, 'Bad optimization...', 1, 7, '2016-04-28');

------------------------------------------------------------------------------------------------------------------------

CREATE TABLE **SALES** (SALE_ID INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, PRODUCT_ID INTEGER NOT NULL, USER_ID INTEGER NOT NULL, "DATE" DATE NOT NULL, "METHOD" VARCHAR(144) DEFAULT 'Other'  NOT NULL);

INSERT INTO APP.SALES (PRODUCT_ID, USER_ID, "DATE", "METHOD") 
    VALUES (2, 1, '2016-05-01', 'Visa');
    
INSERT INTO APP.SALES (PRODUCT_ID, USER_ID, "DATE", "METHOD") 
    VALUES (3, 1, '2016-05-01', 'Visa');
    
INSERT INTO APP.SALES (PRODUCT_ID, USER_ID, "DATE", "METHOD") 
    VALUES (6, 1, '2016-05-01', 'Visa');
    
INSERT INTO APP.SALES (PRODUCT_ID, USER_ID, "DATE", "METHOD") 
    VALUES (2, 3, '2016-05-01', 'Visa');
    
INSERT INTO APP.SALES (PRODUCT_ID, USER_ID, "DATE", "METHOD") 
    VALUES (6, 4, '2016-05-01', 'Visa');
    
INSERT INTO APP.SALES (PRODUCT_ID, USER_ID, "DATE", "METHOD") 
    VALUES (3, 5, '2016-05-01', 'Visa');
    
INSERT INTO APP.SALES (PRODUCT_ID, USER_ID, "DATE", "METHOD") 
    VALUES (6, 5, '2016-05-01', 'Visa');
    
INSERT INTO APP.SALES (PRODUCT_ID, USER_ID, "DATE", "METHOD") 
    VALUES (4, 4, '2016-05-01', 'Visa');

------------------------------------------------------------------------------------------------------------------------

CREATE TABLE **USERS** (USER_ID INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, "NAME" VARCHAR(30) NOT NULL, EMAIL VARCHAR(40) NOT NULL, PASSWORD VARCHAR(32) NOT NULL, STATE INTEGER NOT NULL);

INSERT INTO APP.USERS ("NAME", EMAIL, PASSWORD, STATE)
    VALUES ('Pepe', 'pepe@mail.com', '81dc9bdb52d04dc20036dbd8313ed055',1);
    
INSERT INTO APP.USERS ("NAME", EMAIL, PASSWORD, STATE)
    VALUES ('Ismael', 'isma@mail.es', 'd93591bdf7860e1e4ee2fca799911215',1);
    
INSERT INTO APP.USERS ("NAME", EMAIL, PASSWORD, STATE)
    VALUES ('Juan Carlos', 'juan@correo.es', '934b535800b1cba8f96a5d72f72f1611',1);
    
INSERT INTO APP.USERS ("NAME", EMAIL, PASSWORD, "STATE")
    VALUES ('Abian', 'abian@mail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1);
    
INSERT INTO APP.USERS ("NAME", EMAIL, PASSWORD, "STATE")
    VALUES ('Ruben', 'ruben@mail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1);
    
INSERT INTO APP.USERS ("NAME", EMAIL, PASSWORD, "STATE")
    VALUES ('Hector', 'hector@mail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1);
    
INSERT INTO APP.USERS ("NAME", EMAIL, PASSWORD, "STATE")
    VALUES ('Jose', 'jose@mail.com', '8ec779ae27cfeb86d3be7c25ddd370a0', 1);

------------------------------------------------------------------------------------------------------------------------

CREATE TABLE **WISHLIST** (WISH_ID INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, USER_ID INTEGER NOT NULL, PRODUCT_ID INTEGER NOT NULL);

INSERT INTO APP.WISHLIST (USER_ID, PRODUCT_ID)
    VALUES (1, 3);

------------------------------------------------------------------------------------------------------------------------

CREATE TABLE **PACK_CONTENT** (ID INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, PACK_ID INTEGER NOT NULL, PRODUCT_ID INTEGER NOT NULL);

INSERT INTO APP.PACK_CONTENT (PACK_ID, PRODUCT_ID) 
    VALUES (1, 2);
    
INSERT INTO APP.PACK_CONTENT (PACK_ID, PRODUCT_ID) 
    VALUES (1, 5);
    
INSERT INTO APP.PACK_CONTENT (PACK_ID, PRODUCT_ID) 
    VALUES (2, 6);
    
INSERT INTO APP.PACK_CONTENT (PACK_ID, PRODUCT_ID) 
    VALUES (2, 15);
    
INSERT INTO APP.PACK_CONTENT (PACK_ID, PRODUCT_ID) 
    VALUES (2, 7);
    
------------------------------------------------------------------------------------------------------------------------

CREATE TABLE **PACK_DETAILS** (PACK_ID INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, "NAME" LONG VARCHAR NOT NULL, DESCRIPTION LONG VARCHAR, LOGO LONG VARCHAR, DISCOUNT INTEGER NOT NULL);

INSERT INTO APP.PACK_DETAILS ("NAME", DESCRIPTION, LOGO, DISCOUNT) 
    VALUES ('Pack Metal Gear', 'Descuentos en MG Saga', 'mgsv-tpp_1.jpg', 25);
    
INSERT INTO APP.PACK_DETAILS ("NAME", DESCRIPTION, LOGO, DISCOUNT) 
    VALUES ('Aventura', 'Juegos de Aventura varios', 'dark-souls-3_1.jpg', 25);

------------------------------------------------------------------------------------------------------------------------

CREATE TABLE **VIDEO** (VIDEO_ID INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, PRODUCT_ID INTEGER NOT NULL, "URL" VARCHAR(200));

INSERT INTO APP.VIDEO (PRODUCT_ID, URL) 
    VALUES (2, 'https://www.youtube.com/embed/9_8Qi-I4o9E');
    
INSERT INTO APP.VIDEO (PRODUCT_ID, URL) 
    VALUES (1, 'https://www.youtube.com/embed/13TbCC0MY8U');
    
INSERT INTO APP.VIDEO (PRODUCT_ID, URL) 
    VALUES (3, 'https://www.youtube.com/embed/mJPJv2Lf78A?rel=0');
    
INSERT INTO APP.VIDEO (PRODUCT_ID, URL) 
    VALUES (4, 'https://www.youtube.com/embed/NteAPGprDJk?rel=0');
    
INSERT INTO APP.VIDEO (PRODUCT_ID, URL) 
    VALUES (5, 'https://www.youtube.com/embed/haMLxLbN2WI?rel=0');
    
INSERT INTO APP.VIDEO (PRODUCT_ID, URL) 
    VALUES (6, 'https://www.youtube.com/embed/-v_hlGRx-uA?rel=0');
    
INSERT INTO APP.VIDEO (PRODUCT_ID, URL) 
    VALUES (7, 'https://www.youtube.com/embed/_ukxGwWsYJs?rel=0');
    
INSERT INTO APP.VIDEO (PRODUCT_ID, URL) 
    VALUES (8, 'https://www.youtube.com/embed/r8HKY3-AzuM?rel=0');
    
INSERT INTO APP.VIDEO (PRODUCT_ID, URL) 
    VALUES (9, 'https://www.youtube.com/embed/r8HKY3-AzuM?rel=0');
    
INSERT INTO APP.VIDEO (PRODUCT_ID, URL) 
    VALUES (10, 'https://www.youtube.com/embed/OWbzaPqdR_U?rel=0');
    
INSERT INTO APP.VIDEO (PRODUCT_ID, URL) 
    VALUES (11, 'https://www.youtube.com/embed/OWbzaPqdR_U?rel=0');
    
INSERT INTO APP.VIDEO (PRODUCT_ID, URL) 
    VALUES (12, 'https://www.youtube.com/embed/pRzYt9_Amu0?rel=0');
    
INSERT INTO APP.VIDEO (PRODUCT_ID, URL) 
    VALUES (13, 'https://www.youtube.com/embed/dushZybUYnM?rel=0');
    
INSERT INTO APP.VIDEO (PRODUCT_ID, URL) 
    VALUES (14, 'https://www.youtube.com/embed/v4lT5sI4FkE?rel=0');
    
INSERT INTO APP.VIDEO (PRODUCT_ID, URL) 
    VALUES (15, 'https://www.youtube.com/embed/g6UWbcTKWsk?rel=0');
    
INSERT INTO APP.VIDEO (PRODUCT_ID, URL) 
    VALUES (16, 'https://www.youtube.com/embed/7fsayMcVD90?rel=0');

---------------------------------------------------------------------------------------------------

CREATE TABLE **REVIEW_SCORE** (SCORE_ID INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, REVIEW_ID INTEGER NOT NULL, USER_ID INTEGER NOT NULL, SCORE INTEGER NOT NULL);

---------------------------------------------------------------------------------------------------

CREATE TABLE **REPORT** (REPORT_ID INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, REVIEW_ID INTEGER NOT NULL, USER_ID INTEGER NOT NULL, REASON LONG VARCHAR);
