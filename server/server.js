import express from "express";
import cors from "cors";
import pg from "pg";
import dotenv from "dotenv";

const app = express();
app.use(express.json());
dotenv.config();
app.use(cors());

const db = new pg.Pool({
  conntectionString: process.env.DB_CONN_STRING,
});

app.get("/", (req, res) => {
  res.status(200).json(`This is OUR root route`);
});

app.listen(7878, () => {
  console.log(`server running on http://localhost:7878`);
});
