<template>
  <view class="swiper-container">
    <swiper vertical :duration="500" :autoplay="false" :current="currentSentenceIndex" @change="swiperChange" class="swiperView">
      <swiper-item v-for="(sentence, index) in sentences" :key="index" class="swiperItem"  :style="{ background: sentenceColors[index] }" @click="todetail(sentence.sentenceId)"> 
        <view class="sentence">
          {{ sentence.sentenceText }}
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
import { ImmerseReading } from '../../services/AboutTheSentence.js'
export default {
  data() {
    return {
      sentences: [],
	  sentenceColors: [], // 保存历史背景色
      currentSentenceIndex: 0 // 当前句子
    }
  },
  mounted() {
    this.fetchImmerseReading()
  },
  methods: {
    async fetchImmerseReading() {
      const res = await ImmerseReading()
	  console.log(res)
	  this.sentences = res.data.slice(1)
	  // 为每个句子生成随机背景色
	  this.sentenceColors = this.sentences.map(() => this.getBackgroundColor())
    },
	
    previousSentence() {
      // 切换到前一个句子
      if (this.currentSentenceIndex > 0) {
        this.currentSentenceIndex--
      } else {
        uni.showToast({
          title: '还在楼顶呢~',
          icon: 'none',
        });
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
	},
	 getBackgroundColor() {
	  // 返回随机索引
	  const colors = ['radial-gradient(circle at 7.2% 13.6%, rgb(37, 249, 245) 0%, rgb(8, 70, 218) 90%);', 'radial-gradient(circle at 10.6% 23.3%, rgb(186, 162, 252) 0%, rgb(176, 248, 242) 72.4%);', 'radial-gradient(circle at 48.7% 44.3%, rgb(30, 144, 231) 0%, rgb(56, 113, 209) 22.9%, rgb(38, 76, 140) 76.7%, rgb(31, 63, 116) 100.2%);', 'radial-gradient(circle at 10% 20%, rgb(222, 168, 248) 0%, rgb(168, 222, 248) 21.8%, rgb(189, 250, 205) 35.6%, rgb(243, 250, 189) 52.9%, rgb(250, 227, 189) 66.8%, rgb(248, 172, 172) 90%, rgb(254, 211, 252) 99.7%);', 'linear-gradient(106.5deg, rgba(255, 215, 185, 0.91) 23%, rgba(223, 159, 247, 0.8) 93%);', 'linear-gradient(103.3deg, rgb(252, 225, 208) 30%, rgb(255, 173, 214) 55.7%, rgb(162, 186, 245) 81.8%);', 'linear-gradient(181.2deg, rgb(181, 239, 249) 10.5%, rgb(254, 254, 254) 86.8%);', 'linear-gradient(to right, #9fe1fa, #f4edc9);','linear-gradient(111.4deg, rgb(238, 113, 113) 1%, rgb(246, 215, 148) 58%);','linear-gradient(102.7deg, rgb(253, 218, 255) 8.2%, rgb(223, 173, 252) 19.6%, rgb(173, 205, 252) 36.8%, rgb(173, 252, 244) 73.2%, rgb(202, 248, 208) 90.9%);','linear-gradient(111.4deg, rgb(238, 113, 113) 1%, rgb(246, 215, 148) 58%);','linear-gradient(109.6deg, rgb(101, 58, 150) 29.9%, rgb(168, 141, 194) 99.9%);']
	  const randomInt = Math.floor(Math.random() * colors.length)
	  return colors[randomInt]
	 },
	 todetail(id) {
		 uni.navigateTo({
		 	url: `../../subpkg/sentence-details/sentence-details?id=${id}`
		 })
	 }
  }
}
</script>

<style lang="scss" scoped>
.swiper-container {
	position: relative;
	.swiperView {
		height: 100vh;
		width: 100vw;
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
