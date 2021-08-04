import { Handler } from "express";
import { APIService } from "../services/api.service";

export class APIController
{
    //UC-lHJZR3Gqxm24_Vd_AJ5Yw - pewdiepie
    public static getProfileInfo : Handler = async (req, res) => 
    {
        try
        {
            
            const published = await APIService.apiCall();
            res.status(200).send({message: 'done'});
        }
        catch(err)
        {
            res.status(400).send({message: err})
        }
    }
}