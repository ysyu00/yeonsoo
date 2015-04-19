CREATE TABLE book (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	title TEXT,
	author TEXT,
	publisher TEXT,
	category TEXT
);

CREATE TABLE borrowing (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	books INTEGER REFERENCES book(id),
	borrowdate DATE,
	returndate DATE
);

CREATE TABLE borrower (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	cardnumber INTEGER REFERENCES borrowing(id),
	name TEXT,
	birthdate DATE,
	address TEXT,
	phone INTEGER
);

