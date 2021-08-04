const faker = require('faker/locale/es');
import { database } from "../config/database";

export class APIService
{
    public static job = async () =>
    {
        const nRegistros = 10000;
        for (let i = 0; i < nRegistros; i++) 
        {
            let test = await database.executeQuery('INSERT INTO Trabajo(Cargo,Salario) VALUES(@Cargo,@Salario)',
            [{
                name: 'Cargo',
                type:  'varchar',
                value: faker.name.jobArea()
            },
            {
                name: 'Salario',
                type:  'varchar',
                value: faker.datatype.float()
            }])
        }
        console.log('Finished - Job');
    }
    public static branchOffice = async () =>
    {
        const nRegistros = 10000;
        for (let i = 0; i < nRegistros; i++) 
        {
            let test = await database.executeQuery('INSERT INTO Sucursal(Direccion) VALUES(@Direccion)',
            [{
                name: 'Direccion',
                type:  'varchar',
                value: faker.address.streetAddress()
            }])
        }
        console.log('Finished - Branch Office');
    }
    public static client = async () =>
    {
        const nRegistros = 10000;
        for (let i = 0; i < nRegistros; i++) 
        {
            let test = await database.executeQuery('INSERT INTO Cliente(Nombre,Telefono,Email) VALUES(@Nombre,@Telefono,@Email)',
            [{
                name: 'Nombre',
                type:  'varchar',
                value: faker.name.firstName()
            },
            {
                name: 'Telefono',
                type:  'varchar',
                value: faker.phone.phoneNumber("####-####")
            },
            {
                name: 'Email',
                type:  'varchar',
                value: faker.internet.email()
            }])
        }
        console.log('Finished - Client');
    }
    public static conveyance = async () =>
    {
        const nRegistros = 10000;
        for (let i = 0; i < nRegistros; i++) 
        {
            let test = await database.executeQuery('INSERT INTO MedioDeTransporte(Medio,Carga) VALUES(@Medio,@Carga)',
            [{
                name: 'Medio',
                type:  'varchar',
                value: faker.vehicle.type()
            },
            {
                name: 'Carga',
                type:  'varchar',
                value: faker.commerce.product()
            }])
        }
        console.log('Finished - Conveyance');
    }
    public static carModel = async () =>
    {
        const nRegistros = 10000;
        for (let i = 0; i < nRegistros; i++) 
        {
            let test = await database.executeQuery('INSERT INTO MarcaDeVehiculo(Nombre,País) VALUES(@Nombre,@País)',
            [{
                name: 'Nombre',
                type:  'varchar',
                value: faker.vehicle.vehicle()
            },
            {
                name: 'País',
                type:  'varchar',
                value: faker.address.country()
            }])
        }
        console.log('Finished - Car Model');
    }
    public static employee = async () =>
    {
        const nRegistros = 10000;
        for (let i = 0; i < nRegistros; i++) 
        {
            let gender = (i % 2 === 0) ? 0 : 1;
            let test = await database.executeQuery('INSERT INTO Empleados(NumeroDeIdentidad,Trabajo,Sucursal,Nombre,FechaDeNacimiento,Telefono,Rating) VALUES(@NumeroDeIdentidad,@Trabajo,@Sucursal,@Nombre,@FechaDeNacimiento,@Telefono,@Rating)', 
            [{
                name: 'NumeroDeIdentidad',
                type:  'varchar',
                value: faker.finance.creditCardNumber()
            },
            {
                name: 'Trabajo',
                type:  'int',
                value: i
            },
            {
                name: 'Sucursal',
                type:  'int',
                value: i
            },
            {
                name: 'Nombre',
                type:  'varchar',
                value: faker.name.firstName()
            },
            {
                name: 'FechaDeNacimiento',
                type:  'varchar',
                value: faker.datatype.datetime()
            },
            {
                name: 'Telefono',
                type:  'varchar',
                value: faker.phone.phoneNumber("####-####")
            },
            {
                name: 'Rating',
                type:  'int',
                value: faker.datatype.number(
                {
                    'min': 1,
                    'max': 5
                })
            }])
        }
        console.log('Finished - Employee');
    }
    public static vehicle = async () =>
    {
        const nRegistros = 10000;
        for (let i = 0; i < nRegistros; i++) 
        {
            let test = await database.executeQuery('INSERT INTO Vehiculo(Placa,MedioDeTransporte,Marca,Año,Modelo) VALUES(@Placa,@MedioDeTransporte,@Marca,@Año,@Modelo)',
            [{
                name: 'Placa',
                type:  'varchar',
                value: faker.vehicle.vin()
            },
            {
                name: 'MedioDeTransporte',
                type:  'varchar',
                value: i
            },
            {
                name: 'Marca',
                type:  'varchar',
                value: i
            },
            {
                name: 'Año',
                type:  'varchar',
                value: faker.date.between('2015-01-01', '2015-01-05')
            },
            {
                name: 'Modelo',
                type:  'varchar',
                value: faker.vehicle.model()
            }])
        }
        console.log('Finished - Vehicle');
    }
    public static trip = async () =>
    {
        const nRegistros = 10000;
        for (let i = 0; i < nRegistros; i++) 
        {
            let test = await database.executeQuery('INSERT INTO Viaje(Cliente,Conductor,Estado,Monto,Fecha,DireccionDeDestino,Vehiculo,Sucursal) VALUES(@Cliente,@Conductor,@Estado,@Monto,@Fecha,@DireccionDeDestino,@Vehiculo,@Sucursal)',
            [{
                name: 'Cliente',
                type:  'varchar',
                value: i
            },
            {
                name: 'Conductor',
                type:  'varchar',
                value: i
            },
            {
                name: 'Estado',
                type:  'varchar',
                value: faker.datatype.number(
                {
                    'min': 0,
                    'max': 1
                })
            },
            {
                name: 'Monto',
                type:  'varchar',
                value: faker.datatype.float()
            },
            {
                name: 'Fecha',
                type:  'datetime',
                value: faker.datatype.datetime()
            },
            {
                name: 'DireccionDeDestino',
                type:  'varchar',
                value: faker.address.streetAddress()
            },
            {
                name: 'Vehiculo',
                type:  'varchar',
                value: i
            },
            {
                name: 'Sucursal',
                type:  'varchar',
                value: i
            }])
        }
        console.log('Finished - Trip');
    }
    public static tripState = async () =>
    {
        const nRegistros = 10000;
        for (let i = 0; i < nRegistros; i++) 
        {
            let test = await database.executeQuery('INSERT INTO EstadoDeViaje(Estado) VALUES(@Estado)',
            [{
                name: 'Estado',
                type:  'varchar',
                value: faker.datatype.number(
                {
                    'min': 0,
                    'max': 1
                })
            }])
        }
        console.log('Finished - Trip State');
    }
}