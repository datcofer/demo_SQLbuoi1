# Tạo database cho web app food
# Tạo table users, restaurant và food_type 
# vì 3 table này không có FK
# Tạo table users
CREATE TABLE users(
	user_id INT PRIMARY KEY AUTO_INCREMENT,
	full_name VARCHAR(100),
	email VARCHAR(100),
	pass_word VARCHAR(100)
)

INSERT INTO users (full_name, email, pass_word)
VALUES
('John Doe', 'john.doe@example.com', 'Password123!'),
('Jane Smith', 'jane.smith@example.com', 'SecurePass456@'),
('Alex Johnson', 'alex.johnson@example.com', 'Alex@789password'),
('Emily Davis', 'emily.davis@example.com', 'PassEmily!123'),
('Michael Brown', 'michael.brown@example.com', 'MichaelBrown2021!'),
('Olivia Wilson', 'olivia.wilson@example.com', 'Olivia@Password77'),
('Ethan Moore', 'ethan.moore@example.com', 'Ethan@456Safe'),
('Sophia Taylor', 'sophia.taylor@example.com', 'TaylorPass@Sophia12'),
('James Anderson', 'james.anderson@example.com', 'JamesAnderson_89!'),
('Mia Martinez', 'mia.martinez@example.com', 'MiaMartinez_88@'),
('Daniel Thomas', 'daniel.thomas@example.com', 'Daniel@123Strong'),
('Ava Jackson', 'ava.jackson@example.com', 'AvaPass_456!'),
('Matthew White', 'matthew.white@example.com', 'MattWhite_Pass98'),
('Charlotte Harris', 'charlotte.harris@example.com', 'Charlotte_111Password'),
('Lucas Thompson', 'lucas.thompson@example.com', 'Lucas@Password222'),
('Amelia Lee', 'amelia.lee@example.com', 'AmeliaLee#Password45'),
('Henry Martinez', 'henry.martinez@example.com', 'HenryM@333Pass'),
('Isabella Clark', 'isabella.clark@example.com', 'Clark_Isabella@2024'),
('Benjamin Lewis', 'benjamin.lewis@example.com', 'BenLewis_4567Safe'),
('Harper Walker', 'harper.walker@example.com', 'Harper@WalkerPass99');

# Tạo table restaurant

CREATE TABLE restaurant(
	res_id INT PRIMARY KEY AUTO_INCREMENT,
	res_name VARCHAR(100),
	image VARCHAR(255),
	description VARCHAR(255)
)

INSERT INTO restaurant (res_name, image, description)
VALUES
('The Gourmet Kitchen', 'gourmet_kitchen.jpg', 'A modern fusion restaurant offering diverse international cuisines.'),
('Bella Italia', 'bella_italia.jpg', 'Authentic Italian dishes with a cozy atmosphere.'),
('Sushi Paradise', 'sushi_paradise.jpg', 'Fresh sushi and sashimi served in a vibrant setting.'),
('Spice of India', 'spice_of_india.jpg', 'Traditional Indian cuisine with rich flavors and spices.'),
('La Parisienne', 'la_parisienne.jpg', 'French bistro specializing in classic French pastries and dishes.'),
('Ocean Breeze', 'ocean_breeze.jpg', 'Seafood delights by the waterfront with a stunning ocean view.'),
('Grill Master', 'grill_master.jpg', 'Barbecue and grilled meats prepared to perfection.'),
('Veggie Delight', 'veggie_delight.jpg', 'A vegetarian haven with a variety of healthy, plant-based options.'),
('The Steakhouse', 'the_steakhouse.jpg', 'Premium steaks and a rustic dining experience.'),
('Taco Fiesta', 'taco_fiesta.jpg', 'Mexican-inspired tacos, burritos, and flavorful salsas.'),
('Dragon Wok', 'dragon_wok.jpg', 'Asian fusion restaurant featuring stir-fry and dim sum.'),
('Sunrise Café', 'sunrise_cafe.jpg', 'Breakfast and brunch spot with a laid-back vibe.'),
('Burger Barn', 'burger_barn.jpg', 'Classic American burgers with unique twists and toppings.'),
('Pasta Fresca', 'pasta_fresca.jpg', 'Fresh, handmade pasta dishes with Mediterranean influences.'),
('The Coffee House', 'the_coffee_house.jpg', 'A cozy café offering specialty coffees and baked goods.'),
('Fiery Thai', 'fiery_thai.jpg', 'Authentic Thai cuisine with bold spices and exotic flavors.'),
('Bistro Royale', 'bistro_royale.jpg', 'Elegant dining experience with a gourmet European menu.'),
('Pizza Plaza', 'pizza_plaza.jpg', 'Neapolitan-style pizza with fresh ingredients and wood-fired flavor.'),
('The Tap Room', 'the_tap_room.jpg', 'Craft beer bar with a rotating selection of local brews.'),
('Urban Eats', 'urban_eats.jpg', 'Trendy, fast-casual dining with a focus on fresh, local ingredients.');

# Tạo table food_type

CREATE TABLE food_type(
	type_id INT PRIMARY KEY AUTO_INCREMENT,
	type_name VARCHAR(100)
)

INSERT INTO food_type (type_name)
VALUES
('Italian'),
('Chinese'),
('Mexican'),
('Indian'),
('Japanese'),
('French'),
('Thai'),
('American'),
('Mediterranean'),
('Korean'),
('Vietnamese'),
('Greek'),
('Spanish'),
('Turkish'),
('Caribbean'),
('Lebanese'),
('Brazilian'),
('Ethiopian'),
('Moroccan'),
('German');

#Tạo table rate_res
CREATE TABLE rate_res(
	rate_res_id INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,
	FOREIGN KEY(user_id) REFERENCES users(user_id),
	res_id INT,
	FOREIGN KEY(res_id) REFERENCES restaurant(res_id),
	amount INT,
	date_rate DATE
	)

INSERT INTO rate_res (user_id, res_id, amount, date_rate)
VALUES
(1, 1, 5, '2024-09-01'),
(2, 2, 4, '2024-09-02'),
(3, 3, 3, '2024-09-03'),
(4, 4, 5, '2024-09-04'),
(5, 5, 4, '2024-09-05'),
(6, 6, 3, '2024-09-06'),
(7, 7, 5, '2024-09-07'),
(8, 8, 4, '2024-09-08'),
(9, 9, 2, '2024-09-09'),
(10, 10, 5, '2024-09-10'),
(11, 11, 3, '2024-09-11'),
(12, 12, 4, '2024-09-12'),
(13, 13, 5, '2024-09-13'),
(14, 14, 2, '2024-09-14'),
(15, 15, 4, '2024-09-15'),
(16, 16, 3, '2024-09-16'),
(17, 17, 5, '2024-09-17'),
(18, 18, 4, '2024-09-18'),
(19, 19, 2, '2024-09-19'),
(20, 20, 5, '2024-09-20');

# Tạo table like_res
CREATE TABLE like_res(
	like_res_id INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,
	FOREIGN KEY(user_id) REFERENCES users(user_id),
	res_id INT,
	FOREIGN KEY(res_id) REFERENCES restaurant(res_id),
	date_like DATE
)

INSERT INTO like_res (user_id, res_id, date_like)
VALUES
(1, 1, '2024-09-01'),
(2, 2, '2024-09-02'),
(3, 3, '2024-09-03'),
(4, 4, '2024-09-04'),
(5, 5, '2024-09-05'),
(6, 6, '2024-09-06'),
(7, 7, '2024-09-07'),
(8, 8, '2024-09-08'),
(9, 9, '2024-09-09'),
(10, 10, '2024-09-10'),
(11, 11, '2024-09-11'),
(12, 12, '2024-09-12'),
(13, 13, '2024-09-13'),
(14, 14, '2024-09-14'),
(15, 15, '2024-09-15'),
(16, 16, '2024-09-16'),
(17, 17, '2024-09-17'),
(18, 18, '2024-09-18'),
(19, 19, '2024-09-19'),
(20, 20, '2024-09-20');

# Tạo table food
CREATE TABLE foods(
	food_id INT PRIMARY KEY AUTO_INCREMENT,
	food_name VARCHAR(100),
	type_id INT,
	FOREIGN KEY(type_id) REFERENCES food_type(type_id),
	price INT,
	image VARCHAR(255),
	description VARCHAR(255)
)

INSERT INTO foods (food_name, type_id, price, image, description)
VALUES
('Margherita Pizza', 1, 12, 'margherita_pizza.jpg', 'Classic Neapolitan pizza with fresh tomatoes, mozzarella, and basil.'),
('Kung Pao Chicken', 2, 15, 'kung_pao_chicken.jpg', 'Spicy stir-fried chicken with peanuts and vegetables.'),
('Tacos al Pastor', 3, 10, 'tacos_al_pastor.jpg', 'Mexican tacos filled with marinated pork, pineapple, and cilantro.'),
('Chicken Tikka Masala', 4, 14, 'chicken_tikka_masala.jpg', 'Indian curry dish with marinated chicken in a creamy tomato sauce.'),
('Sushi Platter', 5, 25, 'sushi_platter.jpg', 'Assortment of fresh sushi rolls and sashimi.'),
('Croissant', 6, 5, 'croissant.jpg', 'Flaky, buttery French pastry.'),
('Pad Thai', 7, 13, 'pad_thai.jpg', 'Thai stir-fried noodles with shrimp, tofu, and peanuts.'),
('Cheeseburger', 8, 11, 'cheeseburger.jpg', 'Juicy beef patty with melted cheese, lettuce, and tomato in a bun.'),
('Greek Salad', 9, 9, 'greek_salad.jpg', 'Fresh salad with cucumbers, olives, feta cheese, and olive oil.'),
('Bibimbap', 10, 16, 'bibimbap.jpg', 'Korean mixed rice bowl with vegetables, meat, and egg.'),
('Pho', 11, 12, 'pho.jpg', 'Vietnamese noodle soup with beef, herbs, and spices.'),
('Gyro', 12, 10, 'gyro.jpg', 'Greek sandwich with seasoned meat, tomatoes, and tzatziki sauce.'),
('Paella', 13, 20, 'paella.jpg', 'Traditional Spanish rice dish with seafood, chicken, and saffron.'),
('Kebabs', 14, 12, 'kebabs.jpg', 'Grilled skewers of meat and vegetables, popular in Turkish cuisine.'),
('Jerk Chicken', 15, 18, 'jerk_chicken.jpg', 'Caribbean spiced grilled chicken with a tangy kick.'),
('Hummus with Pita', 16, 8, 'hummus_pita.jpg', 'Lebanese chickpea dip served with warm pita bread.'),
('Feijoada', 17, 19, 'feijoada.jpg', 'Brazilian black bean stew with pork and sausage.'),
('Doro Wat', 18, 14, 'doro_wat.jpg', 'Ethiopian chicken stew cooked with spices and served with injera.'),
('Tagine', 19, 17, 'tagine.jpg', 'Moroccan slow-cooked stew with meat, vegetables, and spices.'),
('Schnitzel', 20, 13, 'schnitzel.jpg', 'Breaded and fried pork or chicken cutlet, popular in German cuisine.');

# Tạo table orders
CREATE TABLE orders(
	order_id INT PRIMARY KEY AUTO_INCREMENT,
	food_id INT,
	FOREIGN KEY(food_id) REFERENCES foods(food_id),
	user_id INT,
	FOREIGN KEY(user_id) REFERENCES users(user_id),
	amount INT,
	arr_sub_id VARCHAR(255)
)

INSERT INTO orders (food_id, user_id, amount, arr_sub_id)
VALUES
(1, 1, 2, 'SUB123'),
(2, 2, 1, 'SUB124'),
(3, 3, 3, 'SUB125'),
(4, 4, 1, 'SUB126'),
(5, 5, 2, 'SUB127'),
(6, 6, 4, 'SUB128'),
(7, 7, 1, 'SUB129'),
(8, 8, 2, 'SUB130'),
(9, 9, 3, 'SUB131'),
(10, 10, 1, 'SUB132'),
(11, 11, 2, 'SUB133'),
(12, 12, 1, 'SUB134'),
(13, 13, 4, 'SUB135'),
(14, 14, 3, 'SUB136'),
(15, 15, 2, 'SUB137'),
(16, 16, 1, 'SUB138'),
(17, 17, 3, 'SUB139'),
(18, 18, 4, 'SUB140'),
(19, 19, 2, 'SUB141'),
(20, 20, 1, 'SUB142');

# Tạo table sub_food
CREATE TABLE sub_food(
	sub_id INT PRIMARY KEY AUTO_INCREMENT,
	sub_name VARCHAR(100),
	food_id INT,
	FOREIGN KEY(food_id) REFERENCES foods(food_id),
	sub_price INT
)

INSERT INTO sub_food (sub_name, food_id, sub_price)
VALUES
('Large Margherita Pizza', 1, 15),
('Spicy Kung Pao Chicken', 2, 18),
('Tacos al Pastor Combo', 3, 12),
('Chicken Tikka Masala Meal', 4, 17),
('Deluxe Sushi Platter', 5, 30),
('Butter Croissant', 6, 6),
('Pad Thai with Shrimp', 7, 16),
('Double Cheeseburger', 8, 14),
('Greek Salad Bowl', 9, 11),
('Bibimbap Deluxe', 10, 20),
('Pho Special', 11, 14),
('Gyro Plate', 12, 13),
('Seafood Paella', 13, 25),
('Mixed Meat Kebabs', 14, 15),
('Jerk Chicken Platter', 15, 21),
('Hummus & Pita Combo', 16, 10),
('Feijoada Family Meal', 17, 23),
('Spicy Doro Wat', 18, 17),
('Tagine Lamb Special', 19, 22),
('Schnitzel Combo', 20, 16);

# Tìm 5 người đã like nhà hàng nhiều nhất.
SELECT COUNT(u.user_id) AS 'số like', u.user_id, u.full_name FROM users u
INNER JOIN like_res lr on u.user_id= lr.user_id
GROUP BY u.user_id, u.full_name
ORDER BY COUNT(u.user_id) DESC
LIMIT 5

# Tìm 2 nhà hàng có lượt like nhiều nhất.
SELECT COUNT(lr.like_res_id) AS 'số like', r.res_id, r.res_name FROM restaurant r 
INNER JOIN like_res lr on r.res_id= lr.res_id
GROUP BY r.res_id, r.res_name
ORDER BY COUNT(lr.like_res_id) DESC
LIMIT 2

# Tìm người đã đặt hàng nhiều nhất.
SELECT COUNT(o.order_id) as 'số order', u.user_id, u.full_name FROM users u 
INNER JOIN orders o on u.user_id=o.user_id
GROUP BY u.user_id, u.full_name
ORDER BY COUNT(o.order_id) DESC
LIMIT 1

# Tìm người dùng không hoạt động trong hệ thống
(không đặt hàng, không like, không đánh giá nhà
hàng).

SELECT u.user_id, u.full_name FROM users u 
LEFT JOIN orders o on u.user_id = o.user_id
LEFT JOIN like_res lr on u.user_id =lr.user_id
LEFT JOIN rate_res rr on u.user_id =rr.user_id
WHERE o.order_id IS NULL AND lr.like_res_id IS NULL AND rr.rate_res_id IS NULL
