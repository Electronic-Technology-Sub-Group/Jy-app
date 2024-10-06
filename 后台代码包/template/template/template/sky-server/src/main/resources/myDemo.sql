create database if not exists myDemo;

use myDemo;


-- 创建名为Users的表
CREATE TABLE IF NOT EXISTS Users
(
    -- 用户ID，自增长的大整数类型，作为主键
    user_id    BIGINT AUTO_INCREMENT PRIMARY KEY,
    -- 用户的openid，最大长度为100，且唯一
    openid     VARCHAR(100) UNIQUE,
    -- 用户姓名，最大长度为100
    name       VARCHAR(100),
    -- 用户电话号码，最大长度为20
    phone      VARCHAR(20),
    -- 用户性别，小整数类型
    sex        TINYINT,
    -- 用户身份证号码，最大长度为20
    idNumber   VARCHAR(20),
    -- 用户头像链接，最大长度为255
    avatar     VARCHAR(255),
    -- 创建时间，时间戳类型
    createTime TIMESTAMP
);


alter table sentence
    add author VARCHAR(30);


update moment set category_id = 0 where category_id = NULL;

-- 创建 Moments 表，用于存储用户发布的动态信息
CREATE TABLE if not exists Moment
(
    moment_id          INT AUTO_INCREMENT PRIMARY KEY, -- 动态ID，自增长，主键
    user_id            INT,                            -- 用户ID
    moment_content     TEXT,                           -- 动态内容
    moment_picture     VARCHAR(255),                   -- 动态图片
    moment_create_date TIMESTAMP,                      -- 动态发布时间
    moment_partition   VARCHAR(10),
    FOREIGN KEY (user_id) REFERENCES Users (user_id)   -- 外键关联到 Users 表的 user_id

);


-- 创建 Comments 表，用于存储用户对动态的评论信息
CREATE TABLE if not exists Comments
(
    comment_id      INT AUTO_INCREMENT PRIMARY KEY,        -- 评论ID，自增长，主键
    moment_id       INT,                                   -- 动态ID
    user_id         INT,                                   -- 用户ID
    comment_content TEXT,                                  -- 评论内容
    comment_date    TIMESTAMP,                             -- 评论时间
    FOREIGN KEY (moment_id) REFERENCES Moment (moment_id), -- 外键关联到 Moments 表的 moment_id
    FOREIGN KEY (user_id) REFERENCES Users (user_id)       -- 外键关联到 Users 表的 user_id
);

-- 创建 Likes 表，用于存储用户对动态的点赞信息
CREATE TABLE if not exists Likes
(
    like_id   INT AUTO_INCREMENT PRIMARY KEY,              -- 点赞ID，自增长，主键
    moment_id INT,                                         -- 动态ID
    user_id   INT,                                         -- 用户ID
    FOREIGN KEY (moment_id) REFERENCES Moment (moment_id), -- 外键关联到 Moments 表的 moment_id
    FOREIGN KEY (user_id) REFERENCES Users (user_id)       -- 外键关联到 Users 表的 user_id
);
-- 创建名为Sentence的表
CREATE TABLE Sentence
(
    -- sentenceId字段，INT类型，自动递增，作为主键
    sentence_id          INT AUTO_INCREMENT PRIMARY KEY,
    -- sentenceText字段，TEXT类型，用于存储文本信息
    sentence_text        TEXT,
    -- sentencePicture字段，VARCHAR类型，最大长度255，用于存储图片路径
    sentence_picture     VARCHAR(255),
    -- sentenceCreateDate字段，DATETIME类型，用于存储创建日期和时间
    sentence_create_date DATETIME,

    dayOfWeek            varchar(3),
    -- category字段，VARCHAR类型，最大长度50，用于存储分类信息
    category             VARCHAR(50)


);



create table derivation
(
    derivation  VARCHAR(30),
    sentence_id INT
);

-- 创建 Favorites 表，用于存储用户收藏的句子信息
CREATE TABLE if not exists Favorites
(
    favorite_id INT AUTO_INCREMENT PRIMARY KEY,                  -- 收藏ID，自增长，主键
    sentence_id INT,                                             -- 句子ID，外键关联到句子信息表的ID
    user_id     INT,                                             -- 用户ID，外键关联到用户信息表的ID
    FOREIGN KEY (sentence_id) REFERENCES Sentence (sentence_id), -- 外键关联到句子信息表的sentence_id
    FOREIGN KEY (user_id) REFERENCES Users (user_id)             -- 外键关联到用户信息表的user_id
);



create table fan
(
    user_id    int,
    fanUser_id int
);

create table follow
(
    user_id       int,
    followUser_id int
);


update sentence
set sentence_create_date = '2023-12-02 15:41:06'
where sentence_create_date = null;



create table album
(
    album_name varchar(10)
);

create table category
(
    category_id       int,
    category_name     varchar(100),
    category_picture  varchar(100),
    category_synopsis varchar(100),
    album_name        varchar(10)
);

create table topicAlbum
(
    album_name varchar(10)
);


create table momentCategory
(
    category_id       int,
    category_name     varchar(100),
    category_picture  varchar(500),
    category_synopsis varchar(100),
    album_name        varchar(10)
);



insert into category (album_name) values('保持热爱');
insert into category (album_name) values('冬日可爱');
insert into category (album_name) values('苦尽甘来');
insert into category (album_name) values('来日可期');
insert into category (album_name) values('平安喜乐');
insert into category (album_name) values('如约而至');
insert into category (album_name) values('万事顺利');


delete from category where category_picture = null;


alter table moment drop moment_partition;

create table diary
(
    diary_id    int,
    create_time timestamp,
    userid int,
    diary_content varchar(500),
name varchar(100),
avatar varchar(500)
)


