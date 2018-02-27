var express = require('express');
var router = express.Router();

var connection = require('../config/db.js')

var username = 'admin',
    password = '123456'

function checkLoginStatus(req, res, next) {// 检查登录模块
  if(!req.session.loginStatus) {
    return res.redirect('/login')
  }
  next()
}

module.exports = function(app) {
  app.get('/', function(req, res) {
    res.render('index', {
      title: '首页'
    })
  })
  app.get('/api/v1/article/:page', function(req, res) {
    var page = 0,
        num = 10
    if(req.params.page > 1) {
      page = (req.params.page - 1) * num
    }
    var sql = 'select id, title, create_time from article order by create_time desc limit ' + page + ', ' + num
    connection.query(sql, function(err, result) {
      if(err) throw err
      res.json({
        code: 200,
        data: result
      })
    })
  })
  app.get('/article/:id', function(req, res) {
    var sql = 'select * from article where id = ' + parseInt(req.params.id)
    connection.query(sql, function(err, result) {
      if(err) throw err
      res.render('article', {
        title: result[0].title,
        data: result[0]
      })
    })
  })
  app.get('/api/v1/article/edit/:id', function(req, res) {
    var sql = 'select * from article where id = ' + parseInt(req.params.id)
    connection.query(sql, function(err, result) {
      if(err) throw err
      res.json({
        code: 200,
        data: result
      })
    })
  })
  app.post('/api/v1/article/edit', function(req, res) {
    var sql = 'update article set title=?, content=? where id=?'
    connection.query(sql, [req.body.title, req.body.content, req.body.id], function(err, result) {
      if(err) throw err
      res.json({
        code: 200,
        msg: '修改成功'
      })
    })
  })
  app.get('/api/v1/article/delete/:id', function(req, res) {
    var sql = 'delete from article where id = ' + parseInt(req.params.id)
    connection.query(sql, function(err, result) {
      if(err) throw err
      res.json({
        code: 200,
        msg: '删除成功'
      })
    })
  })
  app.get('/login', function(req, res) {
    if(req.session.loginStatus) {
      res.redirect('/dashboard')
    }else {
      res.render('dashboard/login', {
        title: '登录'
      })
    }
  })
  app.post('/login', function(req, res) {
    if(req.body.username === username) {
      if(req.body.password === password) {
        req.session.loginStatus = true
        res.redirect('/dashboard')
      }else {
        res.json({
          msg: '密码错误'
        })
      }
    }else {
      res.json({
        msg: '用户名错误'
      })
    }
  })
  app.get('/dashboard',checkLoginStatus, function(req, res, next) {
    res.render('dashboard/dashboard', {
      title: '后台'
    })
  })
  // app.get('/dashboard/new',checkLoginStatus, function(req, res) {
  //   res.render('dashboard/new', {
  //     title: '新文章'
  //   })
  // })
  app.post('/post', function(req, res) {
    connection.query('insert into article (title, content) values (?, ?)', [req.body.title, req.body.content], function(err, result) {
      if(err) throw err
      res.redirect('/dashboard')
    })
  })

  app.get('/api/v1/search/:key', function(req, res) {
    if(req.params.key) {
      var sql = 'select * from article where title like ' + req.params.key
      connection.query(sql, function(err, result) {
        if(err) throw err
        res.json({
          code: 200,
          data: result
        })
      })
    }
  })
}
