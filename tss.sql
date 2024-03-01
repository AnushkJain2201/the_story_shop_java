-- Database Start
-- D
CREATE DATABASE tss;
USE DATABASE tss;

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

-- Admins End 

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

-- Countries Start
-- D
CREATE TABLE countries
(
    country_id int not null auto_increment primary key,
    name char(50) not null
);

INSERT INTO Countries (name) VALUE ('Afghanistan');
INSERT INTO Countries (name) VALUE ('Albania');
INSERT INTO Countries (name) VALUE ('Algeria');
INSERT INTO Countries (name) VALUE ('American Samoa');
INSERT INTO Countries (name) VALUE ('Andorra');
INSERT INTO Countries (name) VALUE ('Angola');
INSERT INTO Countries (name) VALUE ('Anguilla');
INSERT INTO Countries (name) VALUE ('Antarctica');
INSERT INTO Countries (name) VALUE ('Antigua and Barbuda');
INSERT INTO Countries (name) VALUE ('Argentina');
INSERT INTO Countries (name) VALUE ('Armenia');
INSERT INTO Countries (name) VALUE ('Aruba');
INSERT INTO Countries (name) VALUE ('Australia');
INSERT INTO Countries (name) VALUE ('Austria');
INSERT INTO Countries (name) VALUE ('Azerbaijan');
INSERT INTO Countries (name) VALUE ('Bahamas');
INSERT INTO Countries (name) VALUE ('Bahrain');
INSERT INTO Countries (name) VALUE ('Bangladesh');
INSERT INTO Countries (name) VALUE ('Barbados');
INSERT INTO Countries (name) VALUE ('Belarus');
INSERT INTO Countries (name) VALUE ('Belgium');
INSERT INTO Countries (name) VALUE ('Belize');
INSERT INTO Countries (name) VALUE ('Benin');
INSERT INTO Countries (name) VALUE ('Bermuda');
INSERT INTO Countries (name) VALUE ('Bhutan');
INSERT INTO Countries (name) VALUE ('Bosnia and Herzegovina');
INSERT INTO Countries (name) VALUE ('Botswana');
INSERT INTO Countries (name) VALUE ('Bouvet Island');
INSERT INTO Countries (name) VALUE ('Brazil');
INSERT INTO Countries (name) VALUE ('British Indian Ocean Territory');
INSERT INTO Countries (name) VALUE ('Brunei Darussalam');
INSERT INTO Countries (name) VALUE ('Bulgaria');
INSERT INTO Countries (name) VALUE ('Burkina Faso');
INSERT INTO Countries (name) VALUE ('Burundi');
INSERT INTO Countries (name) VALUE ('Cambodia');
INSERT INTO Countries (name) VALUE ('Cameroon');
INSERT INTO Countries (name) VALUE ('Canada');
INSERT INTO Countries (name) VALUE ('Cape Verde');
INSERT INTO Countries (name) VALUE ('Cayman Islands');
INSERT INTO Countries (name) VALUE ('Central African Republic');
INSERT INTO Countries (name) VALUE ('Chad');
INSERT INTO Countries (name) VALUE ('Chile');
INSERT INTO Countries (name) VALUE ('China');
INSERT INTO Countries (name) VALUE ('Christmas Island');
INSERT INTO Countries (name) VALUE ('Cocos (Keeling) Islands');
INSERT INTO Countries (name) VALUE ('Colombia');
INSERT INTO Countries (name) VALUE ('Comoros');
INSERT INTO Countries (name) VALUE ('Congo');
INSERT INTO Countries (name) VALUE ('Cook Islands');
INSERT INTO Countries (name) VALUE ('Costa Rica');
INSERT INTO Countries (name) VALUE ('Croatia');
INSERT INTO Countries (name) VALUE ('Cuba');
INSERT INTO Countries (name) VALUE ('Cyprus');
INSERT INTO Countries (name) VALUE ('Czech Republic');
INSERT INTO Countries (name) VALUE ('Denmark');
INSERT INTO Countries (name) VALUE ('Djibouti');
INSERT INTO Countries (name) VALUE ('Dominica');
INSERT INTO Countries (name) VALUE ('Dominican Republic');
INSERT INTO Countries (name) VALUE ('Ecuador');
INSERT INTO Countries (name) VALUE ('Egypt');
INSERT INTO Countries (name) VALUE ('El Salvador');
INSERT INTO Countries (name) VALUE ('Equatorial Guinea');
INSERT INTO Countries (name) VALUE ('Eritrea');
INSERT INTO Countries (name) VALUE ('Estonia');
INSERT INTO Countries (name) VALUE ('Ethiopia');
INSERT INTO Countries (name) VALUE ('Falkland Islands (Malvinas)');
INSERT INTO Countries (name) VALUE ('Faroe Islands');
INSERT INTO Countries (name) VALUE ('Fiji');
INSERT INTO Countries (name) VALUE ('Finland');
INSERT INTO Countries (name) VALUE ('France');
INSERT INTO Countries (name) VALUE ('French Guiana');
INSERT INTO Countries (name) VALUE ('French Polynesia');
INSERT INTO Countries (name) VALUE ('French Southern Territories');
INSERT INTO Countries (name) VALUE ('Gabon');
INSERT INTO Countries (name) VALUE ('Gambia');
INSERT INTO Countries (name) VALUE ('Georgia');
INSERT INTO Countries (name) VALUE ('Germany');
INSERT INTO Countries (name) VALUE ('Ghana');
INSERT INTO Countries (name) VALUE ('Gibraltar');
INSERT INTO Countries (name) VALUE ('Greece');
INSERT INTO Countries (name) VALUE ('Greenland');
INSERT INTO Countries (name) VALUE ('Grenada');
INSERT INTO Countries (name) VALUE ('Guadeloupe');
INSERT INTO Countries (name) VALUE ('Guam');
INSERT INTO Countries (name) VALUE ('Guatemala');
INSERT INTO Countries (name) VALUE ('Guernsey');
INSERT INTO Countries (name) VALUE ('Guinea');
INSERT INTO Countries (name) VALUE ('Guinea-Bissau');
INSERT INTO Countries (name) VALUE ('Guyana');
INSERT INTO Countries (name) VALUE ('Haiti');
INSERT INTO Countries (name) VALUE ('Heard Island and McDonald Islands');
INSERT INTO Countries (name) VALUE ('Holy See (Vatican City State)');
INSERT INTO Countries (name) VALUE ('Honduras');
INSERT INTO Countries (name) VALUE ('Hong Kong');
INSERT INTO Countries (name) VALUE ('Hungary');
INSERT INTO Countries (name) VALUE ('Iceland');
INSERT INTO Countries (name) VALUE ('India');
INSERT INTO Countries (name) VALUE ('Indonesia');
INSERT INTO Countries (name) VALUE ('Iran');
INSERT INTO Countries (name) VALUE ('Iraq');
INSERT INTO Countries (name) VALUE ('Ireland');
INSERT INTO Countries (name) VALUE ('Isle of Man');
INSERT INTO Countries (name) VALUE ('Israel');
INSERT INTO Countries (name) VALUE ('Italy');
INSERT INTO Countries (name) VALUE ('Jamaica');
INSERT INTO Countries (name) VALUE ('Japan');
INSERT INTO Countries (name) VALUE ('Jersey');
INSERT INTO Countries (name) VALUE ('Jordan');
INSERT INTO Countries (name) VALUE ('Kazakhstan');
INSERT INTO Countries (name) VALUE ('Kenya');
INSERT INTO Countries (name) VALUE ('Kiribati');
INSERT INTO Countries (name) VALUE ('Kuwait');
INSERT INTO Countries (name) VALUE ('Kyrgyzstan');
INSERT INTO Countries (name) VALUE ('Lao Peoples Democratic Republic');
INSERT INTO Countries (name) VALUE ('Latvia');
INSERT INTO Countries (name) VALUE ('Lebanon');
INSERT INTO Countries (name) VALUE ('Lesotho');
INSERT INTO Countries (name) VALUE ('Liberia');
INSERT INTO Countries (name) VALUE ('Libya');
INSERT INTO Countries (name) VALUE ('Liechtenstein');
INSERT INTO Countries (name) VALUE ('Lithuania');
INSERT INTO Countries (name) VALUE ('Luxembourg');
INSERT INTO Countries (name) VALUE ('Macao');
INSERT INTO Countries (name) VALUE ('Madagascar');
INSERT INTO Countries (name) VALUE ('Malawi');
INSERT INTO Countries (name) VALUE ('Malaysia');
INSERT INTO Countries (name) VALUE ('Maldives');
INSERT INTO Countries (name) VALUE ('Mali');
INSERT INTO Countries (name) VALUE ('Malta');
INSERT INTO Countries (name) VALUE ('Marshall Islands');
INSERT INTO Countries (name) VALUE ('Martinique');
INSERT INTO Countries (name) VALUE ('Mauritania');
INSERT INTO Countries (name) VALUE ('Mauritius');
INSERT INTO Countries (name) VALUE ('Mayotte');
INSERT INTO Countries (name) VALUE ('Mexico');
INSERT INTO Countries (name) VALUE ('Monaco');
INSERT INTO Countries (name) VALUE ('Mongolia');
INSERT INTO Countries (name) VALUE ('Montenegro');
INSERT INTO Countries (name) VALUE ('Montserrat');
INSERT INTO Countries (name) VALUE ('Morocco');
INSERT INTO Countries (name) VALUE ('Mozambique');
INSERT INTO Countries (name) VALUE ('Myanmar');
INSERT INTO Countries (name) VALUE ('Namibia');
INSERT INTO Countries (name) VALUE ('Nauru');
INSERT INTO Countries (name) VALUE ('Nepal');
INSERT INTO Countries (name) VALUE ('Netherlands');
INSERT INTO Countries (name) VALUE ('New Caledonia');
INSERT INTO Countries (name) VALUE ('New Zealand');
INSERT INTO Countries (name) VALUE ('Nicaragua');
INSERT INTO Countries (name) VALUE ('Niger');
INSERT INTO Countries (name) VALUE ('Nigeria');
INSERT INTO Countries (name) VALUE ('Niue');
INSERT INTO Countries (name) VALUE ('Norfolk Island');
INSERT INTO Countries (name) VALUE ('Northern Mariana Islands');
INSERT INTO Countries (name) VALUE ('Norway');
INSERT INTO Countries (name) VALUE ('Oman');
INSERT INTO Countries (name) VALUE ('Pakistan');
INSERT INTO Countries (name) VALUE ('Palau');
INSERT INTO Countries (name) VALUE ('Panama');
INSERT INTO Countries (name) VALUE ('Papua New Guinea');
INSERT INTO Countries (name) VALUE ('Paraguay');
INSERT INTO Countries (name) VALUE ('Peru');
INSERT INTO Countries (name) VALUE ('Philippines');
INSERT INTO Countries (name) VALUE ('Pitcairn');
INSERT INTO Countries (name) VALUE ('Poland');
INSERT INTO Countries (name) VALUE ('Portugal');
INSERT INTO Countries (name) VALUE ('Puerto Rico');
INSERT INTO Countries (name) VALUE ('Qatar');
INSERT INTO Countries (name) VALUE ('Romania');
INSERT INTO Countries (name) VALUE ('Russian Federation');
INSERT INTO Countries (name) VALUE ('Rwanda');
INSERT INTO Countries (name) VALUE ('Saint Kitts and Nevis');
INSERT INTO Countries (name) VALUE ('Saint Lucia');
INSERT INTO Countries (name) VALUE ('Saint Martin (French part)');
INSERT INTO Countries (name) VALUE ('Saint Pierre and Miquelon');
INSERT INTO Countries (name) VALUE ('Saint Vincent and the Grenadines');
INSERT INTO Countries (name) VALUE ('Samoa');
INSERT INTO Countries (name) VALUE ('San Marino');
INSERT INTO Countries (name) VALUE ('Sao Tome and Principe');
INSERT INTO Countries (name) VALUE ('Saudi Arabia');
INSERT INTO Countries (name) VALUE ('Senegal');
INSERT INTO Countries (name) VALUE ('Serbia');
INSERT INTO Countries (name) VALUE ('Seychelles');
INSERT INTO Countries (name) VALUE ('Sierra Leone');
INSERT INTO Countries (name) VALUE ('Singapore');
INSERT INTO Countries (name) VALUE ('Sint Maarten (Dutch part)');
INSERT INTO Countries (name) VALUE ('Slovakia');
INSERT INTO Countries (name) VALUE ('Slovenia');
INSERT INTO Countries (name) VALUE ('Solomon Islands');
INSERT INTO Countries (name) VALUE ('Somalia');
INSERT INTO Countries (name) VALUE ('South Africa');
INSERT INTO Countries (name) VALUE ('South Georgia and the South Sandwich Islands');
INSERT INTO Countries (name) VALUE ('South Sudan');
INSERT INTO Countries (name) VALUE ('Spain');
INSERT INTO Countries (name) VALUE ('Sri Lanka');
INSERT INTO Countries (name) VALUE ('State of Palestine');
INSERT INTO Countries (name) VALUE ('Sudan');
INSERT INTO Countries (name) VALUE ('Suriname');
INSERT INTO Countries (name) VALUE ('Svalbard and Jan Mayen');
INSERT INTO Countries (name) VALUE ('Swaziland');
INSERT INTO Countries (name) VALUE ('Sweden');
INSERT INTO Countries (name) VALUE ('Switzerland');
INSERT INTO Countries (name) VALUE ('Syrian Arab Republic');
INSERT INTO Countries (name) VALUE ('Tajikistan');
INSERT INTO Countries (name) VALUE ('Thailand');
INSERT INTO Countries (name) VALUE ('Timor-Leste');
INSERT INTO Countries (name) VALUE ('Togo');
INSERT INTO Countries (name) VALUE ('Tokelau');
INSERT INTO Countries (name) VALUE ('Tonga');
INSERT INTO Countries (name) VALUE ('Trinidad and Tobago');
INSERT INTO Countries (name) VALUE ('Tunisia');
INSERT INTO Countries (name) VALUE ('Turkey');
INSERT INTO Countries (name) VALUE ('Turkmenistan');
INSERT INTO Countries (name) VALUE ('Turks and Caicos Islands');
INSERT INTO Countries (name) VALUE ('Tuvalu');
INSERT INTO Countries (name) VALUE ('Uganda');
INSERT INTO Countries (name) VALUE ('Ukraine');
INSERT INTO Countries (name) VALUE ('United Arab Emirates');
INSERT INTO Countries (name) VALUE ('United Kingdom');
INSERT INTO Countries (name) VALUE ('United States');
INSERT INTO Countries (name) VALUE ('United States Minor Outlying Islands');
INSERT INTO Countries (name) VALUE ('Uruguay');
INSERT INTO Countries (name) VALUE ('Uzbekistan');
INSERT INTO Countries (name) VALUE ('Vanuatu');
INSERT INTO Countries (name) VALUE ('Viet Nam');
INSERT INTO Countries (name) VALUE ('Wallis and Futuna');
INSERT INTO Countries (name) VALUE ('Western Sahara');
INSERT INTO Countries (name) VALUE ('Yemen');
INSERT INTO Countries (name) VALUE ('Zambia');
INSERT INTO Countries (name) VALUE ('Zimbabwe');

-- Countries End

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
    name char(20) not null
);

INSERT into genres
(name) values
('Action And Adventure'), ('Classics'), ('Comic And Graphic'), ('Detective And Mystery'), ('Fantasy'), ('Historical Fiction'), ('Horror'), ('Literary Fiction'), ('Romance'), ('Science Fiction'), ('Short Stories'), ('Suspense And Thrillers'), ("Women's Fiction"), ('Biographies'), ('History'), ('Memoir'), ('Poetry'), ('Self-Help'), ('True Crime');

-- Genres End

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