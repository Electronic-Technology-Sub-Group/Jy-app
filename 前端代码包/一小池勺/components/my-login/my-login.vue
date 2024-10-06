<template>
	<view class="login-container">
		<image class="img-login" src="../../static/rm-login.png"></image>
		<button type="primary" class="btn-login" @click="toNext">一键登录</button>
		<text class="login-text">遇见每一个瞬间</text>
	</view>
</template>

<script>
	export default {
		name:"my-login",
		data() {
			return {
				
			}
		},
		methods: {
			toNext() {
				uni.redirectTo({
					url: '/subpkg/login_getuserinfo/login_getuserinfo'
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
.login-container {
	position: relative;
	height: 750rpx;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	background-color: #F8F8F8;
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
		   border: 1rpx #ccc solid;
	}
	
	.img-login {
		width: 180rpx;
		height: 180rpx;
	}
	.btn-login {
		width: 90%;
		margin: 40rpx 0;
		border-radius: 100rpx;
		color: gray;
		border: 1rpx solid #ccc;
		background-color: transparent;
	}
	.login-text {
		font-size: 35rpx;
		color: gray;
	}
}
</style>