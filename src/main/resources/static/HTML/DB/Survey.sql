
CREATE TABLE ANSWER
(
  ANSWER    VARCHAR(500) NOT NULL COMMENT '답변',
  ANSWER_ID VARCHAR(500) NOT NULL COMMENT '답변ID',
  PRIMARY KEY (ANSWER_ID)
) COMMENT '답변';

CREATE TABLE QUESTION
(
  QUESTION    VARCHAR(500) NOT NULL COMMENT '설문문항',
  QUESTION_ID VARCHAR(500) NOT NULL COMMENT '설문문항ID',
  PRIMARY KEY (QUESTION_ID)
) COMMENT '설문문항';

CREATE TABLE QUESTION_CHOICE
(
  QUESTION_ID VARCHAR(500) NOT NULL COMMENT '설문문항ID',
  ANSWER_ID   VARCHAR(500) NOT NULL COMMENT '답변ID'
);

CREATE TABLE STATISTICS
(
  QUESTION_ID   VARCHAR(500) NOT NULL COMMENT '설문문항ID',
  ANSWER_ID     VARCHAR(500) NOT NULL COMMENT '답변ID',
  USER_ID       VARCHAR(500) NOT NULL COMMENT '아이디',
  STATISTICS_ID VARCHAR(500) NOT NULL COMMENT '설문통계ID',
  PRIMARY KEY (STATISTICS_ID)
) COMMENT '통계';

CREATE TABLE USER
(
  NAME     VARCHAR(50)  NOT NULL COMMENT '이름',
  USER_ID  VARCHAR(500) NOT NULL COMMENT '아이디',
  PASSWORD VARCHAR(500) NOT NULL COMMENT '비밀번호',
  PRIMARY KEY (USER_ID)
) COMMENT '참여자';

ALTER TABLE QUESTION_CHOICE
  ADD CONSTRAINT FK_QUESTION_TO_QUESTION_CHOICE
    FOREIGN KEY (QUESTION_ID)
    REFERENCES QUESTION (QUESTION_ID);

ALTER TABLE QUESTION_CHOICE
  ADD CONSTRAINT FK_ANSWER_TO_QUESTION_CHOICE
    FOREIGN KEY (ANSWER_ID)
    REFERENCES ANSWER (ANSWER_ID);

ALTER TABLE STATISTICS
  ADD CONSTRAINT FK_QUESTION_TO_STATISTICS
    FOREIGN KEY (QUESTION_ID)
    REFERENCES QUESTION (QUESTION_ID);

ALTER TABLE STATISTICS
  ADD CONSTRAINT FK_ANSWER_TO_STATISTICS
    FOREIGN KEY (ANSWER_ID)
    REFERENCES ANSWER (ANSWER_ID);

ALTER TABLE STATISTICS
  ADD CONSTRAINT FK_USER_TO_STATISTICS
    FOREIGN KEY (USER_ID)
    REFERENCES USER (USER_ID);