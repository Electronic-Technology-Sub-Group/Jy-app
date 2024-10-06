<template>
	<view class="container">
		<swiper :current.sync="current" @change="swiperChangeA" style="width: 100vw;height: 100vh;">
			<swiper-item :key="index">
				<scroll-view scroll-y="true" style="height: 100%;">
					<view class="header">
						<view class="h_left">
							<image class="img" :src="categoryPicture"></image>
						</view>
						<view class="h_right">
							<view class="album_name">{{ categoryName }}</view>
							<view class="album_come">
								<image class="avatar_img" src="https://cdn.nlark.com/yuque/0/2023/jpeg/34278134/1700121639454-c0816851-4eff-47e8-9340-3b5f4b09d9a1.jpeg"></image>
								<text class="avatar_name">官方收录</text>
								<text class="list_num">共收录{{ sentencesList.length }}条句子</text>
							</view>
							<view class="album_dir">简介：{{ categorySynopsis }}</view>
						</view>
					</view>
					<view class="bd">
						<view class="bd_list" v-if="sentencesList.length > 0">
							<block v-for="(item,index) in sentencesList" :key="index">
								<view class="list_item">
									<rm-like :item="item"></rm-like>
								</view>
							</block>
						</view>
						<view v-else style="width: 100%; display: flex;flex-direction: column;justify-content: center;align-items: center;">
							<image style="width: 180rpx;height: 180rpx;border-radius: 50%;margin-top: 150rpx;" src="https://cdn.nlark.com/yuque/0/2023/jpeg/34278134/1700121639454-c0816851-4eff-47e8-9340-3b5f4b09d9a1.jpeg?x-oss-process=image%2Fresize%2Cw_750%2Climit_0%2Finterlace%2C1"></image>
							<view style="margin-top: 80rpx;color: #ccc;font-size: 28rpx;">官方太懒，还未收录噢~</view>
						</view>
					</view>
				</scroll-view>
			</swiper-item>
		</swiper>
	</view>
</template>

<script>
	import { sentenceAlbumDetail } from '../../services/AboutTheSentence.js'
	export default {
		data() {
			return {
				categoryName: "",
				categoryPicture: "",
				categorySynopsis: "",
				id: null,
				current: 1,
				sentencesList: [],
				sentenceColors: [], // 保存历史背景色
				currentSentenceIndex: 0 // 当前句子
			}
		},
		onLoad(options)  {
			console.log(options)
			this.id = options.id
		},
		mounted() {
			this.fetchsentenceAlbumDetail()
		},
		methods: {
		    swiperChangeA(e) {
		      this.current = e.detail.current; // 监听页面切换，更新当前页面索引
		    },
			changeSwiper(index) {
				this.current = index
			},
			async fetchsentenceAlbumDetail() {
			  const res = await sentenceAlbumDetail(this.id)
			  console.log(res)
			  this.sentencesList = res.data.sentenceList
			  const { categoryName, categoryPicture, categorySynopsis } = res.data
			  this.categoryName = categoryName
			  this.categoryPicture = categoryPicture
			  this.categorySynopsis = categorySynopsis
			  // 为每个句子生成随机背景色
			  this.sentenceColors = this.sentencesList.map(() => this.getBackgroundColor())
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
			swiperChangeB(e) {
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
.container {
	position: relative;
	.top-option {
		color: #fff;
		position: fixed;
		right: 50rpx;
		top: 20rpx;
		z-index: 1;
		display: flex;
		padding: 10rpx 20rpx;
		background-color: rgba(0,0,0,.3);
		border-radius: 30rpx;
		.left {
			padding: 5rpx 20rpx;
			background-color: bisque;
			background-color: rgba(197,88,34,.1);
			border-radius: 15rpx;
			margin-right: 10rpx;
		}
		.right {
			padding: 5rpx 20rpx;
		    background-color: rgba(197,88,34,.1);
			border-radius: 15rpx;
		}
		.active {
			background-color: rgba(197,88,34,.4);
			transition: all 1s;
		}
	}
	width: 100vw;
	.header {
		display: flex;
		width: 90%;
		margin: 50rpx auto;
		margin-bottom: 30rpx;
		height: 240rpx;
		position: relative;
		z-index: -1000;
		// background-color: pink;
		.h_left {
			width: 35%;
			height: 100%;
			// background-color: blue;
			.img {
				width: 90%;
				height: 216rpx;
				border-radius: 28rpx;
			}
		}
		.h_right {
			width: 65%;
			height: 100%;
			// background-color: red;
			.album_name {
				font-weight: 600;
				font-size: 35rpx;
				letter-spacing: 6rpx;
			}
			.album_come {
				display: flex;
				height: auto;
				align-items: center;
				margin: 10rpx 0 30rpx 0;
				.avatar_img {
					width: 30rpx;
					height: 30rpx;
					border-radius: 50%;
				}
				.avatar_name {
					font-size: 20rpx;
					font-weight: 100;
					margin: 0 40rpx 0 20rpx;
				}
				.list_num {
					font-size: 20rpx;
					font-weight: 100;
				}
			}
			.album_dir {
				font-size: 25rpx;
				font-weight: 100;
			}
		}
	}
	.mid {
		display: flex;
		align-items: center;
		width: 90%;
		margin: 0 auto;
		height: 140rpx;
		// background-color: aqua;
		.mid_left {
			display: flex;
			justify-content: center;
			align-items: center;
			flex: 2;
			height: 80%;
			// background-color: #ccc;
			.box {
				display: flex;
				justify-content: center;
				align-items: center;
				width: 98%;
				height: 80%;
				background-color: #D9F7F9;
				border-radius: 15rpx;
				font-size: 35rpx;
				font-weight: 100;
				letter-spacing: 3rpx;
				color: #f8f8f8;
				font-weight: 700;
			}
		}
		.mid_right {
			display: flex;
			justify-content: flex-end;
			align-items: center;
			flex: 1.5;
			height: 80%;
			// background-color: #F8F8F8;
			.box {
				display: flex;
				justify-content: center;
				align-items: center;
				width: 98%;
				height: 80%;
				background-color: #D9F7F9;
				border-radius: 15rpx;
				.img {
					width: 45rpx;
					height: 45rpx;
					margin-right: 20rpx;
				}
				.tex {
					font-weight: 500;
					letter-spacing: 6rpx;
					color: #f8f8f8;
					font-weight: 700;
				}
			}
		}
	}
	.bd {
		width: 90%;
		margin: 0 auto;
		height: auto;
		.bd_list {
			width: 100%;
			height: auto;
			.list_item {
				box-sizing: border-box;
				margin-bottom: 15rpx;
				font-weight: 100;
				width: 100%;
				height: auto;
			}
		}
	}
	
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
}
</style>
