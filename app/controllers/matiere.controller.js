import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

export const matiereController = {
    getMatiere: async () => {
        return await prisma.matiere.findMany({
            include: {
                Cours: true,
                Note: true,
            },
        })
    },
}