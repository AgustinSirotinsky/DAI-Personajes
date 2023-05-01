import { Router } from 'express';
import CharacterService from '../services/characters-services.js';
const router = Router();
const characterService = new CharacterService();

router.get('', async (req,res) => {
    const characters = await characterService.getAll();
    return res.status(200).json(characters);
});

export default router;