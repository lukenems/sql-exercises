-- Solution SQL for the project from the Modifying databases with SQL course ("App impersonator")

/* What does the app's SQL look like? */

CREATE TABLE battle_field (round_id INTEGER, player TEXT PRIMARY KEY, kills INTEGER, deaths INTEGER, headshots INTEGER);



INSERT INTO battle_field VALUES (1, "weenis008", 7, 7, 4);

INSERT INTO battle_field VALUES (1, "green biscuits", 14, 10, 9);

INSERT INTO battle_field VALUES (1, "Nesquick Bunny", 4, 8, 1);

INSERT INTO battle_field VALUES (1, "CheesyMeatBALL", 12, 5, 8);

INSERT INTO battle_field VALUES (1, "TheAtomicMilkman", 16, 3, 2);

SELECT * FROM battle_field;

UPDATE battle_field SET kills = 8 WHERE player = "weenis008";

SELECT * FROM battle_field;

DELETE FROM battle_field WHERE player = "green biscuits";

SELECT * FROM battle_field
