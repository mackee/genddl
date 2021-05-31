-- generated by github.com/mackee/go-genddl. DO NOT EDIT!!!

DROP TABLE IF EXISTS "product";

CREATE TABLE "product" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "type" INTEGER NOT NULL,
    "user_id" INTEGER NOT NULL,
    "created_at" DATETIME NOT NULL,
    "updated_at" DATETIME NULL,
    UNIQUE ("user_id", "type"),
    FOREIGN KEY ("user_id") REFERENCES user("id") ON DELETE CASCADE ON UPDATE CASCADE
) ;
CREATE INDEX product_user_id_created_at ON product ("user_id", "created_at");


DROP TABLE IF EXISTS "user";

CREATE TABLE "user" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL UNIQUE,
    "age" INTEGER NULL,
    "message" TEXT NULL,
    "created_at" DATETIME NOT NULL,
    "updated_at" DATETIME NULL
) ;

