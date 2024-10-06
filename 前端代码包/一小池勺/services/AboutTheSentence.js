import { dgRequest } from "./Dgindex.js"

// 首页每日精选
export function RecommendedSentence() {
	return dgRequest.put({
		url: "/user/sentence/find10"
	})
}

// 首页沉浸阅读
export function ImmerseReading() {
	return dgRequest.put({
		url: "/user/sentence/findAll"
	})
}

// 首页搜索句子
export function findName(name) {
	return dgRequest.put({
		url: "/user/sentence/findName",
		data: {
			name
		}
	})
}

// 查询热度前十的句子
export function findTop10() {
	return dgRequest.put({
		url: "/user/sentence/findTop10"
	})
}

// 推荐六个专辑
export function sixCategory() {
	return dgRequest.put({
		url: "/user/sentence/sixCategory"
	})
}

// 句子点赞
export function SentenceLike(sentenceId, userId) {
	return dgRequest.post({
		url: "/user/sentence/ThumbsUp",
		data: {
			sentenceId,
			userId
		}
	})
}

// 句子收藏
export function sentenceCollect(sentenceId, userId) {
	return dgRequest.post({
		url: "/user/sentence/collect",
		data: {
			sentenceId,
			userId
		}
	})
}

// 句子评论
// "commentContent": "",
// "commentDate": "",
// "momentId": 0,
// "sentenceId": 0,
// "userId": 0
export function sentenceComment(commentContent = "", sentenceId , userId) {
	return dgRequest.post({
		url: "/user/sentence/comment",
		data: {
			commentContent,
			sentenceId,
			userId
		}
	})
}

// 查看句子详细
export function sentenceDetail(sentenceId) {
	return dgRequest.post({
		url: `/user/sentence/detail/${sentenceId}`
	})
}

// 渲染全部专辑列表
export function sentenceAlbum() {
	return dgRequest.put({
		url: "/user/sentence/album"
	})
}

// 查找对应专辑的详情
export function sentenceAlbumDetail(categoryId) {
	return dgRequest.put({
		url: `/user/sentence/albumCategory/${categoryId}`,
	})
}

// 实现搜索功能
export function sentenceSearch(name) {
	return dgRequest.put({
		url: `/user/sentence/findName/${name}`
	})
}