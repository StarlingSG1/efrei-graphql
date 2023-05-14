import { coursController } from "./cours.controller.js";
import { eleveController } from "./eleve.controller.js";
import { formateurController } from "./formateur.controller.js";
import { groupeController } from "./groupe.controller.js";
import { matiereController } from "./matiere.controller.js";
import { noteController } from "./note.controller.js";
import { promotionController } from "./promotion.controller.js";
import { salleController } from "./salle.controller.js";


export const controllers = {
    ...coursController,
    ...eleveController,
    ...formateurController,
    ...groupeController,
    ...matiereController,
    ...noteController,
    ...promotionController,
    ...salleController
}