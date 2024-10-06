<template>
	<view class="rm-container" @click="toThisSentence(item.sentenceId)">
		<!-- <image class="container-img" :src=" item.sentencePicture"></image> -->
		<view class="container-con">
			<view class="container-text">{{ item.sentenceText }}</view>
		</view>
		<view class="container-footer">
				<view class="footer-item">
					<image :src="item.logo === 1 ? '../../static/点赞 (1).png' : '../../static/025_点赞-30.png'"></image>
					<text>{{ item.likeNum }}</text>
				</view>
				<view class="footer-item">
					<image :src="item.judge === 1 ? '../../static/收藏 (2).png' : '../../static/025_会员.png'"></image>
					<text>{{ item.favoriteNum }}</text>
				</view>
				<view class="footer-item">
					<image src="../../static/025_文本.png"></image>
					<text>{{ item.commentNum }}</text>
				</view>
		 </view>
	</view> 
</template>

<script>
	import { SentenceLike } from '../../services/AboutTheSentence.js'
	export default {
		name:"rm-cardmore",
		props: {
		  item: {
		    type: Object,
		    required: true
		  }
		},
		data() {
			return {
				userId: null
			}
		},
		mounted() {
			uni.getStorage({
			  key: 'userId',
			  success:(res) => {
			    // console.log(res.data)
				this.userId = res.data
			  }
			})
		},
		methods: {
			toThisSentence(id) {
				uni.navigateTo({
					url: `../../subpkg/sentence-details/sentence-details?id=${id}`
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
.rm-container {
	margin: 40rpx auto;
	width: 90%;
	// height: 800rpx;
	height: auto;
	border-radius: 30rpx;
	overflow: hidden;
	box-shadow: 0 0 15rpx rgba(31,11,51,0.3);
	animation: glow 2s infinite;
	@keyframes glow {
	  0% {
		box-shadow: 0 0 15rpx rgba(31,11,51,0.3);
	  }
	  50% {
		box-shadow: 0 0 20rpx rgba(31,11,51,0.6);
	  }
	  100% {
		box-shadow: 0 0 15rpx rgba(31,11,51,0.3);
	  }
	}
	.container-img {
		width: 100%;
		height: 300rpx;
	}
	.container-con {
		position: relative;
		margin: 70rpx auto;
		width: 90%;
		.container-text {
			font-size: 30rpx;
			color: #000;
		}
		.container-aver {
			position: absolute;
			color: #ccc;
			right: 30rpx;
			bottom: 0;
		}
	}
	.container-footer {
		margin: 0 auto;
		display: flex;
		width: 80%;
		justify-content: space-between;
		.footer-item {
			margin-bottom: 30rpx;
			display: flex;
			align-items: center;
			image {
				width: 40rpx;
				height: 40rpx;
				margin-right: 20rpx;
			}
			text {
				font-size: 20rpx;
			}
		}

	}
}
</style>