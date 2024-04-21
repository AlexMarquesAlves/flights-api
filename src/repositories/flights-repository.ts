import { prisma } from '../database/prisma'

export async function findAll(params: unknown) {
  return await prisma.flight.findMany()
}
