<template>
	<view class="container">
		<view class="container-fixed_ele" @click="toSharePageTopic()">
		  <image src="../../static/rm-pen.png" mode="" class="ele-img"></image>
		</view>
		<view class="container-topicDetail">
			<view class="text">
				<image src="../../static/井号.png" class="img"></image>
				<view class="topicDetail-title">{{ TopicName }}</view>
			</view>	
			<view class="topicDetail-num"> {{ momentList.length }} 条动态 · 10020 次浏览</view>
			<view class="topicDetail-con">
				{{ TopicDesc }}
			</view>
		</view>
		<view class="container-bg">
			<view class="bg-top">
				<view class="title">最新</view>
			</view>
			<view v-if="momentList.length > 0" class="bg-con" style="height: 100%">
				<scroll-view scroll-y style="height: 100%;" class="fourPage_list_main">
					<block v-for="(item,index) in momentList" :key="index">
						<rm-post :item="item"></rm-post>
					</block>
				</scroll-view>
			</view>
			<view v-else class="imgBox">
				<image class="img" src="https://pic4.zhimg.com/v2-926ea0b96daffeb4b9796d89429cc243_r.jpg"></image>
				<view class="text" style="color: #ccc;font-weight: 800;text-align: center;margin-top: 30rpx;">快来参与讨论吧~</view>
			</view>
		</view>
	</view>
</template>

<script>
	import { AlbumCategoryItem } from '../../services/AboutDynamics.js'
	export default {
		data() {
			return {
				itemId: null,
				TopicName: "",
				TopicDesc: "",
				momentList: []
			}
		},
		onLoad(options) {
			console.log(options.itemId)
			this.fetchAlbumCategoryItem(options.itemId)
			this.itemId = options.itemId
		},
		methods: {
			toSharePageTopic() {
				uni.navigateTo({
					url: `../../subpkg/share-PageTopic/share-PageTopic?itemId=${this.itemId}`
				})
			},
			async fetchAlbumCategoryItem(id) {
				const res = await AlbumCategoryItem(id)
				console.log(res)
				this.TopicName = res.data.categoryName
				this.TopicDesc = res.data.categorySynopsis
				this.momentList = res.data.momentList.reverse()
			}
		}
	}
</script>

<style lang="scss" scoped>
.container {
	position: relative;
	width: 100vw;
	margin-bottom: 100rpx;
	.container-fixed_ele {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  position: fixed;
	  top: 2vh;
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
	.container-topicDetail {
		width: 100%;
		height: auto;
		padding-bottom: 100rpx;
		background-color: #C7EDCC;
		.imgBox {
			width: 100%;
			.img {
				margin: 40rpx auto;
				width: 300rpx;
				height: 300rpx;
			}
		}
		.text {
			display: flex;
			padding: 20rpx;
			.img {
				margin-right: 15rpx;
				width: 40rpx;
				height: 40rpx;
			}
			.topicDetail-title {
				color: #fff;
				font-weight: 900;
			}
		}
		.topicDetail-num {
			font-size: 20rpx;
			padding-left: 20rpx;
			color: #F8F8F8;
		}
		.topicDetail-con {
			margin-top: 20rpx;
			padding: 0 20rpx;
			font-size: 33rpx;
			color: #fff;
		}
	}
	.container-bg {
		width: 100%;
		height: 100vh;
		background-color: #fff;
		border-top-left-radius: 40rpx;
		border-top-right-radius: 40rpx;
		margin-top: -40rpx;
		.bg-top {
			.title {
				padding: 30rpx 0 0 30rpx;
				font-weight: 100;
			}
		}
		.bg-con {
			padding: 20rpx 25rpx;
		}
	}
}
</style>
