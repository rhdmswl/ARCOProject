console.log("reivew module......");
var CollectionReviewService = (function(){

		function add(review, callback, error){
		console.log("review.........");
		$.ajax({
					type: 'post',
					url: '/review/new',
					data : JSON.stringify(review),
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
		var seq = param.seq;
		var page = param.page || 1;
		
		$.getJSON("/review/pages/" + seq + "/" + page + ".json",
			function(data) {
				if(callback) {

					callback(data.reviewCnt,data.list); 
				}
			}).fail(function(xhr, status, err) {
				if(error) {
					error();
				}
			});
	}
	
	function remove(revSeq, callback, error) {
		$.ajax( {
			type: 'delete',
			url : '/review/' + revSeq,
			dataType: 'text',
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
	
	
	function update(CollectionRev, callback, error) {

		console.log("revSeq: " + CollectionRev.revSeq);

		$.ajax({
			type : 'put',
			url : '/review/' + CollectionRev.revSeq,
			data : JSON.stringify(CollectionRev),
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
	
	function get(revSeq, callback, error) {
	console.log("get reply.........");
		$.get("/review/" + revSeq + ".json", function(result) {

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
	};
	
	return {
		add:add,
		getList:getList,
		remove:remove,
		update:update,
		get:get,
		displayTime:displayTime
	};
})();