DROP TABLE IF EXISTS "public"."recipes";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS recipes_id_seq;

-- Table Definition
CREATE TABLE "public"."recipes" (
    "id" SERIAL,
    "name" text,
    "cooking_time" int,
    "rating" int,
    PRIMARY KEY ("id")
);

INSERT INTO "public"."recipes" ("id", "name", "cooking_time", "rating") VALUES
(1, 'Spaghetti Aglio e Olio', 15, 3 ),
(2, 'Baked Lemon Herb Salmon', 25, 5),
(3, 'Chicken Stir-Fry', 15, 4),
(4, 'Caprese Salad', 10, 2),
(5, 'Vegetable Curry', 40, 5);
