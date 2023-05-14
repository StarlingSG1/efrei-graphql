import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

export const coursController = {
    getCours: async () => {
        return await prisma.cours.findMany({
            include: {
                Matiere: true,
                Salle: true,
                Groupe: true,
            },
        })
    },
    getOneCours: async ({ id }) => {
        return await prisma.cours.findUnique({
            where: {
                id: parseInt(id),
            },
            include: {
                Matiere: true,
                Salle: true,
                Groupe: true,
            },
        })
    },
    getFormateurCours: async ({ formateurId }) => {
        return await prisma.cours.findMany({
            where: {
                formateurId: parseInt(formateurId),
            },
            include: {
                Matiere: true,
                Salle: true,
                Groupe: true,
            },
        })
    },
    getSalleCours: async ({ salleId }) => {
        return await prisma.cours.findMany({
            where: {
                salleId: parseInt(salleId),
            },
            include: {
                Matiere: true,
                Salle: true,
                Groupe: true,
            },
        })
    },
    createCours: async ({ name, matiereId, salleId, groupeId, startTime, endTime, formateurId }) => {
        return await prisma.cours.create({
            data: {
                name,
                startTime: new Date(startTime),
                endTime: new Date(endTime),
                matiereId: parseInt(matiereId),
                salleId: parseInt(salleId),
                groupeId: parseInt(groupeId),
                formateurId: parseInt(formateurId),
            },
            include: {
                Matiere: true,
                Salle: true,
                Groupe: true,
            },
        })
    },
    updateCours: async ({ id, name, matiereId, salleId, groupeId, startTime, endTime, formateurId }) => {
        return await prisma.cours.update({
            where: {
                id: parseInt(id),
            },
            data: {
                name,
                startTime: new Date(startTime),
                endTime: new Date(endTime),
                matiereId: parseInt(matiereId),
                salleId: parseInt(salleId),
                groupeId: parseInt(groupeId),
                formateurId: parseInt(formateurId),
            },
            include: {
                Matiere: true,
                Salle: true,
                Groupe: true,
            },
        })
    },
    deleteCours: async ({ id }) => {
        return await prisma.cours.delete({
            where: {
                id: parseInt(id),
            },
        })
    }
}