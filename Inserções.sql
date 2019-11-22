
insert into agencia (id_agencia, nome_agencia, cidade)
values 	('0001', 'Agência Sobral', 'Sobral'),
		('0002', 'Agência Camocim', 'Camocim'),
		('0003', 'Agência São Carlos', 'São Carlos'),
        ('0004', 'Agência Itapajé', 'Itapajé');

     
insert into funcionario (matricula,nome_completo,senha,sexo,cargo,salario,data_nasc,idade,tipo_logradouro,nome_logradouro,numero,bairro,CEP,cidade,estado,agencia_id_agencia)
values ('00001',"Guilherme","123345","M","Gerente",1500,19900707,29,"RUA","Sem Nome",'70','centro','66600000','Sobral','CE','0001'),
       ('00002',"Gabriele","123345","F","Gerente",1500,19900707,29,"RUA","Sem Nome",'169','centro','66600000','Sobral','CE','0001'),
       ('00003',"Guiliana","122245","F","Atendente",1500,19900707,29,"RUA","Sem Nome",'269','centro','66600450','Sobral','CE','0001'),
       ('00004',"Mara","123355","F","Atendente",1500,19900707,29,"RUA","Sem Nome",'569','centro','66600430','Sobral','CE','0001'),
       ('00005',"Rafaela","123345","F","Caixa",1500,19900707,29,"RUA","Sem Nome",'769','centro','66612000','Sobral','CE','0001'),
       ('00006',"Moacir","123375","M","Caixa",1500,19900707,29,"RUA","Sem Nome",'869','centro','66656600','Sobral','CE','0001');


insert into funcionario (matricula,nome_completo,senha,sexo,cargo,salario,data_nasc,idade,tipo_logradouro,nome_logradouro,numero,bairro,CEP,cidade,estado,agencia_id_agencia)
values ('00007',"João ","123345","M","Gerente",1500,19900707,29,"RUA","Sem Nome",'70','centro','66600000','Camocim','CE','0002'),
       ('00008',"Claudia","123345","F","Gerente",1500,19900707,29,"RUA","Sem Nome",'169','centro','66600000','Camocim','CE','0002'),
       ('00009',"Berenice","122245","F","Atendente",1500,19900707,29,"RUA","Sem Nome",'269','centro','66600450','Camocim','CE','0002'),
       ('00010',"Maria","123355","F","Atendente",1500,19900707,29,"RUA","Sem Nome",'569','centro','66600430','Camocim','CE','0002'),
       ('00011',"Victoria","123345","F","Caixa",1500,19900707,29,"RUA","Sem Nome",'769','centro','66612000','Camocim','CE','0002'),
       ('00012',"Marcelo","123375","M","Caixa",1500,19900707,29,"RUA","Sem Nome",'869','centro','66656600','Camocim','CE','0002');


insert into funcionario (matricula,nome_completo,senha,sexo,cargo,salario,data_nasc,idade,tipo_logradouro,nome_logradouro,numero,bairro,CEP,cidade,estado,agencia_id_agencia)
values ('00013',"Mateus ","123345","M","Gerente",1500,19900707,29,"RUA","Sem Nome",'70','centro','66600000','São Carlos','SP','0003'),
       ('00014',"Mariele","123345","F","Gerente",1500,19900707,29,"RUA","Sem Nome",'169','centro','66600000','São Carlos','SP','0003'),
       ('00015',"Mercia","122245","F","Atendente",1500,19900707,29,"RUA","Sem Nome",'269','centro','66600450','São Carlos','SP','0003'),
       ('00016',"Meiri","123355","F","Atendente",1500,19900707,29,"RUA","Sem Nome",'569','centro','66600430','São Carlos','SP','0003'),
       ('00017',"Vitoria","123345","F","Caixa",1500,19900707,29,"RUA","Sem Nome",'769','centro','66612000','São Carlos','SP','0003'),
       ('00018',"Marcelo","123375","M","Caixa",1500,19900707,29,"RUA","Sem Nome",'869','centro','66656600','São Carlos','SP','0003');


insert into funcionario (matricula,nome_completo,senha,sexo,cargo,salario,data_nasc,idade,tipo_logradouro,nome_logradouro,numero,bairro,CEP,cidade,estado,agencia_id_agencia)
values ('00019',"Mateus ","123345","M","Gerente",1500,19900707,29,"RUA","Sem Nome",'70','centro','66600000','Itapajé','CE','0004'),
       ('00020',"Mariele","123345","F","Gerente",1500,19900707,29,"RUA","Sem Nome",'169','centro','66600000','Itapajé','CE','0004'),
       ('00021',"Mercia","122245","F","Atendente",1500,19900707,29,"RUA","Sem Nome",'269','centro','66600450','Itapajé','CE','0004'),
       ('00022',"Meiri","123355","F","Atendente",1500,19900707,29,"RUA","Sem Nome",'569','centro','66600430','Itapajé','CE','0004'),
       ('00023',"Vitoria","123345","F","Caixa",1500,19900707,29,"RUA","Sem Nome",'769','centro','66612000','Itapajé','CE','0004'),
       ('00024',"Marcelo","123375","M","Caixa",1500,19900707,29,"RUA","Sem Nome",'869','centro','66656600','Itapajé','CE','0004');


insert into dependente 
values 	('Saulo',20020718,17,'Pai','00003'),
		('Sandra',20010818,18,'Pai','00001'),
		('Carol',20130908,6,'Mae','00014'),
		('Marcelo',20121118,7,'Pai','00014'),
		('Julia', 20010918, 18, 'Filho(a)', '00020'),
		('Pietro',20140718,5,'Cônjuge','00009'),
		('Sergio',20041028,15,'Pai','00017'),
		('Sandra',20010818,18,'Pai','00009'),
		('Rui',20110328,8,'Mae','00013'),
		('Caique',20190818,0,'Pai','00023');
	  


insert into cliente (cpf,nome_completo,RG,orgao_emissor,UF_emissor,data_nasc,idade,tipo_logradouro,nome_logradouro,numero,bairro,CEP,cidade,estado)
values 	('09835623120',"Cleo",'324569872','SSP','CE',19910707,29,'RUA','no Name','32','centro','66600770','Itapaje','CE'),
		('09845123120',"Ivania",'324569272','SSP','CE',19910609,29,'RUA','no Name','54','alto','66600770','Itapaje','CE'),
		('09848623120',"Cleide",'324162872','SSP','CE',19910504,29,'RUA','no Name','124','centro','66600770','Itapaje','CE')  ;
        
insert into cliente (cpf,nome_completo,RG,orgao_emissor,UF_emissor,data_nasc,idade,tipo_logradouro,nome_logradouro,numero,bairro,CEP,cidade,estado)
values ("09835213120","Jackson Dias","312369872","SSP","CE",19910707,28,"RUA","no Name",'132','centro','666007700','Itapaje','CE'),
	   ("09845563120","Igor Silva","373069272","SSP","CE",19910429,28,"RUA","no Name",'504','alto','666007700','Itapaje','CE'),
	   ("09848903120","Cleide Oliveira","334562872","SSP","CE",19910410,28,"RUA","no Name",'174','São Francisco 2','666997700','Itapaje','CE'),
	   ("19842908920","Clailton Santos","334652927","SSP","CE",19921010,27,"RUA","no Name",'714','Antonio Bezerra','776887700','Fortaleza','CE'),
       ("19842904520","Suzana Paz","334652927","SSP","CE",19920810,27,"RUA","no Name",'417','Antonio Bezerra','776887700','Fortaleza','CE'),
       ("19842903120","Lucia Ponte","334652827","SSP","CE",19920510,27,"RUA","no Name",'712','Aldeota','776887700','Fortaleza','CE'),
       ("45842903120","Gabriel Santos","334652927","SSP","CE",19921010,27,"RUA","no Name",'714','Antonio Bezerra','776887700','Fortaleza','CE'),
       ("19842903000","Lucas Vasconcelos","444652927","SSP","CE",19920810,27,"RUA","no Name",'233','Antonio Bezerra','776886600','Fortaleza','CE'),
       ("19840923120","Angela Silva","334652920","SSP","CE",19921020,27,"RUA","no Name",'234','Antonio Bezerra','776887700','Fortaleza','CE'),
       ("19842903100","Carlos Silvestre","224652927","SSP","CE",19931010,26,"RUA","no Name",'141','Centro','336887700','Sobral','CE'),
       ("19849203100","Julia Santiago","244652927","SSP","CE",19930908,26,"RUA","no Name",'133','Centro','336887700','Sobral','CE'),
       ("18942903100","Carmen Costa","224652928","SSP","CE",19930110,26,"RUA","no Name",'777','Centro','334887700','Sobral','CE'),
       ("91842903100","Helena Costa","224652827","SSP","CE",19930604,26,"RUA","no Name",'567','Centro','336887700','Sobral','CE'),
       ("33342903100","Julia Medeiros","224662927","SSP","CE",19931026,26,"RUA","no Name",'541','Centro','336887700','Sobral','CE'),
       ("19782903100","Carlos Calvacante","223252927","SSP","CE",19931010,26,"RUA","no Name",'141','Centro','336887700','Sobral','CE');
       








-- 213 Itapaje, 342 Sobral, 456 Fortaleza --
-- gerente fortaleza 252 457,gerente itapaje 324 556, gerente Sobral 557 562-- 
insert into conta (id_conta,saldo,senha,cliente_cpf,gerente_matricula,agencia_id_agencia)
values (7980,0.0,333232,19842903120,252,456),
	   (7250,0.0,333232,19840923120,252,456),
	   (7260,0.0,433232,19842903000,252,456),
       (7270,0.0,454232,19842904520,457,456),
	   (7280,0.0,454212,19842908920,457,456),
       (7300,0.0,452342,2513456789,457,456),
	   (7310,0.0,552342,43567123409,457,456),
       (7321,0.0,552333,45842903120,457,456),
	   (7322,0.0,562333,"09835213120",324,213),
	   (7323,0.0,552433,"09835623120",324,213),
	   (7324,0.0,552403,"09845123120",324,213),
        (7325,0.0,552404,"09845563120",324,213),
        (7326,0.0,522404,"09845623120",556,213),
        (7327,0.0,572404,"09845623120",556,213),
        (7328,0.0,579404,"09848903120",556,213),
        (7329,0.0,570404,"2513457786",556,213),
        (7340,0.0,530504,18942903100,557,342),
        (7341,0.0,530604,19782903100,557,342),
        (7342,0.0,520604,19842903100,557,342),
        (7343,0.0,524604,19849203100,557,342),
        (7344,0.0,514604,2513457706,562,342),
        (7345,0.0,584604,33342903100,562,342),
        (7346,0.0,584504,34567823421,562,342),
        (7347,0.0,594504,91842903100,562,342); 


insert into email 
values ("Angela@gmail.com",19840923120),
       ("Angel@gmail.com",19840923120),
       ("Lucas@gmail.com",19842903000),
       ("Lucia@gmail.com",19842903120),
       ("Suzana@gmail.com",19842904520),
       ("Clailton@gmail.com",19842908920),
       ("Roni@gmail.com",2513456789),
       ("Valdo@gmail.com",2513457789),
       ("Simas@gmail.com",43567123409),
       ("Gabriel@gmail.com",45842903120),
       ("Carmen@gmail.com",18942903100),
       ("Carlos@gmail.com",19782903100),
       ("CarlosSilva@gmail.com",19842903100),
       ("Julia@gmail.com",19849203100),
       ("Gustavo@gmail.com",2513457706),
       ("JuliaMedeiro@gmail.com",33342903100),
       ("Icaro@gmail.com",34567823421),
       ("Helena@gmail.com",91842903100),
       ("Jackson@gmail.com","09835213120"),
       ("Valdomiro@gmail.com","09835623120"),
       ("Vitor@gmail.com","09845123120"),
       ("Igor@gmail.com","09845563120"),
       ("Vania@gmail.com","09848623120"),
       ("Valeska@gmail.com","09848623120"),
       ("Cleide@gmail.com","09848903120"),
       ("Tomas@gmail.com","2513457786");

insert into telefone
values ("85999999999",19840923120),
       ("85888888888",19840923120),
       ("85969041230",19840923120),
       ("85980046790",19842903000),
       ("85969045467",19842903120),
       ("85978042001",19842904520),
       ("85969041150",19842908920),
	   ("85969041101",2513456789),
       ("85941141101",2513457789),
       ("88885041101",43567123409),
       ("88963041101",45842903120),
       ("88992141101",18942903100),
       ("88861141101",19782903100),
       ("88941151101",19842903100),
       ("88881141101",19849203100),
       ("88941141106",2513457706),
       ("88941341101",33342903100),
       ("88941141101",34567823421),
       ("88941141111",91842903100),
       ("85929111111","09835213120"),
       ("85921111111","09835623120"),
       ("85914444444","09845123120"),
       ("85889999999","09845563120"),
       ("85881111111","09848623120"),
       ("85962222222","09848623120"),
       ("85983333333","09848903120"),
       ("85929292929","2513457786");
       
insert into corrente
values (789,20191125),
       (7250,20191125),
       (7260,20191125),
       (7322,20191125),
       (7323,20191125),
       (7324,20191125),
       (7340,20191125),
       (7341,20191125),
       (7342,20191125);
	
insert into especial
values (789,20191125),
       (7250,20191125),
       (7260,20191125),
       (7322,20191125),
       (7323,20191125),
       (7324,20191125),
       (7340,20191125),
       (7341,20191125),
       (7342,20191125);    
       
insert into poupanca
values (7310,0.35),
       (7321,0.35),
       (7328,0.35),
       (7329,0.35),
       (7346,0.35),
       (7347,0.35),
       (7980,0.35);
       

      
update conta set cliente_cpf=2513456789 where id_conta=789 ;

update cliente set estado='CE' where cpf='' ;

update agencia set cidade = "Sobral" where id_agencia = "342";

SELECT * FROM null_bank.cliente where cidade ="Fortaleza";

select matricula,nome_completo from funcionario where  cidade= 'Sobral' ;

select * from agencia;

select * from conta;
select cpf,nome_completo from cliente where cidade="Itapaje";
select * from dependente;
select * from telefone;
