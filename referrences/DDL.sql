-- 유저user
DROP TABLE USR;

DROP TABLE Authority;

-- 유저
CREATE TABLE USR (
	UID      INTEGER NOT NULL auto_increment primary key, -- 유저ID
	email    VARCHAR(255) NOT NULL, -- ID
	password VARCHAR(255) NOT NULL  -- 비밀번호
);

CREATE TABLE Authority(
	ANum	INTEGER NOT NULL auto_increment primary key,
    Authority VARCHAR(255) NOT NULL,
	UID		INTEGER,
    FOREIGN KEY (UID) REFERENCES USR (UID)
)