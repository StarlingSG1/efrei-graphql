import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

export const groupeController = {
    getGroupe: async () => {
        return await prisma.groupe.findMany({
            include: {
                Promotion: true,
                Eleve: true,
                Cours: true
            },
        })
    },
}