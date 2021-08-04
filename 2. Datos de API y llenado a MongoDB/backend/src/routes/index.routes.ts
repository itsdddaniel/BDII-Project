import { Router } from "express";
import APIRoutes from './api.routes';


const router = Router()

router.use('/api', APIRoutes);


export default router;