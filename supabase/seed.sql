INSERT INTO holders (name, website_url) VALUES
('Holder One', 'http://holderone.com'),
('Holder Two', 'http://holdertwo.com'),
('Holder Three', 'http://holderthree.com');

INSERT INTO more_than_things (name) VALUES
('Thing One'),
('Thing Two'),
('Thing Three'),
('Thing Four'),
('Thing Five');

INSERT INTO holder_more_than_things (holder_id, more_than_things_id) VALUES
(1, 1), -- Holder One holds Thing One
(1, 2), -- Holder One holds Thing Two
(2, 3), -- Holder Two holds Thing Three
(3, 4), -- Holder Three holds Thing Four
(3, 5); -- Holder Three holds Thing Five