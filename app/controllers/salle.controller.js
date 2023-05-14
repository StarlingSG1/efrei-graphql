import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

export const salleController = {
    getSalle: async () => {
        return await prisma.salle.findMany({
            include: {
                Cours: true,
            },
        })
    },
    getOneSalle: async ({ id }) => {
        return await prisma.salle.findUnique({
            where: {
                id: parseInt(id),
            },
            include: {
                Cours: true,
            },
        })
    },
    createSalle: async ({ name }) => {
        return await prisma.salle.create({
            data: {
                name: name,
            },
        })
    },
    updateSalle: async ({ id, name }) => {
        return await prisma.salle.update({
            where: {
                id: parseInt(id),
            },
            data: {
                name: name,
            },
        })
    },
}