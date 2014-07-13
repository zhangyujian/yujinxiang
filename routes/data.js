var mysql         = require('mysql')
  , TEST_DATABASE = 'yujinxiang'
  , md5           = require('./common').md5
  , session       = require('./common').session
  , bc            = require('buffer-concat');

var connection = mysql.createConnection({
    host : 'localhost',
    port : 3306,
    user : 'root',
    password : 'qweqwe',
    database : TEST_DATABASE,
});

connection.connect();

//cat list
exports.data = function(req, res){
    session(req, res, function(){
        res.render('admin/data', {
            title: "数据管理",
            user: req.session.user,
            message: req.flash('message')
        });
    });
};

exports.export = function(req, res){
    session(req, res, function(){
        connection.query(
            'mysqldump -hlocalhost -uroot -proot nodecms > testtest.sql',
            function selectCb(err, results, fields) {
                if (err) {
                    throw err;
                }
                req.flash('message','导出成功！');
                res.redirect('/admin/data');
            }
        );
    });
};