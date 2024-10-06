import { dgRequest } from "./Dgindex.js"

// 动态点赞接口
// 功能描述：点赞、取消赞
export function Dynamiclikes(momentId, userId) {
	return dgRequest.post({
		url: "/user/moment/ThumbsUp",
		data: {
			momentId,
			userId
		}
	})
}

// 社区动态的一个分页查询
// 功能描述：查询社区内全部动态
// page 页码 pageSize 偏移量
export function PageoffsetDynamic(momentCategory = '社区', page = 1, pageSize = 5) {
	return dgRequest.get({
		url: "/user/moment/page",
		data: {
			momentCategory,
			page,
			pageSize
		}
	})
}

// 添加动态接口A
// "categoryId": 0,
// "momentContent": "",
// "momentCreateDate": "",
// "momentId": 0,
// "momentPicture": [],
// "userId": 0
export function addDynamic(momentContent, momentPicture, userId) {
	return dgRequest.put({
		url: "/user/moment/addMoment",
		data: {
			momentContent,
			momentPicture,
			userId
		}
	})
}

// 添加动态接口B
// "categoryId": 0,
// "momentContent": "",
// "momentCreateDate": "",
// "momentId": 0,
// "momentPicture": [],
// "userId": 0
export function addDynamicB(categoryId, momentContent, momentPicture, userId) {
	return dgRequest.put({ 
		url: "/user/moment/addMoment",
		data: {
			categoryId,
			momentContent,
			momentPicture,
			userId
		}
	})
}

// 推荐六个话题专辑
export function sixMomentCategory() {
	return dgRequest.put({
		url: "/user/moment/sixMomentCategory"
	})
}

// 查看动态详细内容
export function DynamicDetail(momentId) {
	return dgRequest.put({
		url: `/user/moment/${momentId}`
	})
}


// 话题分类接口
export function album() {
	return dgRequest.put({
		url: "/user/moment/album"
	})
}

// 动态评论接口
export function MomentComment(commentContent, momentId, userId) {
	return dgRequest.post({
		url: "/user/moment/comment",
		data: {
			commentContent,
			momentId,
			userId
		}
	})
}

// 话题渲染接口
export function AlbumCategoryItem(categoryId) {
	return dgRequest.put({
		url: `/user/moment/albumCategory/${categoryId}`
	})
}

// 推荐话题热榜 TOP 10
export function TopTenMomentCategory() {
	return dgRequest.put({
		url: "/user/moment/TopTenMomentCategory"
	})
}

// 删除动态接口
export function deleteDymaic(momentId) {
	return dgRequest.put({
		url: `/user/moment/dropMoment/${momentId}`
	})
}