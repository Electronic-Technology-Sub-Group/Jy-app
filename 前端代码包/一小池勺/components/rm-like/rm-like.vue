<template>
	<view class="rm-container" @click="toThisSentence(item.sentenceId)">
		<!-- <image class="container-img" :src=" item.sentencePicture"></image> -->
		<view class="container-con">
			<view class="container-text">{{ item.sentenceText }}</view>
		</view>
	</view>
</template>

<script>
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
				
			}
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
	box-shadow: 0px 0px 2rpx 2rpx rgba(0, 0, 0, 0.1);
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