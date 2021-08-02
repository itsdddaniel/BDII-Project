import { Handler } from "express";
import { APIService } from "../services/api.service";

export class APIController
{
    public static getJob : Handler = async (req, res) => 
    {
        try
        {
            
            let job = await APIService.job();
            res.status(200).send({message: 'done'});
        }
        catch(err)
        {
            res.status(400).send({message: err})
        }
    }
    public static getBranchOffice : Handler = async (req, res) => 
    {
        try
        {
            
            let branchoffice = await APIService.branchOffice();
            res.status(200).send({message: 'done'});
        }
        catch(err)
        {
            res.status(400).send({message: err})
        }
    }
    public static getClient : Handler = async (req, res) => 
    {
        try
        {
            
            let client = await APIService.client();
            res.status(200).send({message: 'done'});
        }
        catch(err)
        {
            res.status(400).send({message: err})
        }
    }
    public static getConveyance : Handler = async (req, res) => 
    {
        try
        {
            
            let conveyance = await APIService.conveyance();
            res.status(200).send({message: 'done'});
        }
        catch(err)
        {
            res.status(400).send({message: err})
        }
    }
    public static getCarModel : Handler = async (req, res) => 
    {
        try
        {
            
            let carModel = await APIService.carModel();
            res.status(200).send({message: 'done'});
        }
        catch(err)
        {
            res.status(400).send({message: err})
        }
    }
    public static getEmployee : Handler = async (req, res) => 
    {
        try
        {
            
            let carModel = await APIService.employee();
            res.status(200).send({message: 'done'});
        }
        catch(err)
        {
            res.status(400).send({message: err})
        }
    }
    public static getVehicle : Handler = async (req, res) => 
    {
        try
        {
            
            let carModel = await APIService.vehicle();
            res.status(200).send({message: 'done'});
        }
        catch(err)
        {
            res.status(400).send({message: err})
        }
    }
    public static getTrip : Handler = async (req, res) => 
    {
        try
        {
            
            let carModel = await APIService.trip();
            res.status(200).send({message: 'done'});
        }
        catch(err)
        {
            res.status(400).send({message: err})
        }
    } 
    public static getTripState : Handler = async (req, res) => 
    {
        try
        {
            
            let carModel = await APIService.tripState();
            res.status(200).send({message: 'done'});
        }
        catch(err)
        {
            res.status(400).send({message: err})
        }
    } 
}