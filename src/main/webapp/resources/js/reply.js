console.log("Reply Module...............");

var replyService = (function() {

	function add(reply, callback, error) {
		console.log("add reply.........");
		
				$.ajax({
			type: 'post',
			url: '/replies/new',
			data : JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success: function(result, status, xhr) {
				if(callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er){
				if(error) {
					error(er);
				}
			}
		})
	}
	// end add
	
		function getList(param, callback, error) {
		var post_id = param.post_id;
		var page = param.page || 1;
		
		$.getJSON("/replies/pages/" + post_id + "/" + page + ".json",
			function(data) {
				if(callback) {
					  callback(data.com_cnt,data.list);
				}
			}).fail(function(xhr, status, err) {
				if(error) {
					error();
				}
			});
	}

	function remove(com_id, callback, error) {
		$.ajax( {
			type: 'delete',
			url : '/replies/' + com_id,
			success : function(result, status, xhr) {
				if(callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if(error) {
					error(er);
				}
			}
		});
	}
	
	function update(reply, callback, error) {

		console.log("RNO: " + reply.com_id);

		$.ajax({
			type : 'put',
			url : '/replies/' + reply.com_id,
			data : JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}
	
	
	function get(rno, callback, error) {
	console.log("get reply.........");
		$.get("/replies/" + com_id + ".json", function(result) {

			if (callback) {
				callback(result);
			}

		}).fail(function(xhr, status, err) {
			if (error) {
				error();
			}
		});
	}
	
function displayTime(timeValue) {
	var today = new Date();
	var gap = today.getTime() - timeValue;
	var dateObj = new Date(timeValue);
	var str = "";
	
	if(gap <(1000*60*60*24)){
	
	var hh=dateObj.getHours();
	var mi = dateObj.getMinutes();
	var ss = dateObj.getSeconds();
	
	return [(hh>9 ? '':'0')+hh , ':' , (mi > 9 ? '' : '0')+mi, ':', (ss>9? '':'0') + ss].join('');
	
	} else {
	        var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth() + 1; //getMonth는 zero-based
			var dd = dateObj.getDate();
			return [yy, '/', (mm>9 ? '': '0') + mm, '/', (dd>9 ? '':'0') + dd].join('');
			
			}
	}
	

	return {
		add:add,
		getList:getList,
		remove:remove,
		update:update,
		get:get,
		displayTime:displayTime
	};
})();