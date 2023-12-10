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

-- Users End

-- Countries Start
-- D
CREATE TABLE countries
(
    country_id int not null auto_increment primary key,
    name char(50) not null
);

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