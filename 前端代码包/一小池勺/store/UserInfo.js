export default {
	// 开启命名空间
	namespaced: true,
	
	// 共享的用户信息数据
	state: () => ({
		UserAvatarPic: "",
		UserAvatarName: "",
		UserAvatarId: "",
		UserAvatarSignature: ""
	}),
	
	// 修改数据
	mutations: {
		UpdateUserAvatarPic(state, NewUserAvatarPic) {
			state.UserAvatarPic = NewUserAvatarPic
		},
		UpdateUserAvatarName(state, NewUserAvatarName) {
			state.UserAvatarName = NewUserAvatarName
		},
		UpdateUserAvatarId(state, NewUserAvatarId) {
			state.UserAvatarId = NewUserAvatarId
		},
		UpdateUserAvatarSignature(state, NewSignature) {
			state.UserAvatarSignature = NewSignature
		}
	},
	
	// 提供异步方法
	getters: {
		
	}
}