CREATE TABLE holders (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    website_url VARCHAR(255)
);

CREATE TABLE more_than_things (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE holder_more_than_things (
    holder_id INT NOT NULL,
    more_than_things_id INT NOT NULL,
    PRIMARY KEY (holder_id, more_than_things_id),
    CONSTRAINT fk_holder
        FOREIGN KEY (holder_id) REFERENCES holders(id),
    CONSTRAINT fk_more_than_things
        FOREIGN KEY (more_than_things_id) REFERENCES more_than_things(id)
);