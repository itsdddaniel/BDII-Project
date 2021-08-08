CREATE DATABASE APIOLTP;
USE APIOLTP;

CREATE TABLE apidata
(
    id INT PRIMARY KEY IDENTITY,
    video_id VARCHAR(1000),
    channel_title VARCHAR(1000),
    video_title VARCHAR(1000),
    url_video VARCHAR(1000),
    date_video VARCHAR(1000),
    views VARCHAR(1000),
    likes VARCHAR(1000),
    dislikes VARCHAR(1000),
    comments VARCHAR(1000)
);