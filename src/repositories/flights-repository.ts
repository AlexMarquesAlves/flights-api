import { prisma } from '../database/prisma'
import { AddFlightDTO } from '../dtos/flights'

export async function findAll() {
  return await prisma.flight.findMany({
    orderBy: {
      departure: 'desc',
    },
    include: { reservation: true },
  })
}

export async function add(data: AddFlightDTO) {
  const { departure, ...rest } = data
  return await prisma.flight.create({
    data: { departure: new Date(departure), ...rest },
  })
}
