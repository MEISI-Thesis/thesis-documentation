CREATE TABLE User (
    uuid VARCHAR NOT NULL,
    role_uuid VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    phone_number VARCHAR NOT NULL,
    access_code VARCHAR NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    PRIMARY KEY (uuid),
    CONSTRAINT fk_role FOREIGN KEY (role_uuid) REFERENCES Role(uuid)
);

CREATE TABLE Role (
    uuid VARCHAR NOT NULL,
    designation VARCHAR NOT NULL

    PRIMARY KEY (uuid)
);

CREATE TABLE UserRole (
    user_uuid VARCHAR NOT NULL REFERENCES User(uuid)
    role_uuid VARCHAR NOT NULL REFERENCES Role(uuid)

    PRIMARY KEY (user_uuid, role_uuid)
);

CREATE TABLE Equipment (
    uuid VARCHAR NOT NULL,
    system_uuid VARCHAR NOT NULL,
    device_uuid VARCHAR NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    PRIMARY KEY (uuid),
    CONSTRAINT fk_system FOREIGN KEY (system_uuid) REFERENCES System(uuid),
    CONSTRAINT fk_device FOREIGN KEY (device_uuid) REFERENCES Device(uuid)
);

CREATE TABLE UserEquipment (
    user_uuid VARCHAR NOT NULL REFERENCES User(uuid)
    equipment_uuid VARCHAR NOT NULL REFERENCES Equipment(uuid)

    PRIMARY KEY (user_uuid, equipment_uuid)
);

CREATE TABLE System (
    uuid VARCHAR NOT NULL,
    designation VARCHAR NOT NULL,

    PRIMARY KEY (uuid)
);

CREATE TABLE Device (
    uuid VARCHAR NOT NULL,
    designation VARCHAR NOT NULL,

    PRIMARY KEY (uuid)
);

CREATE TABLE Connection (
    uuid VARCHAR NOT NULL,
    user_uuid VARCHAR NOT NULL,
    ownership_uuid VARCHAR NOT NULL,
    system_uuid VARCHAR NOT NULL,
    device_uuid VARCHAR NOT NULL,
    longitude VARCHAR NOT NULL,
    latitude VARCHAR NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    PRIMARY KEY (uuid)
    CONSTRAINT fk_user FOREIGN KEY (user_uuid) REFERENCES User(uuid)
    CONSTRAINT fk_ownership FOREIGN KEY (ownership_uuid) REFERENCES Ownership(uuid)
);

CREATE TABLE Address (
    uuid VARCHAR NOT NULL,
    longitude VARCHAR NOT NULL,
    latitude VARCHAR NOT NULL,
    street VARCHAR NOT NULL,
    city VARCHAR NOT NULL,
    country VARCHAR NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    PRIMARY KEY (uuid)
);

CREATE TABLE Device (
    uuid VARCHAR NOT NULL,
    designation VARCHAR NOT NULL,

    PRIMARY KEY (uuid)
);