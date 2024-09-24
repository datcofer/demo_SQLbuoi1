# tạo cơ sở dữ liệu
CREATE DATABASE node47
USE node47
# tạo table, DATA
# tạo table users
# 3 kiểu dữ liệu chính
# -Number: integer, float,...
# -String: Varchar, ....
# -Datetime: timestamp
CREATE TABLE users(
	full_name VARCHAR(100),
	email VARCHAR(255),
	age INT,
	pass_word VARCHAR(255)
);
# tạo date cho severUsers
INSERT INTO users (full_name, email, age, pass_word) VALUES 
('Nguyen Van A', 'nguyenvana@example.com', 25, 'password123'),
('Le Thi B', 'lethib@example.com', 30, 'passw0rd!'),
('Tran Van C', 'tranvanc@example.com', 22, 'mypassword456'),
('Pham Thi D', 'phamthid@example.com', 27, 'abc123xyz'),
('Do Quang Khai', 'khaidq@example.com', 23, 'KhaiPassword!'),
('Nguyen Thi E', 'nguyenthie@example.com', 26, 'securepass789'),
('Le Van F', 'levanf@example.com', 21, 'strongpass111'),
('Tran Thi G', 'tranthig@example.com', 29, 'passkey2021'),
('Nguyen Van H', 'nguyenvanh@example.com', 24, 'password789'),
('Le Thi I', 'lethii@example.com', 31, 'passme2022'),
('Tran Van J', 'tranvanj@example.com', 28, 'jpasspassword!'),
('Pham Van K', 'phamvank@example.com', 22, 'vank_pass432'),
('Do Thi L', 'dothil@example.com', 27, 'secretpass100'),
('Nguyen Van M', 'nguyenvanm@example.com', 24, 'mypassword999'),
('Le Thi N', 'lethin@example.com', 25, 'newpassword123'),
('Tran Van O', 'tranvano@example.com', 26, 'opassword567'),
('Pham Thi P', 'phamthip@example.com', 30, 'strongpassp@ss'),
('Do Van Q', 'dovanq@example.com', 28, 'quypasspass!'),
('Nguyen Thi R', 'nguyenthir@example.com', 23, 'securepassR@123'),
('Le Van S', 'levans@example.com', 21, 'Spasswordstrong!');
# query, insert, update, delete
#viết câu query để get data
# *: lấy hết tất cả data trong table
SELECT full_name AS 'Họ Tên', email FROM users
SELECT * FROM users
# lấy những người có tuổi từ 20-25 tuổi
# cách 1
SELECT * FROM users WHERE 20<=age and age<=25
# cách 2 between...and....
SELECT * FROM users WHERE age BETWEEN 20 AND 25
# sắp xếp tăng dần (giảm dần) order by
ORDER BY age DESC 
LIMIT 5
# keyword để sắp xếp data tăng dần (asc) giảm dần (desc)
# thêm column address và phone cho table users 
# =>update table thay vì xóa table và tạo lại
ALTER TABLE users 
ADD COLUMN address VARCHAR(255),
ADD COLUMN phone VARCHAR(15)
# Thay đổi kiểu dữ liệu cho column đó (address) 
ALTER TABLE users 
modify address VARCHAR(100)
# thêm ràng buộc (constraint) cho column
ALTER TABLE users 
modify COLUMN full_name VARCHAR(100) NOT NULL

INSERT INTO users(email, age, pass_word, address, full_name) VALUES
('test@gmail.com', 30, '123456', 'quan 3','test')
# Liệt kê những người có tuổi lớn nhất
# cách 1:
#B1: tìm tuổi lớn nhất trong danh sách users 
#B2: lấy những người có tuổi lớn nhất
SELECT * FROM users 
WHERE age =(
	SELECT age FROM users 
	ORDER BY age DESC 
	LIMIT 1
)
# cách 2: dùng keyword MAX hoặc MIN
SELECT * FROM users 
WHERE age = (SELECT MAX(age) FROM users )

#tìm những người có họ Lê trong danh sách
# dùng keyword LIKE (tìm tương đối)
SELECT * FROM users  
WHERE full_name LIKE '%B%'
# Le% => tìm những người có chữ Le ở đầu chuỗi: Le Van, Le Thi
# %Le => tìm những người có chữ Le ở cuối chuỗi: Nguyen Le, Pham Le
# %Le% => kết hợp của Le% và %Le => tìm những người có chữ Le
# bao gồm chữ Le ở đầu, ở cuối và ở giữa
SELECT DISTINCT full_name FROM users 
# Đếm có bao nhiêu users trong table
# count
SELECT COUNT(*) FROM users 


# Khóa chính(Primary key) 
# column trong table nhưng dùng để xác định data đó là duy nhất, để query 1 phần tử
# thêm khóa chính cho table users 
ALTER TABLE users 
ADD COLUMN user_id INT PRIMARY KEY auto_increment
INSERT INTO users (full_name, age, email) VALUES ('cyber', 30, 'demo@gmail.com')
SELECT user_id, full_name FROM users
