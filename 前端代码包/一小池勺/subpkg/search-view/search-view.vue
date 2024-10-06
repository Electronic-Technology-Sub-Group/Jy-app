<template>
  <view class="container">
    <view class="search-container">
      <image src="../../static/搜索.png" class="img"></image>
      <input class="search-input" @input="handleInput" v-model="searchText" placeholder="搜索关键词" />
      <view class="search-button right" @click="searchRes">搜索</view>
    </view>
    <view class="history-container" v-if="searchHistory.length > 0">
      <text class="history-title">历史搜索</text>
      <view class="historyBox">
        <view class="history-item" @click="btnsearchRes(history)" v-for="(history, index) in searchHistory" :key="index">{{ history }}</view>
      </view>
      <view @click="clearAll" class="clear">🗑️清空历史</view>
    </view>

    <view v-if="!searchResults.length && !searchText" class="imgsbox">
      <image class="img" src="https://pic2.zhimg.com/v2-c24a51507ef271b12af06248bbfde3d5_r.jpg"></image>
      <view>快来搜索你喜欢的吧</view>
    </view>

    <view class="result-container" v-if="searchResults.length > 0">
      <text class="result-title">搜索结果</text>
      <view v-for="(item, index) in searchResults" :key="index">
        <rm-cardforsraech :item="item"></rm-cardforsraech>
      </view>
    </view>

    <view v-if="!searchResults.length && searchText" class="imgsbox">
      <image class="img" src="https://pic2.zhimg.com/v2-c24a51507ef271b12af06248bbfde3d5_r.jpg"></image>
      <view>没有搜索到你的关键词</view>
    </view>
  </view>
</template>

<script>
import { sentenceSearch } from '../../services/AboutTheSentence.js'
export default {
  data() {
    return {
      searchText: "",
      searchResults: [], // 搜索结果
      searchHistory: []  // 历史搜索记录
    }
  },
  methods: {
	async handleInput() {
		const res = await sentenceSearch(this.searchText)
		this.searchResults = res.data
	},
    clearAll() {
      // 清空历史记录的逻辑
      this.searchHistory = []
      uni.removeStorageSync("searchHistory")
    },
    async searchRes() {
      this.addToHistory(this.searchText)
      const res = await sentenceSearch(this.searchText)
      console.log(res)
      this.searchResults = res.data
    },
    async btnsearchRes(history) {
      const res = await sentenceSearch(history)
      this.searchResults = res.data
      this.searchText = history
    },
    addToHistory(keyword) {
      // 将搜索关键词添加到历史记录
      if (!this.searchHistory.includes(keyword)) {
        this.searchHistory.unshift(keyword)
        uni.setStorageSync("searchHistory", this.searchHistory)
      }
    },
  },
  mounted() {
    // 页面渲染时，从本地缓存获取历史搜索记录
    this.searchHistory = uni.getStorageSync("searchHistory") || []
  },
}
</script>

<style scoped lang="scss">
.container {
	width: 100vw;
	.search-container {
		width: 95%;
		height: 90rpx;
		margin: 0 auto;
		background-color: pink; // 背景板
		display: flex;
		align-items: center;
		justify-content: space-around;
		background-color: rgba(188,188,188,.2);
		margin-bottom: 30rpx;
		border-radius: 20rpx;
		.img {
			width: 45rpx;
			height: 45rpx;
		}
		.search-input {
			width: 75%;
			height: 85%;
			background-color: #fff;
			border-radius: 30rpx;
			padding-left: 30rpx;
			box-sizing: border-box;
		}
		.search-button {
			font-weight: 100;
		}
	}
	.history-container {
		width: 100%;
		.history-title {
			margin: 30rpx 0 30rpx 30rpx;
			font-weight: 700;
		}
		.historyBox {
			display: flex;
			width: 90%;
			height: auto;
			// background-color: red; // 背景板
			margin: 30rpx auto;
			flex-wrap: wrap;
			.history-item {
				padding: 10rpx 20rpx;
				margin: 5rpx;
				background-color: #ccc;
				border-radius: 10rpx;
			}
		}
		.clear {
			width: 100%;
			display: flex;
			justify-content: flex-end;
			box-sizing: border-box;
			font-size: 20rpx;
			margin-left: -30rpx;
		}
	}
	.result-container {
		.result-title {
			margin: 30rpx 0 30rpx 30rpx;
			font-weight: 700;
		}
		.result-item {
			
		}
	}
	.imgsbox {
		width: 100%;
		display: flex;
		flex-direction: column;
		align-items: center;
	}
}
</style>