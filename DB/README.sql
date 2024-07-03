/*Tables creation and Data insert*/  

/* All Tables Creation  */
    /* iPhone table */
    CREATE TABLE iphone (
        iphone_id SERIAL PRIMARY KEY,
        model_name VARCHAR(255) NOT NULL
    );

    /*Memory Size table*/
    CREATE TABLE memory_size (
        memory_id SERIAL PRIMARY KEY,
        iphone_id INT REFERENCES iphone(iphone_id),
        memory_size VARCHAR(50) NOT NULL
    );

    /*Price Table*/
    CREATE TABLE price (
        price_id SERIAL PRIMARY KEY,
        iphone_id INT REFERENCES iphone(iphone_id),
        memory_id INT REFERENCES memory_size(memory_id),
        price DECIMAL(10, 2) NOT NULL
    );

    /*Color Table*/
    CREATE TABLE color (
        color_id SERIAL PRIMARY KEY,
        iphone_id INT REFERENCES iphone(iphone_id),
        color_name VARCHAR(50) NOT NULL
    );

    /*Image Table*/
    CREATE TABLE image (
        image_id SERIAL PRIMARY KEY,
        color_id INT REFERENCES color(color_id),
        image_1 VARCHAR(255) NOT NULL,
        image_2 VARCHAR(255) NOT NULL,
        image_3 VARCHAR(255) NOT NULL
    );

    /*Post table*/
    CREATE TABLE post (
        id SERIAL PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        city VARCHAR(255) NOT NULL,
        number VARCHAR(20) NOT NULL,
        model VARCHAR(255) NOT NULL,
        memory VARCHAR(50) NOT NULL,
        color VARCHAR(50) NOT NULL,
        condition VARCHAR(50) NOT NULL,
        details TEXT NOT NULL,
        price MONEY NOT NULL
    );

    /*iPhone_image table*/
    CREATE TABLE iphone_board (
        model_name VARCHAR(255),
        memory_size VARCHAR(255),
        color_name VARCHAR(255),
        image_1 VARCHAR(255),
        image_2 VARCHAR(255),
        image_3 VARCHAR(255)
    );

/* All Tables DATA Insert  */
    /* iPhone table insert */
        INSERT INTO iphone (model_name)
            VALUES
                ('iPhone X'),
                ('iPhone XR'),
                ('iPhone XS'),
                ('iPhone XS MAX'),
                ('iPhone 11'),
                ('iPhone 11 Pro'),
                ('iPhone 11 Pro Max'),
                ('iPhone 12'),
                ('iPhone 12 mini'),
                ('iPhone 12 Pro'),
                ('iPhone 12 Pro Max'),
                ('iPhone 13'),
                ('iPhone 13 mini'),
                ('iPhone 13 Pro'),
                ('iPhone 13 Pro Max'),
                ('iPhone 14'),
                ('iPhone 14 Plus'),
                ('iPhone 14 Pro'),
                ('iPhone 14 Pro Max');

    /* Memory size table insert */
        INSERT INTO memory_size (iphone_id, memory_size)
            VALUES 
            X
                (1, '64GB'),
                (1, '256GB'),
            XR
                (2, '64GB'),
                (2, '128GB'),
                (2, '256GB'),
            XS
                (3, '64GB'),
                (3, '256GB'),
                (3, '512GB'),
            XS MAX
                (4, '64GB'),
                (4, '256GB'),
                (4, '512GB'),
            11
                (5, '64GB'),
                (5, '128GB'),
                (5, '256GB'),
            11 Pro
                (6, '64GB'),
                (6, '256GB'),
                (6, '512GB'),
            11 Pro Max
                (7, '64GB'),
                (7, '256GB'),
                (7, '512GB'),
            12
                (8, '64GB'),
                (8, '128GB'),
                (8, '256GB'),
            12 mini
                (9, '64GB'),
                (9, '128GB'),
                (9, '256GB'),
            12 Pro
                (10, '128GB'),
                (10, '256GB'),
                (10, '512GB'),
            12 Pro Max
                (11, '128GB'),
                (11, '256GB'),
                (11, '512GB'),
            13
                (12, '128GB'),
                (12, '256GB'),
                (12, '512GB'),
            13 mini
                (13, '128GB'),
                (13, '256GB'),
                (13, '512GB'),
            13 Pro
                (14, '128GB'),
                (14, '256GB'),
                (14, '512GB'),
                (14, '1000GB'),
            13 Pro Max
                (15, '128GB'),
                (15, '256GB'),
                (15, '512GB'),
                (15, '1000GB'),
            14
                (16, '128GB'),
                (16, '256GB'),
                (16, '512GB'),
            14 Plus
                (17, '128GB'),
                (17, '256GB'),
                (17, '512GB'),
            14 Pro
                (18, '128GB'),
                (18, '256GB'),
                (18, '512GB'),
                (18, '1000GB'),
            14 Pro Max
                (19, '128GB'),
                (19, '256GB'),
                (19, '512GB'),
                (19, '1000GB');

    /* Price table insert */
        INSERT INTO price (iphone_id, memory_id, price) 
        VALUES
        X
            (1, 1, 710),
            (1, 2, 790),
        XR
            (2, 3, 750),
            (2, 4, 870),
            (2, 5, 1080),
        XS
            (3, 6, 790),
            (3, 7, 950),
            (3, 8, 1200),
        XS MAX
            (4, 9, 950),
            (4, 10, 1250),
            (4, 11, 1370),
        11
            (5, 12, 950),
            (5, 13, 1160),
            (5, 14, 1200),    
        11 Pro
            (6, 15, 1120),
            (6, 16, 1250),
            (6, 17, 1740),    
        11 Pro Max
            (7, 18, 1370),
            (7, 19, 1490),
            (7, 20, 2200),    
        12
            (8, 21, 1120),
            (8, 22, 1290),
            (8, 23, 1490),    
        12 mini
            (9, 24, 1040),
            (9, 25, 1120),
            (9, 26, 1290),   
        12 Pro
            (10, 27, 1660),
            (10, 28, 1830),
            (10, 29, 2200),  
        12 Pro Max
            (11, 30, 1910),
            (11, 31, 1950),
            (11, 32, 2370),  
        13
            (12, 33, 1790),
            (12, 34, 2200),
            (12, 35, 2860),  
        13 mini
            (13, 36, 1580),
            (13, 37, 1910),
            (13, 38, 2570),  
        13 Pro
            (14, 39, 2780),
            (14, 40, 2990),
            (14, 41, 3200),  
            (14, 42, 3610),  
        13 Pro Max
            (15, 43, 2570),
            (15, 44, 2780),
            (15, 45, 3070),  
            (15, 46, 3490),  
        14
            (16, 47, 3110),
            (16, 48, 3320),  
            (16, 49, 3530),  
        14 Plus
            (17, 50, 2950),
            (17, 51, 3360),  
            (17, 52, 3780),  
        14 Pro
            (18, 53, 3490),
            (18, 54, 3900),
            (18, 55, 4320),  
            (18, 56, 4730),  
        14 Pro Max
            (19, 57, 4320),
            (19, 58, 4730),
            (19, 59, 5150),  
            (19, 60, 5560);

    /* Color table insert */
        INSERT INTO color (color_id, iphone_id, color_name) 
            VALUES 
            X
                (1, 1, 'space-grey'),
                (2, 1, 'silver'),
            XR
                (3, 2, 'black'),
                (4, 2, 'red'),
                (5, 2, 'white'),
                (6, 2, 'blue'),
                (7, 2, 'yellow'),
                (8, 2, 'coral'),
            XS
                (9, 3, 'space-grey'),
                (10, 3, 'silver'),
                (11, 3, 'gold'),
            XS MAX
                (12, 4, 'space-grey'),
                (13, 4, 'silver'),
                (14, 4, 'gold'),
            11
                (15, 5, 'red'),
                (16, 5, 'white'),
                (17, 5, 'black'),
                (18, 5, 'green'),
                (19, 5, 'yellow'),
                (20, 5, 'purple'),
            11 Pro
                (21, 6, 'space-grey'),
                (22, 6, 'silver'),
                (23, 6, 'gold'),
                (24, 6, 'midnight-green'),
            11 Pro Max
                (25, 7, 'space-grey'),
                (26, 7, 'silver'),
                (27, 7, 'gold'),
                (28, 7, 'midnight-green'),
            12
                (29, 8, 'purple'),
                (30, 8, 'blue'),
                (31, 8, 'green'),
                (32, 8, 'red'),
                (33, 8, 'white'),
                (34, 8, 'black'),
            12 mini
                (35, 9, 'purple'),
                (36, 9, 'blue'),
                (37, 9, 'green'),
                (38, 9, 'red'),
                (39, 9, 'white'),
                (40, 9, 'black'),
            12 Pro
                (41, 10, 'pacific-blue'),
                (42, 10, 'gold'),
                (43, 10, 'graphite'),
                (44, 10, 'silver'),
            12 Pro Max
                (45, 11, 'pacific-blue'),
                (46, 11, 'gold'),
                (47, 11, 'graphite'),
                (48, 11, 'silver'),
            13
                (49, 12, 'green'),
                (50, 12, 'pink'),
                (51, 12, 'blue'),
                (52, 12, 'midnight'),
                (53, 12, 'starlight'),
                (54, 12, 'red'),
            13 mini
                (55, 13, 'green'),
                (56, 13, 'pink'),
                (57, 13, 'blue'),
                (58, 13, 'midnight'),
                (59, 13, 'starlight'),
                (60, 13, 'red'),
            13 Pro
                (61, 14, 'alpine-green'),
                (62, 14, 'silver'),
                (63, 14, 'gold'),
                (64, 14, 'graphite'),
                (65, 14, 'sierra-blue'),
            13 Pro Max
                (66, 15, 'alpine-green'),
                (67, 15, 'silver'),
                (68, 15, 'gold'),
                (69, 15, 'graphite'),
                (70, 15, 'sierra-blue'),
            14
                (71, 16, 'blue'),
                (72, 16, 'purple'),
                (73, 16, 'yellow'),
                (74, 16, 'midnight'),
                (75, 16, 'starlight'),
                (76, 16, 'red'),
            14 Plus
                (77, 17, 'blue'),
                (78, 17, 'purple'),
                (79, 17, 'yellow'),
                (80, 17, 'midnight'),
                (81, 17, 'starlight'),
                (82, 17, 'red'),
            14 Plus
                (83, 18, 'deep-purple'),
                (84, 18, 'silver'),
                (85, 18, 'gold'),
                (86, 18, 'space-bllack'),
            14 Pro Max
                (87, 19, 'deep-purple'),
                (88, 19, 'silver'),
                (89, 19, 'gold'),
                (90, 19, 'space-bllack');

    /* Insert Hebrew colors  */
        UPDATE color
        SET color_he = 'אפור-חלל'
        WHERE color_name = 'space-grey';

        UPDATE color
        SET color_he = 'כסף'
        WHERE color_name = 'silver';

        UPDATE color
        SET color_he = 'קורל'
        WHERE color_name = 'coral';

        UPDATE color
        SET color_he = 'צהוב'
        WHERE color_name = 'yellow';

        UPDATE color
        SET color_he = 'כחול'
        WHERE color_name = 'blue';

        UPDATE color
        SET color_he = 'לבן'
        WHERE color_name = 'white';

        UPDATE color
        SET color_he = 'אדום'
        WHERE color_name = 'red';

        UPDATE color
        SET color_he = 'שחור'
        WHERE color_name = 'black';

        UPDATE color
        SET color_he = 'זהב'
        WHERE color_name = 'gold';

        UPDATE color
        SET color_he = 'סגול'
        WHERE color_name = 'purple';

        UPDATE color
        SET color_he = 'ירוק'
        WHERE color_name = 'green';

        UPDATE color
        SET color_he = 'ירוק-חצות'
        WHERE color_name = 'midnight-green';

        UPDATE color
        SET color_he = 'כחול-פסיפיק'
        WHERE color_name = 'pacific-blue';

        UPDATE color
        SET color_he = 'גרפיט'
        WHERE color_name = 'graphite';

        UPDATE color
        SET color_he = 'אור-כוכבים'
        WHERE color_name = 'starlight';

        UPDATE color
        SET color_he = 'ירוק-אלפיני'
        WHERE color_name = 'alpine-green';

        UPDATE color
        SET color_he = 'כחול-סיירה'
        WHERE color_name = 'sierra-blue';

        UPDATE color
        SET color_he = 'סגול-עמוק'
        WHERE color_name = 'deep-purple';

        UPDATE color
        SET color_he = 'שחור-חלל'
        WHERE color_name = 'space-black';

        UPDATE color
        SET color_he = 'ורוד'
        WHERE color_name = 'pink';

        UPDATE color
        SET color_he = 'חצות'
        WHERE color_name = 'midnight';

        UPDATE color
        SET color_he = 'שחור-חלל'
        WHERE color_name = 'space-black';

    /* Image pathes */
        X
            /images/iphone-x/iphone-x-space-gray.jpg
            /images/iphone-x/iphone-x-space-gray-back.jpg
            /images/iphone-x/iphone-x-space-gray-front.jpg

            /images/iphone-x/iphone-x-silver.jpg
            /images/iphone-x/iphone-x-silver-back.jpg
            /images/iphone-x/iphone-x-silver-front.jpg

        XR
            /images/iphone-xr/iphone-xr-black.jpg
            /images/iphone-xr/iphone-xr-black-back.jpg
            /images/iphone-xr/iphone-xr-black-front.jpg

            /images/iphone-xr/iphone-xr-red.jpg
            /images/iphone-xr/iphone-xr-red-back.jpg
            /images/iphone-xr/iphone-xr-red-front.jpg

            /images/iphone-xr/iphone-xr-white.jpg
            /images/iphone-xr/iphone-xr-white-back.jpg
            /images/iphone-xr/iphone-xr-white-front.jpg

            /images/iphone-xr/iphone-xr-blue.jpg
            /images/iphone-xr/iphone-xr-blue-back.jpg
            /images/iphone-xr/iphone-xr-blue-front.jpg

            /images/iphone-xr/iphone-xr-yellow.jpg
            /images/iphone-xr/iphone-xr-yellow-back.jpg
            /images/iphone-xr/iphone-xr-yellow-front.jpg

            /images/iphone-xr/iphone-xr-coral.jpg
            /images/iphone-xr/iphone-xr-coral-back.jpg
            /images/iphone-xr/iphone-xr-coral-front.jpg

        XS
            /images/iphone-xs/iphone-xs-space-gray.jpg
            /images/iphone-xs/iphone-xs-space-gray-back.jpg
            /images/iphone-xs/iphone-xs-space-gray-front.jpg

            /images/iphone-xs/iphone-xs-silver.jpg
            /images/iphone-xs/iphone-xs-silver-back.jpg
            /images/iphone-xs/iphone-xs-silver-front.jpg

            /images/iphone-xs/iphone-xs-gold.jpg
            /images/iphone-xs/iphone-xs-gold-back.jpg
            /images/iphone-xs/iphone-xs-gold-front.jpg

        XS MAX
            /images/iphone-xs-max/iphone-xs-max-space-gray.jpg
            /images/iphone-xs-max/iphone-xs-max-space-gray-back.jpg
            /images/iphone-xs-max/iphone-xs-max-space-gray-front.jpg

            /images/iphone-xs-max/iphone-xs-max-silver.jpg
            /images/iphone-xs-max/iphone-xs-max-silver-back.jpg
            /images/iphone-xs-max/iphone-xs-max-silver-front.jpg

            /images/iphone-xs-max/iphone-xs-max-gold.jpg
            /images/iphone-xs-max/iphone-xs-max-gold-back.jpg
            /images/iphone-xs-max/iphone-xs-max-gold-front.jpg

        11
            /images/iphone-11/iphone-11-red.jpg
            /images/iphone-11/iphone-11-red-back.jpg
            /images/iphone-11/iphone-11-red-front.jpg

            /images/iphone-11/iphone-11-white.jpg
            /images/iphone-11/iphone-11-white-back.jpg
            /images/iphone-11/iphone-11-white-front.jpg

            /images/iphone-11/iphone-11-black.jpg
            /images/iphone-11/iphone-11-black-back.jpg
            /images/iphone-11/iphone-11-black-front.jpg

            /images/iphone-11/iphone-11-green.jpg
            /images/iphone-11/iphone-11-green-back.jpg
            /images/iphone-11/iphone-11-green-front.jpg

            /images/iphone-11/iphone-11-yellow.jpg
            /images/iphone-11/iphone-11-yellow-back.jpg
            /images/iphone-11/iphone-11-yellow-front.jpg

            /images/iphone-11/iphone-11-purple.jpg
            /images/iphone-11/iphone-11-purple-back.jpg
            /images/iphone-11/iphone-11-purple-front.jpg

        11 Pro
            /images/iphone-11-pro/iphone-11-pro-space-gray.jpg
            /images/iphone-11-pro/iphone-11-pro-space-gray-back.jpg
            /images/iphone-11-pro/iphone-11-pro-space-gray-front.jpg

            /images/iphone-11-pro/iphone-11-pro-silver.jpg
            /images/iphone-11-pro/iphone-11-pro-silver-back.jpg
            /images/iphone-11-pro/iphone-11-pro-silver-front.jpg

            /images/iphone-11-pro/iphone-11-pro-gold.jpg
            /images/iphone-11-pro/iphone-11-pro-gold-back.jpg
            /images/iphone-11-pro/iphone-11-pro-gold-front.jpg

            /images/iphone-11-pro/iphone-11-pro-midnight-green.jpg
            /images/iphone-11-pro/iphone-11-pro-midnight-green-back.jpg
            /images/iphone-11-pro/iphone-11-pro-midnight-green-front.jpg

        11 Pro Max
            /images/iphone-11-pro-max/iphone-11-pro-max-space-gray.jpg
            /images/iphone-11-pro-max/iphone-11-pro-max-space-gray-back.jpg
            /images/iphone-11-pro-max/iphone-11-pro-max-space-gray-front.jpg

            /images/iphone-11-pro-max/iphone-11-pro-max-silver.jpg
            /images/iphone-11-pro-max/iphone-11-pro-max-silver-back.jpg
            /images/iphone-11-pro-max/iphone-11-pro-max-silver-front.jpg

            /images/iphone-11-pro-max/iphone-11-pro-max-gold.jpg
            /images/iphone-11-pro-max/iphone-11-pro-max-gold-back.jpg
            /images/iphone-11-pro-max/iphone-11-pro-max-gold-front.jpg

            /images/iphone-11-pro-max/iphone-11-pro-max-midnight-green.jpg
            /images/iphone-11-pro-max/iphone-11-pro-max-midnight-green-back.jpg
            /images/iphone-11-pro-max/iphone-11-pro-max-midnight-green-front.jpg

        12
            /images/iphone-12/iphone-12-purple.jpg
            /images/iphone-12/iphone-12-purple-back.jpg
            /images/iphone-12/iphone-12-purple-front.jpg

            /images/iphone-12/iphone-12-blue.jpg
            /images/iphone-12/iphone-12-blue-back.jpg
            /images/iphone-12/iphone-12-blue-front.jpg

            /images/iphone-12/iphone-12-green.jpg
            /images/iphone-12/iphone-12-green-back.jpg
            /images/iphone-12/iphone-12-green-front.jpg

            /images/iphone-12/iphone-12-red.jpg
            /images/iphone-12/iphone-12-red-back.jpg
            /images/iphone-12/iphone-12-red-front.jpg

            /images/iphone-12/iphone-12-white.jpg
            /images/iphone-12/iphone-12-white-back.jpg
            /images/iphone-12/iphone-12-white-front.jpg

            /images/iphone-12/iphone-12-black.jpg
            /images/iphone-12/iphone-12-black-back.jpg
            /images/iphone-12/iphone-12-black-front.jpg

            /images/iphone-12/iphone-12-purple.jpg
            /images/iphone-12/iphone-12-purple-back.jpg
            /images/iphone-12/iphone-12-purple-front.jpg

            /images/iphone-12/iphone-12-blue.jpg
            /images/iphone-12/iphone-12-blue-back.jpg
            /images/iphone-12/iphone-12-blue-front.jpg

            /images/iphone-12/iphone-12-green.jpg
            /images/iphone-12/iphone-12-green-back.jpg
            /images/iphone-12/iphone-12-green-front.jpg

            /images/iphone-12/iphone-12-red.jpg
            /images/iphone-12/iphone-12-red-back.jpg
            /images/iphone-12/iphone-12-red-front.jpg

            /images/iphone-12/iphone-12-white.jpg
            /images/iphone-12/iphone-12-white-back.jpg
            /images/iphone-12/iphone-12-white-front.jpg

            /images/iphone-12/iphone-12-black.jpg
            /images/iphone-12/iphone-12-black-back.jpg
            /images/iphone-12/iphone-12-black-front.jpg

        12 mini
            /images/iphone-12-mini/iphone-12-mini-purple.jpg
            /images/iphone-12-mini/iphone-12-mini-purple-back.jpg
            /images/iphone-12-mini/iphone-12-mini-purple-front.jpg

            /images/iphone-12-mini/iphone-12-mini-blue.jpg
            /images/iphone-12-mini/iphone-12-mini-blue-back.jpg
            /images/iphone-12-mini/iphone-12-mini-blue-front.jpg

            /images/iphone-12-mini/iphone-12-mini-green.jpg
            /images/iphone-12-mini/iphone-12-mini-green-back.jpg
            /images/iphone-12-mini/iphone-12-mini-green-front.jpg

            /images/iphone-12-mini/iphone-12-mini-red.jpg
            /images/iphone-12-mini/iphone-12-mini-red-back.jpg
            /images/iphone-12-mini/iphone-12-mini-red-front.jpg

            /images/iphone-12-mini/iphone-12-mini-white.jpg
            /images/iphone-12-mini/iphone-12-mini-white-back.jpg
            /images/iphone-12-mini/iphone-12-mini-white-front.jpg

            /images/iphone-12-mini/iphone-12-mini-black.jpg
            /images/iphone-12-mini/iphone-12-mini-black-back.jpg
            /images/iphone-12-mini/iphone-12-mini-black-front.jpg

        12 Pro
            /images/iphone-12-pro/iphone-12-pro-pacific-blue.jpg
            /images/iphone-12-pro/iphone-12-pro-pacific-blue-back.jpg
            /images/iphone-12-pro/iphone-12-pro-pacific-blue-front.jpg

            /images/iphone-12-pro/iphone-12-pro-gold.jpg
            /images/iphone-12-pro/iphone-12-pro-gold-back.jpg
            /images/iphone-12-pro/iphone-12-pro-gold-front.jpg

            /images/iphone-12-pro/iphone-12-pro-graphite.jpg
            /images/iphone-12-pro/iphone-12-pro-graphite-back.jpg
            /images/iphone-12-pro/iphone-12-pro-graphite-front.jpg

            /images/iphone-12-pro/iphone-12-pro-silver.jpg
            /images/iphone-12-pro/iphone-12-pro-silver-back.jpg
            /images/iphone-12-pro/iphone-12-pro-silver-front.jpg

        12 Pro Max
            /images/iphone-12-pro-max/iphone-12-pro-max-pacific-blue.jpg
            /images/iphone-12-pro-max/iphone-12-pro-max-pacific-blue-back.jpg
            /images/iphone-12-pro-max/iphone-12-pro-max-pacific-blue-front.jpg

            /images/iphone-12-pro-max/iphone-12-pro-max-gold.jpg
            /images/iphone-12-pro-max/iphone-12-pro-max-gold-back.jpg
            /images/iphone-12-pro-max/iphone-12-pro-max-gold-front.jpg

            /images/iphone-12-pro-max/iphone-12-pro-max-graphite.jpg
            /images/iphone-12-pro-max/iphone-12-pro-max-graphite-back.jpg
            /images/iphone-12-pro-max/iphone-12-pro-max-graphite-front.jpg

            /images/iphone-12-pro-max/iphone-12-pro-max-silver.jpg
            /images/iphone-12-pro-max/iphone-12-pro-max-silver-back.jpg
            /images/iphone-12-pro-max/iphone-12-pro-max-silver-front.jpg

        13
            /images/iphone-13/iphone-13-green.jpg
            /images/iphone-13/iphone-13-green-back.jpg
            /images/iphone-13/iphone-13-green-front.jpg

            /images/iphone-13/iphone-13-pink.jpg
            /images/iphone-13/iphone-13-pink-back.jpg
            /images/iphone-13/iphone-13-pink-front.jpg

            /images/iphone-13/iphone-13-blue.jpg
            /images/iphone-13/iphone-13-blue-back.jpg
            /images/iphone-13/iphone-13-blue-front.jpg

            /images/iphone-13/iphone-13-midnight.jpg
            /images/iphone-13/iphone-13-midnight-back.jpg
            /images/iphone-13/iphone-13-midnight-front.jpg

            /images/iphone-13/iphone-13-starlight.jpg
            /images/iphone-13/iphone-13-starlight-back.jpg
            /images/iphone-13/iphone-13-starlight-front.jpg

            /images/iphone-13/iphone-13-red.jpg
            /images/iphone-13/iphone-13-red-back.jpg
            /images/iphone-13/iphone-13-red-front.jpg

        13 mini
            /images/iphone-13-mini/iphone-13-mini-green.jpg
            /images/iphone-13-mini/iphone-13-mini-green-back.jpg
            /images/iphone-13-mini/iphone-13-mini-green-front.jpg

            /images/iphone-13-mini/iphone-13-mini-pink.jpg
            /images/iphone-13-mini/iphone-13-mini-pink-back.jpg
            /images/iphone-13-mini/iphone-13-mini-pink-front.jpg

            /images/iphone-13-mini/iphone-13-mini-blue.jpg
            /images/iphone-13-mini/iphone-13-mini-blue-back.jpg
            /images/iphone-13-mini/iphone-13-mini-blue-front.jpg

            /images/iphone-13-mini/iphone-13-mini-midnight.jpg
            /images/iphone-13-mini/iphone-13-mini-midnight-back.jpg
            /images/iphone-13-mini/iphone-13-mini-midnight-front.jpg

            /images/iphone-13-mini/iphone-13-mini-starlight.jpg
            /images/iphone-13-mini/iphone-13-mini-starlight-back.jpg
            /images/iphone-13-mini/iphone-13-mini-starlight-front.jpg

            /images/iphone-13-mini/iphone-13-mini-red.jpg
            /images/iphone-13-mini/iphone-13-mini-red-back.jpg
            /images/iphone-13-mini/iphone-13-mini-red-front.jpg

        13 Pro
            /images/iphone-13-pro/iphone-13-pro-alpine-green.jpg
            /images/iphone-13-pro/iphone-13-pro-alpine-green-back.jpg
            /images/iphone-13-pro/iphone-13-pro-alpine-green-front.jpg

            /images/iphone-13-pro/iphone-13-pro-silver.jpg
            /images/iphone-13-pro/iphone-13-pro-silver-back.jpg
            /images/iphone-13-pro/iphone-13-pro-silver-front.jpg

            /images/iphone-13-pro/iphone-13-pro-gold.jpg
            /images/iphone-13-pro/iphone-13-pro-gold-back.jpg
            /images/iphone-13-pro/iphone-13-pro-gold-front.jpg

            /images/iphone-13-pro/iphone-13-pro-graphite.jpg
            /images/iphone-13-pro/iphone-13-pro-graphite-back.jpg
            /images/iphone-13-pro/iphone-13-pro-graphite-front.jpg

            /images/iphone-13-pro/iphone-13-pro-sierra-blue.jpg
            /images/iphone-13-pro/iphone-13-pro-sierra-blue-back.jpg
            /images/iphone-13-pro/iphone-13-pro-sierra-blue-front.jpg

        13 Pro Max
            /images/iphone-13-pro-max/iphone-13-pro-max-alpine-green.jpg
            /images/iphone-13-pro-max/iphone-13-pro-max-alpine-green-back.jpg
            /images/iphone-13-pro-max/iphone-13-pro-max-alpine-green-front.jpg

            /images/iphone-13-pro-max/iphone-13-pro-max-silver.jpg
            /images/iphone-13-pro-max/iphone-13-pro-max-silver-back.jpg
            /images/iphone-13-pro-max/iphone-13-pro-max-silver-front.jpg

            /images/iphone-13-pro-max/iphone-13-pro-max-gold.jpg
            /images/iphone-13-pro-max/iphone-13-pro-max-gold-back.jpg
            /images/iphone-13-pro-max/iphone-13-pro-max-gold-front.jpg

            /images/iphone-13-pro-max/iphone-13-pro-max-graphite.jpg
            /images/iphone-13-pro-max/iphone-13-pro-max-graphite-back.jpg
            /images/iphone-13-pro-max/iphone-13-pro-max-graphite-front.jpg

            /images/iphone-13-pro-max/iphone-13-pro-max-sierra-blue.jpg
            /images/iphone-13-pro-max/iphone-13-pro-max-sierra-blue-back.jpg
            /images/iphone-13-pro-max/iphone-13-pro-max-sierra-blue-front.jpg

        14
            /images/iphone-14/iphone-14-blue.jpg
            /images/iphone-14/iphone-14-blue-back.jpg
            /images/iphone-14/iphone-14-blue-front.jpg

            /images/iphone-14/iphone-14-purple.jpg
            /images/iphone-14/iphone-14-purple-back.jpg
            /images/iphone-14/iphone-14-purple-front.jpg

            /images/iphone-14/iphone-14-yellow.jpg
            /images/iphone-14/iphone-14-yellow-back.jpg
            /images/iphone-14/iphone-14-yellow-front.jpg

            /images/iphone-14/iphone-14-midnight.jpg
            /images/iphone-14/iphone-14-midnight-back.jpg
            /images/iphone-14/iphone-14-midnight-front.jpg

            /images/iphone-14/iphone-14-starlight.jpg
            /images/iphone-14/iphone-14-starlight-back.jpg
            /images/iphone-14/iphone-14-starlight-front.jpg

            /images/iphone-14/iphone-14-red.jpg
            /images/iphone-14/iphone-14-red-back.jpg
            /images/iphone-14/iphone-14-red-front.jpg

        14 Plus
            /images/iphone-14-plus/iphone-14-plus-blue.jpg
            /images/iphone-14-plus/iphone-14-plus-blue-back.jpg
            /images/iphone-14-plus/iphone-14-plus-blue-front.jpg

            /images/iphone-14-plus/iphone-14-plus-purple.jpg
            /images/iphone-14-plus/iphone-14-plus-purple-back.jpg
            /images/iphone-14-plus/iphone-14-plus-purple-front.jpg

            /images/iphone-14-plus/iphone-14-plus-yellow.jpg
            /images/iphone-14-plus/iphone-14-plus-yellow-back.jpg
            /images/iphone-14-plus/iphone-14-plus-yellow-front.jpg

            /images/iphone-14-plus/iphone-14-plus-midnight.jpg
            /images/iphone-14-plus/iphone-14-plus-midnight-back.jpg
            /images/iphone-14-plus/iphone-14-plus-midnight-front.jpg

            /images/iphone-14-plus/iphone-14-plus-starlight.jpg
            /images/iphone-14-plus/iphone-14-plus-starlight-back.jpg
            /images/iphone-14-plus/iphone-14-plus-starlight-front.jpg

            /images/iphone-14-plus/iphone-14-plus-red.jpg
            /images/iphone-14-plus/iphone-14-plus-red-back.jpg
            /images/iphone-14-plus/iphone-14-plus-red-front.jpg

        14 Pro
            /images/iphone-14-pro/iphone-14-pro-deep-purple.jpg
            /images/iphone-14-pro/iphone-14-pro-deep-purple-back.jpg
            /images/iphone-14-pro/iphone-14-pro-deep-purple-front.jpg

            /images/iphone-14-pro/iphone-14-pro-silver.jpg
            /images/iphone-14-pro/iphone-14-pro-silver-back.jpg
            /images/iphone-14-pro/iphone-14-pro-silver-front.jpg

            /images/iphone-14-pro/iphone-14-pro-gold.jpg
            /images/iphone-14-pro/iphone-14-pro-gold-back.jpg
            /images/iphone-14-pro/iphone-14-pro-gold-front.jpg

            /images/iphone-14-pro/iphone-14-pro-space-black.jpg
            /images/iphone-14-pro/iphone-14-pro-space-black-back.jpg
            /images/iphone-14-pro/iphone-14-pro-space-black-front.jpg

        14 Pro Max
            /images/iphone-14-pro-max/iphone-14-pro-max-deep-purple.jpg
            /images/iphone-14-pro-max/iphone-14-pro-max-deep-purple-back.jpg
            /images/iphone-14-pro-max/iphone-14-pro-max-deep-purple-front.jpg

            /images/iphone-14-pro-max/iphone-14-pro-max-silver.jpg
            /images/iphone-14-pro-max/iphone-14-pro-max-silver-back.jpg
            /images/iphone-14-pro-max/iphone-14-pro-max-silver-front.jpg

            /images/iphone-14-pro-max/iphone-14-pro-max-gold.jpg
            /images/iphone-14-pro-max/iphone-14-pro-max-gold-back.jpg
            /images/iphone-14-pro-max/iphone-14-pro-max-gold-front.jpg
            
            /images/iphone-14-pro-max/iphone-14-pro-max-space-black.jpg
            /images/iphone-14-pro-max/iphone-14-pro-max-space-black-back.jpg
            /images/iphone-14-pro-max/iphone-14-pro-max-space-black-front.jpg

    /* Image table insert */
        INSERT INTO image (color_id, image_1, image_2, image_3) VALUES
            -- iPhone X
                (1, '/images/iphone-x/iphone-x-space-gray.jpg', '/images/iphone-x/iphone-x-space-gray-back.jpg', '/images/iphone-x/iphone-x-space-gray-front.jpg'),
                (2, '/images/iphone-x/iphone-x-silver.jpg', '/images/iphone-x/iphone-x-silver-back.jpg', '/images/iphone-x/iphone-x-silver-front.jpg'),
            -- iPhone XR
                (3, '/images/iphone-xr/iphone-xr-black.jpg', '/images/iphone-xr/iphone-xr-black-back.jpg', '/images/iphone-xr/iphone-xr-black-front.jpg'),
                (4, '/images/iphone-xr/iphone-xr-red.jpg', '/images/iphone-xr/iphone-xr-red-back.jpg', '/images/iphone-xr/iphone-xr-red-front.jpg'),
                (5, '/images/iphone-xr/iphone-xr-white.jpg', '/images/iphone-xr/iphone-xr-white-back.jpg', '/images/iphone-xr/iphone-xr-white-front.jpg'),
                (6, '/images/iphone-xr/iphone-xr-blue.jpg', '/images/iphone-xr/iphone-xr-blue-back.jpg', '/images/iphone-xr/iphone-xr-blue-front.jpg'),
                (7, '/images/iphone-xr/iphone-xr-yellow.jpg', '/images/iphone-xr/iphone-xr-yellow-back.jpg', '/images/iphone-xr/iphone-xr-yellow-front.jpg'),
                (8, '/images/iphone-xr/iphone-xr-coral.jpg', '/images/iphone-xr/iphone-xr-coral-back.jpg', '/images/iphone-xr/iphone-xr-coral-front.jpg'),
            -- iPhone XS
                (9, '/images/iphone-xs/iphone-xs-space-gray.jpg', '/images/iphone-xs/iphone-xs-space-gray-back.jpg', '/images/iphone-xs/iphone-xs-space-gray-front.jpg'),
                (10, '/images/iphone-xs/iphone-xs-silver.jpg', '/images/iphone-xs/iphone-xs-silver-back.jpg', '/images/iphone-xs/iphone-xs-silver-front.jpg'),
                (11, '/images/iphone-xs/iphone-xs-gold.jpg', '/images/iphone-xs/iphone-xs-gold-back.jpg', '/images/iphone-xs/iphone-xs-gold-front.jpg'),
            -- iPhone XS MAX
                (12, '/images/iphone-xs-max/iphone-xs-max-space-gray.jpg', '/images/iphone-xs-max/iphone-xs-max-space-gray-back.jpg', '/images/iphone-xs-max/iphone-xs-max-space-gray-front.jpg'),
                (13, '/images/iphone-xs-max/iphone-xs-max-silver.jpg', '/images/iphone-xs-max/iphone-xs-max-silver-back.jpg', '/images/iphone-xs-max/iphone-xs-max-silver-front.jpg'),
                (14, '/images/iphone-xs-max/iphone-xs-max-gold.jpg', '/images/iphone-xs-max/iphone-xs-max-gold-back.jpg', '/images/iphone-xs-max-iphonexsmaxgoldfrontjpg'),
            -- iPhone 11
                (15, '/images/iphone-11/iphone-11-red.jpg', '/images/iphone-11/iphone-11-red-back.jpg', '/images/iphone-11/iphone-11-red-front.jpg'),
                (16, '/images/iphone-11/iphone-11-white.jpg', '/images/iphone-11/iphone-11-white-back.jpg', '/images/iphone-11/iphone-11-white-front.jpg'),
                (17, '/images/iphone-11/iphone-11-black.jpg', '/images/iphone-11/iphone-11-black-back.jpg', '/images/iphone-11/iphone-11-black-front.jpg'),
                (18, '/images/iphone-11/iphone-11-green.jpg', '/images/iphone-11/iphone-11-green-back.jpg', '/images/iphone-11/iphone-11-green-front.jpg'),
                (19, '/images/iphone-11/iphone-11-yellow.jpg', '/images/iphone-11/iphone-11-yellow-back.jpg', '/images/iphone-11/iphone-11-yellow-front.jpg'),
                (20, '/images/iphone-11/iphone-11-purple.jpg', '/images/iphone-11/iphone-11-purple-back.jpg', '/images/iphone-11/iphone-11-purple-front.jpg'),
            -- iPhone 11 Pro
                (21, '/images/iphone-11-pro/iphone-11-pro-space-gray.jpg', '/images/iphone-11-pro/iphone-11-pro-space-gray-back.jpg', '/images/iphone-11-pro/iphone-11-pro-space-gray-front.jpg'),
                (22, '/images/iphone-11-pro/iphone-11-pro-silver.jpg', '/images/iphone-11-pro/iphone-11-pro-silver-back.jpg', '/images/iphone-11-pro/iphone-11-pro-silver-front.jpg'),
                (23, '/images/iphone-11-pro/iphone-11-pro-gold.jpg', '/images/iphone-11-pro/iphone-11-pro-gold-back.jpg', '/images/iphone-11-pro/iphone-11-pro-gold-front.jpg'),
                (24, '/images/iphone-11-pro/iphone-11-pro-midnight-green.jpg', '/images/iphone-11-pro/iphone-11-pro-midnight-green-back.jpg', '/images/iphone-11-pro/iphone-11-pro-midnight-green-front.jpg'),
            -- iPhone 11 Pro Max
                (25, '/images/iphone-11-pro-max/iphone-11-pro-max-space-gray.jpg', '/images/iphone-11-pro-max/iphone-11-pro-max-space-gray-back.jpg', '/images/iphone-11-pro-max/iphone-11-pro-max-space-gray-front.jpg'),
                (26, '/images/iphone-11-pro-max/iphone-11-pro-max-silver.jpg', '/images/iphone-11-pro-max/iphone-11-pro-max-silver-back.jpg', '/images/iphone-11-pro-max/iphone-11-pro-max-silver-front.jpg'),
                (27, '/images/iphone-11-pro-max/iphone-11-pro-max-gold.jpg', '/images/iphone-11-pro-max/iphone-11-pro-max-gold-back.jpg', '/images/iphone-11-pro-max/iphone-11-pro-max-gold-front.jpg'),
                (28, '/images/iphone-11-pro-max/iphone-11-pro-max-midnight-green.jpg', '/images/iphone-11-pro-max/iphone-11-pro-max-midnight-green-back.jpg', '/images/iphone-11-pro-max/iphone-11-pro-max-midnight-green-front.jpg'),
            -- iPhone 12
                (29, '/images/iphone-12/iphone-12-purple.jpg', '/images/iphone-12/iphone-12-purple-back.jpg', '/images/iphone-12/iphone-12-purple-front.jpg'),
                (30, '/images/iphone-12/iphone-12-blue.jpg', '/images/iphone-12/iphone-12-blue-back.jpg', '/images/iphone-12/iphone-12-blue-front.jpg'),
                (31, '/images/iphone-12/iphone-12-green.jpg', '/images/iphone-12/iphone-12-green-back.jpg', '/images/iphone-12/iphone-12-green-front.jpg'),
                (32, '/images/iphone-12/iphone-12-red.jpg', '/images/iphone-12/iphone-12-red-back.jpg', '/images/iphone-12/iphone-12-red-front.jpg'),
                (33, '/images/iphone-12/iphone-12-white.jpg', '/images/iphone-12/iphone-12-white-back.jpg', '/images/iphone-12/iphone-12-white-front.jpg'),
                (34, '/images/iphone-12/iphone-12-black.jpg', '/images/iphone-12/iphone-12-black-back.jpg', '/images/iphone-12/iphone-12-black-front.jpg'),
            -- iPhone 12 mini
                (35, '/images/iphone-12-mini/iphone-12-mini-purple.jpg', '/images/iphone-12-mini/iphone-12-mini-purple-back.jpg', '/images/iphone-12-mini/iphone-12-mini-purple-front.jpg'),
                (36, '/images/iphone-12-mini/iphone-12-mini-blue.jpg', '/images/iphone-12-mini/iphone-12-mini-blue-back.jpg', '/images/iphone-12-mini/iphone-12-mini-blue-front.jpg'),
                (37, '/images/iphone-12-mini/iphone-12-mini-green.jpg', '/images/iphone-12-mini/iphone-12-mini-green-back.jpg', '/images/iphone-12-mini/iphone-12-mini-green-front.jpg'),
                (38, '/images/iphone-12-mini/iphone-12-mini-red.jpg', '/images/iphone-12-mini/iphone-12-mini-red-back.jpg', '/images/iphone-12-mini/iphone-12-mini-red-front.jpg'),
                (39, '/images/iphone-12-mini/iphone-12-mini-white.jpg', '/images/iphone-12-mini/iphone-12-mini-white-back.jpg', '/images/iphone-12-mini/iphone-12-mini-white-front.jpg'),
                (40, '/images/iphone-12-mini/iphone-12-mini-black.jpg', '/images/iphone-12-mini/iphone-12-mini-black-back.jpg', '/images/iphone-12-mini/iphone-12-mini-black-front.jpg'),
            -- iPhone 12 Pro
                (41, '/images/iphone-12-pro/iphone-12-pro-pacific-blue.jpg', '/images/iphone-12-pro/iphone-12-pro-pacific-blue-back.jpg', '/images/iphone-12-pro/iphone-12-pro-pacific-blue-front.jpg'),
                (42, '/images/iphone-12-pro/iphone-12-pro-gold.jpg', '/images/iphone-12-pro/iphone-12-pro-gold-back.jpg', '/images/iphone-12-pro/iphone-12-pro-gold-front.jpg'),
                (43, '/images/iphone-12-pro/iphone-12-pro-graphite.jpg', '/images/iphone-12-pro/iphone-12-pro-graphite-back.jpg', '/images/iphone-12-pro/iphone-12-pro-graphite-front.jpg'),
                (44, '/images/iphone-12-pro/iphone-12-pro-silver.jpg', '/images/iphone-12-pro/iphone-12-pro-silver-back.jpg', '/images/iphone-12-pro/iphone-12-pro-silver-front.jpg'),
            -- iPhone 12 Pro Max
                (45, '/images/iphone-12-pro-max/iphone-12-pro-max-pacific-blue.jpg', '/images/iphone-12-pro-max/iphone-12-pro-max-pacific-blue-back.jpg', '/images/iphone-12-pro-max/iphone-12-pro-max-pacific-blue-front.jpg'),
                (46, '/images/iphone-12-pro-max/iphone-12-pro-max-gold.jpg', '/images/iphone-12-pro-max/iphone-12-pro-max-gold-back.jpg', '/images/iphone-12-pro-max/iphone-12-pro-max-gold-front.jpg'),
                (47, '/images/iphone-12-pro-max/iphone-12-pro-max-graphite.jpg', '/images/iphone-12-pro-max/iphone-12-pro-max-graphite-back.jpg', '/images/iphone-12-pro-max/iphone-12-pro-max-graphite-front.jpg'),
                (48, '/images/iphone-12-pro-max/iphone-12-pro-max-silver.jpg', '/images/iphone-12-pro-max/iphone-12-pro-max-silver-back.jpg', '/images/iphone-12-pro-max/iphone-12-pro-max-silver-front.jpg'),
            -- iPhone 13
                (49, '/images/iphone-13/iphone-13-green.jpg', '/images/iphone-13/iphone-13-green-back.jpg', '/images/iphone-13/iphone-13-green-front.jpg'),
                (50, '/images/iphone-13/iphone-13-pink.jpg', '/images/iphone-13/iphone-13-pink-back.jpg', '/images/iphone-13/iphone-13-pink-front.jpg'),
                (51, '/images/iphone-13/iphone-13-blue.jpg', '/images/iphone-13/iphone-13-blue-back.jpg', '/images/iphone-13/iphone-13-blue-front.jpg'),
                (52, '/images/iphone-13/iphone-13-midnight.jpg', '/images/iphone-13/iphone-13-midnight-back.jpg', '/images/iphone-13/iphone-13-midnight-front.jpg'),
                (53, '/images/iphone-13/iphone-13-starlight.jpg', '/images/iphone-13/iphone-13-starlight-back.jpg', '/images/iphone-13/iphone-13-starlight-front.jpg'),
                (54, '/images/iphone-13/iphone-13-red.jpg', '/images/iphone-13/iphone-13-red-back.jpg', '/images/iphone-13/iphone-13-red-front.jpg'),
            -- iPhone 13 mini
                (55, '/images/iphone-13-mini/iphone-13-mini-green.jpg', '/images/iphone-13-mini/iphone-13-mini-green-back.jpg', '/images/iphone-13-mini/iphone-13-mini-green-front.jpg'),
                (56, '/images/iphone-13-mini/iphone-13-mini-pink.jpg', '/images/iphone-13-mini/iphone-13-mini-pink-back.jpg', '/images/iphone-13-mini/iphone-13-mini-pink-front.jpg'),
                (57, '/images/iphone-13-mini/iphone-13-mini-blue.jpg', '/images/iphone-13-mini/iphone-13-mini-blue-back.jpg', '/images/iphone-13-mini/iphone-13-mini-blue-front.jpg'),
                (58, '/images/iphone-13-mini/iphone-13-mini-midnight.jpg', '/images/iphone-13-mini/iphone-13-mini-midnight-back.jpg', '/images/iphone-13-mini/iphone-13-mini-midnight-front.jpg'),
                (59, '/images/iphone-13-mini/iphone-13-mini-starlight.jpg', '/images/iphone-13-mini/iphone-13-mini-starlight-back.jpg', '/images/iphone-13-mini/iphone-13-mini-starlight-front.jpg'),
                (60, '/images/iphone-13-mini/iphone-13-mini-red.jpg', '/images/iphone-13-mini/iphone-13-mini-red-back.jpg', '/images/iphone-13-mini/iphone-13-mini-red-front.jpg'),
            -- iPhone 13 Pro
                (61, '/images/iphone-13-pro/iphone-13-pro-alpine-green.jpg', '/images/iphone-13-pro/iphone-13-pro-alpine-green-back.jpg', '/images/iphone-13-pro/iphone-13-pro-alpine-green-front.jpg'),
                (62, '/images/iphone-13-pro/iphone-13-pro-silver.jpg', '/images/iphone-13-pro/iphone-13-pro-silver-back.jpg', '/images/iphone-13-pro/iphone-13-pro-silver-front.jpg'),
                (63, '/images/iphone-13-pro/iphone-13-pro-gold.jpg', '/images/iphone-13-pro/iphone-13-pro-gold-back.jpg', '/images/iphone-13-pro/iphone-13-pro-gold-front.jpg'),
                (64, '/images/iphone-13-pro/iphone-13-pro-graphite.jpg', '/images/iphone-13-pro/iphone-13-pro-graphite-back.jpg', '/images/iphone-13-pro/iphone-13-pro-graphite-front.jpg'),
                (65, '/images/iphone-13-pro/iphone-13-pro-sierra-blue.jpg', '/images/iphone-13-pro/iphone-13-pro-sierra-blue-back.jpg', '/images/iphone-13-pro/iphone-13-pro-sierra-blue-front.jpg'),
            -- iPhone 13 Pro Max
                (66, '/images/iphone-13-pro-max/iphone-13-pro-max-alpine-green.jpg', '/images/iphone-13-pro-max/iphone-13-pro-max-alpine-green-back.jpg', '/images/iphone-13-pro-max/iphone-13-pro-max-alpine-green-front.jpg'),
                (67, '/images/iphone-13-pro-max/iphone-13-pro-max-silver.jpg', '/images/iphone-13-pro-max/iphone-13-pro-max-silver-back.jpg', '/images/iphone-13-pro-max/iphone-13-pro-max-silver-front.jpg'),
                (68, '/images/iphone-13-pro-max/iphone-13-pro-max-gold.jpg', '/images/iphone-13-pro-max/iphone-13-pro-max-gold-back.jpg', '/images/iphone-13-pro-max/iphone-13-pro-max-gold-front.jpg'),
                (69, '/images/iphone-13-pro-max/iphone-13-pro-max-graphite.jpg', '/images/iphone-13-pro-max/iphone-13-pro-max-graphite-back.jpg', '/images/iphone-13-pro-max/iphone-13-pro-max-graphite-front.jpg'),
                (70, '/images/iphone-13-pro-max/iphone-13-pro-max-sierra-blue.jpg', '/images/iphone-13-pro-max/iphone-13-pro-max-sierra-blue-back.jpg', '/images/iphone-13-pro-max/iphone-13-pro-max-sierra-blue-front.jpg'),
            -- iPhone 14
                (71, '/images/iphone-14/iphone-14-blue.jpg', '/images/iphone-14/iphone-14-blue-back.jpg', '/images/iphone-14/iphone-14-blue-front.jpg'),
                (72, '/images/iphone-14/iphone-14-purple.jpg', '/images/iphone-14/iphone-14-purple-back.jpg', '/images/iphone-14/iphone-14-purple-front.jpg'),
                (73, '/images/iphone-14/iphone-14-yellow.jpg', '/images/iphone-14/iphone-14-yellow-back.jpg', '/images/iphone-14/iphone-14-yellow-front.jpg'),
                (74, '/images/iphone-14/iphone-14-midnight.jpg', '/images/iphone-14/iphone-14-midnight-back.jpg', '/images/iphone-14/iphone-14-midnight-front.jpg'),
                (75, '/images/iphone-14/iphone-14-starlight.jpg', '/images/iphone-14/iphone-14-starlight-back.jpg', '/images/iphone-14/iphone-14-starlight-front.jpg'),
                (76, '/images/iphone-14/iphone-14-red.jpg', '/images/iphone-14/iphone-14-red-back.jpg', '/images/iphone-14/iphone-14-red-front.jpg'),
            -- iPhone 14 Plus
                (77, '/images/iphone-14-plus/iphone-14-plus-blue.jpg', '/images/iphone-14-plus/iphone-14-plus-blue-back.jpg', '/images/iphone-14-plus/iphone-14-plus-blue-front.jpg'),
                (78, '/images/iphone-14-plus/iphone-14-plus-purple.jpg', '/images/iphone-14-plus/iphone-14-plus-purple-back.jpg', '/images/iphone-14-plus/iphone-14-plus-purple-front.jpg'),
                (79, '/images/iphone-14-plus/iphone-14-plus-yellow.jpg', '/images/iphone-14-plus/iphone-14-plus-yellow-back.jpg', '/images/iphone-14-plus/iphone-14-plus-yellow-front.jpg'),
                (80, '/images/iphone-14-plus/iphone-14-plus-midnight.jpg', '/images/iphone-14-plus/iphone-14-plus-midnight-back.jpg', '/images/iphone-14-plus/iphone-14-plus-midnight-front.jpg'),
                (81, '/images/iphone-14-plus/iphone-14-plus-starlight.jpg', '/images/iphone-14-plus/iphone-14-plus-starlight-back.jpg', '/images/iphone-14-plus/iphone-14-plus-starlight-front.jpg'),
                (82, '/images/iphone-14-plus/iphone-14-plus-red.jpg', '/images/iphone-14-plus/iphone-14-plus-red-back.jpg', '/images/iphone-14-plus/iphone-14-plus-red-front.jpg'),
            -- iPhone 14 Pro
                (83, '/images/iphone-14-pro/iphone-14-pro-deep-purple.jpg', '/images/iphone-14-pro/iphone-14-pro-deep-purple-back.jpg', '/images/iphone-14-pro/iphone-14-pro-deep-purple-front.jpg'),
                (84, '/images/iphone-14-pro/iphone-14-pro-silver.jpg', '/images/iphone-14-pro/iphone-14-pro-silver-back.jpg', '/images/iphone-14-pro/iphone-14-pro-silver-front.jpg'),
                (85, '/images/iphone-14-pro/iphone-14-pro-gold.jpg', '/images/iphone-14-pro/iphone-14-pro-gold-back.jpg', '/images/iphone-14-pro/iphone-14-pro-gold-front.jpg'),
                (86, '/images/iphone-14-pro/iphone-14-pro-space-black.jpg', '/images/iphone-14-pro/iphone-14-pro-space-black-back.jpg', '/images/iphone-14-pro/iphone-14-pro-space-black-front.jpg'),
            -- iPhone 14 Pro Max
                (87, '/images/iphone-14-pro-max/iphone-14-pro-max-deep-purple.jpg', '/images/iphone-14-pro-max/iphone-14-pro-max-deep-purple-back.jpg', '/images/iphone-14-pro-max/iphone-14-pro-max-deep-purple-front.jpg'),
                (88, '/images/iphone-14-pro-max/iphone-14-pro-max-silver.jpg', '/images/iphone-14-pro-max/iphone-14-pro-max-silver-back.jpg', '/images/iphone-14-pro-max/iphone-14-pro-max-silver-front.jpg'),
                (89, '/images/iphone-14-pro-max/iphone-14-pro-max-gold.jpg', '/images/iphone-14-pro-max/iphone-14-pro-max-gold-back.jpg', '/images/iphone-14-pro-max/iphone-14-pro-max-gold-front.jpg'),
                (90, '/images/iphone-14-pro-max/iphone-14-pro-max-space-black.jpg', '/images/iphone-14-pro-max/iphone-14-pro-max-space-black-back.jpg', '/images/iphone-14-pro-max/iphone-14-pro-max-space-black-front.jpg');

    /* Stock table */
        CREATE TABLE stock (
            stock_id INT PRIMARY KEY,
            memory_id INT,
            color_id INT,
            stock INT,
            FOREIGN KEY (memory_id) REFERENCES memory_size(memory_id),
            FOREIGN KEY (color_id) REFERENCES color(color_id)
        );

    /* Stock table insert */
        INSERT INTO inventory (stock_id, memory_id, color_id, stock)
        VALUES (1, 3, 1, 100);

    /* iPhone_images insert */
        INSERT INTO iphone_images (model_name, memory_size, color_name, image_1, image_2, image_3)
        SELECT
            i.model_name,
            m.memory_size,
            c.color_name,
            img.image_1,
            img.image_2,
            img.image_3
        FROM
            iphone AS i
        JOIN
            memory_size AS m ON i.iphone_id = m.iphone_id
        JOIN
            color AS c ON i.iphone_id = c.iphone_id
        JOIN
            image AS img ON c.color_id = img.color_id;


/* select * query */
    SELECT
    i.iphone_id,
    i.model_name,
    m.memory_id,
    m.memory_size,
    p.price_id,
    p.price,
    c.color_id,
    c.color_name,
    im.image_id,
    im.image_1,
    im.image_2,
    im.image_3
FROM
    iphone AS i
JOIN
    memory_size AS m ON i.iphone_id = m.iphone_id
JOIN
    price AS p ON i.iphone_id = p.iphone_id
JOIN
    color AS c ON i.iphone_id = c.iphone_id
JOIN
    image AS im ON c.color_id = im.color_id;






    /* home page query */


tables:
    1. iphone - columns: iphone_id[PK], model_name.
    2. memory_size - columns: memory_id[PK], iphone_id, memory_size.
    3. price - columns: price_id[PK], iphone_id, price.
    4. color - columns: color_id[PK], iphone_id, color_name.
    5. image - columns: image_id[PK], color_id, image_1, image_2, image_3
    6. post - columns: id[PK], name, city, number, model, memory, color, condition, detail, price, time.
    7. iphone_images - column: model_name, memory_size, color_name, image_1, image_2, image_3, stock.
