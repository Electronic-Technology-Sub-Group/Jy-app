<template>
  <view class="custom-swiper">
    <swiper class="banner" :indicator-dots="true" :autoplay="true" :interval="3000" :circular="true">
      <swiper-item v-for="(item, index) in images" :key="index">
        <image :src="item.picUrl" class="banner-image"></image>
      </swiper-item>
  	</swiper>
  </view>
</template>

<script>
export default {
  props: {
    images: {
      type: Array,
      default: () => []
    }
  },
  methods: {
    handleClick(link) {
      uni.navigateTo({
        url: link
      })
    }
  }
}
</script>

<style lang="scss" scoped>
.custom-swiper {
  margin-top: 30rpx;
  width: 100%;
  height: 300rpx;
  overflow: hidden;
  border-radius: 30rpx;
  box-shadow: 0px 0px 5rpx 5rpx rgba(0, 0, 0, 0.1);
  .banner {
   width: 100%;
   height: 100%;
    .banner-image {
      width: 100%;
	  height: 100%;
    }
  }
}
</style>