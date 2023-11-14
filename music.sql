-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL,
  artists TEXT[] NOT NULL,
  album TEXT NOT NULL,
  producers TEXT[] NOT NULL
);

INSERT INTO songs
  (artists, title, album, release_date, producers, duration_in_seconds)
VALUES
  ('{"Hanson"}','MMMBop', 'Middle of Nowhere', '04-15-1997','{"Dust Brothers", "Stephen Lironi"}', 238),
  ('{"Queen"}','Bohemian Rhapsody', 'A Night at the Opera','10-31-1975', '{"Roy Thomas Baker"}', 355),
  ('{"Mariah Cary", "Boyz II Men"}','One Sweet Day', 'Daydream','11-14-1995', '{"Walter Afanasieff"}', 282),
  ('{"Lady Gaga", "Bradley Cooper"}','Shallow', 'A Star Is Born','09-27-2018', '{"Benjamin Rice"}', 216),
  ('{"Nickelback"}','How You Remind Me', 'Silver Side Up', '08-21-2001','{"Rick Parashar"}', 223),
  ('{"Jay Z", "Alicia Keys"}','New York State of Mind',  'The Blueprint 3', '10-20-2009', '{"Al Shux"}', 276),
  ('{"Katy Perry", "Juicy J"}','Dark Horse', 'Prism','12-17-2013', '{"Max Martin", "Cirkut"}', 215),
  ('{"Maroon 5", "Christina Aguilera"}','Moves Like Jagger','Hands All Over', '06-21-2011',  '{"Shellback", "Benny Blanco"}', 201),
  ('{"Avril Lavigne"}','Complicated', 'Let Go','05-14-2002', '{"The Matrix"}', 244),
  ('{"Destiny''s Child"}','Say My Name', 'The Writing''s on the Wall', '11-07-1999', '{"Darkchild"}', 240);
