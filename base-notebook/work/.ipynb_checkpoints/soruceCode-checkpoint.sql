CREATE TABLE "writerList" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "writerName" varchar
);

CREATE TABLE "genreList" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "genreName" varchar
);

CREATE TABLE "bookList" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "bookName" text,
  "writerId" integer,
  "genreId" integer
);

CREATE TABLE "bookReview" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "year" integer,
  "bookId" integer,
  "user_rating" float,
  "reviews" integer,
  "price" integer
);

CREATE UNIQUE INDEX ON "writerList" ("writerName");

CREATE UNIQUE INDEX ON "genreList" ("genreName");

CREATE UNIQUE INDEX ON "bookList" ("bookName");

CREATE UNIQUE INDEX ON "bookReview" ("year", "bookId");

COMMENT ON COLUMN "writerList"."id" IS 'Id of Author';

COMMENT ON COLUMN "writerList"."writerName" IS 'Name of Author';

COMMENT ON COLUMN "genreList"."id" IS 'Id of Genre';

COMMENT ON COLUMN "genreList"."genreName" IS 'Name of Genre';

COMMENT ON COLUMN "bookList"."id" IS 'Id of Book';

COMMENT ON COLUMN "bookList"."bookName" IS 'Name of Book';

COMMENT ON COLUMN "bookList"."writerId" IS 'Writer id of Book';

COMMENT ON COLUMN "bookList"."genreId" IS 'Genre id of Book';

COMMENT ON COLUMN "bookReview"."id" IS 'id of Book Review';

COMMENT ON COLUMN "bookReview"."year" IS 'year of Book Review';

COMMENT ON COLUMN "bookReview"."bookId" IS 'Id of Book';

COMMENT ON COLUMN "bookReview"."user_rating" IS 'rating of Book Review by user';

COMMENT ON COLUMN "bookReview"."reviews" IS 'number of user who give rating';

COMMENT ON COLUMN "bookReview"."price" IS 'price of Book';

ALTER TABLE "bookList" ADD FOREIGN KEY ("writerId") REFERENCES "writerList" ("id");

ALTER TABLE "bookList" ADD FOREIGN KEY ("genreId") REFERENCES "genreList" ("id");

ALTER TABLE "bookReview" ADD FOREIGN KEY ("bookId") REFERENCES "bookList" ("id");
