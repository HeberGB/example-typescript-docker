import * as express from "express";
import { exampleRouter } from "./routes/example.router";

const PORT = 8080;

let app = express();

app.use(exampleRouter);

app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});
