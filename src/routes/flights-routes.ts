import { Elysia } from 'elysia'

export const flightsRoutes = (app: Elysia) => {
  app.get('/flights', async () => {
    return { response: 'Hello, World!' }
  })
}
