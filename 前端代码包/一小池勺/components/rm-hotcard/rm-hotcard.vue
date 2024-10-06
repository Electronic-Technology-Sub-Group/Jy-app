<template>
	<view class="rm-container">
		<scroll-view
		scroll-x="true" 
		class="list"
		:style="{width: screenWidth + 'px'}"
		>
		 <block v-for="(item,index) in hotcarditemList" :key="index">
			<view class="item">
				<rm-hotcarditem :item="item"></rm-hotcarditem>
			</view>
		 </block>
		</scroll-view>
	</view>
</template>

<script>
	export default {
		name:"rm-hotcard",
		props: {
		  hotcarditemList: {
		    type: Array,
		    required: true
		  }
		},
		data() {
			return {
			   screenWidth: 375
			}
		},
		created() {
			const systemInfo = uni.getSystemInfoSync()
			this.screenWidth = systemInfo.windowWidth
		    this.getNumberFrom()
		},
	}
</script>

<style lang="scss" scoped>
.list {
  margin-left: -24rpx;
  white-space: nowrap;
}

.list .item {
  display: inline-block;
  width: 80vw;
  margin-left: 24rpx;
}

.list .item:last-of-type {
  margin-right: 24rpx;
}
</style>