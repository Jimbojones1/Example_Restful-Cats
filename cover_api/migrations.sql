

CREATE DATABASE covers;

\c covers

CREATE TABLE songcovers(id SERIAL PRIMARY KEY, originalArtist varchar(255), coverArtist varchar(255), song varchar(255));
