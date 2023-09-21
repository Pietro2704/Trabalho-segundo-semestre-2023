CREATE TABLE Endereco (
    id_cliente INT NOT NULL,
    cep VARCHAR(10),
    numero_Rua VARCHAR(10),
    complemento VARCHAR(50),
    dist VARCHAR(50),
    PRIMARY KEY (id_cliente),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id)
);


CREATE TABLE Cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    tel VARCHAR(15),
    email VARCHAR(100),
    aniversario DATE
);


CREATE TABLE Pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_servico INT,
    Data DATE,
    Hora TIME,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id),
    FOREIGN KEY (id_servico) REFERENCES Servico(id_servico)
);


CREATE TABLE Servico (
    id_servico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    tempo INT,
    valor DECIMAL(10, 2)
);
