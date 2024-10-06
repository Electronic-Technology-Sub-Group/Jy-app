<template>
	<view class="container">
		<view class="avatar">
			
			<image @click="previewImage(0)" class="img" src="https://cdn.nlark.com/yuque/0/2023/png/34278134/1702222249313-57fac41e-9ca2-408f-9a6d-b32c18d60542.png"></image>
			<text class="name">江影</text>
			<view class="desc" @click="rotate(0)">请全力以赴去生活</view>
		</view>
		<view class="avatar">
			
			<image @click="previewImage(1)" class="img" src="https://cdn.nlark.com/yuque/0/2023/png/34278134/1702222234248-a8b9142e-00f9-445b-b35b-c2fb962da2b4.png"></image>
			<text class="name">一小池勺</text>
			<view class="desc" @click="rotate(1)">每个人都在建立自己的哲学</view>
		</view>
		<view class="avatar">
			
			<image @click="previewImage(2)" class="img" src="https://cdn.nlark.com/yuque/0/2023/png/34278134/1702222242248-42ab18df-835c-4200-b226-ca871478171e.png"></image>
			<text class="name">yang</text>
			<view class="desc" @click="rotate(2)">享受生活</view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				current: null,
				imgList: [
					"https://cdn.nlark.com/yuque/0/2023/jpeg/34278134/1702224451323-d1c1b0a6-8df3-4d15-a0cf-9f6a653b72db.jpeg?x-oss-process=image%2Fresize%2Cw_750%2Climit_0%2Finterlace%2C1",
					"https://cdn.nlark.com/yuque/0/2023/jpeg/34278134/1702224461242-c1c8b9bc-fad3-4c36-bb6e-a6cd419d7ef3.jpeg?x-oss-process=image%2Fresize%2Cw_720%2Climit_0%2Finterlace%2C1",
					"https://cdn.nlark.com/yuque/0/2023/jpeg/34278134/1702224350550-75379c14-a76f-443d-84bb-7b72e9e85d06.jpeg?x-oss-process=image%2Fresize%2Cw_750%2Climit_0%2Finterlace%2C1"
				]
			}
		},
		methods: {
		previewImage(index) {
		  uni.previewImage({
			urls: this.imgList,
			current: this.imgList[index] // 当前图片
		  })
		}
	  }
	}
</script>

<style lang="scss">
.container {
	width: 100vw;
	height: 100vh;
	flex-direction: column;
	display: flex;
	justify-content: center;
	align-items: center;
	.avatar {
		display: flex;
		flex-direction: column;
		align-items: center;
		width: 75%;
		height: 249rpx;
		background-color: transparent;
		box-shadow: 0 0 15rpx rgba(31,11,51,0.3);
		border-radius: 30rpx;
		margin: 80rpx 0;
		animation: glow 2s infinite;
		.name {
			font-weight: 100;
			margin-top: 10rpx;
		}
		.img {
			width: 185rpx;
			height: 185rpx;
			border-radius: 50%;
			margin-top: -120rpx;
			box-shadow: 0 0 15rpx rgba(31,11,51,0.3);
		}
		.desc {
			margin-top: 30rpx;
			letter-spacing: 10rpx;
		}
	}
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
}
</style>