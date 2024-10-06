<template>
	<view class="rm-container">
		<block v-for="(item,index) in personList" :key="index">
			<view class="item">
				<image :src="item.picUrl" class="item_left"></image>
				<vire class="item_right">{{ item.name }}</vire>
			</view>
		</block>
		
	</view>
</template>

<script>
	export default {
		name:"rm-displayperson",
		props: {
		  personList: {
		    type: Array,
		    required: true
		  }
		},
		data() {
			return {
				
			};
		}
	}
</script>

<style lang="scss" scoped>
.rm-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	align-items: center;
	width: 100%;
	height: 320rpx;
	.item {
		display: flex;
		justify-content: center;
		align-items: center;
		width: 30%;
		height: 26%;
		margin: 6rpx;
		border-radius: 16rpx;
		background-color: rgba(198,198,198,.4);
		.item_left {
			border-radius: 50%;
			width: 60rpx;
			height: 60rpx;
		}
		.item_right {
			font-size: smaller;
			font-weight: 200;
			margin-left: 8rpx;
		}
	}
}
</style>