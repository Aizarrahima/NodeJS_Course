"use strict";

const express = require("express");
const categoryController = require("../controllers/category.controller");
const router = new express.Router();

// import multer
const multer = require("multer");
const path = require("path");
const fs = require("fs");

// config storage image
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, "./image/category");
  },
  filename: (req, file, cb) => {
    cb(null, "img-" + Date.now() + path.extname(file.originalname));
  },
});
let upload = multer({
  storage: storage,
});

// const { checkTokenAdmin } = require("../auth/token-admin");

router.get("/", categoryController.getAll);
router.get("/:id", categoryController.getId);
router.post("/", upload.single("image"), categoryController.add);
router.put("/:id", upload.single("image"), categoryController.update);
router.delete("/:id", categoryController.delete);

module.exports = router;
