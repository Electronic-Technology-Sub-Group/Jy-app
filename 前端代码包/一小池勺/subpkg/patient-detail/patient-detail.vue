<template>
	<view class="container">
		<view class="t">用户隐私协议</view>
		<view class="n">
			感谢您选择使用我们的软件。我们非常重视用户的隐私和个人信息保护，并承诺严格遵守相关的法律法规，保护用户的隐私安全。
		</view>
		<view class="t">信息收集</view>
		<view class="n">
			我们会收集您的个人信息，包括但不限于姓名、联系方式等，用于提供相关服务和保障您的账号安全。
		</view>
		<view class="t">信息使用</view>
		<view class="n">
			我们承诺不会将您的个人信息用于非法用途，也不会将您的个人信息泄露给第三方，除非经过您的明确授权或法律规定。
		</view>
		<view class="t">信息保护</view>
		<view class="n">
			我们会采取合理的安全措施保护您的个人信息，防止数据泄露、损坏或丢失。
		</view>
		<view class="t">隐私权政策更新</view>
		<view class="n">
			我们保留随时更新隐私权政策的权利，更新后的隐私权政策将在软件中进行公示。
		</view>
		<view class="t">联系我们</view>
		<view class="n">
			如果您对隐私政策有任何疑问或建议，可以通过软件内的联系方式与我们取得联系。
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				
			}
		}
	}
</script>

<style lang="scss">
.container {
	width: 100vw;
	.t {
		font-weight: 800;
		margin: 30rpx 20rpx;
	}
	.n {  
		width: 100%;
		padding: 0 20rpx;
		font-size: 30rpx;
		font-weight: 200;
		box-sizing: border-box;
	}
}
</style>
