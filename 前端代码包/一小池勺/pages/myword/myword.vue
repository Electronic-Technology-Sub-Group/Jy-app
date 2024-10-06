<template>
	<view class="container">
		<rm-search></rm-search>
		<view class="container-top">
			<view class="left" @click="fetchTopTenMomentCategory">热门话题</view>
			<view class="right"><text style="color: #000; font-weight: 100;padding-right: 10rpx;" @click="tomore">更多圈子</text>  > </view>
		</view>
		<view class="container-hot">
			<image class="hot_img" src="../../static/排名分析.png"></image>
		</view>
		<view class="container-banner">
           <block v-for="(item,index) in bannerList" :key="index">
			   <view class="banner-item" :class="index === 0 ? 'active' : ''" @click="tothistopic(item.momentCategory.categoryId)">
				   <view class="item-top">
					   <image class="item_img" :src="imgList[index]"></image>
					   <view class="item_title">{{ item.momentCategory.categoryName }}</view>
				   </view>
				   <view class="item-num">
					   <image class="img" src="../../static/025_文本.png"></image>
					   <text>{{ item.num }}</text>
				   </view>
			   </view>
		   </block>
		</view>
		<view style="height: 100rpx;"></view>
	</view>
</template>

<script>
	import { TopTenMomentCategory } from '../../services/AboutDynamics.js'
	export default {
		data() {
			return {
				imgList: [
					"../../static/火热.png",
					"../../static/火热.png",
					"../../static/火热.png",
					"../../static/上升.png",
					"../../static/上升.png",
					"../../static/上升.png",
					"../../static/上升.png",
					"../../static/上升.png",
					"../../static/上升.png",
					"../../static/上升.png"
				],
				bannerList: []
			}
		},
		mounted() {
			this.fetchTopTenMomentCategory()
		},
		methods: {
			async fetchTopTenMomentCategory() {
				const res = await TopTenMomentCategory()
				console.log(res)
				this.bannerList = res.data
			},
			tothistopic(id) {
				uni.navigateTo({
					url: `../../subpkg/hot-topic/hot-topic?itemId=${id}`
				})
			},
			tomore() {
				uni.navigateTo({
					url: "../../subpkg/more-circles/more-circles"
				})
			}
		},
	}
</script>

<style lang="scss" scoped>
.container {
	width: 100vw;
	margin-bottom: 80rpx;
	.container-top {
		display: flex;
		justify-content: space-between;
		align-items: center;
		width: 90%;
		margin: 100rpx auto;
		.left {
			font-weight: 800;
		}
		.right {
			font-size: 24rpx;
			color: #cccc
		}
	}
	.container-hot {
		display: flex;
		justify-content: center;
		margin: 30rpx 0;
		width: 100vw;
		.hot_img {
			width: 120rpx;
			height: 100rpx;
		}
	}
	.container-banner {
		display: flex;
		flex-direction: column;
		width: 100vw;
		height: auto;
		&:last-child {
			margin-bottom: 80rpx;
		}
		.banner-item {
			display: flex;
			flex-direction: column;
			justify-content: center;
			margin: 0 auto;
			width: 80%;
			height: 160rpx;
			padding: 0 25rpx;
			box-shadow: 0px 0px 2rpx 2rpx rgba(0, 0, 0, 0.1);
			&.active {
			background: radial-gradient(circle at 10% 20%, rgb(239, 246, 249) 0%, rgb(206, 239, 253) 90%);
			border-top-left-radius: 20rpx;
			border-top-right-radius: 20rpx;
			}
			.item-top {
				display: flex;
				width: 100%;
				.item_img {
					margin-right: 15rpx;
					width: 45rpx;
					height: 45rpx;
				}
				.item_title {
					font-weight: 100;
				}
			}
			.item-num {
				display: flex;
				align-items: center;
				margin-top: 15rpx;
				margin-left: 60rpx;
				color: #CCC;
				font-size: 20rpx;
				.img {
					margin-right: 15rpx;
					width: 30rpx;
					height: 30rpx;
				}
			}
		}
	}
}
</style>
