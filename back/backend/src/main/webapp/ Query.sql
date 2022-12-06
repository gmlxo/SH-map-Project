CREATE TABLE user_tbl_map (
    user_id VARCHAR2(20) CONSTRAINT user_id_pk PRIMARY KEY,
    user_nickname VARCHAR2(20), 
    user_profile VARCHAR2(4000),
    user_password VARCHAR2(30) CONSTRAINT user_pw_nn not null,
    user_Phone_number CHAR(13) CONSTRAINT user_phone_qu UNIQUE
);

CREATE TABLE place_tbl_map (
    place_number VARCHAR2(13) CONSTRAINT place_number_pk PRIMARY KEY,
    place_name VARCHAR2(50) CONSTRAINT place_name_nn not null,
    place_address VARCHAR2(1000) CONSTRAINT place_add_nn not null,
    place_latitude VARCHAR2(20) CONSTRAINT place_latitude_nn not null,
    place_longitude VARCHAR2(20) CONSTRAINT place_longitude_nn not null,
    place_facilities CHAR(1)
);

CREATE TABLE favorites_tbl_map (
    user_id VARCHAR2(20) CONSTRAINT favorites_user_id_fk REFERENCES user_tbl_map (user_id),
    place_number VARCHAR2(13) CONSTRAINT favorites_place_id_fk REFERENCES place_tbl_map (place_number)
);

CREATE TABLE suggestion_tbl_map (
    user_id VARCHAR2(20) CONSTRAINT suggestion_user_id_fk REFERENCES user_tbl_map (user_id),
    place_number VARCHAR2(13) CONSTRAINT suggestion_place_id_fk REFERENCES place_tbl_map (place_number)
);