var mysql         = require('mysql')
  , md5           = require('./common').md5
  , session       = require('./common').session
  , connection    = require('./common').connection
  , markdown      = require('markdown').markdown
  , bc            = require('buffer-concat');

exports.index = function(req, res){
	connection.query(
	  'SELECT * FROM posts WHERE cid = 6 order by id desc limit 4',
	  function selectCb(err, results, fields) {
	    if (err) {
	      throw err;
	    }
	    res.render('default/index', { 
	    	tables: results,
	    	title: "首页"
	    });
	  }
	);
};

exports.detail = function(req, res){
	var sql = "SELECT * FROM posts WHERE id =?",
            values = connection.escape(parseInt(req.params.id));
        connection.query(sql, values, 
            function selectCb(err, results) {
                if (err) {
                    console.log(err);
                }
                results[0].content = markdown.toHTML(results[0].content);
                res.render('default/detail', {
                    title: "编辑分类",
                    table: results[0]
                });
            }
        );
};

exports.contact = function(req, res){
	res.render('default/contact', {
		title: "联系我们"
	});
};

exports.about = function(req, res){
	res.render('default/about', {
		title: "关于我们"
	});
};

exports.product = function(req, res){
	res.render('default/product', {
		title: "案例展示"
	});
};

exports.server = function(req, res){
	var sql = "SELECT * FROM posts WHERE cid =?",
            values = 7;
        connection.query(sql, values, 
            function selectCb(err, results) {
                if (err) {
                    console.log(err);
                }
                res.render('default/server', {
					title: "服务报价",
					tables: results
				});
            }
        );
	
};

exports.hotel = function(req, res){
	var sql = "SELECT * FROM posts WHERE cid =?",
            values = 8;
        connection.query(sql, values, 
            function selectCb(err, results) {
                if (err) {
                    console.log(err);
                }
                res.render('default/hotel', {
					title: "合作酒店",
					tables: results
				});
            }
        );
	
};

exports.movie = function(req, res){
	res.render('default/movie', {
		title: "微电影"
	});
};

exports.login = function(req, res){
	fs.readdir('./views/', function(err,fileNameArray){
	    if(err){
	        console.error(err);
	    }else{
	        
	    	//var fileNameArray = JSON.parse(fileNameArray);
	    	console.log(fileNameArray);
		    res.render('default/login', {
				title: "登录"
			});
		}
	});

};