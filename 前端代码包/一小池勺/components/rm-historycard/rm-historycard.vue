<template>
	<view class="rm-container">
		<view class="rm-container_header">
			<image class="header-img" src="../../static/rm-moon.png"></image>
			<!-- <view class="header-data">11-06 | 星期一</view> -->
		</view>
		<view class="rm-container_items">
			<view class="item1">
				<view class="item_year">1970年</view>
				<view class="item_text">中华人民共和国与意大利建交。</view>
			</view>
			<view class="item2">
				<view class="item_year">2012年</view>
				<view class="item_text">巴拉克·奥巴马成功连任美国总统。</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		name:"rm-historycard",
		data() {
			return {
				
			}
		}
	}
</script>

<style lang="scss" scoped>
.rm-container {
	width: 90%;
	margin:0 auto;
	height: 500rpx;
	background-color: #fff;
	border-radius: 30rpx;
	box-shadow: 0px 0px 2rpx 2rpx rgba(0, 0, 0, 0.1);
	.rm-container_header {
		display: flex;
		justify-content: space-between;
		height: 25%;
		.header-img {
			margin: 30rpx 0 0 30rpx;
			width: 50rpx;
			height: 50rpx;
		}
		.header-data {
			margin: 30rpx 30rpx 0 0;
			font-family: '楷体';
		}
    }
	.rm-container_items {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		height: 70%;
		width: 100%;
		.item1 {
			width: 90%;
			height: 130rpx;
			font-size: 30rpx;
			margin-bottom: 40rpx;
			// background-color: rgba(200,200,200,.2);
			box-shadow: 1rpx 1rpx 1rpx rgba(0,0,0,.2);
			border-radius: 15rpx;
			.item_year {
				margin: 10rpx 0 0 10rpx;
				font-size: 25rpx;
				color: wheat;
			}
			.item_text {
				margin-top: 10rpx;
				text-align: center;
				font-weight: 100;
			}
		}
		.item2 {
			width: 90%;
			height: 130rpx;
			font-size: 30rpx;
			border-radius: 15rpx;
			box-shadow: 1rpx 1rpx 1rpx rgba(0,0,0,.2);
			.item_year {
				margin: 10rpx 0 0 10rpx;
				font-size: 25rpx;
				color: wheat;
			}
			.item_text {
				margin-top: 10rpx;
				text-align: center;
			}
		}
	}
}
</style>