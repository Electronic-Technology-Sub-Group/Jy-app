<template>
	<view class="container">
		<view class="unserInfoShow">
			<view class="setttingIcon">
				<image class="img" src="../../static/设置.png" mode="" @click="settingDetail"></image>
			</view>
			<view class="info">
				<view class="user">
					<view class="avatar">
						<image class="img" :src="UserAvatarPic ? UserAvatarPic : userHomeRes.avatar"></image>
						<view class="name_id">
							<view class="name" @click="testArea">{{ UserAvatarName ? UserAvatarName : userHomeRes.name  }}</view>
							<view class="id">ID: {{ userHomeRes.username }}</view>
							<view class="desc" v-if="userHomeRes.signature"> 简介：{{ userHomeRes.signature }}</view>
						    <view v-else class="desc">还没有简介噢~</view>
						</view>
					</view>	
				   <view class="infoSetting" @click="toSettinInfo">
				   	 个人资料
				   </view>
				</view>
			</view>
			<view class="moreInfo">
				<view class="item" @click="toFansList">
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
	    <view class="userBannerShow">
			<view class="tabbar">
			  <view :class="{ active: current === 0 }" @click="switchTab(0)" class="tabbar_item">发布</view>
			  <view :class="{ active: current === 1 }" @click="switchTab(1)" class="tabbar_item">赞过</view>
			  <view :class="{ active: current === 2 }" @click="switchTab(2)" class="tabbar_item">收藏</view>
			</view>
			<swiper :current="current" @change="swiperChange" class="swiper">
				<swiper-item class="itemA">
					<scroll-view scroll-y="true" class="scrollY">
						<block v-for="(item,index) in momentRes" :key="index">
							<rm-post :item="item"></rm-post>
						</block>
					</scroll-view>
				</swiper-item>
				<swiper-item class="itemB">
					<view class="tabbar_itemB">
						<view :class="{ active: subCurrentB === 0 }" @click="switchTabItemB(0)" class="subtabbar_itemb">句子</view>
						<view :class="{ active: subCurrentB === 1 }" @click="switchTabItemB(1)" class="subtabbar_itemb">动态</view>
						<view :class="{ active: subCurrentB === 2 }" @click="switchTabItemB(2)" class="subtabbar_itemb">专辑</view>
					</view>
					<scroll-view scroll-y="true" class="scrollY">
						<view v-if="subCurrentB === 0">
							<block v-for="(item,index) in likeSentence" :key="index">
								<rm-like :item="item"></rm-like>
							</block>
						</view>
						<view v-if="subCurrentB === 1">
							<block v-for="(item,index) in likeMoments" :key="index">
								<rm-otherPostforInfo :item="item"></rm-otherPostforInfo>
							</block>
						</view>
						<view v-if="subCurrentB === 2" style="width: 100%; display: flex;align-items: center; flex-direction: column;" :class="{ isshow: subCurrentB === 2 }">
							<image src="https://pic2.zhimg.com/v2-c24a51507ef271b12af06248bbfde3d5_r.jpg" style="margin-top: 100rpx;"></image>
							<view>还没有点赞专辑</view>
						</view>
					</scroll-view>
				</swiper-item>
				<swiper-item class="itemC">
					<view class="tabbar_itemC">
						  <view :class="{ active: subCurrentC === 0 }" @click="switchTabItemC(0)" class="subtabbar_itemc">句子</view>
						  <view :class="{ active: subCurrentC === 1 }" @click="switchTabItemC(1)" class="subtabbar_itemc">专辑</view>
					   </view>
					<view/>
					<scroll-view scroll-y="true" class="scrollY">
						<view  v-if="subCurrentC === 0">
							<block v-for="(item, index) in carSentence" :key="index">
								<rm-like :item="item"></rm-like>
							</block>
						</view>
						<view v-if="subCurrentC === 1" style="width: 100%; display: flex;align-items: center; flex-direction: column;">
							<image src="https://cdn.nlark.com/yuque/0/2023/png/34278134/1702222332492-729aba37-c137-4e0b-9888-ea230eae04bc.png?x-oss-process=image%2Fresize%2Cw_750%2Climit_0" style="margin-top: 100rpx;"></image>
							<view>还没有收藏专辑</view>
						</view>
					</scroll-view>
				</swiper-item>
			</swiper>
		</view>
	</view>
</template>

<script>
import { userHomePage ,momentShow,likeShow,favoriteShow } from '../../services/AboutUserInfo.js'
import { mapState,mapMutations } from 'vuex'
export default {
  computed: {
	...mapState('user_action', ['SentenceLikeArray']),
	...mapState('user_info', ['UserAvatarPic', 'UserAvatarName'])
  },
  data() {
    return {
		userId: null,
		current: 0,
		subCurrentA: 0,
		subCurrentB: 0,
		subCurrentC: 0,
		userHomeRes: {}, // 用户的信息
		likeSentence: [], // 点赞的句子
		likeMoments: [], // 点赞的动态
		carSentence: [], // 收藏的句子
		momentRes: [] // 发布的动态
    }
  },
  beforeCreate() {
	  // 从本地缓存中获取数据
	  uni.getStorage({
	    key: 'userId',
	    success:  (res) => {
	      console.log(res.data)
	  		  this.userId = res.data
	    }
	  })
  },
  mounted() {
	  this.fetchUserHome(this.userId) // 用户首页查询
	  this.fetchLikeShow(this.userId) // 主页点赞
	  this.fetchFavoriteShow(this.userId) // 主页收藏
	  this.fetchMomentShow(this.userId) // 主页发布动态
  }, 
  methods: {
	  ...mapMutations('user_action', ['UpdateSentenceLikeArray']),
	  toFansList() {
		  uni.navigateTo({
		  	url: "../../subpkg/fans-views/fans-views"
		  })
	  },
	  testArea() {
	  		  const test = [1,2,3,4,5,5,6,6,7,7,7]
	  		  this.UpdateSentenceLikeArray(test)
			  console.log(this.SentenceLikeArray.length)
	  },
	  toFollowingList() {
		  uni.navigateTo({
		  	url: "../../subpkg/follow-views/follow-views" 
		  })
	  },
	  async onPullDownRefresh() {
		  this.fetchUserHome(this.userId) // 用户首页查询
		  this.fetchLikeShow(this.userId) // 主页点赞
		  this.fetchFavoriteShow(this.userId) // 主页收藏
		  this.fetchMomentShow(this.userId) // 主页发布动态
	  },
	  async switchTab(index) {
	    this.current = index 
		switch (index) {
			case 0:
			const resZ = await momentShow(this.userId)
			console.log(resZ)
			this.momentRes = resZ.data.reverse()
				break;
			case 1:
			const resA = await likeShow(this.userId)
			console.log(resA)
			this.likeSentence = resA.data.sentenceList
			this.likeMoments = resA.data.momentList
				break;
			case 2:
			const resB = await favoriteShow(this.userId)
			console.log(resB)
			this.carSentence = resB.data
				break;
			default:
				console.log("蚂蚁呀嘿~");
		}
	  },
	  swiperChange(event) {
	    this.current = event.detail.current
	  },
	  switchTabItemB(index) {
		  this.subCurrentB = index
	  },
	  switchTabItemC(index) {
		  this.subCurrentC = index
	  },
	  toSettinInfo() {
		  uni.navigateTo({
		  	url: "../../subpkg/userdefine-info/userdefine-info"
		  })
	  },
	  settingDetail() {
		  uni.navigateTo({
		  	url: "../../subpkg/settingDetail/settingDetail"
		  })
	  },
	  async fetchUserHome(id) {
		  const res = await userHomePage(id)
		  console.log(res)
		  this.userHomeRes = res.data
		  // vuex处理
		  this.$store.commit('user_info/UpdateUserAvatarPic', this.userHomeRes.avatar)
		  this.$store.commit('user_info/UpdateUserAvatarName', this.userHomeRes.name)
		  this.$store.commit('user_info/UpdateUserAvatarId', this.userHomeRes.username)
		  this.$store.commit('user_info/UpdateUserAvatarId', this.userHomeRes.username)
	  },
	  async fetchMomentShow(id) {
		  const res = await momentShow(id)
		  console.log(res)
		  this.momentRes = res.data.reverse()
	  },
	  async fetchLikeShow(id) {
		  const res = await likeShow(id)
		  console.log(res)
		  this.likeSentence = res.data.sentenceList
		  this.likeMoments = res.data.momentList
	  },
	  async fetchFavoriteShow(id) {
		  const res = await favoriteShow(id)
		  console.log(res)
		  this.carSentence = res.data
	  }
  }
}
</script>

<style lang="scss" scoped>
.isshow {
	opacity: 1!important;
}
.container {
	width: 100vw;
	height: 100vh;
	.unserInfoShow {
		display: flex;
		flex-direction: column;
		width: 100%;
		height: 350rpx;
		// background-color: deeppink; // 背景板
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
							color: #ccc;
							font-size: 25rpx;
							font-weight: 200;
						}
						.desc {
							font-size: 30rpx;
							font-weight: 300;
							margin-top: 15rpx;
						}
					}
				}
				.infoSetting {
					width: 140rpx;
					height: 40rpx;
					border: 1rpx #5e5e5e solid;
					color: #5e5e5e;
					border-radius: 20rpx;
					font-size: 25rpx;
					text-align: center;
					line-height: 40rpx;
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
	.userBannerShow {
		height: calc(100% - 450rpx);
		width: 100%;
		// background-color: chartreuse; // 背景板
		.tabbar {
			width: 100%;
			height: 80rpx;
			display: flex;
			justify-content: center;
			align-items: center;
			// background-color: teal; // 背景板
			border-bottom: 1rpx solid #460779;
			.tabbar_item {
				margin: 0 40rpx;
				font-size: 35rpx;
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
		}
		.swiper {
			height: 100%;
			width: 100%;
			// background-color: gold; // 背景板
			.itemA {
				height: 100%;
				.scrollY{
					height: 100%;
				}
			}
			.itemB {
				width: 100%;
				height: 100%;
				.tabbar_itemB {
					width: 60%;
					height: 65rpx;
					margin-left: -60rpx;
					display: flex;
					justify-content: center;
					align-items: center;
					// background-color: #5e5e5e; // 背景板
					.subtabbar_itemb {
						margin: 0 15rpx;
						
					}
					.active {
						position: relative;
						z-index: 9999;
						color: #460779;
						font-weight: 600;
						&::after {
							position: absolute;
							z-index: -9999;
							content: "";
							width: 60rpx;
							height: 5rpx;
							background-color: #404079;
							left: 50%;
							top: 100%;
							// border-radius: 50%;
							transform: translate(-50%, -50%);
						} 
					}
				}
				.scrollY {
					height: 100%;
				}
			}
			.itemC {
				width: 100%;
				height: 100%;
				.tabbar_itemC {
					width: 30%;
					height: 65rpx;
					display: flex;
					justify-content: center;
					align-items: center;
					
					// background-color: #5e5e5e; // 背景板
					.subtabbar_itemc {
						margin: 0 15rpx;
						
					}
					.active {
						position: relative;
						z-index: 9999;
						color: #460779;
						font-weight: 600;
						&::after {
							position: absolute;
							z-index: -9999;
							content: "";
							width: 60rpx;
							height: 5rpx;
							background-color: #404079;
							left: 50%;
							top: 100%;
							// border-radius: 50%;
							transform: translate(-50%, -50%);
						} 
					}
				}
				.scrollY {
					height: 100%;
				}
			}
		}
		
	}
}
</style>