<template>
  <view class="container">
    <scroll-view class="slider-left" scroll-y>
      <view
        class="tab"
        :class="{ active: currentTab === index }"
        v-for="(item, index) in categoryList"
        :key="index"
        @tap="switchTab(index)"
      >
        {{ item.albumName }}
      </view>
    </scroll-view>
    <scroll-view class="slider-right" @scroll-into-view="checkRightScroll" scroll-y :scroll-into-view="'category' + currentTab">
      <view v-for="(item, index) in categoryList" :key="index" class="cat-item">
        <view class="item-name"> {{ item.albumName }} </view>
        <block v-for="(item1, i) in item.momentCategoryList" :key="i">
        	<view class="item-list">
        		<view class="list-left">
        			<view class="main">
        				<image class="img" :src="item1.categoryPicture"></image>
        			</view>
        			<view class="list-mid">
        				<view class="title">{{ item1.categoryName }}</view>
        				<!-- <view class="num">共{{ item1.num }}条讨论</view> -->
        			</view>
        		</view>
        		<view class="list-right" @click="todosmoething(item1.categoryId)">进入</view>
        	</view>
        </block>
      </view>
    </scroll-view>
  </view>
</template>

<script>
import { album } from '../../services/AboutDynamics.js'
export default { 
  data() {
    return {
      currentTab: 0,
      categoryList: []
    }
  },
  mounted() {
	  this.fetchalbum()
  },
  methods: {
    switchTab(index) {
      this.currentTab = index;
    },
	todosmoething(id) {
		console.log(id)
		uni.navigateTo({
			url: `../../subpkg/hot-topic/hot-topic?itemId=${id}`
		})
	},
	async fetchalbum() {
		const res = await album()
		console.log(res)
		this.categoryList = res.data
	}
  }
};
</script>

<style lang="scss" scoped>
.container {
  display: flex;
  height: 100vh;
  .slider-left {
    font-size: small;
    color: #ccc;
    width: 25%;
    .tab {
      padding: 45rpx 20rpx 45rpx 20rpx;
	  text-align: center;
      &.active {
		position: relative;
		z-index: 1;
        color: #fff;
        &::after {
        	content: '';
			position: absolute;
			z-index: -1;
			left: 0;
			top: 50%;
			transform: translateY(-50%);
        	width: 8rpx;
			height: 60rpx;
		    background: radial-gradient(circle at 10% 20%, rgb(138,229,240) 0%, rgb(206, 239, 253) 90%);
		    border-radius: 30rpx;
			animation: expandglow 0.5s ease-out forwards;
		}
	  }
    }
	@keyframes expandglow {
	  to {
	    width: 100%;
	  }
	}
  }
  .slider-right {
    width: 75%;
	padding-left: 20rpx;
	.cat-item {
		height: auto;
		.item-name {
			font-size: 40rpx;
			font-weight: 100;
		}
		.item-list {
			display: flex;
			justify-content: space-between;
			align-items: center;
			width: 90%;
			margin: 20rpx auto;
			.list-left {
				display: flex;
				align-items: center;
				.main{ 
					width: 110rpx;
					height: 110rpx;
					border-radius: 15rpx;
					overflow: hidden;
					margin-right: 20rpx;
					.img {
						width: 100%;
						height: 100%;
					}
				}
				.list-mid {
					.title {
						font-size: 25rpx;
						margin-bottom: 20rpx;
						font-weight: 100;
						color: #000;
					}
					.num {
						font-size: 18rpx;
						color: #ccc;
					}
				}
			}
			.list-right {
				width: 70rpx;
				height: 38rpx;
				text-align: center;
				line-height: 38rpx;
				font-size: 20rpx;
				border-radius: 15rpx;
				background-color:#eeeeee;
			}
		}
	}
  }
}
</style>
