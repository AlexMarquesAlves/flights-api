/*
  Warnings:

  - The primary key for the `flights` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE "flights" DROP CONSTRAINT "flights_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "flights_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "flights_id_seq";
