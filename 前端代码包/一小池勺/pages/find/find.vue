<template>
  	<view class="container-index">
  		<view class="container-dairly">
			<view class="pen">
				<text class="txt">小记</text>
				<image class="img" src="../../static/rm-pen.png" @click="addDiary"></image>
			</view>
			<view class="desc">可以是备忘录，可以是心得体会，可以是自己活出的哲学，你放心，这里只有你知道。</view>
  		</view>
		<view class="item-box">
			<scroll-view scroll-y="true" style="height: 100%;">
				<block v-for="(item,index) in list">
					<view class="list">
						<view class="date">
							{{ item.createTime.slice(0, 11) }}
						</view>
						<view class="con" @click="toItem(item.diaryId)">
							{{ item.diaryContent }}
						</view>
					</view>
				</block>
			</scroll-view>
		</view>
  	</view>
  </template>
  
  <script>
	import { findDiary } from '../../services/AboutDaily.js'
   	export default {
  		data() {
  			return {
				list: []
  			}
  		},
		mounted() {
			this.fetchAllDaily()
		},
  		methods: {
			addDiary() {
				uni.navigateTo({
					url: "../../subpkg/addDairly/addDairly"
				})
			},
			toItem(id) {
				uni.navigateTo({
					url: `../../subpkg/xiaoji-detail/xiaoji-detail?id=${id}`
				})
			},
			async fetchAllDaily() {
				const res = await findDiary()
				console.log(res)
				this.list = res.data
			}
  		},
		onPullDownRefresh() {
			this.fetchAllDaily()
		}
  	}
  </script>
  
  <style lang="scss" scoped>
  .container-index{
  	height: auto;
  	width: 100vw;
  	.container-dairly {
  		width: 90%;
		margin: 100rpx auto;
		.pen{
			.txt {
			font-size: 40rpx;
			font-weight: 800;
			margin-left: 30rpx;
			}
			.img {
				width: 40rpx;
				height: 40rpx;
				margin-left: 20rpx;
			}
		}
		.desc {
			margin-top: 20rpx;
			font-size: 25rpx;
			color: #ccc;
		}
  	}
	.item-box {
		height: 900rpx;
		width: 90%;
		margin: 0 auto;
		background-color: #f8f8f8;
	    border-radius: 20rpx;
		overflow: hidden;
		animation: glow 2s infinite;
		@keyframes glow {
		  0% {
			box-shadow: 0 0 15rpx rgba(31,11,51,0.3);
		  }
		  50% {
			box-shadow: 0 0 20rpx rgba(31,11,51,0.6);
		  }
		  100% {
			box-shadow: 0 0 15rpx rgba(31,11,51,0.3);
		  }
		}
		.list {
			display: flex;
			align-items: center;
			margin: 0rpx auto;
			width: 95%;
			height: auto;
			padding: 15rpx 10rpx;
			.date {
				width: 30%;
				position: relative;
				margin-left: 5vw;
				font-size: 25rpx;
				font-weight: 200;
				&::after {
				  position: absolute;
				  top: 50%;
				  left: -40rpx;
				  content: "";
				  width: 15rpx;
				  height: 15rpx;
				  border-radius: 50%;
				  border: 2px solid rgba(98,0,238,1);
				  background-color: #fff;
				  transform: translateY(-50%);
				  box-shadow: 0 0 15rpx rgba(31,11,51,0.3);
				  animation: glow 2s infinite;
				  @keyframes glow {
				    0% {
				  	box-shadow: 0 0 15rpx rgba(31,11,51,0.3);
				    }
				    50% {
				  	box-shadow: 0 0 20rpx rgba(31,11,51,0.6);
				    }
				    100% {
				  	box-shadow: 0 0 55rpx rgba(31,11,51,0.3);
				    }
				  }
				}
			}
			.con {
				width: 70%;
				font-weight: 100;
				 word-wrap: break-word;
			}
		}
	}
  }
  </style>