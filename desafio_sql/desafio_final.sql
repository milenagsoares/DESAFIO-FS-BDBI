create database ClinicaMedica;
use ClinicaMedica;

create table Paciente(
Nome varchar(255),
DataNascimento DATE,
Genero char(1),
Telefone varchar(15),
Email varchar(255),
Endereco varchar(255)
);

create table Departamento(
DepartamentoID INT auto_increment primary key,
Nome varchar(255),
Localizacao VARCHAR(255)
);

create table Medico(
MedicoID int auto_increment primary key, 
Nome varchar(255),
Especialidade varchar(255),
Telefone varchar(15),
Email varchar(255),
DepartamentoID INT,
FOREIGN KEY (DepartamentoID) references Departamento(DepartamentoID)
);

create table Consulta(
ConsultaID INT auto_increment PRIMARY KEY,
PacienteID INT,
MedicoID INT, 
DataConsulta DATETIME, 
Diagnostico TEXT, 
Observacoes TEXT, 
FOREIGN KEY (PacienteID) REFERENCES Paciente(PacienteID),
FOREIGN KEY (MedicoID) REFERENCES Medico(MedicoID)
);

CREATE TABLE Tratamento (
TratamentoID INT AUTO_INCREMENT PRIMARY KEY,
Descricao VARCHAR(255),
Custo DECIMAL(10,2),
DuracaoDias INT
);

CREATE TABLE Prescricao (
PrescricaoID INT AUTO_INCREMENT PRIMARY KEY,
ConsultaID INT,
Medicamento VARCHAR(255),
Dosagem VARCHAR(255),
Frequencia VARCHAR(255),
DuracaoDias INT,
FOREIGN KEY (ConsultaID) REFERENCES Consulta(ConsultaID)
);

alter table Consulta add column StatusPagamento VARCHAR(50);

INSERT INTO Paciente (Nome, DataNascimento, Genero, Telefone, Email, Endereco) VALUES 
('Carlos Silva', '1985-02-15', 'M', '(11) 91234-5678', 'carlos.silva@example.com', 'Rua A, 123, Cidade X'),
('Maria Oliveira', '1990-07-30', 'F', '(11) 99876-5432', 'maria.oliveira@example.com', 'Av. B, 456, Cidade Y'),
('João Pereira', '1975-11-22', 'M', '(11) 93456-7890', 'joao.pereira@example.com', 'Rua C, 789, Cidade Z');

INSERT INTO Departamento (Nome, Localizacao) VALUES 
('Cardiologia', 'Bloco A'),
('Dermatologia', 'Bloco B'),
('Ortopedia', 'Bloco C');

INSERT INTO Medico (Nome, Especialidade, Telefone, Email, DepartamentoID) VALUES 
('Dra. Ana Costa', 'Cardiologia', '(11) 91234-1111', 'ana.costa@clinicamedica.com', 1),
('Dr. Pedro Ramos', 'Dermatologia', '(11) 92345-2222', 'pedro.ramos@clinicamedica.com', 2),
('Dra. Laura Fernandes', 'Ortopedia', '(11) 93456-3333', 'laura.fernandes@clinicamedica.com', 3);

INSERT INTO Consulta (ConsultaID, MedicoID, DataConsulta, Diagnostico, Observacoes, StatusPagamento) VALUES 
(1, 1, '2024-08-15 10:00:00', 'Hipertensão', 'Paciente deve monitorar a pressão arterial regularmente.', 'Pago'),
(2, 2, '2024-08-16 11:00:00', 'Dermatite Atópica', 'Recomenda-se uso de cremes hidratantes e anti-histamínicos.', 'Pendente'),
(3, 3, '2024-08-17 09:00:00', 'Fratura no Braço', 'Imobilização do braço e retorno em duas semanas.', 'Pago');

INSERT INTO Tratamento (Descricao, Custo, DuracaoDias) VALUES 
('Fisioterapia Pós-fratura', 2000.00, 30),
('Tratamento para Hipertensão', 150.00, 90),
('Terapia para Dermatite', 100.00, 15);

INSERT INTO Prescricao (PrescricaoID, Medicamento, Dosagem, Frequencia, DuracaoDias) VALUES 
(1, 'Losartana', '50mg', '1 vez ao dia', 30),
(2, 'Cremes Hidratantes', 'Aplicar na pele', '2 vezes ao dia', 15),
(3, 'Paracetamol', '500mg', 'A cada 6 horas', 5);

SELECT * FROM Paciente;
SELECT * FROM Medico;
SELECT * FROM Departamento;
SELECT * FROM Consulta;
SELECT * FROM Tratamento;
SELECT * FROM Prescricao;
