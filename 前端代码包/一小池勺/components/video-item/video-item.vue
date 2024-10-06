<template>
	<view class="item" @click="onVideoTap(item)">
	  <view class="album">
		<image class="img" mode="widthFix" :src="item.cover"></image>
		<view class="duration">{{ fmtDuration }}</view>
	  </view>
	  <view class="content">
		  <view class="mvname">
		  	{{ item.name }}
		  </view>
		  <view class="box">
		  	<view class="artistName">
		  		{{ item.artistName }}
		  	</view>
		  	<view class="count">
		  	{{ fmtCount }} 播放量
		  	</view>
		  </view>	
	  </view>
	</view>
</template>

<script>
	import { formatCount,formatTime } from '../../utils/formate.js'
	export default {
		name:"video-item",
		props: {
		  item: {
		    type: Object,
		    required: true
		  }
		},
		data() {
			return {
				
			}
		},
		computed: {
			fmtCount() {
				return formatCount(this.item.playCount)
			},
			fmtDuration() {
				return formatTime(this.item.mv.videos[0].duration)
			}
		},
		methods: {
			onVideoTap() {
				console.log(this.item.id)
				console.log(this.item.mv)
				uni.navigateTo({
					url: `../../subpkg/mv-detail/mv-detail?id=${this.item.id}`
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
.item {
	display: flex;
	margin-bottom: 15rpx;
	width: 100%;
	.album {
		position: relative;
		width: 45%;
		.img {
			width: 100%;
			border-radius: 20rpx;
		}
		.duration {
			position: absolute;
			bottom: 10rpx;
			right: 20rpx;
			color: #fff;
			font-size: 21rpx;
		}
	}
	.content {
		width: 55%;
		margin: 10rpx 0 0 15rpx;
		.mvname {
			font-size: 25rpx;
			font-weight: 100;
			margin-bottom: 40rpx;
		}
		.box {
			.artistName {
				font-size: 18rpx;
				color: #ccc;
				margin-bottom: 8rpx;
			}
			.count {
				color: #ccc;
				font-size: 18rpx;
			}
		}
	}
}
</style>
