SELECT * FROM ticket;

INSERT INTO customer(
    first_name,
    last_name,
    age,
    email,
    premium
)

VALUES(
    'Ben',
    'Wyatt',
    35,
    'ben@wyatt.com',
    true
),(
    'Leslie',
    'Knope',
    35,
    'leslie@knope.com',
    true
),(
    'Andy',
    'Dwyer',
    29,
    'andy@dwyer.com',
    false
);

INSERT INTO staff(
    first_name,
    last_name
)

VALUES(
    'Ron',
    'Swanson'
),(
    'April',
    'Ludgate'
),(
    'Jerry',
    'Gergich'
);

INSERT INTO movie(
    movie_title,
    director,
    movie_description,
    duration
)

VALUES(
    'Parks and Rec',
    'Amy Poehler',
    'Leslie Knope, a midlevel bureaucrat in an Indiana Parks and Rec Dept',
    40
);

INSERT INTO ticket(
    movie_id,
    customer_id,
    staff_id,
    seat,
    theatre,
    price,
    ticket_date
)

VALUES(
    1,
    3,
    2,
    14,
    9,
    12.99,
    '2022-07-11'
);