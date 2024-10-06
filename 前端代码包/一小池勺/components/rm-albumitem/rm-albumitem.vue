<!-- <template>
	<view class="rm-container" @click="toThisAlbum">
		<view class="album-header">
			<view class="header-left">
				<image class="img" src="https://pic4.zhimg.com/v2-615e567df5e06fbcd53c72422e24fd67_r.jpg"></image>
				<text class="title">所以你睡了没</text>
			</view>
		</view>
		<view class="album-con">
			“心动就是兔子的世界下起了萝卜雨”
		</view>
	</view>
</template>

<script>
	export default {
		name:"rm-albumitem",
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
		methods: {
			toThisAlbum() {
				uni.navigateTo({
					url: "../../subpkg/album-detail/album-detail"
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
.rm-container {
	width: 90vw;
	height: 300rpx;
	margin: 30rpx auto;
	background-color: rgba(127,131,104,.8);
	border-radius: 50rpx;
	overflow: hidden;
	.album-header {
		display: flex;
		align-items: center;
		height: 100rpx;
		background-color: rgba(127,131,104,.9);
		.header-left {
			display: flex;
			align-items: center;
			margin-left: 35rpx;
			.img {
				width: 60rpx;
				height: 60rpx;
				border-radius: 10rpx;
			}
			.title {
				margin-left: 30rpx;
				color: #F8F8F8;
				font-size: 35rpx;
				font-weight: 100;
			}
		}
	}
	.album-con {
		height: 200rpx;
		display: flex;
		align-items: center;
		justify-content: center;
		color: #fff;
	}
}
</style> -->

<template>
	<view class="container">
		<view @click="toThisAlbum" v-for="(list,index) in item" :key="index">
			<view class="left">
				<image class="img" :src="list.categoryPicture"></image>
			</view>
			<view class="right">
				<view class="title">{{ list.categoryName }}</view>
				<view class="desc">{{ list.categorySynopsis }}</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		name:"rm-albumitem",
		props: {
		  item: {
		    type: Array,
		    required: true
		  }
		},
		data() {
			return {
				
			}
		},
		methods: {
			toThisAlbum() {
				uni.navigateTo({
					url: "../../subpkg/album-detail/album-detail"
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
.container {
	width: 100vw;
	margin: 0 auto;
	margin-bottom: 25rpx;
	height: 150rpx;
	display: flex;
	// background-color: pink; // 背景板
	background-color: #FFF;
	.left {
		display: flex;
		justify-content: center;
		align-items: center;
		margin-right: 15rpx;
		width: 30%;
		height: 100%;
		// background-color: red; // 背景板
		.img {
			width: 90%;
			height: 90%;
			border-radius: 15rpx;
		}
	}
	.right {
		width: 70%;
		height: 100%;
		// background-color: burlywood; // 背景板
		.title {
			margin-top: 15rpx;
			font-size: 34rpx;
			font-weight: 600;
		}
		.desc {
			font-size: 25rpx;
			color: #ccc;
			margin-top: 20rpx;
		}
	}
}
</style>