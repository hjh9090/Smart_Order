function deleteMenu(n) {
	let ok = confirm('삭제하시겠습니까?');

	if (ok) {
		location.href = "delete.do?m_num=" + n;
	}

}

