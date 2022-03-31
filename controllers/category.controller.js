"use strict";

// import express
const express = require("express");
const app = express();
app.use(express.json());

// import multer
const multer = require("multer");
const path = require("path");
const fs = require("fs");

// database
const db = require("../database");

// endpoint
module.exports = {
  getAll: (req, res) => {
    const sql = "select * from category";
    db.query(sql, (err, results) => {
      if (err) throw err;
      res.json({
        message: "Berhasil menampilkan semua data",
        data: results,
      });
    });
  },

  getId: (req, res) => {
    const id = req.params.id;
    db.query(`select * from category where id_category = ${id}`, (err, results) => {
      if (err) throw err;
      res.json({
        message: "Berhasil menampilkan data",
        data: results,
      });
    });
  },

  add: (req, res) => {
    if (!req.file) {
      res.json({
        message: "No uploaded file",
      });
    } else {
      let category = {
        name: req.body.name,
        description: req.body.description,
        image: req.file.filename,
      };
      db.query(`insert into category set ?`, category, (err, results) => {
        if ((null, err)) throw err;
        res.json({
          message: "Berhasil menambahkan data",
          data: category,
        });
      });
    }
  },

  update: (req, res) => {
    let id = req.params.id;
    let data = {
      name: req.body.name,
      description: req.body.description,
    };
    if (req.file) {
      data.image = req.file.filename;
      db.query(`update category set ? where id_category = ${id}`, data, (err, result) => {
          if (err) throw err;
          res.json({
            message: "Success updated data",
          });
        }
      );
    } else {
      db.query(`update category set ? where id_category = ${id}`, data, (err, result) => {
          if (err) {
            throw error;
          } else {
            res.json({
              message: "data has been updated",
            });
          }
        }
      );
    }
  },

  delete: (req, res) => {
    const id = req.params.id;
    db.query(`delete from category where id_category = ${id}`, (err, results) => {
      if ((null, err)) throw err;
      res.json({
        message: "Berhasil menghapus data",
        data: results,
      });
    });
  },
};
