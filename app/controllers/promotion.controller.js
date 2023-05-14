import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

export const promotionController = {
    createPromotion: async ({ name }) => {
        return await prisma.promotion.create({
            data: {
                name: name,
            },
        })
    },
}