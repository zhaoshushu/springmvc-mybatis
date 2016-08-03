--���ݿ��ʼ���ű�
--�������ݿ�
CREATE DATABASE seckill;
--ʹ�����ݿ�
use seckill;
--������ɱ����
CREATE TABLE seckill(
'seckill_id' bigint NOT NULL AUTO_INCREMENT COMMENT'��Ʒ���id',
'name' varchar NOT NULL COMMENT'��Ʒ����',
'number' int NOT NULL COMMENT'�������',
'start_time' timestamp NOT NULL COMMENT'��ɱ����ʱ��',
'end_time' timestamp NOT NULL COMMENT'��ɱ����ʱ��',
'create_time' timestamp NOT NULL CURRENT_TIMESTAMP COMMENT'����ʱ��',
PRIMARY KEY(seckill_id),
key idx_start_time(start_time),
key idx_end_time(end_time),
key idx_create_time(create_time),
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='��ɱ����';

--��ʼ������
insert into 
    seckill(name,number,start_time,end_time)
values
	('1000Ԫ��ɱƻ��',100,'2016-8-1 00:00:00','2016-8-2 00:00:00'),
	('500Ԫ��ɱ�ڿ�',200,'2016-8-1 00:00:00','2016-8-2 00:00:00');	
--��ɱ�ɹ���ϸ��

--�û���¼��֤��ص���Ϣ	
create table success_killed(
'seckill_id' bigint NOT NULL COMMENT'��ɱ��Ʒid',
'user_phone' bigint NOT NULL COMMENT'�û��ֻ���',
'state' tinyint NOT NULL DEFAULT -1 COMMENT'״̬��ʶ��-1����Ч  0���ɹ�  1���Ѹ���',
'create_time' timestamp NOT NULL COMMENT'����ʱ��',
PRIMARY KEY(seckill_id,user_phone),
key idx_create_time(create_time)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ɱ�ɹ���ϸ��';
--�������ݿ����̨
mysql -uroot -p0102

