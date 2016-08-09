delete from TB_ORDER_PRODUCT;
delete from TB_ORDER;
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||ord_seq.nextval,
        'lee',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||ord_seq.currval,
			'PRD000000001',1);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||ord_seq.nextval,
        'kim',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||ord_seq.currval,
			'PRD000000001',5);

insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||ord_seq.nextval,
        'lee',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||ord_seq.currval,
			'PRD000000002',1);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||ord_seq.nextval,
        'kim',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||ord_seq.currval,
			'PRD000000002',1);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||ord_seq.nextval,
        'kang',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||ord_seq.currval,
			'PRD000000002',1);	
			
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||ord_seq.nextval,
        'lee',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||ord_seq.currval,
			'PRD000000003',1);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||ord_seq.nextval,
        'kim',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||ord_seq.currval,
			'PRD000000003',10);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||ord_seq.nextval,
        'kang',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||ord_seq.currval,
			'PRD000000004',2);	
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||ord_seq.nextval,
        'lee',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||ord_seq.currval,
			'PRD000000005',6);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||ord_seq.nextval,
        'kim',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||ord_seq.currval,
			'PRD000000005',1);
			
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||ord_seq.nextval,
        'kang',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||ord_seq.currval,
			'PRD000000006',20);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||ord_seq.nextval,
        'kang',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||ord_seq.currval,
			'PRD000000007',4);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||ord_seq.nextval,
        'kang',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||ord_seq.currval,
			'PRD000000008',11);	
			
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||ord_seq.nextval,
        'kang',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||ord_seq.currval,
			'PRD000000009',15);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||ord_seq.nextval,
        'kang',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||ord_seq.currval,
			'PRD000000010',1);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||ord_seq.nextval,
        'jang1',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||ord_seq.currval,
			'PRD000000011',1);
commit;

select count(*) from TB_ORDER;
select count(*) from TB_ORDER_PRODUCT;


select prd_no,sum(qty)
from TB_ORDER_PRODUCT
group by prd_no
order by sum(qty) desc;

select rownum, mytop.prd_no,
      rank() over(order by mytop.gty desc) myrank
from (select prd_no,sum(qty) gty
      from TB_ORDER_PRODUCT
      group by prd_no
      order by gty desc) mytop
where rownum<=8;
      
create view topProduct
as
select mytop.prd_no,gty
from (select prd_no,sum(qty) gty
      from TB_ORDER_PRODUCT
      group by prd_no
      order by gty desc) mytop
where rownum<=8;


insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||ord_seq.nextval,
        'kim',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||ord_seq.currval,
			'PRD000000022',100);

			
select * from topProduct;

select * 
from TB_PRODUCT
where prd_no in (select * from topproduct)


view를 생성할때 gty 포함시켜서 작성
select * 
from TB_PRODUCT pro,topproduct2 mytop
where pro.prd_no in (select prd_no from topproduct2) and
      pro.prd_no = mytop.prd_no
order by  mytop.gty desc
























