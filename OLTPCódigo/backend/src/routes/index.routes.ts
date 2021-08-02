import { Router } from "express";
import APIRoutes from './api.routes';


const router = Router()

router.use('/', APIRoutes);


export default router;