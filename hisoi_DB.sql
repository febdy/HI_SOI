drop table users;
drop sequence seq_video_no;
drop table video;
drop sequence seq_notice_no;
drop table notice;
drop sequence seq_post_no;
drop table post;
drop sequence seq_cmt_no;
drop table comments;
drop table scrap;

CREATE TABLE users (
    user_id VARCHAR2(20) not null,
    user_name   VARCHAR2(30) not null,
    user_email	VARCHAR2(100) not null,
    user_addr   VARCHAR2(200) not null,
    user_tel    VARCHAR2(20) not null,
    user_pwd    VARCHAR2(30) not null,
    user_nickname   VARCHAR2(20) not null,
    user_level  VARCHAR2(30) not null,
    reg_date    DATE DEFAULT SYSDATE,
    PRIMARY KEY(user_id)
);

select *
from users;

update users
set user_pwd=1
where user_id='realso1';

select user_id userId,
        user_name userName,
        user_email userEmail,
        user_addr userAddr,
        user_tel userTel,
        user_pwd userPwd,
        user_nickname userNickname,
        user_level userLevel,
        reg_date regDate
from users
where user_nickname != 'soso'
and user_nickname = 'soso';

update users
set user_level='administer'
where user_id='realso0';

delete from users
where user_id='ZXZC';

commit;

-- 일단 video_time 메서드 찾기 전까지 video_time 삭제한 db 사용
CREATE TABLE video (
    video_no NUMBER(30) not null,
    user_id VARCHAR2(20) not null,
    video_origin_name   VARCHAR2(200) not null,
    video_save_name VARCHAR2(200) not null,
    video_ex_name   VARCHAR2(200) not null,
    video_path  VARCHAR2(1000) not null,
    video_size  NUMBER(20) not null,
    video_date  DATE DEFAULT SYSDATE,
    video_thumnail VARCHAR2(200) not null,
    video_correct_line  VARCHAR2(100) not null,
    video_delete VARCHAR2(10) not null,
    PRIMARY KEY(video_no),
    CONSTRAINT c_video_fk FOREIGN KEY (user_id) 
    REFERENCES users(user_id)
);

CREATE SEQUENCE seq_video_no
INCREMENT BY 1
START WITH 1;

--CREATE SEQUENCE seq_book_id
--INCREMENT BY 1 
--START WITH 1 ;

commit;

select *
from users;

select *
from video;

delete from video
where user_id='realso0';

select *
from video
where video_no=21;

CREATE TABLE notice (
    noti_no NUMBER(10),
    noti_title  VARCHAR2(255),
    noti_content    VARCHAR2(4000),
    noti_date   DATE DEFAULT SYSDATE,
    noti_hit_cnt    NUMBER DEFAULT 0,
    user_id VARCHAR2(20) NOT NULL,
    PRIMARY KEY(noti_no),
    CONSTRAINT c_notice_fk FOREIGN KEY (user_id) 
    REFERENCES users(user_id)
);

CREATE SEQUENCE seq_notice_no
INCREMENT BY 1 
START WITH 1;

delete from video
where user_id='realso0';

select *
from notice;

select *
from notice
where noti_no=1;

update notice
set noti_content='ㅇ아아아아아아아 하자'
where noti_no=21;

insert into users values('realso0','소한준','realso0@nate.com','인천','010-7533-5557','1','real','member',sysdate);
insert into users values('realso1','소한준','realso0@nate.com','인천','010-7533-5557','1','soso','member',sysdate);

insert into notice(noti_no, noti_title, noti_content, noti_date, noti_hit_cnt, user_id)
values (seq_notice_no.nextval, '게시글 제목1', '게시글 내용1', sysdate, 0,'realso1');
insert into notice(noti_no, noti_title, noti_content, noti_date, noti_hit_cnt, user_id)
values (seq_notice_no.nextval, '게시글 제목2', '게시글 내용2', sysdate, 0,'realso1');
insert into notice(noti_no, noti_title, noti_content, noti_date, noti_hit_cnt, user_id)
values (seq_notice_no.nextval, '게시글 제목3', '게시글 내용3', sysdate, 0,'realso1');
insert into notice(noti_no, noti_title, noti_content, noti_date, noti_hit_cnt, user_id)
values (seq_notice_no.nextval, '게시글 제목4', '게시글 내용4', sysdate, 0,'realso1');
insert into notice(noti_no, noti_title, noti_content, noti_date, noti_hit_cnt, user_id)
values (seq_notice_no.nextval, '게시글 제목5', '게시글 내용5', sysdate, 0,'realso1');
insert into notice(noti_no, noti_title, noti_content, noti_date, noti_hit_cnt, user_id)
values (seq_notice_no.nextval, '게시글 제목6', '게시글 내용6', sysdate, 0,'realso1');
insert into notice(noti_no, noti_title, noti_content, noti_date, noti_hit_cnt, user_id)
values (seq_notice_no.nextval, '게시글 제목7', '게시글 내용7', sysdate, 0,'realso1');
insert into notice(noti_no, noti_title, noti_content, noti_date, noti_hit_cnt, user_id)
values (seq_notice_no.nextval, '게시글 제목7', '게시글 내용7', sysdate, 0,'realso1');
insert into notice(noti_no, noti_title, noti_content, noti_date, noti_hit_cnt, user_id)
values (seq_notice_no.nextval, '게시글 제목8', '게시글 내용8', sysdate, 0,'realso1');
insert into notice(noti_no, noti_title, noti_content, noti_date, noti_hit_cnt, user_id)
values (seq_notice_no.nextval, '게시글 제목9', '게시글 내용9', sysdate, 0,'realso1');
insert into notice(noti_no, noti_title, noti_content, noti_date, noti_hit_cnt, user_id)
values (seq_notice_no.nextval, '게시글 제목10', '게시글 내용10', sysdate, 0,'realso1');
insert into notice(noti_no, noti_title, noti_content, noti_date, noti_hit_cnt, user_id)
values (seq_notice_no.nextval, '게시글 제목11', '게시글 내용11', sysdate, 0,'realso1');

CREATE TABLE post (
    post_no NUMBER(10),
    writer_id VARCHAR2(20) not null,
    video_no NUMBER(30) not null,
    post_title  VARCHAR2(255),
    post_content    VARCHAR2(300),
    post_date   DATE DEFAULT SYSDATE,
    post_soi_cnt    NUMBER DEFAULT 0,
    post_cmt_cnt    NUMBER DEFAULT 0,
    post_hit_cnt    NUMBER DEFAULT 0,
    post_hide_face  VARCHAR2(10) default 'N',
    post_sharable   VARCHAR2(10) default 'N',
    post_anal_result    VARCHAR2(100),
    PRIMARY KEY(post_no),
    CONSTRAINT c_post_writerid_fk FOREIGN KEY (writer_id) 
    REFERENCES users(user_id),
    CONSTRAINT c_post_videono_fk FOREIGN KEY (video_no) 
    REFERENCES video(video_no)
);

CREATE SEQUENCE seq_post_no
INCREMENT BY 1
START WITH 1;

select *
from post;

select post_no postNo,
					po.user_id userId,
					po.video_no videoNo,
					post_title postTitle,
					post_content postContent,
					post_date postDate,
					post_soi_cnt postSoiCnt,
					post_cmt_cnt postCmtCnt,
					post_hit_cnt postHitCnt,
					post_hide_face postHideFace,
					post_sharable postSharable,
					post_anal_result postAnalResult,
					video_origin_name videoOriginName,
					video_save_name videoSaveName,
					video_ex_name videoExName,
					video_path videoPath,
					video_size videoSize,
					video_date videoDate,
					video_correct_line videoCorrectLine
			from post po, video vi
			where po.video_no=vi.video_no;

select *
from post po, video vi
where po.video_no=vi.video_no
and po.user_id='realso1';

commit;

CREATE TABLE comments (
    cmt_no NUMBER(10),
    post_no NUMBER(10) not null,
    user_id VARCHAR2(20) not null,
    cmt_content VARCHAR2(4000),
    cmt_date    DATE DEFAULT SYSDATE,
    PRIMARY KEY(cmt_no),
    CONSTRAINT c_comments_postno_fk FOREIGN KEY (post_no) 
    REFERENCES post(post_no),
    CONSTRAINT c_comments_userid_fk FOREIGN KEY (user_id) 
    REFERENCES users(user_id)
);

CREATE SEQUENCE seq_cmt_no
INCREMENT BY 1
START WITH 1;

insert into comments(cmt_no, post_no, user_id, cmt_content, cmt_date)
values (seq_cmt_no.nextval, '10', 'realso0', '잘하시네요', sysdate);
insert into comments(cmt_no, post_no, user_id, cmt_content, cmt_date)
values (seq_cmt_no.nextval, '10', 'realso0', '잘하시네요1', sysdate);
insert into comments(cmt_no, post_no, user_id, cmt_content, cmt_date)
values (seq_cmt_no.nextval, '10', 'realso0', '잘하시네요2', sysdate);
insert into comments(cmt_no, post_no, user_id, cmt_content, cmt_date)
values (seq_cmt_no.nextval, '10', 'realso0', '잘하시네요3', sysdate);
insert into comments(cmt_no, post_no, user_id, cmt_content, cmt_date)
values (seq_cmt_no.nextval, '10', 'realso0', '잘하시네요4', sysdate);
insert into comments(cmt_no, post_no, user_id, cmt_content, cmt_date)
values (seq_cmt_no.nextval, '10', 'realso0', '잘하시네요5', sysdate);
insert into comments(cmt_no, post_no, user_id, cmt_content, cmt_date)
values (seq_cmt_no.nextval, '10', 'realso0', '잘하시네요6', sysdate);
insert into comments(cmt_no, post_no, user_id, cmt_content, cmt_date)
values (seq_cmt_no.nextval, '8', 'realso0', '잘하시네요7', sysdate);
insert into comments(cmt_no, post_no, user_id, cmt_content, cmt_date)
values (seq_cmt_no.nextval, '8', 'realso0', '잘하시네요8', sysdate);
insert into comments(cmt_no, post_no, user_id, cmt_content, cmt_date)
values (seq_cmt_no.nextval, '10', 'realso0', '잘하시네요9', sysdate);
insert into comments(cmt_no, post_no, user_id, cmt_content, cmt_date)
values (seq_cmt_no.nextval, '10', 'realso0', '잘하시네요10', sysdate);
insert into comments(cmt_no, post_no, user_id, cmt_content, cmt_date)
values (seq_cmt_no.nextval, '10', 'realso0', '잘하시네요11', sysdate);
insert into comments(cmt_no, post_no, user_id, cmt_content, cmt_date)
values (seq_cmt_no.nextval, '10', 'realso0', '잘하시네요12', sysdate);

delete from comments
where user_id='realso0';

select *
from comments;

CREATE TABLE scrap (
    post_no NUMBER(10) not null,
    user_id VARCHAR2(20) not null,
    scrap_date    DATE DEFAULT SYSDATE,
    CONSTRAINT c_scrap_postno_fk FOREIGN KEY (post_no) 
    REFERENCES post(post_no),
    CONSTRAINT c_scrap_userid_fk FOREIGN KEY (user_id) 
    REFERENCES users(user_id)
);

select sc.post_no,
        user_id,
        scrap_date,
        post_title,
        post_soi_cnt,
        post_cmt_cnt,
        post_hit_cnt,
        writer_id
from scrap sc, post po
where sc.post_no=po.post_no 
and user_id='realso1';

select sc.post_no postNo,
        			user_id userId,
        			scrap_date scrapDate,
        			post_title postDate,
        			post_soi_cnt postSoiCnt,
        			post_cmt_cnt postCmtCnt,
        			post_hit_cnt postHitCnt,
        			writer_id writerId
			from scrap sc, post po
			where sc.post_no=po.post_no
			and user_id='realso1';
            
select *
from comments;

commit;
rollback;

select *
from users
where user_nickname='administer';

select *
from users;


CREATE TABLE qna (
    qna_no NUMBER(30) not null,
    qna_title VARCHAR2(100) not null,
    qna_content VARCHAR2(2000) not null,
    reg_date DATE default sysdate,
    user_id VARCHAR2(20) not null,
    qna_hit_cnt NUMBER DEFAULT 0,
    PRIMARY KEY(qna_no),
    CONSTRAINT c_qna_fk FOREIGN KEY (user_id)
    REFERENCES users(user_id)
);


CREATE SEQUENCE seq_qna_no
INCREMENT BY 1
START WITH 1;

select *
from qna;

commit;

SELECT rn, 
					qna_no qnaNo, 
					qna_title qnaTitle, 
					qna_hit_cnt qnaHitCnt, 
					to_char(reg_date, 'YYYY-MM-DD HH:MI') regDate, 
					user_id userId,
					user_nickname userNickname
			FROM(SELECT ROWNUM rn, 
						qna_no, 
						qna_title, 
						qna_hit_cnt, 
						reg_date, 
						user_id,
						user_nickname
     			 FROM(SELECT qna_no, 
     			 			qna_title, 
     			 			qna_hit_cnt, 
     			 			qn.reg_date, 
     			 			qn.user_id,
     			 			us.user_nickname
          			  FROM qna qn, users us
          			  WHERE qn.user_id=us.user_id
          		 	  ORDER BY qna_no desc) o) t
			WHERE rn > 1
			AND rn <= 10;
            
INSERT INTO qna
VALUES (seq_qna_no.nextval, 'sd23434f', '12', sysdate, 'realso2', 0);
INSERT INTO qna
VALUES (seq_qna_no.nextval, 'sd12323f', '67890', sysdate, 'realso2', 0);
INSERT INTO qna
VALUES (seq_qna_no.nextval, 'sdfasfafdf', '67890', sysdate, 'realso2', 0);
INSERT INTO qna
VALUES (seq_qna_no.nextval, 'sdfsafsfsfasfsdf', '67890', sysdate, 'realso2', 0);

insert into qna (qna_no, qna_title, qna_content, reg_date, user_id, qna_hit_cnt)
(select seq_qna_no.nextval, qna_title, qna_content, reg_date, user_id, qna_hit_cnt from qna);

commit;

