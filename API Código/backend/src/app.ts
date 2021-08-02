import express from "express";
import cors from 'cors';
import path from 'path';


import './config/database';
import routes from './routes/index.routes';

const app = express();

app.set('port', process.env.PORT || 4000 )

app.use(cors());
app.use(express.json());
app.use(express.static(path.resolve(__dirname, 'public')))
app.use(express.urlencoded({extended: false}))

app.use('/',routes);

export default app;