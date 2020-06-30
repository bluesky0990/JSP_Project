CREATE TABLE BOARD 
(
  ID NUMBER(2) NOT NULL 
, NAME NVARCHAR2(20) NOT NULL 
, CONSTRAINT BOARD_PK PRIMARY KEY 
  (
    ID 
  )
  ENABLE 
);

COMMENT ON COLUMN BOARD.ID IS '게시판번호';

COMMENT ON COLUMN BOARD.NAME IS '게시판이름';