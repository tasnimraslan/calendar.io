CREATE DATABASE calendario;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    CONSTRAINT users_pk PRIMARY KEY (id)
);

CREATE TABLE labels (
    user_id INT UNSIGNED NOT NULL,
    name VARCHAR(30),
    color VARCHAR(6),
    CONSTRAINT labels_pk PRIMARY KEY (user_id, name),
    CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE events (
    user_id INT UNSIGNED NOT NULL,
    name VARCHAR(50),
    description VARCHAR(255),
    start_date TIMESTAMP,
    end_date TIMESTAMP,
    event_period INT, -- expressed in minutos
    CONSTRAINT events_pk PRIMARY KEY (user_id, name),
    CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE labels_events (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED,
    label_name VARCHAR(50),
    event_name VARCHAR(50),
    CONSTRAINT labels_events_pk PRIMARY KEY (id),
    CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT label_name_fk FOREIGN KEY (label_name) REFERENCES labels(name),
    CONSTRAINT event_name_fk FOREIGN KEY (event_name) REFERENCES events(name)
)


