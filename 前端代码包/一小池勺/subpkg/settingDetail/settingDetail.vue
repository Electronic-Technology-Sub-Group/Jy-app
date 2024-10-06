<template>
	<view class="container">
		<view class="item">版本号 verson 1.0.0</view>
		<view class="item" @click="topatient">隐私协议</view>
		<view class="item" @click="todetail">更新公告</view>
		<view class="item" @click="toAboutUs">关于我们</view>
		<view class="item" @click="toMore">更多功能</view>
		<view class="item" @click="outIn">退出登录</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				
			}
		},
		methods: {
			toMore() {
				uni.navigateTo({
					url: "../../subpkg/dairy-book/dairy-book"
				})
			},
			topatient() {
				uni.navigateTo({
					url: "../../subpkg/patient-detail/patient-detail"
				})
			},
			todetail() {
				uni.navigateTo({
					url: "../../subpkg/update-detail/update-detail"
				})
			},
			toAboutUs() {
				uni.navigateTo({
					url: "../../subpkg/aboutus-detail/aboutus-detail"
				})
			},
			outIn() {
				uni.showModal({
				  title: '提示',
				  content: '确认退出',
				  success: function (res) {
				    if (res.confirm) {
				      uni.navigateTo({
				      	url: "../../pages/login/login"
				      })
				    } else if (res.cancel) {
				      console.log('用户点击取消')
				    }
				  }
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
