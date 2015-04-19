CREATE TABLE music (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	title INTEGER
);

CREATE TABLE playbills (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	musics INTEGER REFERENCES music(id),
	date DATE,
	place TEXT,
	playedby TEXT
);

CREATE TABLE reviews (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	musics INTEGER REFERENCES playbills(id),
	author TEXT,
	summary TEXT,
	rating INTEGER
);

