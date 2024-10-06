<template>
	<view class="container">
		<view class="unserInfoShow">
			<view class="info">
				<view class="user">
					<view class="avatar">
						<image class="img" :src="userHomeRes.avatar"></image>
						<view class="name_id">
							<view class="name" @click="testArea">{{ userHomeRes.name ? userHomeRes.name : '小番茄' }}</view>
							<view class="id">ID: {{ userHomeRes.username }}</view>
						</view>
					</view>	
				   <view v-if="userId != currentUserId" class="infoSetting" @click="fetchfollowIng">
				   	 {{ isOK }}
				   </view>
				</view>
			</view>
			<view class="moreInfo">
				<view class="item">
					<view class="num">{{ userHomeRes.fanNum }}</view>
					<view class="t">粉丝</view>
				</view>
				<view class="item" @click="toFollowingList">
					<view class="num">{{ userHomeRes.followNum }}</view>
					<view class="t">关注</view>	
				</view>
				<view class="item">
					<view class="num">0</view>
					<view class="t">获赞</view>	
				</view>
			</view>
		</view>
		<scroll-view scroll-y="true" class="bannerShow">
			<block v-for="(item,index) in momentRes" :key="index">
				<rm-otherpost :item="item"></rm-otherpost>
			</block>
		</scroll-view>
	</view>
</template>

<script>
import { userHomePage ,momentShow, followIng } from '../../services/AboutUserInfo.js'
export default {
  data() {
    return {
		isOK: "",
		logo: null,
		currentUserId: null,
		userId: null,
		userHomeRes: {}, // 用户的信息
		momentRes: [] // 发布的动态
    }
  },
  beforeCreate() {
	  uni.getStorage({
	    key: 'userId',
	    success:  (res) => {
	      console.log(res.data)
	  		this.currentUserId = res.data
	    }
	  })
  },
  onLoad(options) {
	  this.userId = options.userId
  }, 
  mounted() {
	  this.fetchUserHome(this.userId) // 用户首页查询
	  this.fetchMomentShow(this.userId) // 主页发布动态
  },
  methods: {
	  async fetchUserHome(id) {
		  const res = await userHomePage(id)
		  console.log(res)
		  this.userHomeRes = res.data
		  if(res.data.logo === 1) {
			  this.isOK = '取消关注'
		  } else {
			  this.isOK = '关注'
		  }
	  },
	  async fetchMomentShow(id) {
		  const res = await momentShow(id)
		  console.log(res)
		  this.momentRes = res.data.reverse()
	  },
	  async fetchfollowIng() {
		  const res = await followIng(this.userId ,this.currentUserId)
		  console.log(res)
		  if(res.data === '关注成功') {
			  this.isOK = '取消关注'
			  this.userHomeRes.fanNum++
		  } else {
			  this.isOK = '关注'
			  this.userHomeRes.fanNum--
		  }
	  }
  }
}
</script>

<style lang="scss" scoped>
.container {
	width: 100vw;
	height: 100vh;
	.unserInfoShow {
		display: flex;
		flex-direction: column;
		width: 100%;
		height: 350rpx;
		// background-color: deeppink; // 背景板
		// background-image: linear-gradient(#DACDE4,#5A1D8B);
		background-color: #fff;
		.setttingIcon {
			position: relative;
			height: 13.3%;
			width: 100%;
			// background-color: red; // 背景板
			.img {
				position: absolute;
				right: 40rpx;
				top: 30rpx;
				width: 55rpx;
				height: 55rpx;
			}
		}
		.info {
			width: 100%;
			height: 63.3%;
			// background-color: gold; // 背景板
			display: flex;
			align-items: center;
			
			.user {
				display: flex;
				justify-content: space-between;
				width: 90%;
				margin: 0 auto;
				box-sizing: border-box;
				align-items: center;
				.avatar {
					display: flex;
					.img {
						width: 160rpx;
						height: 160rpx;
						border-radius: 50%;
						margin-right: 30rpx;
					}
					.name_id {
						margin-top: 20rpx;
						.name {
							font-weight: 600;
							font-size: 38rpx;
						}
						.id {
							margin-top: 10rpx;
						}
					}
				}
				.infoSetting {
					width: 140rpx;
					height: 40rpx;
					border-radius: 20rpx;
					font-size: 25rpx;
					text-align: center;
					color: #fff;
					line-height: 40rpx;
					background-color: #6BB3EC;
			    }
			}
			
		}
		.moreInfo {
			width: 100%;
			height: 23.3%;
			display: flex;
			justify-content: flex-start;
			.item {
				width: 15%;
				height: 100%;
				// background-color: darkred; //  背景板
				display: flex;
				justify-content: center;
				align-items: center;
				flex-direction: column;
				// border-top-right-radius: 20rpx;
				// border-top-left-radius: 20rpx;
				// margin: 0 10rpx;
				margin-right: 10rpx;
				.num {
					font-size: 20rpx;
				}
				.t {
					font-size: 20rpx;
				}
			}
		}
	}
	.bannerShow {
		height: calc(100% - 350rpx);
	}
}
</style>