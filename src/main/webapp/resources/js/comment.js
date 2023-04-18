// 데이터 전송 객체 생성
var comment = {

  // 이벤트 등록
  init: function() {
    var _this = this;
    
    // 수정 버튼 변수화
    const updateBtns = document.querySelectorAll('.comment-update-btn');
    
    // 모든 수정 버튼별, 이벤트 등록
    updateBtns.forEach(function(item) {
      item.addEventListener('click', function() { // 클릭 이벤트 발생시,
        var form = this.closest('form'); // 클릭 이벤트가 발생한 버튼에 제일 가까운 폼을 찾고,
        _this.update(form); // 해당 폼으로, 업데이트 수행한다!
      });
    });
  },
  
  // 댓글 수정
  update: function(form) {
  
    // url, 데이터
    var url = 'localhost:8080/replies/'+com_id;
	var data = {com_id: $('#com_id'), com_content: $('#com_content')};

	fetch(url, {
  		method: 'PUT',
  		body: JSON.stringify(data), // data can be `string` or {object}!
  		headers:{
   				'Content-Type': 'application/json'
  		}
	}).then(res => res.json())
		.then(response => console.log('Success:', JSON.stringify(response)))
		.catch(error => console.error('Error:', error));
		
      window.location.reload(true); // 페이지 리로드

  }
};

// 객체 초기화
comment.init();