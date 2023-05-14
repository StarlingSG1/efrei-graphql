import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

export const noteController = {
    getNote: async () => {
        return await prisma.note.findMany({
            include: {
                Matiere: true,
                Eleve: true,
            },
        })
    },
    getNoteById: async (payload) => {
        Object.keys(payload).forEach(key => {
            if (payload[key] !== 'note') {
                payload[key] = parseInt(payload[key])
            }
        })
        return await prisma.note.findMany({
            where: payload,
            include: {
                Matiere: true,
                Eleve: true,
            },
        })
    },
    createNote: async ({ matiereId, eleveId, note }) => {
        return await prisma.note.create({
            data: {
                matiereId: parseInt(matiereId),
                eleveId: parseInt(eleveId),
                note: parseInt(note),
            },
            include: {
                Matiere: true,
                Eleve: true,
            },
        })
    },
    updateNote: async ({ id, note }) => {
        return await prisma.note.update({
            where: {
                id: parseInt(id),
            },
            data: {
                note: parseInt(note),
            },
            include: {
                Matiere: true,
                Eleve: true,
            },
        })
    }
}