var db = require('./db');


module.exports = {
	get: function(userId, callback){
		var sql = "select * from user where id="+userId;
		db.getResults(sql, function(result){

			if(result.length >0){
				callback(result[0]);
			}else{
				callback([]);
			}
		});
	},
	getAll: function(callback){
		var sql = "select * from user";
		db.getResults(sql, function(results){
			callback(results);
		});
	},
	validate: function(user, callback){
        var sql = "select * from user where email = '" + user.email + "' and password = '" + user.password + "' and status = 1 ";
		db.getResults(sql, function(result){

			if(result.length > 0 ){
				callback(result[0]);
			}else{
				callback([]);
			}
		})
	},
	insert: function(user, callback){
		var sql = "insert into user values(null, '"+ user.email+"','"+ user.name+"','"+ user.password+"', 2, 0)"
		db.execute(sql, function(success){
			callback(success);
		});
	},
	update: function(user, callback){
		var sql = "update user set name='"+user.name+"',  email ='"+user.email+"' where id="+user.id;
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	},
	approve: function(user, callback){
		var sql = "update user set status = 1 where id="+user.id;
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	},
	delete: function(user, callback){
		var sql = "delete from user where id="+user.id;
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	}
}