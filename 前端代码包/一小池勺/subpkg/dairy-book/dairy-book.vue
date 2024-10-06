<template>
	<view class="container">
		<view class="item" @click="toTest">健身打卡</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				
			}
		},
		methods: {
			toTest() {
				uni.navigateTo({
					url: "../../subpkg/body-test/body-test"
				})
			},
			toDayli() {
				uni.navigateTo({
					url: "../../subpkg/bianqian-page/bianqian-page"
				})
			}
		}
	}
</script>

<style lang="scss">
.container {
	width: 100vw;
	.item {
		font-size: 25rpx;
		text-align: center;
		line-height: 100rpx;
		border-radius: 50rpx;
		width: 90%;
		height: 100rpx;
		// background-color: red;
		box-shadow: 0rpx 0rpx 15rpx rgba(213,188,238,.7);
		margin: 20rpx auto;
	}
}
</style>
