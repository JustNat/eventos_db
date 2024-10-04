CREATE TABLE evento(
id SERIAL PRIMARY KEY,
nome VARCHAR(50) NOT NULL);

CREATE TABLE atividade(
id SERIAL PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
evento INT NOT NULL,
CONSTRAINT evento_fk
FOREIGN KEY(evento)
REFERENCES evento(id));

CREATE TABLE usuario(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(60)
);

CREATE TABLE usuario_atividade(
    usuario INT NOT NULL,
    atividade INT NOT NULL,
    PRIMARY KEY (usuario, atividade)
);

CREATE TABLE usuario_evento(
    usuario INT NOT NULL,
    evento INT NOT NULL,
    PRIMARY KEY (usuario, evento)
);

ALTER TABLE usuario_atividade
    ADD CONSTRAINT fk_usuario FOREIGN KEY (usuario) REFERENCES usuario (id),
    ADD CONSTRAINT fk_atividade FOREIGN KEY (atividade) REFERENCES atividade (id);
 ALTER TABLE usuario_atividade
    ADD CONSTRAINT fk_usuario FOREIGN KEY (usuario) REFERENCES usuario (id),
    ADD CONSTRAINT fk_atividade FOREIGN KEY (atividade) REFERENCES atividade (id);

INSERT INTO evento(nome)
VALUES("Forró pé de serra")
VALUES("Invernada")
VALUES("Eisenbar")
VALUES("Casa do Gustavo");

INSERT INTO usuario(nome, email)
VALUES("Gustavo", "gustavinhogames@gmail.com")
VALUES("Gabriel", "gabriel@outlook.com")
VALUES("Jeziel", "jeizinhodograu@gmail.com");

INSERT INTO atividade(nome, evento)
VALUES("Dançar", 1)
VALUES("Cantar forró", 1)
VALUES("Pular fogueira", 1)
VALUES("Jantar", 2)
VALUES("Dançar música de gaúcho", 2)
VALUES("Pular", 2)
VALUES("Ser preso", 3)
VALUES("Beber", 3)
VALUES("Fumar", 3)
VALUES("Jogar", 4)
VALUES("Ser mecânico", 4);

INSERT INTO usuario_evento(usuario, evento)
VALUES(2, 1)
VALUES(2, 3)
VALUES(1, 3)
VALUES(1, 2)
VALUES(3, 1)
VALUES(3, 3)
VALUES(3, 4);

INSERT INTO usuario_atividade(usuario, atividade)
VALUES()
