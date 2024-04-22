CREATE TABLE elections (
  id VARCHAR(40) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (id));

CREATE TABLE election_candidate (
  election_id VARCHAR(40) NOT NULL,
  candidate_id VARCHAR(40) NOT NULL,
  votes INTEGER DEFAULT 0,
PRIMARY KEY (election_id, candidate_id));

-- mockaroo

INSERT INTO candidates (id, photo, given_name, family_name, email, phone, job_title) VALUES ('1b984ec6-fb68-4e55-ab8f-60de97f0fc34', 'http://dummyimage.com/158x100.png/cc0000/ffffff', 'Georgine', 'Westmacott', 'gwestmacott0@usatoday.com', '383-331-9716', 'Sales Representative'),
('ef402fd2-b292-4d07-9fe8-42dfb2a5e430', 'http://dummyimage.com/112x100.png/5fa2dd/ffffff', 'Percy', 'Tugman', 'ptugman1@scientificamerican.com', '471-323-5488', 'Systems Administrator IV'),
('29c2d849-9a6c-45d2-a8e7-007fa392429d', 'http://dummyimage.com/143x100.png/ff4444/ffffff', 'Jaynell', 'Ferriman', 'jferriman2@google.ca', '497-212-7832', 'Accountant I'),
('d9ffc619-1691-4056-a80e-e2f12e7b5988', 'http://dummyimage.com/196x100.png/ff4444/ffffff', 'Gunner', 'Krikorian', 'gkrikorian3@sun.com', '542-978-0883', 'Information Systems Manager'),
('befb3261-5c79-45aa-9f1b-fbb5fd4d8af4', 'http://dummyimage.com/195x100.png/5fa2dd/ffffff', 'Vernen', 'Kolodziej', 'vkolodziej4@cam.ac.uk', '787-427-6236', 'Programmer Analyst IV');
