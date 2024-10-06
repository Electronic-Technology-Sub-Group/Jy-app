<template>
	<view class="container">
	  <textarea class="content" maxlength="999" v-model="diaryContent"></textarea>
	  <view class="btn">
			<view class="save-btn" @click="TosaveDiary">保存</view>
	  </view>
	</view>
</template>

<script>
	import { saveDiary } from '../../services/AboutDaily.js'
	export default {
		data() {
			return {
				timeData: "",
				diaryContent: ""
			}
		},
		methods: {
			async TosaveDiary() {
				const res = await saveDiary(this.diaryContent)
				console.log(res)
				if(res.code === 200) {
					uni.showToast({
						title: '保存成功',
						success: function (res) {
							setTimeout(()=> {
								uni.switchTab({
									url: "../../pages/find/find"
								})
							}, 2000)
						}
					})
				}
			},
			async onPullDownRefresh() {
				
			},
		}
	}
</script>

<style lang="scss">
	.container {
		padding: 20rpx;
	}

	.date {
		position: relative;
		font-size: 26rpx;
		font-family: Arial, Helvetica, sans-serif;
		color: #999999;
		margin-bottom: 20rpx;
		margin-left: 20rpx;
	}

	.date::before {
		 position: absolute;
		 left: -25rpx;
		 top: 4rpx;
		 content: '';
		 width: 20rpx;
		 height: 20rpx;
		 background-color:purple;
		 border-radius: 50%;
	}

	.content {
	  width: 100%;
	  height: 300rpx;
	  font-size: 28rpx;
	  line-height: 1.5;
	  white-space: pre-wrap;
	  word-break: break-all;
	  border: 1rpx solid #e5e5e5;
	  border-radius: 5rpx;
	  padding: 20rpx;
	  margin-bottom: 20rpx;
	  box-sizing: border-box;
	  background-color: transparent;
	}

	.btn {
		display: flex;
		justify-content: center;
		margin-top: 30rpx;
	}

	.save-btn {
	  height: 60rpx;
	  line-height: 60rpx;
	  text-align: center;
	  font-size: 28rpx;
	  width: 300rpx;
	  color: #999999;
	  border-radius: 15rpx;
	  cursor: pointer;
	  border: #999999 1px solid;
	  margin: 0 30rpx;
	}
</style>
