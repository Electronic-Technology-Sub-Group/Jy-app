<template>
	<view class="container">
		<view class="title">账号</view>
		<input v-model="id" class="oldPassword" type="password"/>
		<view class="title">旧密码</view>
		<input v-model="oldPassword" class="oldPassword" type="password"/>
		<view class="title">新密码</view>
		<input v-model="newPassword" class="newPassword" type="password"/>
		<view class="title">确认新密码</view>
		<input v-model="rePassword" class="newPassword" type="password"/>
	    <view class="btn" @click="modifyIt">确认修改</view>
	</view>
</template>

<script>
	import { UserChangePassword } from '../../services/Aboutlogin.js'
	export default {
		data() {
			return {
				id: "",
				oldPassword: "",
				newPassword: "",
				rePassword: ""
			}
		},
		methods: {
			async modifyIt() {
				if (this.newPassword === this.oldPassword) {
					const res = await UserChangePassword(this.newPassword, this.oldPassword);
					if (res.code === 200) {
						uni.showToast({
							title: "修改成功"
						})
						setTimeout(() => {
							uni.switchTab({
								url: "/pages/login/login"
							});
						}, 2000);
					} else {
						uni.showToast({
							title: "两次密码不一致"
						});
					}
				}
			}
		}
	}
</script>

<style lang="scss">
.container {
	width: 100vw;
	height: 100vh;
	position: relative;
	.title {
		position: relative;
		margin-left: 40rpx;
		margin-bottom: 30rpx;
		&::before {
			content: "";
			position: absolute;
			top: 50%;
			transform: translateY(-50%);
			left: -28rpx;
			width: 15rpx;
			height: 15rpx;
			border-radius: 50%;
			background-image: linear-gradient( #44ADFB,#5ed6fd);
		}
	}
	.oldPassword { 
		margin-left: 40rpx;
		border-bottom: #44ADFB dotted 1rpx;
		margin-bottom: 60rpx;
	}
	.newPassword {
		margin-left: 40rpx;
		border-bottom: #44ADFB dotted 1rpx;
		margin-bottom: 60rpx;
	}
	.btn {
		position: absolute;
		width: 280rpx;
		height: 90rpx;
		background-image: linear-gradient( #44ADFB,#5ed6fd);
		text-align: center;
		line-height: 90rpx;
		color: #fff;
		font-weight: 600;
		bottom: 20rpx;
		border-radius: 25rpx;
		left: 50%;
		transform: translateX(-50%);
	}
}
</style>
