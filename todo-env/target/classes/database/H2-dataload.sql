/* load the records. */
INSERT INTO account(username, password, first_name, last_name) VALUES('demo', '{pbkdf2}1dd84f42a7a9a173f8f806d736d34939bed6a36e2948e8bfe88801ee5e6e61b815efc389d03165a4', 'Taro', 'Yamada'); 
INSERT INTO account(username, password, first_name, last_name) VALUES('demo2', '{pbkdf2}1dd84f42a7a9a173f8f806d736d34939bed6a36e2948e8bfe88801ee5e6e61b815efc389d03165a4', 'Hanako', 'Suzuki'); 
INSERT INTO account(username, password, first_name, last_name) VALUES('demo3', '{pbkdf2}1dd84f42a7a9a173f8f806d736d34939bed6a36e2948e8bfe88801ee5e6e61b815efc389d03165a4', 'Jiro', 'Tokyo'); 

commit;