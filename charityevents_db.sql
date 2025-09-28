CREATE DATABASE charityevents_db;
USE charityevents_db;

CREATE TABLE Organisations (
	OrganisationID int AUTO_INCREMENT PRIMARY KEY,
    OrganisationName varchar(255) NOT NULL,
    Description varchar(255),
    Website varchar(255),
    Phone varchar(15)
);

CREATE TABLE Categories (
	CategoryID int AUTO_INCREMENT PRIMARY KEY,
    CategoryName varchar(50) NOT NULL
);

CREATE TABLE Events (
    EventID int AUTO_INCREMENT PRIMARY KEY,
    EventName varchar(255) NOT NULL,
    Description varchar(255),
    EventDate date NOT NULL,
    Location varchar(255) NOT NULL,
    OrganisationID int NOT NULL,
    CategoryID int NOT NULL,
    FOREIGN KEY (OrganisationID) REFERENCES Organisations(OrganisationID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

INSERT INTO Organisations (OrganisationName, Description, Website, Phone) VALUES
('Helping Hands', 'Provides meals and shelter for the homeless', 'https://helpinghands.org', '(07) 5523 7890'),
('Green Earth', 'Environmental conservation initiatives', 'https://greenearth.org', '(07) 5524 4411'),
('Hope for Kids', 'Supports education programs for underprivileged children', 'https://hopeforkids.org', '(07) 5523 1234');

INSERT INTO Categories (CategoryName) VALUES
('Fun Run'),
('Charity Gala'),
('Auction'),
('Community Fair');

INSERT INTO Events (EventName, Description, EventDate, Location, OrganisationID, CategoryID) VALUES
('5K Fun Run', 'Join us for a fun run to raise funds for local shelters.', '2025-10-10', 'Coolangatta', 1, 1),
('Annual Charity Gala', 'An elegant evening to support conservation efforts.', '2025-11-15', 'Gold Coast Convention Centre', 2, 2),
('Art Auction', 'Bid on local artwork and support kids education.', '2025-12-01', 'HOTA', 3, 3),
('Spring Community Fair', 'Family-friendly fair with stalls and live music.', '2025-09-30', 'Burleigh Heads Public School', 1, 4),
('Beach Clean-Up', 'Volunteer event to clean Gold Coast beaches.', '2025-10-20', 'Surfers Paradise Beach', 2, 1),
('Charity Fashion Show', 'Showcasing local designers for a cause.', '2025-12-05', 'Pacific Fair Shopping Centre', 1, 2),
('Food Drive Gala Dinner', 'Help us fundraise for food packages.', '2025-11-30', 'JW Marriott Gold Coast', 1, 2),
('Vintage Auction', 'Collectible items auction for fundraising.', '2025-12-10', 'Gold Coast Convention Centre', 3, 3);

SELECT * FROM Events;
SELECT * FROM Categories;

UPDATE Events SET EventDate = '2025-9-9' WHERE EventName = 'Vintage Auction'; 