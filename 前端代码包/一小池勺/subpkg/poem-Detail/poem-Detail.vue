<template>
  <view class="swiper-container">
	<view class="fixed" v-if="TotalpageSize">
		{{ currentPageSize }} / {{ TotalpageSize }}
	</view>
	<view class="desc">关于{{ currentId }}的诗句</view>
    <swiper vertical :duration="500" :autoplay="false" :current="currentSentenceIndex" @change="swiperChange" class="swiperView">
      <swiper-item v-for="(sentence, index) in sentences" :key="index" class="swiperItem"> 
        <view class="sentence">
          {{ sentence }}
        </view>
      </swiper-item>
    </swiper>

    <view class="custom-controls">
		<image class="btn" @click="previousSentence" src="../../static/上箭头.png"></image>
		<image class="btn" @click="nextSentence" src="../../static/下箭头.png"></image>
    </view>
  </view>
</template>

<script>
import poem from '../../static/db/poem.json'
export default {
  data() {
    return {
	  TotalpageSize: null,
	  currentId: "",
      sentences: [],
      currentSentenceIndex: 0 // 当前句子
    }
  },
  onLoad(options) {
	this.currentId = options.id
  },
  mounted() {
	  uni.showToast({
	  	title: '加载中',
	  	icon: 'none',
	  	duration: 1000,
	  	mask: false, // 是否显示透明蒙层，可以增加加载时的遮罩效果
	  	image: '../../static/云社区.png', // 自定义加载图标的路径
	  	complete: () => {
	  		setTimeout(() => {
				this.fetchSentences()
	  		}, 1000)
	  	}
	  })
	   
  },
  methods: {
    fetchSentences() {
      this.sentences = poem[this.currentId]
	  this.TotalpageSize = Math.ceil(this.sentences.length / 5)
    },
    previousSentence() {
      // 切换到前一个句子
      if (this.currentSentenceIndex > 0) {
        this.currentSentenceIndex--
      } else {
        uni.showToast({
          title: '还在楼顶噢',
          icon: 'none',
        })
      }
    },
    nextSentence() {
      // 切换到下一个句子
      if (this.currentSentenceIndex < this.sentences.length - 1) {
        this.currentSentenceIndex++;
      } else {
        uni.showToast({
          title: '已经滑到底部了噢',
          icon: 'none',
        });
      }
    },
	swiperChange(e) {
	 // 监听 Swiper 切换事件，更新当前句子索引
	 this.currentSentenceIndex = e.detail.current
	 if(e.detail.current === this.sentences.length - 1) {
		 uni.showToast({
		   title: '已经滑到底部了噢',
		   icon: 'none',
		 })
	 }
	}
  },
  computed: {
	  currentPageSize() {
		   return this.currentPageSize = Math.ceil((this.currentSentenceIndex+1) / 5)
	  }
	 
  }
}
</script>

<style lang="scss" scoped>
.swiper-container {
	position: relative;
	.fixed {
		position: fixed;
		text-align: center;
		line-height: 55rpx;
		bottom: 30rpx;
		right: 30rpx;
		width: 120rpx;
		height: 56rpx;
		background-color: #ccc;
		border-radius: 28rpx;
		color: #fff;
		font-weight: 100;
	}
	.desc {
		position: fixed;
		top: 30rpx;
		left: 50%;
		transform: translateX(-50%);
		color: #fff;
		font-size: 40rpx;
		font-weight: 100;
	}
	.swiperView {
		height: 100vh;
		width: 100vw;
		background-color: #000;
		.swiperItem {
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100%;
			width: 100%;
			.sentence {
				color: #fff;
				width: 70%;
				font-weight: 600;
				font-size: 18px;
				text-align: center;
				border-radius: 10px;
			}
		}
	}
	.custom-controls {
		display: flex;
		flex-direction: column;
		position: absolute;
		left: 90%;
		top: 50%;
		transform: translateY(-50%);
		width: 100%;
		.btn {
			margin:20rpx 0;
			width: 50rpx;
			height: 50rpx;
		}
	}
}
</style>
