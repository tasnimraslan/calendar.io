CREATE DATABASE calendario;

USE calendario;

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
    CONSTRAINT labels_pk PRIMARY KEY (name, user_id),
    CONSTRAINT labels_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE events (
    user_id INT UNSIGNED NOT NULL,
    name VARCHAR(50),
    description VARCHAR(255),
    start_date TIMESTAMP NULL ,
    end_date TIMESTAMP NULL,
    event_period INT, -- expressed in minutes
    CONSTRAINT events_pk PRIMARY KEY (name, user_id),
    CONSTRAINT events_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE labels_events (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED,
    label_name VARCHAR(50),
    event_name VARCHAR(50),
    CONSTRAINT labels_events_pk PRIMARY KEY (id),
    CONSTRAINT labels_events_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT labels_events_label_name_fk FOREIGN KEY (label_name) REFERENCES labels(name),
    CONSTRAINT labels_events_event_name_fk FOREIGN KEY (event_name) REFERENCES events(name)
)


