<template>
   <view class="rm-container">
	   <scroll-view
	   scroll-x
	   class="list"
	   :style="{width: screenWidth + 'px'}"
	   >
	     <block v-for="(item,index) in cardList" :key="index">
	   	  <view class="rm-cardforindex item" @click="doSomething(item.sentenceId)">
			<!-- 展示区域 -->
	   	  	<view class="rm-img-wrapper">
	   	  		<image class="rm-cardforindex_headerImg" :src="item.sentencePicture"></image>
	   	  		<text class="number">{{ item.sentenceCreateDate.slice(8, 10) }}</text>
	   	  		<text class="date">{{ item.sentenceCreateDate.slice(0, 10) }}</text>
				<text class="day">{{ item.dayOfWeek }}</text>
	   	  	</view>
	   	  	<view class="rm-cardforindex_content">
	   	  	   <view class="content-main">
	   	  		   {{ item.sentenceText }}
	   	  	   </view>
	   	  	   <view class="content-title">{{ item.derivation[0] ? item.derivation[0] : '' }}</view>
			   <!-- 底部功能区域 -->
<!-- 			   <view class="rm-cardforindex_tool">
			   	<view class="tool_left">
					<image style="width: 40rpx;height: 40rpx;" src="../../static/rm-share.png" mode=""></image>
			   	</view>
			   	<view class="tool_right">
			   	   <image style="width: 40rpx;height: 40rpx;" src="../../static/rm-nice.png" mode=""></image>
				   <view style="font-size: 20rpx; color: #ccc;" class="total_num">100</view>
				   <image style="width: 40rpx;height: 40rpx;" src="../../static/rm-cart.png" mode=""></image>
				   <view style="font-size: 20rpx; color: #ccc;" class="total_num">92</view>
				   <image style="width: 40rpx;height: 40rpx;" src="../../static/rm-talk.png" mode=""></image>
				   <view style="font-size: 20rpx; color: #ccc;" class="total_num">4</view>
			   	</view>
			   </view> -->
	   	  	</view>
	   	  </view>
	     </block>
	   </scroll-view>
   </view>
</template>

<script>
	import { SentenceLike, RecommendedSentence } from '../../services/AboutTheSentence.js'
    export default {
        name:"rm-cardforindex",
        data() {
            return {
				screenWidth: 375, // => 动态适配不同设备
				cardList: [],
            }
        },
        created() {
			this.fetchRecommendedSentence()
			const systemInfo = uni.getSystemInfoSync()
			this.screenWidth = systemInfo.windowWidth
        },
        methods: {
			doSomething(id) {
				console.log(this.cardList)
				console.log(id)
				uni.navigateTo({
					url: `../../subpkg/sentence-details/sentence-details?id=${id}`
				})
			},
			async fetchRecommendedSentence() {
				const res = await RecommendedSentence()
				this.cardList = res.data
			}
        }
    }
</script>

<style lang="scss" scoped>
/* 隐藏垂直滚动条 */
::-webkit-scrollbar {
  width: 0;
  height: 0;
}

/* 隐藏水平滚动条（如果需要） */
::-webkit-scrollbar-horizontal {
  height: 0;
}

/* 隐藏滚动条上的按钮和轨道背景（如果需要） */
::-webkit-scrollbar-thumb,
::-webkit-scrollbar-track {
  background: transparent;
}
.rm-container {
  display: flex;
  justify-content: center;
}

.list {
  white-space: nowrap;
}

.list .item {
  display: inline-block;
  width: 80vw;
  margin-left: 60rpx;
}

.list .item:last-of-type {
  margin-right: 60rpx;
}

.rm-cardforindex {
    width: 80vw;
    height: 70vh;
    overflow: hidden;
    border-radius: 60rpx;
	background-color: #fff;
	box-shadow: 0px 0px 2rpx 2rpx rgba(0, 0, 0, 0.1);
    .rm-img-wrapper {
        position: relative;
        width: 100%;
        height: 40%;
        .rm-cardforindex_headerImg {
            width: 100%;
            height: 100%;
        }
        .number {
            position: absolute;
            top: 10px;
            left: 20px;
            font-size: 2em;
            color: white;
        }
        .date {
            position: absolute;
            bottom: 10px;
            right: 20px;
            font-size: 25rpx;
            color: white;
        }
		.day {
		  position: absolute;
		  font-size: 30rpx;
		  color: #fff;
		  top: 50px;
		  left: 30px;
		}
    }
	.rm-cardforindex_content {
		width: 100%;
		height: 60%;
        display: flex;
     	flex-direction: column;
		align-items: center;
		justify-content: space-between;
		.content-main {
			width: 90%;
			flex: 2;
			color: #000;
			font-family: '楷体';
			font-size: 35rpx;
			margin-top: 60rpx;
			white-space: normal;
		}
		
		.content-title {
			flex: 2;
			color: #ccc;
			font-size: 30rpx;
			margin-top: 100rpx;
		}
		.rm-cardforindex_tool {
			flex: 1;
			display: flex;
			align-items: center;
			justify-content: space-between;
			width: 100%;
			margin-bottom: 30rpx;
			.tool_left {
				margin-left: 45rpx; 
			}
			.tool_right {
				display: flex;
				align-items: center;
				view {
					margin-right: 45rpx;
					padding-left: 10rpx;
				}
			}
		}
	}
}
</style>