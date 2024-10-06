import { SentenceLike,sentenceCollect } from '../services/AboutTheSentence.js'
export default {
	// 开启命名空间
	namespaced: true,
	
	// 共享的行为数据
	state: () => ({
		SentenceLikeArray: [],
		SentenceCollectArray: [],
		DynamicsLikeArray: [],
		UserDynamicsPostArray: []
	}),
	
	// 修改数据
	mutations: {
		UpdateSentenceLikeArray(state, NewSentenceList) {
			state.SentenceLikeArray = NewSentenceList
		},
		UpdateSentenceCollectArray(state, NewSentenceCollectArray) {
			state.SentenceCollectArray = NewSentenceCollectArray
		},
		UpdateDynamicsLikeArray(state, NewDynamicsLikeArray) {
			state.SentenceCollectArray = NewDynamicsLikeArray
		}
	},
	
	// 提供异步方法
	getters: {
		
	}
}