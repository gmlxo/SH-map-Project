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

delete from place_tbl_map where place_number = '000-000-0000';

insert into place_tbl_map values('031-704-0704', '효자촌 미래타운 수제돈까스', ' 경기도 성남시 분당구 서현2동 307', '37.373058', '127.137566', '1');
insert into place_tbl_map values('000-000-0000', '국시 엔 국수', ' 경기도 성남시 분당구 서현동 312-3', '37.371743', '127.139374', '1');
insert into place_tbl_map values('031-729-9400', '청소년 수련관', '경기도 성남시 불정로386번길 38', '37.372176', '127.139918', '4');
insert into place_tbl_map values('031-704-0715', '앙토낭 카렘', '경기도 성남시 분당구 서현동 306-2', '37.373933', '127.136649', '1');
insert into place_tbl_map values('031-729-8700', '서현 도서관', '경기도 성남시 분당구 중앙공원로 77', '37.383383', '127.132418', '4');
insert into place_tbl_map values('031-736-6124', '서현동 파출소', '경기도 성남시 분당구 중앙공원로31번길 30', '37.382257', '127.126103', '4');
insert into place_tbl_map values('031-701-8554', '하모니 마트', '경기도 성남시 분당구 서현동 305-4', '37.374730', '127.136247', '3');
insert into place_tbl_map values('031-701-6233', '생협', '경기도 성남시 분당구 돌마로476번길 31', '37.374704', '127.135733', '3');
insert into place_tbl_map values('031-781-8546', '홈플러스 익스프레스', '경기도 성남시 분당구 서현동 306-1', '37.374270', '127.137186', '3');
insert into place_tbl_map values('031-709-8799', '헐크 볼링장', '경기도 성남시 분당구 서현1동 89-7', '37.381382', '127.127924', '2');
insert into place_tbl_map values('031-708-7778', '퀸크루즈 노래방', '경기도 성남시 분당구 서현동 248-1', '37.386447', '127.125028', '2');


/* 즐겨찾기 */
CREATE TABLE favorites_tbl_map ( -- 누가 어느 가게에 즐겨 찾기를 하였는지
    user_id VARCHAR2(20) CONSTRAINT favorites_user_id_fk REFERENCES user_tbl_map (user_id),
    place_number VARCHAR2(13) CONSTRAINT favorites_place_id_fk REFERENCES place_tbl_map (place_number)
);

/* 추천 */
CREATE TABLE suggestion_tbl_map ( -- 누가 어느 가게를 추천 했는지
    user_id VARCHAR2(20) CONSTRAINT suggestion_user_id_fk REFERENCES user_tbl_map (user_id),
    place_number VARCHAR2(13) CONSTRAINT suggestion_place_id_fk REFERENCES place_tbl_map (place_number)
);

commit;

-- DELETE from place_tbl_map ;
select * from place_tbl_map;
select * from place_tbl_map where place_name like '%돈까스%';

insert into user_tbl_map values ('admin', null, '1234', '010-2909-3042');