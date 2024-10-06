<template>
	<view class="container">
		<view class="icon active">基本信息</view>
		<view class="avatar_img">
			<image class="img" :src="UserAvatarPic" @click="uploadAvatarImg"></image>
		</view>
		<view class="avatar_form">
			<view class="name" @click="changeName">
				<view class="left">昵称</view>
				<view class="right">
					<view class="a">{{ UserAvatarName }}</view>
					<image class="img" src="../../static/rm-more.png"></image>
				</view>
			</view>
			<!-- <view class="sex">
				<view class="left">性别</view>
				<view class="right">
					<view class="a">男</view>
					<image class="img" src="../../static/rm-more.png"></image>
				</view>
			</view> -->
			<view class="desc" @click="toSignature">
				<view class="left">简介</view>
				<view class="right">
					<!-- <view class="a"></view> -->
					<image class="img" src="../../static/rm-more.png"></image>
				</view>
			</view>
			<view class="phone">
				<view class="left">绑定手机号</view>
				<view class="right">
					<view class="a">还未绑定手机号</view>
					<image class="img" src="../../static/rm-more.png"></image>
				</view>
			</view>
			<view class="id">
				<view class="left">用户 ID</view>
				<view view="right">{{ UserAvatarId }}</view>
			</view>
		</view>
	</view>
</template>

<script>
	import { modifyUserInfoAvatar } from '../../services/AboutUserInfo.js'
	import { mapState } from 'vuex'
	export default {
		computed: {
			...mapState('user_info', ['UserAvatarPic', 'UserAvatarName', 'UserAvatarId'])
		},
		data() {
			return {
				userId: null,
				tempPicUrl: '',
				avatarPicUrl: '',
				serverUrl: "http://localhost:8080/user/common/upload", // 接口地址
			}
		},
		mounted() {
			uni.getStorage({
			  key: 'userId',
			  success:  (res) => {
			    console.log(res.data)
					this.userId = res.data
			  }
			})
		},
		methods: {
			toSignature() {
				uni.navigateTo({
					url: "../../subpkg/Signature-define/Signature-define"
				})
			},
			changeName() {
				uni.navigateTo({
					url: "../../subpkg/change-name/change-name"
				})
			},
			uploadAvatarImg() {
				uni.chooseImage({
					count: 1,
					success: (res) => {
						this.tempPicUrl = res.tempFilePaths[0]
						console.log(this.tempPicUrl)
						uni.uploadFile({
							url: this.serverUrl,
							filePath: this.tempPicUrl,
							name: "file", // 服务器定义的文件字段为 file
							header: {
							  //设置用户访问的token信息
							  "authentication": uni.getStorageSync('token')
							 },
							success: (res) => {
								console.log('上传成功', res)
								console.log(res) //  后端返回的 data 是字符串
								let data = JSON.parse(res.data)
								console.log(data)
								this.avatarPicUrl = data.data
								this.modifyUserInfoAfterUpload(this.avatarPicUrl, this.userId)
								// 上传成功后使用 vuex 保存，但不做持久处理
								this.$store.commit('user_info/UpdateUserAvatarPic', this.avatarPicUrl)
							},
							fail: (error) => {
								console.log('上传失败', error)
								console.log(this.tempPicUrl)
							}
						})
					}
				})
			},
			async modifyUserInfoAfterUpload(avatarUrl, userId) {
			  const res = await modifyUserInfoAvatar(avatarUrl, userId)
			  console.log('调用结果：', res)
			}
		},
	}
</script>

<style lang="scss">
.container {
	width: 100vw;
	height: 100vh;
	.icon {
		width: 100%;
		text-align: center;
		color: #460779;
		font-weight: 600;
	}
	.active {
		position: relative;
		z-index: 9999;
		color: #460779;
		font-weight: 800;
		&::after {
			position: absolute;
			z-index: -9999;
			content: "";
			width: 40rpx;
			height: 40rpx;
			background-color: rgba(70,7,121,.2);
			left: 50%;
			top: 90%;
			border-radius: 50%;
			transform: translate(-50%, -50%);
		} 
	}
	.avatar_img {
		width: 80%;
		height: 350rpx;
		margin: 0 auto;
		display: flex;
		align-items: center;
		justify-content: center;
		// background-color: red; // 背景板
		.img {
			width: 200rpx;
			height: 200rpx;
			border-radius: 50%;
		}
	}
	.avatar_form {
		width: 100%;
		.name {
			width: 90%;
			margin: 0 auto;
			border-bottom: 1rpx solid #ccc;
			display: flex;
			justify-content: space-between;
			box-sizing: border-box;
			padding-bottom: 30rpx;
			font-size: 35rpx;
			align-items: center;
			margin-bottom: 30rpx;
			.left {}
			.right {
				display: flex;
				align-items: center;
				.a {
					font-size: 35rpx;
					font-weight: 100;
					margin-right: 30rpx;
				}
				.img {
					width: 40rpx;
					height: 40rpx;
				}
			}
		}
		.sex {
			width: 90%;
			margin: 0 auto;
			border-bottom: 1rpx solid #ccc;
			display: flex;
			justify-content: space-between;
			box-sizing: border-box;
			padding-bottom: 30rpx;
			font-size: 35rpx;
			align-items: center;
			margin-bottom: 30rpx;
			.left {}
			.right {
				display: flex;
				align-items: center;
				.a {
					font-size: 35rpx;
					font-weight: 100;
					margin-right: 30rpx;
				}
				.img {
					width: 40rpx;
					height: 40rpx;
				}
			}
		}
		.desc {
			width: 90%;
			margin: 0 auto;
			border-bottom: 1rpx solid #ccc;
			display: flex;
			justify-content: space-between;
			box-sizing: border-box;
			padding-bottom: 30rpx;
			font-size: 35rpx;
			align-items: center;
			margin-bottom: 30rpx;
			.left {}
			.right {
				display: flex;
				align-items: center;
				.a {
					font-size: 35rpx;
					font-weight: 100;
					margin-right: 30rpx;
				}
				.img {
					width: 40rpx;
					height: 40rpx;
				}
			}
		}
		.phone {
			width: 90%;
			margin: 0 auto;
			border-bottom: 1rpx solid #ccc;
			display: flex;
			justify-content: space-between;
			box-sizing: border-box;
			padding-bottom: 30rpx;
			font-size: 35rpx;
			align-items: center;
			margin-bottom: 30rpx;
			.left {}
			.right {
				display: flex;
				align-items: center;
				.a {
					font-size: 35rpx;
					font-weight: 100;
					margin-right: 30rpx;
				}
				.img {
					width: 40rpx;
					height: 40rpx;
				}
			}
		}
		.id {
			width: 90%;
			margin: 0 auto;
			border-bottom: 1rpx solid #ccc;
			display: flex;
			justify-content: space-between;
			box-sizing: border-box;
			padding-bottom: 30rpx;
			font-size: 35rpx;
			align-items: center;
			margin-bottom: 30rpx;
			.left {}
			.right {
				display: flex;
				align-items: center;
				.a {
					font-size: 35rpx;
					font-weight: 100;
					margin-right: 30rpx;
				}
				.img {
					width: 40rpx;
					height: 40rpx;
				}
			}
		}
	
	}
}
</style>
