import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

export const eleveController = {
    getEleve: async () => {
        return await prisma.eleve.findMany({
            include: {
                Groupe: true,
                Note: {
                    include: {
                        Matiere: true,
                    },
                },
            },
        })
    },
    getOneEleve: async ({ id }) => {
        return await prisma.eleve.findUnique({
            where: {
                id: parseInt(id),
            },
            include: {
                Groupe: true,
                Note: {
                    include: {
                        Matiere: true,
                    },
                },
            },
        })
    },
    createEleve: async ({ firstname, lastname, groupeId }) => {
        return await prisma.eleve.create({
            data: {
                firstname: firstname,
                lastname: lastname,
                groupeId: groupeId
            },
            include: {
                Note: true,
                Groupe: true,
            },
        })
    },
    updateEleve: async ({ id, firstname, lastname, groupeId }) => {
        return await prisma.eleve.update({
            where: {
                id: parseInt(id),
            },
            data: {
                firstname: firstname,
                lastname: lastname,
                groupeId: groupeId
            },
            include: {
                Note: true,
                Groupe: true,
            },
        })
    },
    deleteEleve: async ({ id }) => {
        return await prisma.eleve.delete({
            where: {
                id: parseInt(id),
            },
        })
    }
}