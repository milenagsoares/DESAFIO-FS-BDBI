/* Lógico_1: */

CREATE TABLE Medico (
    MedicoID INT, PK PRIMARY KEY,
    Nome VARCHAR,
    Especialidade VARCHAR,
    Telefone INTEGER,
    Email VARCHAR,
    DepartamentoID INT, FK
);

CREATE TABLE Departamento (
    DepartamentoID INT, PK PRIMARY KEY,
    Nome VARCHAR,
    Localizacao VARCHAR
);

CREATE TABLE Consulta (
    ConsultaID INT, PK PRIMARY KEY,
    PacienteID INT, FK,
    MedicoID INT, FK,
    DataConsulta DATETIME,
    Diagnostico TEXT,
    Observacoes TEXT
);

CREATE TABLE Tratamento (
    TratamentoID INT, PK PRIMARY KEY,
    Descricao VARCHAR,
    Custo DECIMAL,
    DuracaoDias INTEGER
);

CREATE TABLE Prescricao_Paciente (
    PrescricaoID INT, PK,
    ConsultaID INT, FK,
    Medicamento VARCHAR,
    Dosagem VARCHAR,
    PacienteID INT, PK,
    Nome VARCHAR,
    DataNascimento DATETIME,
    PRIMARY KEY (PrescricaoID, PacienteID)
);

CREATE TABLE Realiza (
);

CREATE TABLE Realiza (
);

CREATE TABLE alocado_a (
);

CREATE TABLE Realiza (
);

CREATE TABLE Inclui (
);
 
ALTER TABLE Medico ADD CONSTRAINT FK_Medico_2
    FOREIGN KEY (DepartamentoID???)
    REFERENCES ??? (???);
 
ALTER TABLE Consulta ADD CONSTRAINT FK_Consulta_1
    FOREIGN KEY (MedicoID???, PacienteID???)
    REFERENCES ??? (???);
 
ALTER TABLE Prescricao_Paciente ADD CONSTRAINT FK_Prescricao_Paciente_2
    FOREIGN KEY (ConsultaID???)
    REFERENCES ??? (???);