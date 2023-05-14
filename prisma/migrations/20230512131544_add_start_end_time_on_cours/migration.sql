/*
  Warnings:

  - Added the required column `endTime` to the `Cours` table without a default value. This is not possible if the table is not empty.
  - Added the required column `startTime` to the `Cours` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `Eleve` DROP FOREIGN KEY `Eleve_groupeId_fkey`;

-- DropForeignKey
ALTER TABLE `Groupe` DROP FOREIGN KEY `Groupe_promotionId_fkey`;

-- DropForeignKey
ALTER TABLE `Note` DROP FOREIGN KEY `Note_eleveId_fkey`;

-- AlterTable
ALTER TABLE `Cours` ADD COLUMN `endTime` DATETIME(3) NOT NULL,
    ADD COLUMN `startTime` DATETIME(3) NOT NULL;

-- AddForeignKey
ALTER TABLE `Eleve` ADD CONSTRAINT `Eleve_groupeId_fkey` FOREIGN KEY (`groupeId`) REFERENCES `Groupe`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Groupe` ADD CONSTRAINT `Groupe_promotionId_fkey` FOREIGN KEY (`promotionId`) REFERENCES `Promotion`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Note` ADD CONSTRAINT `Note_eleveId_fkey` FOREIGN KEY (`eleveId`) REFERENCES `Eleve`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
