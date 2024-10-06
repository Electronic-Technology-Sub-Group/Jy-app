<template>
	<view class="rm-container">
		<scroll-view 
		scroll-x="true" 
		class="list"
		:style="{width: screenWidth + 'px'}"
		>
		 <block v-for="(item,index) in menuList" :key="index">
			<view class="item">
				<rm-abumlitem :item="item"></rm-abumlitem>
			</view>
		 </block>
		</scroll-view>
	</view>
</template>

<script>
	export default {
		name:"rm-scrolxcardforfind",
		props: {
		  menuList: {
		    type: Array,
		    required: true
		  }
		},
		data() {
			return {
				screenWith: 375,

			}
		},
		methods: {

		}
	}
</script>

<style lang="scss" scoped>
::-webkit-scrollbar {
  width: 0;
  height: 0;
}

/* 隐藏水平滚动条（如果需要） */
::-webkit-scrollbar-horizontal {
  height: 0;
}

/* 隐藏滚动条上的按钮和轨道背景（如果需要） */
::-webkit-scrollbar-thumb,
::-webkit-scrollbar-track {
  background: transparent;
}
.list {
  margin-left: -24rpx;
  white-space: nowrap;
}

.list .item {
  display: inline-block;
  width: 220rpx;
  margin-left: 24rpx;
}

.list .item:last-of-type {
  margin-right: 24rpx;
}
</style>