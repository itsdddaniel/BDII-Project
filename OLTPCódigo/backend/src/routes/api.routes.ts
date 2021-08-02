import { Router } from "express";
import { APIController } from "../controllers/api.controller";

const routes = Router()

routes.get('/job', APIController.getJob);
routes.get('/branchOffice', APIController.getBranchOffice);
routes.get('/client', APIController.getClient);
routes.get('/conveyance', APIController.getConveyance);
routes.get('/carModel', APIController.getCarModel);
routes.get('/employee', APIController.getEmployee);
routes.get('/vehicle', APIController.getVehicle);
routes.get('/trip', APIController.getTrip);
routes.get('/tripState', APIController.getTripState);

export default routes;