var db = require('./db');

module.exports = {
	get: function(reportId, callback){
		var sql = "select * from report where id="+reportId;
		db.getResults(sql, function(result){

			if(result.length >0){
				callback(result[0]);
			}else{
				callback([]);
			}
		});
	},
	getAll: function(callback){
		var sql = "select * from report";
		db.getResults(sql, function(results){
			callback(results);
		});
    },
    getAllMy: function(reporterId,callback){
		var sql = "select * from report where reporter ="+reporterId;
		db.getResults(sql, function(results){
			callback(results);
		});
	},
	validate: function(report, callback){
        var sql = "select * from report where email = '" + report.email + "' and password = '" + user.password + "' and status = 1 ";
		db.getResults(sql, function(result){

			if(result.length > 0 ){
				callback(result[0]);
			}else{
				callback([]);
			}
		})
	},
	insert: function(report, callback){
		var sql = "insert into report values(null, '"+ report.title+"','"+ report.description+"','"+ report.category+"', 0, '"+ report.reporterId+"',0,'"+report.date+"','null','null',0,'null')";
		db.execute(sql, function(success){
			callback(success);
		});
    },
    // insert: function(user, callback){
	// 	var sql = "insert into user values(null, '"+ user.email+"','"+ user.name+"','"+ user.password+"', 2, 0)"
	// 	db.execute(sql, function(success){
	// 		callback(success);
	// 	});
	// },
    editorInsert: function(report, callback){
		var sql = "insert into report values(null, '"+ user.email+"','"+ user.name+"','"+ user.password+"', 2, 0)"
		db.execute(sql, function(success){
			callback(success);
		});
	},
	update: function(report, callback){
		var sql = "update report set name='"+user.name+"',  email ='"+user.email+"' where id="+report.id;
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	},
	approve: function(report, callback){
		var sql = "update report set status = 1 where id="+report.id;
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	},
	delete: function(report, callback){
		var sql = "delete from report where id="+report.id;
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	}
}