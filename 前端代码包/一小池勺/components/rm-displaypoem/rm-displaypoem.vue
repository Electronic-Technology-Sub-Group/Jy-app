<template>
  <view class="rm-container">
	  <block v-for="(item, index) in poemList" :key="index">
	    <view class="item" @click="toThisCat(item)">
	      <view class="vertical-text">{{ item }}</view>
	    </view>
	  </block>
  </view>
</template>

<script>
export default {
  name: "rm-displaypoem",
  props: {
    poemList: {
      type: Array,
      required: true
    }
  },
  methods: {
  	toThisCat(item) {
  		uni.navigateTo({
  			url: `../../subpkg/poem-Detail/poem-Detail?id=${item}`
  		})
  	}
  }
}
</script>

<style lang="scss" scoped>
.rm-container{
	width: 100%;
	display: flex;
	.item {
		text-align: center;
		font-size: 25rpx;
		line-height: 80rpx;
		width: 10%;
		height: 80rpx;
		border: 1rpx solid #ccc;
		.vertical-text {
			
		}
	}
}
</style>