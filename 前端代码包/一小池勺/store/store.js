import Vue from 'vue'

import Vuex from 'vuex'

import moduleUserActions from './UserActions.js'
import moduleUsrtInfo from './UserInfo.js'

Vue.use(Vuex)

const store = new Vuex.Store({
	// 挂载 store 模块
	modules: {
		'user_action': moduleUserActions,
		'user_info': moduleUsrtInfo
	}
})

// 共享实例
export default store