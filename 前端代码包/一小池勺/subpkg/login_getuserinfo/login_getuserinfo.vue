<template>
	<view class="container">
		<button open-type="chooseAvatar" @chooseavatar="chooseavatar" class="box-avatarUrl">
			<image class="img" :src="(avatarUrl || 'https://tse2-mm.cn.bing.net/th/id/OIP-C.O2IvyzsDQthy6CSW4qB9HwHaHa?pid=ImgDet&rs=1')"></image>
		</button>
		<view class="box-nickname">
			<text class="box-nickname_msg">昵称</text>
			<input class="box-nickname_inp" @input="handleinput" type="nickname" placeholder="填写昵称">
		</view>
		<button class="btn-login" open-type="getUserInfo" @getuserinfo="getUserInfo">保存设置</button>
	</view>
</template>

<script>
	import { mapMutations } from 'vuex'
	export default {
		data() {
			return {
				avatarUrl: "",
				nickname: ""
			}
		},
		methods: {
			...mapMutations('m_user', ['updateUserInfo']),
			chooseavatar(event) {
				console.log(event.detail.avatarUrl) // 头像信息的临时路径
				this.avatarUrl = event.detail.avatarUrl
			},
			handleinput(event) {
				this.nickname = event.detail.value
			},
			// 获取用户授权之后的基本信息
			getUserInfo(event) {
				console.log(event)
				this.updateUserInfo(event.detail.userInfo)
				this.getToken(event.detail)
				uni.switchTab({
				   url: '/pages/home/home'
				})
			},
			async getToken(info) {
				// 获取 code 对应的值
				const res = await uni.login()
				console.log(res)
				
				// 准备给后端的参数
				const query = {
					code: res.code,
					encryptedData: info.encryptedData,
					iv: info.iv,
					rawData: info.rawData,
					signature: info.signature,
					avatarUrl: this.avatarUrl,
					nickname: this.nickname
				}
				
				
				console.log(query)
				
				// => 假设得到 token
				
				// const response = await ApiRequest(query)
				// const token = response.data.token
				let token = '1'
				// 调用 Vuex 中的 mutation 更新 token
				this.$store.commit('m_user/updateToken', token)
			}
		}
	}
</script>

<style lang="scss" scoped>
.container {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 70vh;
	.box-avatarUrl {
		width: 60px;
		height: 60px;
		border-radius: 10rpx;
		overflow: hidden;
		border: none; /* 去除边框 */
		background: none; /* 去除背景 */
		padding: 0; /* 清除内边距 */
		cursor: pointer; /* 显示指针样式 */
		outline: none; /* 去除点击时的轮廓线 */
		.img {
			width: 100%;
			height: 100%;
		}
	}
	.box-nickname {
		display: flex;
		.box-nickname_msg {
			display: flex;
			align-items: center;
			position: relative;
			margin: 80rpx 0;
			&::before {
				content: '';
				position: absolute;
				left: -20rpx;
				top: 10rpx;
				height: 30rpx;
				width: 10rpx;
				background-color: lightskyblue;
			}
		}
		.box-nickname_inp {
			font-size: 30rpx;
			width: 300rpx;
			margin: 80rpx 0 80rpx 30rpx;
			border-bottom: 2rpx solid #000;
		}
	}
	.btn-login {
		border: none; /* 去除边框 */
		background: none; /* 去除背景 */
		padding: 0; /* 清除内边距 */
		cursor: pointer; /* 显示指针样式 */
		outline: none; /* 去除点击时的轮廓线 */
		font-size: 25rpx;
		width: 300rpx;
	}
}
</style>