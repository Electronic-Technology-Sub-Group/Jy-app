<template>
	<view class="menu-item" @click="toThisCatItem(item.id)">
	   <view class="top">
		 <image class="image" :src="item.imgPic"></image>
		 <view class="count" v-if="item.readCount">{{formatCount(item.readCount)}}</view>
	   </view>
	   <view class="bottom">
		{{item.catTotal}}
	   </view>
	</view>
</template>

<script>
	export default {
		name:"rm-menuitem",
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
			formatCount(count) {
			  count = Number(count)
			  if (count >= 100000000) {
			    return (count / 100000000).toFixed(1) + "亿"
			  } else if (count >= 10000) {
			    return (count / 10000).toFixed(1) + "万"
			  } else {
			    return count
			  }
			},
			toThisCatItem(id) {
				uni.navigateTo({
					url: `../../subpkg/materialCatShow/materialCatShow?id=${id}`
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
.menu-item {
  display: inline-block;
  width: 100%;
}

.top {
  position: relative;
}

.top .image {
  height: 210rpx;
  width: 100%;
  border-radius: 12rpx;
  background-size: cover;
}

.top .count {
  position: absolute;
  right: 0;
  bottom: 10rpx;
  color: #fff;
  font-size: 22rpx;
  border-radius: 12rpx;
  padding: 6rpx 10rpx;
  background: rgba(0,0,0, .5);
}

.menu-item .bottom {
  width: 100%;
  font-size: 26rpx;
  /* 显示两行 */
  white-space: normal;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
}
</style>