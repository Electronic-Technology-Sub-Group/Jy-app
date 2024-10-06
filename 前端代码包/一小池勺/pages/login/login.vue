<template>
	<view class="container">
		<view class="board_bgc">
			<view class="text">
				<view class="text1">
					Hi
				</view>
				<view class="text2">
					很开心认识你！
				</view>	
			</view>
		</view>
		<view class="info_box">
			<view class="tabbar">
			  <view :class="{ active: current === 0 }" @click="switchTab(0)" class="tabbar_item">登录</view>
			  <view :class="{ active: current === 1 }" @click="switchTab(1)" class="tabbar_item">注册</view>
			</view>
			<swiper :current="current" @change="swiperChange" class="swiper">
			  <swiper-item class="itemA">
				  <view class="userInfo_ID">
				  	<image class="img" src="../../static/账户管理.png" mode=""></image>
					<input class="inp" type="text" placeholder="请输入用户ID" v-model="userID">
				  </view>
				  <view class="userInfo_password">
				  	<image class="img" src="../../static/002_密码.png" mode=""></image>
				  	<input class="inp" type="password" placeholder="请输入密码" v-model="userPassword">
				  </view>
				  <view class="modifyPassword" @click="modifypassword">修改密码</view>
				  <view class="btn" @click="toIndex">
				  	登录
				  </view>
				  <view class="footer" @click="switchTab(1)">
					  还没注册？先注册账号
				  </view>
			  </swiper-item>
			  <swiper-item class="itemB">
				  <view class="userInfo_ID">
				  	<image class="img" src="../../static/账户管理.png"></image>
					<input class="inp" type="text" placeholder="请输入一个用户ID作为账号" v-model="RejesiID">
				  </view>
				  <view class="userInfo_password">
				  	<image class="img" src="../../static/002_密码.png"></image>
				  	<input class="inp" type="password" placeholder="请输入密码" v-model="RejesiPass">
				  </view>
				  <view class="userInfo_password">
				  	<image class="img" src="../../static/002_密码.png"></image>
				  	<input class="inp" type="password" placeholder="再次输入密码确认" v-model="againPassword">
				  </view>
				  <view class="btn" @click="regeistToDb">
				  	立即注册
				  </view>
			  </swiper-item>
			</swiper>
		</view>
	</view>	
</template>

<script>
import { UserLogin, UserRegiest, UserChangePassword } from '../../services/Aboutlogin.js'
export default {
  data() {
    return {
		current: 0,
		RejesiID: '',
		RejesiPass: '',
		againPassword: '',
		userID: '',
		userPassword: '',
		token: ''
    }
  },
  methods: {
	  // 页面效果处理逻辑
	  switchTab(index) {
	    this.current = index;
	  },
	  swiperChange(event) {
	    this.current = event.detail.current;
	  },
	  // 跳转逻辑
	  modifypassword() {
		  uni.navigateTo({
		  	url: "../../subpkg/modify-password/modify-password"
		  })
	  },
	  // 网络请求逻辑
	  async toIndex() {
		  const res = await UserLogin(this.userPassword, this.userID)
		  console.log(res)
		  if(res.code === 200) {
			  console.log(res.data.token)
			  let token = res.data.token
			  let userId = res.data.userId
			  uni.setStorageSync('token', token)
			  uni.setStorageSync('userId', userId)
			  uni.switchTab({
			  	url: "../../pages/home/home"
			  })
		  } else {
			  uni.showToast({
			  	title: "账号或密码填写错误",
				icon: "error",
				duration: 1500
			  })
		  }
	  },
	  async regeistToDb() {
	      const res = await UserRegiest(this.RejesiPass, this.RejesiID)
		  if(res.code === 200) {
			  uni.showToast({
			  	title: "注册成功",
				icon: "success",
				duration: 1500
			  })
			  this.switchTab(0)
		  } else if(this.RejesiPass != this.againPassword) {
			  uni.showToast({
			  	title: "两次密码不一致",
				icon: "error",
				duration: 1500
			  })
		  }
	  }
  }
}
</script>

<style lang="scss" scoped>
.container {
	width: 100vw;
	height: 100vh;
	.board_bgc {
		height: 35%;
		width: 100%;
		background-image: linear-gradient( #44ADFB,#5ed6fd);
		.text {
			margin: 0 0 0 20rpx;
			box-sizing: border-box;
			padding-top: 30rpx;
			.text1 {
				font-size: 38rpx;
				font-weight: 800;
				color: #fff;
			}
			.text2 {
				font-size: 38rpx;
				font-weight: 800;
				color: #fff;
			}
		}
	}
	.info_box {
		height: 55%;
		width: 90%;
		margin: 0 auto;
		margin-top: -90rpx;
		background-color: #fff;
		border-radius: 30rpx;
		box-shadow: #5ed6fd 0 1rpx 5rpx 1rpx;
		.tabbar {
			display: flex;
			justify-content: center;
			width: 100%;
			// background-color: red; // 背景板
			padding: 30rpx 0;
			box-sizing: border-box;
			.tabbar_item {
				margin: 0 80rpx;
				font-weight: 800;
			}
			.active {
				color: #33ccff;
				  padding-bottom: 5rpx;
				  border-bottom-left-radius: 10rpx;
				  border-bottom-right-radius: 10rpx;
				  border-bottom: 5rpx solid #33ccff;
			}
		}
		.swiper {
			// background-color: plum; // 背景板
			height: 100%;
			.itemA {
				position: relative;
				width: 100%;
				.userInfo_ID {
					margin: 50rpx auto;
					width: 95%;
					height: 85rpx;
					// background-color: chartreuse; // 背景板
					border-bottom: #CCC 1rpx solid;
					display: flex;
					align-items: center;
					.img {
						width: 40rpx;
						height: 40rpx;
						margin-right: 20rpx;
					}
					.inp {
						color: #CCC;
						font-size: 25rpx;
						width: calc(100% - 60rpx);
						margin-left: 20rpx;
					}
				}
				.userInfo_password {
					margin: 0 auto;
					width: 95%;
					height: 85rpx;
					// background-color: chartreuse; // 背景板
					border-bottom: #CCC 1rpx solid;
					display: flex;
					align-items: center;
					.img {
						width: 40rpx;
						height: 40rpx;
						margin-right: 20rpx;
					}
					.inp {
						color: #CCC;
						font-size: 25rpx;
						width: calc(100% - 60rpx);
					}
				}
				.modifyPassword {
					width: 100%;
					display: flex;
					justify-content: flex-end;
				    box-sizing: border-box;
					padding: 30rpx 20rpx;
					font-size: 25rpx;
					font-weight: 100;
					text-decoration: underline #33ccff;
				}
				.btn {
					width: 350rpx;
					height: 80rpx;
					margin: 0 auto;
					color: #fff;
					background-color: #33ccff;
					border-radius: 40rpx;
					margin-top: 40rpx;
					text-align: center;
					line-height: 80rpx;	 
				}
				.footer {
					position: fixed;
					bottom: 15rpx;
					right: 30rpx;
					text-decoration: underline #33ccff;
				}
			}
			.itemB {
				position: relative;
				width: 100%;
				.userInfo_ID {
					margin: 50rpx auto;
					width: 95%;
					height: 85rpx;
					// background-color: chartreuse; // 背景板
					border-bottom: #CCC 1rpx solid;
					display: flex;
					align-items: center;
					.img {
						width: 40rpx;
						height: 40rpx;
						margin-right: 20rpx;
					}
					.inp {
						color: #CCC;
						font-size: 25rpx;
						margin-left: 20rpx;
						width: calc(100% - 60rpx);
					}
				}
				.userInfo_password {
					margin: 0 auto;
					width: 95%;
					height: 85rpx;
					// background-color: chartreuse; // 背景板
					border-bottom: #CCC 1rpx solid;
					display: flex;
					align-items: center;
					margin-bottom: 40rpx;
					.img {
						width: 40rpx;
						height: 40rpx;
						margin-right: 20rpx;
					}
					.inp {
						color: #CCC;
						font-size: 25rpx;
						width: calc(100% - 60rpx);
					}
				}
				.btn {
					width: 350rpx;
					height: 80rpx;
					margin: 0 auto;
					color: #fff;
					background-color: #33ccff;
					border-radius: 40rpx;
					margin-top: 40rpx;
					text-align: center;
					line-height: 80rpx;	 
				}
			}
		}
	}
}
</style>