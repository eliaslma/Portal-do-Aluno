INSERT INTO DEPARTAMENTO(codigo,nome,responsavel) 
            VALUES (1, 'DACOM','Lúcio Geronimo Valentin'),
                   (2, 'DACOC','Marcelo Rodrigo Carreira'),
                   (3, 'DAAEQ','Stephani Caroline Beneti'),
                   (4, 'DAAMB','Eudes Jose Arantes​'),
                   (5, 'DABIC','Jose Hilario Delconte Ferreira'),
                   (6, 'DAELN','Marcio Rodrigues da Cunha'),
                   (7, 'DAHUM','Emilio Gonzalez'),
                   (8, 'DAMAT','Adilandri Mercio Lobeiro'),
                   (9, 'DAQUI','Daniela Aline Barancelli​'),
                   (10,'DAFIS','Oscar Rodrigues dos Santos');
                   
INSERT INTO CURSO(id,nome,turno,cod_depto)
			VALUES(50,'Ciência da Computação','Integral',1),
				(81,'Tecnologia Em Alimentos',' Noite',3),
				(30,'Engenharia Ambiental','integral',4),
				(43,'Engenharia Civil','integral',2),
				(63,'Engenharia De Alimentos','integral',3),
				(44,'Engenharia Eletrônica','integral',6),
                        (75,'Engenharia Química','integral',3),
                        (76,'Licenciatura Em Química','integral',9),
                        #cursos de outro de campus
                        (138,'Engenharia De Software','integral',1),
                        (143,'Engenharia De Computação','integral',1);
                  
INSERT INTO ALUNO(RA, nome, matriculado_em, ingresso) 
			VALUES(4180063, 'Joao Tiago', 50, '2013-10-13'), 
				(6749958, 'Óscar Borja', 81, '2014-09-14'),
                        (6151840, 'Eduardo Arthur', 30, '2010-12-15'),
                        (5222557, 'Alessandra Isabella', 43, '2016-06-16'),
                        (4579561, 'Maria Eduarda', 63, '2013-08-14'),
                        (9891440, 'Manuela Isis', 44, '2020-11-25'),
                        (1325389, 'Enrico Lorenzo', 75, '2021-10-24'),
                        (5158987, 'Fernando Pedro', 76, '2022-09-13'),
                        (9394804, 'Sophia Luana', 138, '2019-07-22'),
                        (4490615, 'Jéssica Fabiana', 143, '2017-06-18');

INSERT INTO DISCIPLINA(codigo, nome, carga_horaria)
			VALUES (1, 'Calculo Diferencial E Integral 1',90),
                         (2, 'Comunicação Linguistica', 30),
                         (3, 'Ética, Profissão E Cidadania',30),
                         (4, 'Geometria Analítica E Álgebra Linear',90),
                         (5, 'Introdução A Ciencia Da Computação',45),
                         (6, 'Logica Matematica',60),
                         (7, 'Fisica 3',75),
                         (8, 'Libras 1',30),
                         (9, 'Liderança E Gerenciamento',30),
                         (10,'Probabilidade E Estatística',60);

INSERT INTO CURSO_POSSUI_DISCIPLINA(curso_id, disciplina_codigo, tipo) 
			VALUES (50,1,'Obrigatorio'),
				 (43,2,'Obrigatorio'),
                         (50,3,'Obrigatorio'),
                         (50,5,'Obrigatorio'),
                         (30,4,'Obrigatorio'),
                         (50,6,'Obrigatorio'),
                         (75,7,'Obrigatorio'),
                         (50,8,'Optativa'),
                         (63,10,'Obrigatorio'),
                         (50,9,'Optativa');
                   
INSERT INTO MATRIZ_CURRICULAR(id,CH_OBG,CH_OPT)
			VALUES(50,3205,450),
				(81,2530,420),
                        (30,4150,270),
                        (43,4180,270),
                        (63,3835,390),
                        (44,3970,390),
                        (75,3550,270),
                        (76,3080,120),
                        (138,2972,269),
                        (143,3685,330);
                  

INSERT INTO PREREQ(nome_disciplina1, nome_disciplina2)
			VALUES(4,7),
				(5,10);
                  
INSERT INTO PROFESSOR(nome,cod_depto,leciona_disc)
			VALUES('Angela Mognon',8,1),
                        ('Alex Sandro De Medeiros',7,2),
                        ('Narci Nogueira Da Silva Professor ',1,3),
                        ('Erika Patricia Dantas De Oliveira Guazzi',8,4),
                        ('Eduardo Henrique Monteiro Pena',1,5),
                        ('Frank Helbert Borsato',8,6),
                        ('Cesar Vanderlei Deimling',10,7),
                        ('Ricardo Ernani Sander',7,8),
                        ('Edson Hirata',7,9),
				('Diogo Heron Macowski',10,8);

INSERT INTO HISTORICO_ATUAL(ra_aluno,periodo_atual,disc_cursadas)
			VALUES(4180063, 3, 1), 
			      (6749958, 4, 2),
                        (6151840, 4, 3),
                        (5222557, 6, 4),
                        (4579561, 8, 5),
                        (9891440, 9, 6),
                        (1325389, 10,7),
                        (5158987, 1, 8),
                        (9394804, 2, 9),
                        (4490615, 3, 10);

INSERT INTO TURMA(id, qtd_alunos, turno)
			VALUES (1, 44,'Integral'),
                         (2, 44, 'Noturno'),
                         (3, 22,'Integral'),
                         (4, 44,'Integral'),
                         (5, 44, 'Noturno'),
                         (6, 22,'Integral'),
                         (7, 44,'Integral'),
                         (8, 44, 'Noturno'),
                         (9, 22,'Integral'),
                         (10, 44,'Integral');

INSERT INTO ALUNO_CURSA_DISCIPLINA(codigo_disciplina, ra_aluno)
			VALUES (1, 4180063),
                         (2, 6749958),
                         (3, 6151840),
                         (4, 5222557),
                         (5, 4579561),
                         (6, 9891440),
                         (7, 1325389),
                         (8, 5158987),
                         (9, 9394804),
                         (10,4490615);
                   
INSERT INTO ALUNO_PERTENCE_TURMA(ra_aluno, id_turma) 
			VALUES(4180063, 1), 
				(6749958, 2),
                        (6151840, 3),
                        (5222557, 4),
                        (4579561, 5),
                        (9891440, 6),
                        (1325389, 7),
                        (5158987, 8),
                        (9394804, 9),
                        (4490615, 10);

INSERT INTO BOLETIM_ATUAL(ra_aluno, ano_periodo,disc_matriculadas)
			VALUES (4180063,2022,1),
                         (6749958,2019,2),
                         (6151840,2018,3),
                         (5222557,2022,4),
                         (4579561,2022,5),
                         (9891440,2017,6),
                         (1325389,2013,7),
                         (5158987,2015,8),
                         (9394804,2016,9),
                         (4490615,2017,10);