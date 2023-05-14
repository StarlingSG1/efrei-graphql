import { coursType } from "./cours.type.js";
import { eleveType } from "./eleve.type.js";
import { formateurType } from "./formateur.type.js";
import { groupeType } from "./groupe.type.js";
import { matiereType } from "./matiere.type.js";
import { noteType } from "./note.type.js";
import { promotionType } from "./promotion.type.js";
import { salleType } from "./salle.type.js";


export const types = `
    ${coursType}
    ${eleveType}
    ${formateurType}
    ${groupeType}
    ${matiereType}
    ${noteType}
    ${promotionType}
    ${salleType}
`