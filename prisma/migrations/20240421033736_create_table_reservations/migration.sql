-- CreateTable
CREATE TABLE "reservations" (
    "d" TEXT NOT NULL,
    "flightId" TEXT NOT NULL,
    "pessengerId" TEXT NOT NULL,
    "seatNumber" INTEGER NOT NULL,
    "reservationDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "reservations_pkey" PRIMARY KEY ("d")
);
