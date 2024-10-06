import { dgRequest } from "./Dgindex.js"

// 添加日记
export function saveDiary(diaryContent) {
	return dgRequest.put({
		url: `/user/diary/saveDiary/${diaryContent}`
	})
}

// 删除日记
export function deletDiarye(diaryId) {
	return dgRequest.put({
		url: `/user/diary/deleteDiary/${diaryId}`
	})
}

// 查找该用户的日记
export function findDiary() {
	return dgRequest.put({
		url: `/user/diary/findDiary`
	})
}

// 查询日记详情
export function DiaryDetail(diaryId) {
	return dgRequest.put({
		url: `/user/diary/DiaryDetail/${diaryId}`
	})
}