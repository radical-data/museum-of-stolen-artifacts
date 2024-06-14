INSERT INTO holders (name, website_url, slug) VALUES
('Holder One', 'http://holderone.com', 'holder-one'),
('Holder Two', 'http://holdertwo.com', 'holder-two'),
('Holder Three', 'http://holderthree.com', 'holder-three');

INSERT INTO more_than_things (name, slug) VALUES
('Thing One', 'thing-one'),
('Thing Two', 'thing-two'),
('Thing Three', 'thing-three'),
('Thing Four', 'thing-four'),
('Thing Five', 'thing-five');

INSERT INTO holder_more_than_things (holder_id, more_than_things_id) VALUES
(1, 1), -- Holder One holds Thing One
(1, 2), -- Holder One holds Thing Two
(2, 3), -- Holder Two holds Thing Three
(3, 4), -- Holder Three holds Thing Four
(3, 5); -- Holder Three holds Thing Five