-- AlterTable
ALTER TABLE "reservations" ADD COLUMN     "passengerId" TEXT;

-- AddForeignKey
ALTER TABLE "reservations" ADD CONSTRAINT "reservations_flightId_fkey" FOREIGN KEY ("flightId") REFERENCES "flights"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "reservations" ADD CONSTRAINT "reservations_passengerId_fkey" FOREIGN KEY ("passengerId") REFERENCES "passengers"("id") ON DELETE SET NULL ON UPDATE CASCADE;
