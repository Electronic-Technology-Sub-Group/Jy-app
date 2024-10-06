<template>
	<view class="container">
		<view class="hd">
			<view class="box">
				<view class="hd_title">痕迹</view>
				<view class="hd_direction">
					每一期都有每一期的故事，看看它们是否也触动你的心弦。
				</view>
			</view>
		</view>
		<view class="bd">
			<block v-for="(item,index) in sentenceList" :key="index">
				<view class="item" @click="tothisSentence(item.sentenceId)">
					{{ item.sentenceText }}
				</view>
			</block>
		</view>
	</view>
</template>

<script>
	import { findTop10 } from '../../services/AboutTheSentence.js'
	export default {
		data() {
			return {
				sentenceList: []
			}
		},
		mounted() {
			this.fetchfindTop10()
		},
		methods: {
			async fetchfindTop10() {
				const res = await findTop10()
				console.log(res)
				this.sentenceList = res.data
			},
			async tothisSentence(id) {
				uni.navigateTo({
					url: `../../subpkg/sentence-details/sentence-details?id=${id}`
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
.container {
	position: relative;
	width: 100vw;
	height: auto;
	.hd {
		position: absolute;
		height: 450rpx;
		width: 100vw;
		display: flex;
		flex-direction: column;
		justify-content: center;
		background-image: linear-gradient(to top, #fff1eb 0%, #ace0f9 100%);
		overflow: hidden;
		&::after {
		   content: '';
		   display: block;
		   width: 100%;
		   height: 40px;
		   background-color: #fff;
		   position: absolute;
		   bottom: 0;
		   left: 0;
		   border-radius: 100%;
		   transform: translateY(50%);
		}
		.box {
			width: 90%;
			margin: 0 auto;
			.hd_title {
				font-weight: 800;
				font-size: 50rpx;
				color: #000;
				margin: -40rpx 0 30rpx 0;
			}
			.hd_date {
				color: #fff;
				font-size: 25rpx;
				font-weight: 100;
				margin-bottom: 20rpx;
				letter-spacing: 4rpx;
			}
			.hd_direction {
				font-weight: 100;
				color: #000;
			}
		}
	}
	.bd {
		position: absolute;
		left: 50%;
		transform: translateX(-50%);
		top: 380rpx;
		width: 85%;
		top: 400rpx;
		.item {
			box-sizing: border-box;
			width: 100%;
			height: auto;
			border-radius: 20rpx;
			margin-bottom: 10rpx;
			padding: 20rpx 20rpx 20rpx 20rpx;
			font-size: 25rpx;
			font-weight: 800;
			line-height: 50rpx;
			border-bottom: #ace0f9 1rpx solid;
		}
	}
}
</style>