import express from "express";
import cors from "cors";
import pg from "pg";
import dotenv from "dotenv";

const app = express();
app.use(express.json());
dotenv.config();
app.use(cors());

const db = new pg.Pool({
  connectionString: process.env.DB_CONN_STRING,
});

app.get("/", (req, res) => {
  res.status(200).json(`This is OUR root route`);
});

app.get(`/movies`, async function (req, res) {
  const result = await db.query(`SELECT * FROM movieData`);
  res.json(result.rows);
});

app.get(`/reviews`, async function (req, res) {
  const reviews = await db.query(`SELECT * FROM reviewData`);
  res.json(reviews.rows);
});

app.post(`/reviews`, async function (req, res) {
  const requestFromClient = req.body;
  console.log(requestFromClient);
});

app.listen(7878, () => {
  console.log(`server running on http://localhost:7878`);
});
