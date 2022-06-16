
# CREATE DATABASE portaldoaluno;

DROP TABLE IF EXISTS ALUNO_CURSA_DISCIPLINA, ALUNO_PERTENCE_TURMA, BOLETIM_ATUAL,
					 HISTORICO_ATUAL, ALUNO, MATRIZ_CURRICULAR, CURSO_POSSUI_DISCIPLINA,
					 CURSO, PROFESSOR, DEPARTAMENTO, PREREQ, DISCIPLINA, TURMA;

CREATE TABLE DEPARTAMENTO(
    codigo INTEGER ,
    nome VARCHAR(100),
    responsavel VARCHAR(100),
    PRIMARY KEY(codigo)
);

CREATE TABLE CURSO(
   id INTEGER,
   nome VARCHAR(100),
   turno VARCHAR(100),
   cod_depto INTEGER,
   FOREIGN KEY(cod_depto) REFERENCES DEPARTAMENTO(codigo), 
   PRIMARY KEY (id)
);

CREATE TABLE DISCIPLINA(  
	 codigo INTEGER,   
     nome VARCHAR(100),  
     carga_horaria INTEGER,   
     PRIMARY KEY (codigo) 
);

CREATE TABLE ALUNO(    
    RA INTEGER,    
    nome VARCHAR(100),
    matriculado_em INTEGER,
    ingresso DATE,
    PRIMARY KEY(RA),
    FOREIGN KEY (matriculado_em) REFERENCES CURSO(id)
);	


CREATE TABLE CURSO_POSSUI_DISCIPLINA(
    curso_id INTEGER,
    disciplina_codigo INTEGER,
    tipo ENUM('Optativa', 'Obrigatorio'),
    FOREIGN KEY(curso_id) REFERENCES CURSO(id), 
    FOREIGN KEY(disciplina_codigo) REFERENCES DISCIPLINA(codigo), 
    PRIMARY KEY (curso_id, disciplina_codigo)
);

CREATE TABLE MATRIZ_CURRICULAR(
	id INTEGER,
    CH_OBG INTEGER,
    CH_OPT INTEGER,
    FOREIGN KEY (id) REFERENCES CURSO(id)
);


CREATE TABLE ALUNO_CURSA_DISCIPLINA(
	codigo_disciplina INTEGER, 
	ra_aluno INTEGER,
    FOREIGN KEY (codigo_disciplina) REFERENCES DISCIPLINA(codigo),
    FOREIGN KEY (ra_aluno) REFERENCES ALUNO(RA),
    PRIMARY KEY (codigo_disciplina, ra_aluno)
);


CREATE TABLE TURMA(
	id INTEGER,
	qtd_alunos INTEGER,
	turno VARCHAR(50),
    PRIMARY KEY(id)
);

CREATE TABLE ALUNO_PERTENCE_TURMA(
	ra_aluno INTEGER,
    id_turma INTEGER,
    FOREIGN KEY (ra_aluno) REFERENCES ALUNO(RA),
    FOREIGN KEY (id_turma) REFERENCES TURMA(id),
    PRIMARY KEY(ra_aluno, id_turma)
);

CREATE TABLE PROFESSOR(
	nome VARCHAR(100),
    cod_depto INTEGER,
    leciona_disc INTEGER,
	FOREIGN KEY(cod_depto) REFERENCES DEPARTAMENTO(codigo),
    FOREIGN KEY(leciona_disc) REFERENCES DISCIPLINA(codigo),
    PRIMARY KEY (nome)
);


CREATE TABLE PREREQ(
   nome_disciplina1 INTEGER,   
   nome_disciplina2 INTEGER,  
   FOREIGN KEY(nome_disciplina1) REFERENCES DISCIPLINA(codigo), 
   FOREIGN KEY(nome_disciplina2) REFERENCES DISCIPLINA(codigo), 
   PRIMARY KEY(nome_disciplina1, nome_disciplina2)
);

CREATE TABLE BOLETIM_ATUAL(
	ra_aluno INTEGER,
    ano_periodo INTEGER, # exemplo: 2022/1 - 2022/2
    disc_matriculadas INTEGER,
    FOREIGN KEY (ra_aluno) REFERENCES ALUNO(RA),
    FOREIGN KEY (disc_matriculadas) REFERENCES DISCIPLINA(codigo),
    PRIMARY KEY(ra_aluno)
);

CREATE TABLE HISTORICO_ATUAL(
	ra_aluno INTEGER,
    periodo_atual INTEGER, # exemplo: 1,2,3
    disc_cursadas INTEGER,
    FOREIGN KEY (ra_aluno) REFERENCES ALUNO(RA),
    FOREIGN KEY (disc_cursadas) REFERENCES DISCIPLINA(codigo),
    PRIMARY KEY(ra_aluno)

);



