<template>
	<view class="rm-container">
		<view class="container-header">你是什么星座？</view>
		<view class="container-img">
			<image src="../../static/rm-good.png"></image>
		</view>
		<view class="container-text">
			我怀揣的心是一块磁铁,可以吸引更多我渴望的东西。
		</view>
		<view class="container-btn" @click="toZwglDetail">
			查看更多
		</view>
	</view>
</template>

<script>
	export default {
		name:"rm-cardformedian",
		data() {
			return {
				
			}
		},
		methods: {
			toZwglDetail() {
				uni.navigateTo({
					url: "../../subpkg/zwgl-detail/zwgl-detail"
				})
			}
		},
	}
</script>

<style lang="scss" scoped>
.rm-container {
	position: relative;
	width: 100%;
	height: 550rpx;
	border-radius: 60rpx;
	background: linear-gradient(to bottom, #87CEFA, #F5F5F5);
	.container-header {
		position: absolute;
		top: 25rpx;
		left: 30rpx;
		width: 200rpx;
		height: 40rpx;
		font-size: 25rpx;
		line-height: 40rpx;
		text-align: center;
		color: #fff;
		background-color: transparent;
		box-shadow: 0px 0px 10px 2px rgba(0, 0, 0, 0.1);
		border-radius: 20rpx;
	}
	
	.container-img {
		position: absolute;
		width: 200rpx;
		height: 200rpx;
		top: 80rpx;
		left: 50%;
		transform: translateX(-50%);
		position: absolute;
		image {
			width: 100%;
			height: 100%;
		}
	}
	
	.container-text {
		position: absolute;
		top: 300rpx;
		width: 500rpx;
		left: 50%;
		transform: translateX(-50%);
		font-size: 35rpx;
		font-family: '楷体';
		color: #000;
	}
	
	.container-btn {
		position: absolute;
		width: 80%;
		height: 100rpx;
		line-height: 100rpx;
		text-align: center;
		font-size: 28rpx;
		color: #000;
		bottom: 30rpx;
		left: 50%;
		transform: translateX(-50%);
		border-radius: 30rpx;
		box-shadow: 0px 0px 10px 2px rgba(0, 0, 0, 0.1);
	}
}
</style>