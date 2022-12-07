/* user table */
CREATE TABLE user_tbl_map (
    user_id VARCHAR2(20) CONSTRAINT user_id_pk PRIMARY KEY,
    user_profile VARCHAR2(4000),
    user_password VARCHAR2(30) CONSTRAINT user_pw_nn not null,
    user_Phone_number CHAR(13) CONSTRAINT user_phone_qu UNIQUE
);

/* 장소 table */
CREATE TABLE place_tbl_map (
    place_number VARCHAR2(13) CONSTRAINT place_number_pk PRIMARY KEY, -- 가게 전화번호
    place_name VARCHAR2(50) CONSTRAINT place_name_nn not null, -- 가게명
    place_address VARCHAR2(1000) CONSTRAINT place_add_nn not null, -- 가게 주소
    place_latitude VARCHAR2(20) CONSTRAINT place_latitude_nn not null, -- 위도
    place_longitude VARCHAR2(20) CONSTRAINT place_longitude_nn not null, -- 경도
    place_facilities CHAR(1) -- 1 : 음식점, 2 : 마트, 3 : 놀거리, 4 : 편의시설
);

select * from place_tbl_map;

insert into place_tbl_map values('031-704-0704', '효자촌 미래타운 수제돈까스', ' 경기도 성남시 분당구 서현2동 307', '37.373058', '127.137566', '1');
insert into place_tbl_map values('000-000-0000', '국시 엔 국수', ' 경기도 성남시 분당구 서현동 312-3', ' 37.371743', '127.139374', '1');
insert into place_tbl_map values('031-729-9400', '청소년 수련관', '경기도 성남시 불정로386번길 38', '37.372176', '127.139918', '4')


/* 즐겨찾기 */
CREATE TABLE favorites_tbl_map ( -- 누가 어느 가게에 즐겨 찾기를 하였는지
    user_id VARCHAR2(20) CONSTRAINT favorites_user_id_fk REFERENCES user_tbl_map (user_id),
    place_number VARCHAR2(13) CONSTRAINT favorites_place_id_fk REFERENCES place_tbl_map (place_number)
);

/* 추천 */
CREATE TABLE suggestion_tbl_map ( -- 누가 어느 가게를 추천 했늕
    user_id VARCHAR2(20) CONSTRAINT suggestion_user_id_fk REFERENCES user_tbl_map (user_id),
    place_number VARCHAR2(13) CONSTRAINT suggestion_place_id_fk REFERENCES place_tbl_map (place_number)
);