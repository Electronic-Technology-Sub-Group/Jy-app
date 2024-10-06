<template>
	<view class="rm-container" @click="toIt(item.sentenceId)">
		<image class="container-img" :src=" item.sentencePicture"></image>
		<view class="container-con">
			<view class="text">{{ item.sentenceText }}</view>
		</view>
	</view>
</template>

<script>
	export default {
		name:"rm-cardmore",
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
			toIt(id) {
				uni.navigateTo({
					url: `../../subpkg/sentence-details/sentence-details?id=${id}`
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
.rm-container {
	width: 100%;
	height: auto;
	border-radius: 30rpx;
	overflow: hidden;
	box-shadow: 0px 0px 2rpx 2rpx rgba(0, 0, 0, 0.1);
	.container-img {
		height: 300rpx;
		width: 100%;
	}
	.container-con {
		margin: 50rpx auto;
		width: 90%;
		.text {
			font-size: 30rpx;
			font-weight: 100;
			color: #000;
		}
	}
}
</style>