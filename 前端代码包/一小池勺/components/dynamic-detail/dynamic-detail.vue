<template>
	<view class="container">
		<view class="container-avatar"></view>
		<view class="container-content"></view>
		<!-- 评论列表独立封装为组件 -->
		<view class="container-comments">
			<view class="comments_top"></view>
			<view class="comments_list"></view>
		</view>
		<!-- 评论框在该页面定义即可 固定定位到底部 -->
	</view>
</template>

<script>
	export default {
		name:"dynamic-detail",
		data() {
			return {
				
			}
		}
	}
</script>

<style lang="scss" scoped>

</style>