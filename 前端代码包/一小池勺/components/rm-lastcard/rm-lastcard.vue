<template>
	<view class="rm-container">
		<image class="container-img" :src=" item.picUrl"></image>
		<view class="container-con">
			<view class="container-text">{{ item.content }}</view>
			<view class="container-aver" style="font-size: 30rpx;">{{ item.avater }}</view>
		</view>
		<view class="container-footer">
			<view class="footer-item">
				<image src="../../static/rm-nice.png"></image>
				<text>{{ item.niceTotal }}</text>
			</view>
			<view class="footer-item">
				<image src="../../static/rm-cart.png"></image>
				<text>{{ item.cartTotal }}</text>
			</view>
			<view class="footer-item">
				<image src="../../static/rm-talk.png"></image>
				<text>{{ item.commentsTotal }}</text>
			</view>
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
				
			};
		}
	}
</script>

<style lang="scss" scoped>
.rm-container {
	margin: 40rpx auto;
	width: 90%;
	height: 800rpx;
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
		height: 300rpx;
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
		&::before {
			content: '';
			background-color: rgba(204,204,204,.3);
			width: 100%;
			height: 1px;
			position: absolute;
			bottom: -30rpx;
		}
	}
	.container-footer {
		margin: 0 auto;
		display: flex;
		width: 80%;
		justify-content: space-between;
		.footer-item {
			display: flex;
			align-items: center;
			image {
				width: 40rpx;
				height: 40rpx;
				margin-right: 20rpx;
			}
			text {
				font-size: 20rpx;
				color: #ccc;
			}
		}

	}
}
</style>