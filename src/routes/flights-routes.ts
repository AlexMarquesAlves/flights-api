import { Elysia } from 'elysia'
import { findAll } from '../handler/flightsHandler'

export const flightsRoutes = (app: Elysia) => {
  app.get('/flights', async () => {
    const result = findAll()
    return { result }
  })
}
