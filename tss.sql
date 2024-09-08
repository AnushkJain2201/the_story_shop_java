-- Database Start
-- D
CREATE DATABASE tssdb;
USE tssdb;

-- Database End

-- Admins Start
-- D
CREATE TABLE admins 
(
    admin_id int not null auto_increment primary key,
    name char(50) not null,
    email char(50) not null unique,
    password char(255) not null
);

CREATE TABLE countries
(
    country_id int not null auto_increment primary key,
    name char(50) not null
);

INSERT INTO countries (name) VALUE ('Afghanistan');
INSERT INTO countries (name) VALUE ('Albania');
INSERT INTO countries (name) VALUE ('Algeria');
INSERT INTO countries (name) VALUE ('American Samoa');
INSERT INTO countries (name) VALUE ('Andorra');
INSERT INTO countries (name) VALUE ('Angola');
INSERT INTO countries (name) VALUE ('Anguilla');
INSERT INTO countries (name) VALUE ('Antarctica');
INSERT INTO countries (name) VALUE ('Antigua and Barbuda');
INSERT INTO countries (name) VALUE ('Argentina');
INSERT INTO countries (name) VALUE ('Armenia');
INSERT INTO countries (name) VALUE ('Aruba');
INSERT INTO countries (name) VALUE ('Australia');
INSERT INTO countries (name) VALUE ('Austria');
INSERT INTO countries (name) VALUE ('Azerbaijan');
INSERT INTO countries (name) VALUE ('Bahamas');
INSERT INTO countries (name) VALUE ('Bahrain');
INSERT INTO countries (name) VALUE ('Bangladesh');
INSERT INTO countries (name) VALUE ('Barbados');
INSERT INTO countries (name) VALUE ('Belarus');
INSERT INTO countries (name) VALUE ('Belgium');
INSERT INTO countries (name) VALUE ('Belize');
INSERT INTO countries (name) VALUE ('Benin');
INSERT INTO countries (name) VALUE ('Bermuda');
INSERT INTO countries (name) VALUE ('Bhutan');
INSERT INTO countries (name) VALUE ('Bosnia and Herzegovina');
INSERT INTO countries (name) VALUE ('Botswana');
INSERT INTO countries (name) VALUE ('Bouvet Island');
INSERT INTO countries (name) VALUE ('Brazil');
INSERT INTO countries (name) VALUE ('British Indian Ocean Territory');
INSERT INTO countries (name) VALUE ('Brunei Darussalam');
INSERT INTO countries (name) VALUE ('Bulgaria');
INSERT INTO countries (name) VALUE ('Burkina Faso');
INSERT INTO countries (name) VALUE ('Burundi');
INSERT INTO countries (name) VALUE ('Cambodia');
INSERT INTO countries (name) VALUE ('Cameroon');
INSERT INTO countries (name) VALUE ('Canada');
INSERT INTO countries (name) VALUE ('Cape Verde');
INSERT INTO countries (name) VALUE ('Cayman Islands');
INSERT INTO countries (name) VALUE ('Central African Republic');
INSERT INTO countries (name) VALUE ('Chad');
INSERT INTO countries (name) VALUE ('Chile');
INSERT INTO countries (name) VALUE ('China');
INSERT INTO countries (name) VALUE ('Christmas Island');
INSERT INTO countries (name) VALUE ('Cocos (Keeling) Islands');
INSERT INTO countries (name) VALUE ('Colombia');
INSERT INTO countries (name) VALUE ('Comoros');
INSERT INTO countries (name) VALUE ('Congo');
INSERT INTO countries (name) VALUE ('Cook Islands');
INSERT INTO countries (name) VALUE ('Costa Rica');
INSERT INTO countries (name) VALUE ('Croatia');
INSERT INTO countries (name) VALUE ('Cuba');
INSERT INTO countries (name) VALUE ('Cyprus');
INSERT INTO countries (name) VALUE ('Czech Republic');
INSERT INTO countries (name) VALUE ('Denmark');
INSERT INTO countries (name) VALUE ('Djibouti');
INSERT INTO countries (name) VALUE ('Dominica');
INSERT INTO countries (name) VALUE ('Dominican Republic');
INSERT INTO countries (name) VALUE ('Ecuador');
INSERT INTO countries (name) VALUE ('Egypt');
INSERT INTO countries (name) VALUE ('El Salvador');
INSERT INTO countries (name) VALUE ('Equatorial Guinea');
INSERT INTO countries (name) VALUE ('Eritrea');
INSERT INTO countries (name) VALUE ('Estonia');
INSERT INTO countries (name) VALUE ('Ethiopia');
INSERT INTO countries (name) VALUE ('Falkland Islands (Malvinas)');
INSERT INTO countries (name) VALUE ('Faroe Islands');
INSERT INTO countries (name) VALUE ('Fiji');
INSERT INTO countries (name) VALUE ('Finland');
INSERT INTO countries (name) VALUE ('France');
INSERT INTO countries (name) VALUE ('French Guiana');
INSERT INTO countries (name) VALUE ('French Polynesia');
INSERT INTO countries (name) VALUE ('French Southern Territories');
INSERT INTO countries (name) VALUE ('Gabon');
INSERT INTO countries (name) VALUE ('Gambia');
INSERT INTO countries (name) VALUE ('Georgia');
INSERT INTO countries (name) VALUE ('Germany');
INSERT INTO countries (name) VALUE ('Ghana');
INSERT INTO countries (name) VALUE ('Gibraltar');
INSERT INTO countries (name) VALUE ('Greece');
INSERT INTO countries (name) VALUE ('Greenland');
INSERT INTO countries (name) VALUE ('Grenada');
INSERT INTO countries (name) VALUE ('Guadeloupe');
INSERT INTO countries (name) VALUE ('Guam');
INSERT INTO countries (name) VALUE ('Guatemala');
INSERT INTO countries (name) VALUE ('Guernsey');
INSERT INTO countries (name) VALUE ('Guinea');
INSERT INTO countries (name) VALUE ('Guinea-Bissau');
INSERT INTO countries (name) VALUE ('Guyana');
INSERT INTO countries (name) VALUE ('Haiti');
INSERT INTO countries (name) VALUE ('Heard Island and McDonald Islands');
INSERT INTO countries (name) VALUE ('Holy See (Vatican City State)');
INSERT INTO countries (name) VALUE ('Honduras');
INSERT INTO countries (name) VALUE ('Hong Kong');
INSERT INTO countries (name) VALUE ('Hungary');
INSERT INTO countries (name) VALUE ('Iceland');
INSERT INTO countries (name) VALUE ('India');
INSERT INTO countries (name) VALUE ('Indonesia');
INSERT INTO countries (name) VALUE ('Iran');
INSERT INTO countries (name) VALUE ('Iraq');
INSERT INTO countries (name) VALUE ('Ireland');
INSERT INTO countries (name) VALUE ('Isle of Man');
INSERT INTO countries (name) VALUE ('Israel');
INSERT INTO countries (name) VALUE ('Italy');
INSERT INTO countries (name) VALUE ('Jamaica');
INSERT INTO countries (name) VALUE ('Japan');
INSERT INTO countries (name) VALUE ('Jersey');
INSERT INTO countries (name) VALUE ('Jordan');
INSERT INTO countries (name) VALUE ('Kazakhstan');
INSERT INTO countries (name) VALUE ('Kenya');
INSERT INTO countries (name) VALUE ('Kiribati');
INSERT INTO countries (name) VALUE ('Kuwait');
INSERT INTO countries (name) VALUE ('Kyrgyzstan');
INSERT INTO countries (name) VALUE ('Lao Peoples Democratic Republic');
INSERT INTO countries (name) VALUE ('Latvia');
INSERT INTO countries (name) VALUE ('Lebanon');
INSERT INTO countries (name) VALUE ('Lesotho');
INSERT INTO countries (name) VALUE ('Liberia');
INSERT INTO countries (name) VALUE ('Libya');
INSERT INTO countries (name) VALUE ('Liechtenstein');
INSERT INTO countries (name) VALUE ('Lithuania');
INSERT INTO countries (name) VALUE ('Luxembourg');
INSERT INTO countries (name) VALUE ('Macao');
INSERT INTO countries (name) VALUE ('Madagascar');
INSERT INTO countries (name) VALUE ('Malawi');
INSERT INTO countries (name) VALUE ('Malaysia');
INSERT INTO countries (name) VALUE ('Maldives');
INSERT INTO countries (name) VALUE ('Mali');
INSERT INTO countries (name) VALUE ('Malta');
INSERT INTO countries (name) VALUE ('Marshall Islands');
INSERT INTO countries (name) VALUE ('Martinique');
INSERT INTO countries (name) VALUE ('Mauritania');
INSERT INTO countries (name) VALUE ('Mauritius');
INSERT INTO countries (name) VALUE ('Mayotte');
INSERT INTO countries (name) VALUE ('Mexico');
INSERT INTO countries (name) VALUE ('Monaco');
INSERT INTO countries (name) VALUE ('Mongolia');
INSERT INTO countries (name) VALUE ('Montenegro');
INSERT INTO countries (name) VALUE ('Montserrat');
INSERT INTO countries (name) VALUE ('Morocco');
INSERT INTO countries (name) VALUE ('Mozambique');
INSERT INTO countries (name) VALUE ('Myanmar');
INSERT INTO countries (name) VALUE ('Namibia');
INSERT INTO countries (name) VALUE ('Nauru');
INSERT INTO countries (name) VALUE ('Nepal');
INSERT INTO countries (name) VALUE ('Netherlands');
INSERT INTO countries (name) VALUE ('New Caledonia');
INSERT INTO countries (name) VALUE ('New Zealand');
INSERT INTO countries (name) VALUE ('Nicaragua');
INSERT INTO countries (name) VALUE ('Niger');
INSERT INTO countries (name) VALUE ('Nigeria');
INSERT INTO countries (name) VALUE ('Niue');
INSERT INTO countries (name) VALUE ('Norfolk Island');
INSERT INTO countries (name) VALUE ('Northern Mariana Islands');
INSERT INTO countries (name) VALUE ('Norway');
INSERT INTO countries (name) VALUE ('Oman');
INSERT INTO countries (name) VALUE ('Pakistan');
INSERT INTO countries (name) VALUE ('Palau');
INSERT INTO countries (name) VALUE ('Panama');
INSERT INTO countries (name) VALUE ('Papua New Guinea');
INSERT INTO countries (name) VALUE ('Paraguay');
INSERT INTO countries (name) VALUE ('Peru');
INSERT INTO countries (name) VALUE ('Philippines');
INSERT INTO countries (name) VALUE ('Pitcairn');
INSERT INTO countries (name) VALUE ('Poland');
INSERT INTO countries (name) VALUE ('Portugal');
INSERT INTO countries (name) VALUE ('Puerto Rico');
INSERT INTO countries (name) VALUE ('Qatar');
INSERT INTO countries (name) VALUE ('Romania');
INSERT INTO countries (name) VALUE ('Russian Federation');
INSERT INTO countries (name) VALUE ('Rwanda');
INSERT INTO countries (name) VALUE ('Saint Kitts and Nevis');
INSERT INTO countries (name) VALUE ('Saint Lucia');
INSERT INTO countries (name) VALUE ('Saint Martin (French part)');
INSERT INTO countries (name) VALUE ('Saint Pierre and Miquelon');
INSERT INTO countries (name) VALUE ('Saint Vincent and the Grenadines');
INSERT INTO countries (name) VALUE ('Samoa');
INSERT INTO countries (name) VALUE ('San Marino');
INSERT INTO countries (name) VALUE ('Sao Tome and Principe');
INSERT INTO countries (name) VALUE ('Saudi Arabia');
INSERT INTO countries (name) VALUE ('Senegal');
INSERT INTO countries (name) VALUE ('Serbia');
INSERT INTO countries (name) VALUE ('Seychelles');
INSERT INTO countries (name) VALUE ('Sierra Leone');
INSERT INTO countries (name) VALUE ('Singapore');
INSERT INTO countries (name) VALUE ('Sint Maarten (Dutch part)');
INSERT INTO countries (name) VALUE ('Slovakia');
INSERT INTO countries (name) VALUE ('Slovenia');
INSERT INTO countries (name) VALUE ('Solomon Islands');
INSERT INTO countries (name) VALUE ('Somalia');
INSERT INTO countries (name) VALUE ('South Africa');
INSERT INTO countries (name) VALUE ('South Georgia and the South Sandwich Islands');
INSERT INTO countries (name) VALUE ('South Sudan');
INSERT INTO countries (name) VALUE ('Spain');
INSERT INTO countries (name) VALUE ('Sri Lanka');
INSERT INTO countries (name) VALUE ('State of Palestine');
INSERT INTO countries (name) VALUE ('Sudan');
INSERT INTO countries (name) VALUE ('Suriname');
INSERT INTO countries (name) VALUE ('Svalbard and Jan Mayen');
INSERT INTO countries (name) VALUE ('Swaziland');
INSERT INTO countries (name) VALUE ('Sweden');
INSERT INTO countries (name) VALUE ('Switzerland');
INSERT INTO countries (name) VALUE ('Syrian Arab Republic');
INSERT INTO countries (name) VALUE ('Tajikistan');
INSERT INTO countries (name) VALUE ('Thailand');
INSERT INTO countries (name) VALUE ('Timor-Leste');
INSERT INTO countries (name) VALUE ('Togo');
INSERT INTO countries (name) VALUE ('Tokelau');
INSERT INTO countries (name) VALUE ('Tonga');
INSERT INTO countries (name) VALUE ('Trinidad and Tobago');
INSERT INTO countries (name) VALUE ('Tunisia');
INSERT INTO countries (name) VALUE ('Turkey');
INSERT INTO countries (name) VALUE ('Turkmenistan');
INSERT INTO countries (name) VALUE ('Turks and Caicos Islands');
INSERT INTO countries (name) VALUE ('Tuvalu');
INSERT INTO countries (name) VALUE ('Uganda');
INSERT INTO countries (name) VALUE ('Ukraine');
INSERT INTO countries (name) VALUE ('United Arab Emirates');
INSERT INTO countries (name) VALUE ('United Kingdom');
INSERT INTO countries (name) VALUE ('United States');
INSERT INTO countries (name) VALUE ('United States Minor Outlying Islands');
INSERT INTO countries (name) VALUE ('Uruguay');
INSERT INTO countries (name) VALUE ('Uzbekistan');
INSERT INTO countries (name) VALUE ('Vanuatu');
INSERT INTO countries (name) VALUE ('Viet Nam');
INSERT INTO countries (name) VALUE ('Wallis and Futuna');
INSERT INTO countries (name) VALUE ('Western Sahara');
INSERT INTO countries (name) VALUE ('Yemen');
INSERT INTO countries (name) VALUE ('Zambia');
INSERT INTO countries (name) VALUE ('Zimbabwe');

-- Countries End

-- Admins End 


-- Countries Start
-- D


-- Status Start
-- D
CREATE TABLE status
(
    status_id int not null auto_increment primary key,
    name char(15) not null
);

INSERT into status
(name) values
('active'), ('inactive'), ('blocked'), ('premiums');

-- Status End

-- Genres Start
-- D
CREATE TABLE genres 
(
    genre_id int not null auto_increment primary key,
    name char(200) not null
);

INSERT into genres
(name) values
('Action And Adventure'), ('Classics'), ('Comic And Graphic'), ('Detective And Mystery'), ('Fantasy'), ('Historical Fiction'), ('Horror'), ('Literary Fiction'), ('Romance'), ('Science Fiction'), ('Short Stories'), ('Suspense And Thrillers'), ("Women's Fiction"), ('Biographies'), ('History'), ('Memoir'), ('Poetry'), ('Self-Help'), ('True Crime');

-- Genres End

-- Users Start
-- D
CREATE TABLE users
(
    user_id int not null auto_increment primary key,
    name char(50) not null,
    email char(50) not null unique,
    password char(255) not null,
    phone char(10) not null,
    address char(255) null,
    profile_pic char(50) null,
    book_added int not null default 0,
    country_id int not null,
    status_id int not null,
    OTP int null,
    bio varchar(500) null,
    user_type bool not null default 0,
    has_premium bool not null default 0,
    constraint fk_users_countries foreign key (country_id) references countries (country_id),
    constraint fk_users_status foreign key (status_id) references status (status_id) 
);

SELECT user_id, name, password, phone, c.country_id, c.name, s.status_id, s.name, user_type, has_premium from users as u inner join countries as c inner join status as s where email = ? and u.country_id = c.country_id and u.status_id = s.status_id;

-- Users End

-- Books Start
-- D
CREATE TABLE books 
(
    book_id int not null auto_increment primary key,
    title char(50) not null,
    author char(50) not null,
    genre_id int not null,
    price int not null,
    available_copies int not null default 0,
    total_copies int not null default 0,
    publish_date datetime null,
    description char(255) not null,
    date datetime not null,
    user_id int not null,
    book_img char(150) not null,
    likes int not null default 0,
    constraint fk_books_genres foreign key (genre_id) references genres (genre_id),
    constraint fk_books_users foreign key (user_id) references users (user_id)
);

-- Books End

-- Orders Start
-- D
CREATE TABLE orders 
(
    order_id int not null auto_increment primary key,
    user_id int not null,
    order_date datetime not null,
    total_amount int not null default 0,
    order_quantitiy int not null default 0,
    constraint fk_orders_users foreign key (user_id) references users (user_id)
); 

-- Orders End

-- OrderItems Start
-- D
CREATE TABLE order_items 
(
    order_items_id int not null auto_increment primary key,
    order_id int not null,
    book_id int not null,
    quantity int not null default 0,
    subtotal int not null default 0,
    constraint fk_order_items_orders foreign key (order_id) references orders (order_id),
    constraint fk_order_items_books foreign key (book_id) references books (book_id)
);

-- OrderItems End

-- Rentals Start
-- D
CREATE TABLE rentals
(
    rental_id int not null auto_increment primary key,
    user_id int not null,
    book_id int not null,
    rental_date datetime not null,
    return_date datetime null,
    rental_fee int not null default 5,
    total_paid int not null,
    constraint fk_rentals_users foreign key (user_id) references users (user_id),
    constraint fk_rentals_books foreign key (book_id) references books (book_id)
);

-- Rentals End

-- Premiums Start
-- D
CREATE TABLE premiums
(
    premium_id int not null auto_increment primary key,
    name char(50) not null,
    price int not null,
    time_period int not null,
    description varchar(500) not null
);

-- INSERT into premiums (name, price, time_period, description) values ("BookWonders Elite", 399, 1, "Offer a premium book club membership that provides customers with exclusive benefits such as early access to new releases, members-only discounts, and invitations to author events or book signings. Include a personalized welcome package with a limited edition bookmark, a tote bag featuring the bookstore logo, and perhaps a small discount coupon for the first purchase as a member."), ("PageTurner Pro", 499, 1, "Create a premium service where customers receive personalized reading recommendations based on their preferences, reading history, and favorite genres. This could be facilitated through a dedicated online portal or in-store consultations. Provide a curated book box subscription service as part of the premium offering, delivering a handpicked selection of books to the customer's doorstep on a regular basis."), ("AuthorQuest Deluxe", 699, 1, "Introduce premium packages that include opportunities for customers to meet their favorite authors. This could involve priority access to book signings, exclusive Q&A sessions, or even virtual meetings with authors for remote customers. Package these experiences with signed copies of the author's latest book, limited edition merchandise, and a behind-the-scenes glimpse into the writing process or the author's inspiration.");

INSERT into premiums (name, price, time_period, description) values ("BookWonders Elite", 399, 1, "Elevate the book club experience with this exclusive membership, offering early access to literary treasures."), ("PageTurner Pro", 499, 1, "A premium package that transports readers to an oasis of stories, complete with personalized book recommendations"), ("AuthorQuest Deluxe", 699, 1, "Dive into the world of literature with this premium pass, providing access to author meet-and-greets, signed copies.");

-- Premiums End

-- GenreFavourites Start
-- D
CREATE TABLE genre_favourites 
(
    genre_favourite_id int not null auto_increment primary key,
    genre_id int not null,
    user_id int not null,
    constraint fk_genre_favourites_genres foreign key (genre_id) references genres (genre_id),
    constraint fk_genre_favourites_users foreign key (user_id) references users (user_id)
);

SELECT g.genre_id, g.name from genre_favourites as gf inner join genre as g where gf.user_id = ? and gf.genre_id = g.genre_id;

-- GenreFavourites End

-- PremiumStatus Start
-- D
CREATE TABLE premium_status 
(
    premium_status_id int not null auto_increment primary key,
    premium_id int not null,
    user_id int not null,
    purchase_date datetime not null,
    ending_date datetime not null,
    constraint fk_premium_status_premiums foreign key (premium_id) references premiums (premium_id),
    constraint fk_premium_status_users foreign key (user_id) references users (user_id)
);

alter table premium_status drop purchase_date;
alter table premium_status drop ending_date;

alter table premium_status add column purchased_at datetime default CURRENT_TIMESTAMP;
alter table premium_status add column expires_at DATETIME DEFAULT (DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 30 DAY));

alter table premium_status add column on_card_name varchar(100), 
add column card_number varchar(16),
add column card_expire_at datetime,
add column cvv varchar(3);

-- PremiumStatus End

-- Wishlists Start
-- D
CREATE TABLE wishlists 
(
    wishlist_id int not null auto_increment primary key,
    user_id int not null,
    book_id int not null,
    constraint fk_wishlists_users foreign key (user_id) references users (user_id),
    constraint fk_wishlists_books foreign key (book_id) references books (book_id) 
);

-- Wishlists End