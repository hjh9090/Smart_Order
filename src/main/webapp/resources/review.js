function deleteReview(n){
	let ok = confirm('글을 삭제하시겠습니까?');
	
	if(ok){
location.href = "del.review?r_num="+n;		
	}
	}




function updateReview(r_content,n) {
	let content = prompt("수정할 제목", r_content);
	if (content != null && content != "") {

		location.href = "update.review?r_content=" + content
		+"&r_num="+n;
	}	
}

