<template>
	<view class="container">
		<image class="header-img1" src="../../static/鱼3.png"></image>
		<image class="header-img2" src="../../static/鱼2.png"></image>
		<image class="header-img3" src="../../static/鱼3.png"></image>
		<image class="header-img4" src="../../static/鱼2.png"></image>
		<image class="header-img5" src="../../static/鱼2.png"></image>
		<image class="header-img6" src="../../static/鱼2.png"></image>
		<textarea name="" id="" cols="30" rows="10" class="text"></textarea>
		<view class="btn">
			发送
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				
			}
		}
	}
</script>

<style lang="scss" scoped>
.container {
	width: 100vw;
	height: 100vh;
	background-color: #000;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	.text {
		border-radius: 30rpx;
		margin: 0 auto;
		width: 80%;
		height: 400rpx;
		background-color: #f4f5ff;
		box-sizing: border-box;
		padding: 30rpx;
	}
	.btn {
		margin-top: 30rpx;
		color: #fff;
		line-height: 90rpx;
		text-align: center;
		width: 230rpx;
		height: 90rpx;
		box-shadow: #ccc 1px 1px 1px 1px;
		border-radius: 20rpx;
	}
	.header-img1 {
		position: absolute;
		z-index: 999;
		top: 60%;
		width: 60rpx;
		height: 60rpx;
		border-radius: 50%;
		margin-bottom: 80rpx;
		box-shadow: 0 0 10rpx 10rpx rgba(250, 250, 0, 0.2);
		animation: move 8s ease-in-out infinite;
	}
	
	.header-img2 {
		position: absolute;
		z-index: 999;
		top: 15%;
		width: 60rpx;
		height: 60rpx;
		border-radius: 50%;
		margin-bottom: 80rpx;
		box-shadow: 0 0 10rpx 10rpx rgba(250, 250, 0, 0.2);
		animation: move 10s ease-in-out infinite;
	}
	
	.header-img3 {
		position: absolute;
		z-index: 999;
		top: 80%;
		width: 60rpx;
		height: 60rpx;
		border-radius: 50%;
		margin-bottom: 80rpx;
		box-shadow: 0 0 10rpx 10rpx rgba(250, 250, 0, 0.2);
		animation: move 13s ease-in-out infinite;
	}
	
	.header-img4 {
		position: absolute;
		z-index: 999;
		top: 45%;
		width: 60rpx;
		height: 60rpx;
		border-radius: 50%;
		margin-bottom: 80rpx;
		box-shadow: 0 0 10rpx 10rpx rgba(250, 250, 0, 0.2);
		animation: move 7s ease-in-out infinite;
	}
	
	.header-img5 {
		position: absolute;
		z-index: 999;
		top: 30%;
		width: 60rpx;
		height: 60rpx;
		border-radius: 50%;
		margin-bottom: 80rpx;
		box-shadow: 0 0 10rpx 10rpx rgba(250, 250, 0, 0.2);
		animation: move 8s ease-in-out infinite;
	}
	
	.header-img6 {
		position: absolute;
		z-index: 999;
		top: 25%;
		width: 60rpx;
		height: 60rpx;
		border-radius: 50%;
		margin-bottom: 80rpx;
		box-shadow: 0 0 10rpx 10rpx rgba(250, 250, 0, 0.2);
		animation: move 19s ease-in-out infinite;
	}
	
	.header-img7 {
		position: absolute;
		z-index: 999;
		top: 40%;
		width: 60rpx;
		height: 60rpx;
		border-radius: 50%;
		margin-bottom: 80rpx;
		box-shadow: 0 0 10rpx 10rpx rgba(0, 137, 250, 0.2);
		animation: remove 9s ease-in-out infinite;
	}
	
	.header-img8 {
		position: absolute;
		z-index: 999;
		top: 30%;
		width: 60rpx;
		height: 60rpx;
		border-radius: 50%;
		margin-bottom: 80rpx;
		box-shadow: 0 0 10rpx 10rpx rgba(0, 137, 250, 0.2);
		animation: remove 12s ease-in-out infinite;
	}
	
	.header-img9 {
		position: absolute;
		z-index: 999;
		top: 46%;
		width: 60rpx;
		height: 60rpx;
		border-radius: 50%;
		margin-bottom: 80rpx;
		box-shadow: 0 0 10rpx 10rpx rgba(0, 137, 250, 0.2);
		animation: remove 15s ease-in-out infinite;
	}
	
	.header-img10 {
		position: absolute;
		z-index: 999;
		top: 15%;
		width: 60rpx;
		height: 60rpx;
		border-radius: 50%;
		margin-bottom: 80rpx;
		box-shadow: 0 0 10rpx 10rpx rgba(0, 137, 250, 0.2);
		animation: remove 16s ease-in-out infinite;
	}
	
	.header-img11 {
		position: absolute;
		z-index: 999;
		top: 99%;
		width: 60rpx;
		height: 60rpx;
		border-radius: 50%;
		margin-bottom: 80rpx;
		box-shadow: 0 0 10rpx 10rpx rgba(0, 137, 250, 0.2);
		animation: remove 10s ease-in-out infinite;
	}
	
	.header-img12 {
		position: absolute;
		z-index: 999;
		top: 30%;
		width: 60rpx;
		height: 60rpx;
		border-radius: 50%;
		margin-bottom: 80rpx;
		box-shadow: 0 0 10rpx 10rpx rgba(0, 137, 250, 0.2);
		animation: remove 8s ease-in-out infinite;
	}
	
	@keyframes move {
		0% {
			box-shadow: 0 0 0 0 rgba(250, 250, 0, 0.2);
			transform: translateX(0);
		}
		50% {
			box-shadow: 0 0 100rpx 100rpx rgba(250, 250, 0, 0);
			transform: translateX(1000rpx);
		}
		50.01% {
			transform: translateX(-1000rpx);
		}
		100% {
			box-shadow: 0 0 0 0 rgba(250, 250, 0, 0.2);
			transform: translateX(0);
		}
	}
	
	@keyframes remove {
		0% {
			box-shadow: 0 0 0 0 rgba(0, 137, 250, 0.2);
			transform: translateX(0);
		}
		50% {
			box-shadow: 0 0 100rpx 100rpx rgba(250, 250, 0, 0);
			transform: translateX(-1000rpx);
		}
		50.01% {
			transform: translateX(1000rpx);
		}
		100% {
			box-shadow: 0 0 0 0 rgba(0, 137, 250, 0.2);
			transform: translateX(0);
		}
	}
	.rainbow-text {
	  font-size: 28rpx;
	  font-weight: bold;
	  -webkit-background-clip: text;
	  background-clip: text;
	  color: transparent;
	  background-image: -webkit-linear-gradient(left, #2b1de8, #dd00f3);
	  background-image: linear-gradient(to right, #1ddde8, #2b1de8, #dd00f3);
	  animation: rainbow 10s linear infinite;
	}
	
	@keyframes rainbow {
	  0% {
	    background-position: 0%;
	  }
	  100% {
	    background-position: 100%;
	  }
	}
}
</style>
