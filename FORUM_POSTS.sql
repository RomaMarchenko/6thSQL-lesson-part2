CREATE TABLE FORUM_POSTS (
    ID NUMBER,
    CONSTRAINT FORUM_POSTS_PK PRIMARY KEY (ID),
    ID_SUBCATEGORY NUMBER,
    CONSTRAINT ID_SUBCATEGORY_FK FOREIGN KEY (ID_SUBCATEGORY) REFERENCES FORUM_SUBCATEGORIES(ID),
    ID_USER NUMBER,
    CONSTRAINT ID_USER_FK FOREIGN KEY (ID_USER) REFERENCES USERS(ID),
    PARENT_POST NUMBER UNIQUE,
    TITLE NVARCHAR2(90),
    CONTENT CLOB,
    IS_POLL CHAR(1) CHECK (IS_POLL = 'Y' OR IS_POLL = 'N'),
    DAT_E TIMESTAMP,
    IP NVARCHAR2(20)
);