import { PrismaClient } from "@prisma/client";
import { faker } from "@faker-js/faker";

const prisma = new PrismaClient();

async function seedPromotion() {
    await prisma.promotion.createMany({
        data: [
            {
                id: 1,
                name: "Dev Manager FullStack",
            },
            {
                id: 2,
                name: "Data Ingenering",
            },
        ],
    });
}

async function seedMatieres() {
    await prisma.matiere.createMany({
        data: [
            {
                name: "NestJS",
            },
            {
                name: "ReactJS",
            },
            {
                name: "NodeJS",
            },
            {
                name: "Anglais",
            },
            {
                name: "Communication",
            },

        ],
    });
}

async function seedSalles() {
    const sallesData = [];

    for (let i = 1; i <= 5; i++) {
        const salle = {
            id: i,
            name: `B00${i}`,
        };
        sallesData.push(salle);
    }

    await prisma.salle.createMany({
        data: sallesData,
    });
}

async function seedFormateurs() {
    const formateursData = [];

    for (let i = 1; i <= 5; i++) {
        const formateur = {
            firstname: faker.person.firstName(),
            lastname: faker.person.lastName(),
        };
        formateursData.push(formateur);
    }

    await prisma.formateur.createMany({
        data: formateursData,
    });
}

async function seedGroupes() {
    const groupesData = [];

    for (let i = 1; i <= 5; i++) {
        const groupe = {
            name: `G${i}`,
            promotionId: Math.floor(Math.random() * 2) + 1,
        };
        groupesData.push(groupe);
    }

    await prisma.groupe.createMany({
        data: groupesData,
    });
}

async function seedCours() {
    await prisma.cours.createMany({
        data: [
            {
                name: "Cours 1",
                startTime: new Date("2023-04-10T09:00:00.000Z"),
                endTime: new Date("2023-04-10T11:00:00.000Z"),
                salleId: 1,
                matiereId: 1,
                formateurId: 1,
                groupeId: 1,
            },
            {
                name: "Cours 2",
                startTime: new Date("2023-04-11T09:00:00.000Z"),
                endTime: new Date("2023-04-11T11:00:00.000Z"),
                salleId: 2,
                matiereId: 2,
                formateurId: 2,
                groupeId: 2,
            },
            {
                name: "Cours 3",
                startTime: new Date("2023-04-12T09:00:00.000Z"),
                endTime: new Date("2023-04-12T11:00:00.000Z"),
                salleId: 3,
                matiereId: 3,
                formateurId: 3,
                groupeId: 3,
            },
            {
                name: "Cours 4",
                startTime: new Date("2023-04-13T09:00:00.000Z"),
                endTime: new Date("2023-04-13T11:00:00.000Z"),
                salleId: 4,
                matiereId: 4,
                formateurId: 4,
                groupeId: 4,
            },
            {
                name: "Cours 5",
                startTime: new Date("2023-04-14T09:00:00.000Z"),
                endTime: new Date("2023-04-14T11:00:00.000Z"),
                salleId: 5,
                matiereId: 5,
                formateurId: 5,
                groupeId: 5,
            },
        ],
    });
}

async function seedEleves() {
    const formateursData = [];

    for (let i = 1; i <= 10; i++) {
        const formateur = {
            firstname: faker.person.firstName(),
            lastname: faker.person.lastName(),
            groupeId: Math.floor(Math.random() * 5) + 1,
        };
        formateursData.push(formateur);
    }

    await prisma.eleve.createMany({
        data: formateursData,
    });
}

async function seedNotes() {
    const studentIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    const matiereIds = [1, 2, 3, 4, 5];

    const notesData = [];

    for (const studentId of studentIds) {
        for (let i = 1; i <= 2; i++) {
            const note = {
                eleveId: studentId,
                matiereId: faker.helpers.arrayElement(matiereIds),
                note: faker.number.int({ max: 20 }),
            };
            notesData.push(note);
        }
    }

    await prisma.note.createMany({
        data: notesData,
    });
}
async function seed() {
    await seedPromotion();
    await seedMatieres();
    await seedSalles();
    await seedFormateurs();
    await seedGroupes();
    await seedCours();
    await seedEleves();
    await seedNotes();
}

seed();
