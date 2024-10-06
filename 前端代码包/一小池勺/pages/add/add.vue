<template>
  <view class="container">
    <view class="container-fixed_ele" @click="toSharePage">
      <image src="../../static/rm-pen.png" mode="" class="ele-img"></image>
    </view>
	<view class="header">
		<view class="header-left">
			<view style="font-size: 40rpx;margin: 30rpx 0;">碎碎念</view>
			<view style="margin-bottom: 30rpx; font-weight: 100; font-size: 28rpx;">不要担心被看见，大家都是温暖的人</view>
		</view>
		<view class="header-right">
		    <view class="section"><view class="span"></view></view>
		</view>
	</view>
	<view class="container-post">
		<block v-for="(item,index) in dynamicLists" :key="index">
			<rm-otherpost :item="item"></rm-otherpost>
		</block>
	</view>
  </view>
</template>

<script>
import { PageoffsetDynamic, sixMomentCategory } from '../../services/AboutDynamics.js'
export default {
  data() {
    return {
	  name: "",
	  msg: "",
	  page: 1,
      screenWidth: 375,
	  dynamicLists: []
    }
  },
  mounted() {
    const systemInfo = uni.getSystemInfoSync()
    this.screenWidth = systemInfo.windowWidth
	// 获取社区动态 加载页面 获取第一页
	this.fetchDynamic()
  },
  methods: {
    async fetchDynamic() {
		let momentCategory = '社区'
		const res = await PageoffsetDynamic(momentCategory, this.page)
		console.log(res)
		const newDynamicList = [...this.dynamicLists, ...res.data.records]
		this.dynamicLists = newDynamicList
		this.msg = res.msg
		this.page++
    },
	// 下拉
	onReachBottom() {
		if(this.msg === '到底了') return
		this.fetchDynamic()
	},
	// 上拉 归 0
	async onPullDownRefresh() {
		this.dynamicLists = []
		this.page = 1
		// 拿到第一页
		await this.fetchDynamic()
		uni.stopPullDownRefresh()
	},
	tocircle() {
	 uni.navigateTo({
			url: '/subpkg/more-circles/more-circles'
	 })
	},
    toSharePage() {
	  uni.navigateTo({
		url: '/subpkg/share_detail/share_detail'
	  })
    },
	totopic() {
		uni.navigateTo({
			url: "/subpkg/hot-topic/hot-topic"
		})
	},
	toDt() {
		uni.navigateTo({
			url: "/subpkg/diantai-detail/diantai-detail"
		})
	}
  },
};
</script>

<style lang="scss" scoped>
.container {
  position: relative;
  width: 90vw;
  margin: 0 auto;
  .header {
	  width: 100%;
	  display: flex;
	  justify-content: space-between;
	  .header-right {
	  	margin: 70rpx 0 0 30rpx;
	  	width: 400rpx;
	  	height: 200rpx;
	  }
	  
	  .section {
	  	position: relative;
	  	display: flex;
	  	align-items: center;
	  	justify-content: center;
	  }
	  
	  .span {
	  	position: relative;
	  	animation: cloud 5s ease-in-out infinite;
	  	background: plum;
	  	border-radius: 50%;
	  	box-shadow: indianred 65rpx -15rpx 0 -4rpx, turquoise 25rpx -25rpx, orange 30rpx 10rpx, fuchsia 60rpx 15rpx 0 -10rpx, cornsilk 85rpx 5px 0 -5rpx;
	  	height: 50rpx;
	  	width: 50rpx;
	  	margin-left: -60rpx;
	  }
	  
	  .span:after {
	  	animation: cloud_shadow 5s ease-in-out infinite;
	  	background: #000;
	  	border-radius: 50%;
	  	content: '';
	  	height: 15rpx;
	  	width: 120rpx;
	  	opacity: 0.2;
	  	position: absolute;
	  	left: 5rpx;
	  	bottom: -60rpx;
	  }
	  
	  @keyframes cloud {
	  	50% {
	  		transform: translateY(-20rpx);
	  	}
	  }
	  
	  @keyframes cloud_shadow {
	  	50% {
	  		transform: translateY(0rpx) scale(.7);
	  		opacity: .05;
	  	}
	  }
  }
  .container-fixed_ele {
    display: flex;
    align-items: center;
    justify-content: center;
    position: fixed;
    top: 85vh;
    right: 30rpx;
    width: 100rpx;
    height: 100rpx;
    // background-color: rgba(0, 0, 0, 0.3);
    border-radius: 50%;
    .ele-img {
      width: 80rpx;
      height: 80rpx;
    }
  }
  .container-circle {
    width: 100%;
    display: flex;
    justify-content: space-between;
	align-items: center;
	overflow: hidden;
    margin: 30rpx 0;
	.circle_left {
		font-size: 40rpx;
	}
	.circle_right {
		font-size: 28rpx;
		color: #ccc;
	}
  }
  .container-scroll {
	  width: 100%;
	  height: auto;
	  .list-item {
		  width: 100%;
		  margin-bottom: 10rpx;
		  border-radius: 30rpx;
		  overflow: hidden;
		  .item_con {
			  display: flex;
			  height: auto;
			  border-radius: 20rpx;
			  .con-name {
				  display: flex;
				  align-items: center;
				  justify-content: center;
				  width: 30%;
				  padding: 20rpx;
				  background: rgba(255,139,174,1);
				  color: #fff;
			  }
			  .con-text {
				  width: 70%;
				  padding: 20rpx;
				  background-color: rgba(249,226,239,1);
			  }
		  }
	  }
  }
  .words-scroll {
	  width: 100%;
	  height: 300rpx;
	  background-color: #000;
	  .box {
		  color: #fff;
		  font-size: 50rpx;
		  font-weight: 700;
		  text-align: center;
		  line-height: 300rpx;
	  }
  }
  .container-post {
  	width: 100%;
  }
}
</style>