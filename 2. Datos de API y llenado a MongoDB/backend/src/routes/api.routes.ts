import { Router } from "express";
import { APIController } from "../controllers/api.controller";

const routes = Router()

routes.get('/login', APIController.getProfileInfo);

export default routes;