<template>
  <view class="rm-container" :style="{ backgroundImage: bgStyle }" @click="toThis(item.sentenceId)">
	  <view style="position: absolute; top: 5rpx; right: 30rpx;">
		  <image style="width: 40rpx;height: 40rpx;" src="../../static/rm-pin.png" mode=""></image>
	  </view>
	  <!-- <view :class="icons[item.index]"></view> -->
	  <text class="container_text">{{ item.sentenceText }}</text>
	  <view class="container_tool">
		  <view class="tool_item" style="display: flex; align-items: center; font-size: 20rpx;">
			  <image :src="item.judge === 1 ? '../../static/收藏 (2).png' : '../../static/025_会员.png'"></image> 
			  <text>{{ item.favoriteNum }}</text>
		  </view>
		  <view class="tool_item" style="display: flex; align-items: center; font-size: 20rpx;">
			  <image :src="item.logo === 1 ? '../../static/点赞 (1).png' : '../../static/025_点赞-30.png'"></image>
			  <text>{{ item.likeNum }}</text>
		  </view>
		  <view class="tool_item" style="display: flex; align-items: center; font-size: 20rpx;">
			  <image src="../../static/025_文本.png"></image>
			  <text>{{ item.commentNum }}</text>
		  </view>
	  </view>
  </view>
</template>

<script>
export default {
  name: "rm-hotcarditem",
  props: {
    item: {
      type: Object,
      required: true
    }
  },
  data() {
	return {
		icons: ['icon1','icon2','icon3']
	}  
  },
  methods: {
	  toThis(id) {
		  uni.navigateTo({
		  	url: `../../subpkg/sentence-details/sentence-details?id=${id}`
		  })
	  }
  },
  computed: {
    bgStyle() {
      const backgroundColors = [
		"linear-gradient(to left bottom, #ffdcea, #e4f5ff)",
        "linear-gradient(to right bottom, #aa826f, #deeaff)",
        "linear-gradient(to right bottom, #b5b5ff, #deeaff)"
      ];
      return backgroundColors[this.item.index];
    }
  }
};
</script>

<style lang="scss" scoped>
.rm-container {
  position: relative;
  height: 350rpx;
  width: 100%;
  background-size: cover;
  border-radius: 40rpx;
  .icon1::before {
	  content: "";
	  position: absolute;
	  top: 65rpx;
	  left: 50%;
	  transform: translateX(-50%);
	  width: 90%;
	  height: 18rpx;
	  border-radius: 10rpx;
	  background-color: #ff8bae;
	  box-shadow: 0px 0px 2rpx 2rpx rgba(0, 0, 0, 0.1);
  }
  .icon1::after {
	  content: "";
	  position: absolute;
	  top: 90rpx;
	  left: 50%;
	  transform: translateX(-50%);
	  width: 90%;
	  height: 3rpx;
	  background-color:  #fed8ff;
  }
  
  // 
  
  .icon2::before {
  	  content: "";
  	  position: absolute;
  	  top: 65rpx;
  	  left: 50%;
  	  transform: translateX(-50%);
  	  width: 90%;
  	  height: 18rpx;
  	  border-radius: 10rpx;
  	  background-color: #bab9b4;
	  box-shadow: 0px 0px 2rpx 2rpx rgba(0, 0, 0, 0.1);
  }
  .icon2::after {
  	  content: "";
  	  position: absolute;
  	  top: 90rpx;
  	  left: 50%;
  	  transform: translateX(-50%);
  	  width: 90%;
  	  height: 3rpx;
  	  background-color:  #cacccc;
  }
  
  // 
  
  .icon3::before {
  	  content: "";
  	  position: absolute;
  	  top: 65rpx;
  	  left: 50%;
  	  transform: translateX(-50%);
  	  width: 90%;
  	  height: 18rpx;
  	  border-radius: 10rpx;
  	  background-color: #b3a5ff;
	  box-shadow: 0px 0px 2rpx 2rpx rgba(0, 0, 0, 0.1);
  }
  .icon3::after {
  	  content: "";
  	  position: absolute;
  	  top: 90rpx;
  	  left: 50%;
  	  transform: translateX(-50%);
  	  width: 90%;
  	  height: 3rpx;
  	  background-color:  #b8a9ff;
  }
  
	.container_text {
	  position: absolute;
	  width: 90%;
	  top: 40%;
	  left: 50%;
	  transform: translateX(-50%);
	  height: 60px; // 设置一个固定的高度，用于显示多行文本
	  white-space: pre-wrap; // 设置换行规则，保留空白符并自动换行
	  font-size: 30rpx;
	  font-family: '楷体';
	}
	
	.container_tool {
		position: absolute;
		display: flex;
		left: 50%;
		transform: translateX(-50%);
		bottom: 30rpx;
		width: 90%;
		justify-content: space-between;
		image {
			width: 50rpx;
			height: 50rpx;
		}
		text {
			padding-left: 10rpx;
		}
	}
}
</style>