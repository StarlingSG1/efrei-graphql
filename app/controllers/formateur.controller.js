import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

export const formateurController = {
    getFormateur: async () => {
        return await prisma.formateur.findMany({
            include: {
                Cours: {
                    include: {
                        Matiere: true,
                        Salle: true,
                        Groupe: true,
                    },
                },
            },
        })
    },
    getOneFormateur: async ({ id }) => {
        return await prisma.formateur.findUnique({
            where: {
                id: parseInt(id),
            },
            include: {
                Cours: {
                    include: {
                        Matiere: true,
                        Salle: true,
                        Groupe: true,
                    },
                },
            },
        })
    },
    createFormateur: async ({ firstname, lastname }) => {
        return await prisma.formateur.create({
            data: {
                firstname: firstname,
                lastname: lastname,
            },
            include: {
                Cours: true,
            },
        })
    }
}