import { dgRequest } from "./Dgindex.js"

// 用户首页查询
export function userHomePage(userId) {
	return dgRequest.put({
		url: `/user/user/userHomePage/${userId}`
	})
}

// 用户个人信息查询
export function userDetail(userId) {
	return dgRequest.put({
		url: `/user/user/userDetail/${userId}`,
	})
}

// 用户主页动态查询
export function momentShow(userId) {
	return dgRequest.put({
		url: `/user/user/moment/${userId}`,
	})
}

// 用户主页点赞查询
export function likeShow(userId) {
	return dgRequest.put({
		url: `/user/user/like/${userId}`,
	})
}

// 用户主页收藏查询
export function favoriteShow(userId) {
	return dgRequest.put({
		url: `/user/user/favorite/${userId}`,
	})
}

// 关注与取消关注
export function followIng(followUserId, userId){
	return dgRequest.post({
		url: "/user/user/follow",
		data: {
			followUserId,
			userId
		}
	})
}

// 修改用户头像
// 请求参数：
// "avatar": "",
// "name": "",
// "phone": "",
// "sex": "",
// "signature": "",
// "userId": 0
export function modifyUserInfoAvatar(avatar, userId) {
	return dgRequest.put({
		url: "/user/user",
		data: {
			avatar,
			userId
		}
	})
}

// 修改用户姓名
export function modifyUserInfoName(name, userId) {
	return dgRequest.put({
		url: "/user/user",
		data: {
			name,
			userId
		}
	})
}

// 修改用户简介
export function modifyUserSignatory(signature, userId) {
	return dgRequest.put({
		url: "/user/user",
		data: {
			signature,
			userId
		}
	})
}

// 查询关注
export function followList() {
	return dgRequest.put({
		url: "/user/user/followList"
	})
}

// 查询粉丝
export function fanList() {
	return dgRequest.put({
		url: "/user/user/fanList"
	})
}