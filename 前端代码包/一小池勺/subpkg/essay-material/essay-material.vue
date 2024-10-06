<template>
	<view class="container">
		<view class="tabbar">
			<view :class="{ active: current === 0 }" class="item" @click="switchTab(0)">创作灵感</view>
			<view :class="{ active: current === 1 }" class="item" @click="switchTab(1)">类型</view>
			<view :class="{ active: current === 2 }" class="item" @click="switchTab(2)">方法</view>
		</view>
		<swiper class="catBox" :current="current" @change="swiperChange">
			<swiper-item class="catItem">
				<scroll-view scroll-y="true" class="scrollView" enable-flex="true">
					<block v-for="(item, index) in ArrayA" :key="index">
						<view class="itemContainer" @click="toThisCat(item.id)">
							<image class="img" :src="item.pic"></image>
							<view class="con">
								{{ item.con }}
							</view>
						</view>
					</block>
					<view></view>
					<view></view>
					<view></view>
					<view></view>
					<view></view>
					<view></view>
					<view></view>
				</scroll-view>
			</swiper-item>
			<swiper-item class="catItem">
				<scroll-view scroll-y="true" class="scrollView" enable-flex="true">
					<block v-for="(item,index) in ArrayB">
						<view class="itemContainer" @click="toThisCat(item.id)">
							<image class="img" :src="item.pic"></image>
							<view class="con">
								{{ item.con }}
							</view>
						</view>
					</block>
				</scroll-view>
			</swiper-item>
			<swiper-item class="catItem">
				<scroll-view scroll-y="true" class="scrollView" enable-flex="true">
					<block v-for="(item,index) in ArrayC">
						<view class="itemContainer" @click="toThisCat(item.id)">
							<image class="img" :src="item.pic"></image>
							<view class="con">
								{{ item.con }}
							</view>
						</view>
					</block>
				</scroll-view>
			</swiper-item>
		</swiper>
	</view>
</template>

<script>
	import allCat from '../../static/db/metialCat.json'
	export default {
		data() {
			return {
				current: 0,
				ArrayA: [],
				ArrayB: [],
				ArrayC: []
			}
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
						this.fetchAllCat(allCat)
					}, 1000)
				}
			})
			console.log(allCat)
		},
		methods: {
			switchTab(index) {
				this.current = index
			},
			swiperChange(event) {
				this.current = event.detail.current
			},
			async fetchAllCat(allCat) {
				console.log(allCat)
				let { ArrayA, ArrayB, ArrayC }  = allCat
				this.ArrayA = ArrayA
				this.ArrayB = ArrayB
				this.ArrayC = ArrayC
			},
			toThisCat(id) {
				uni.navigateTo({
					url: `../../subpkg/materialCatShow/materialCatShow?id=${id}`
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
.container {
  width: 100vw;
  height: 100vh;
  .tabbar {
    width: 100%;
    // background-color: olivedrab;
    display: flex;
    justify-content: flex-start;
	margin-bottom: 40rpx;
    .item {
      box-sizing: border-box;
      padding: 10rpx 30rpx;
    }
    .active {
	  position: relative;
      color: #A1CDF6;
	  font-weight: 800;
	  &::after {
		  content: "";
		  position: absolute;
		  bottom: 0;
		  left: 50%;
		  transform: translateX(-50%);
		  width: 60rpx;
		  height: 6rpx;
		  border-radius: 3rpx;
		  background-color:#A1CDF6;
	  }
    }
  }
  .catBox {
    width: 90%;
    height: calc(100% - 40rpx);
	margin: 0 auto;
    .catItem {
      width: 100%;
      height: 100%;
      .scrollView {
		margin: 0;
		padding: 0;
        width: 100%;
		height: 100%;
		display: flex;
		flex-wrap: wrap;
		justify-content: space-between;
        .itemContainer {
          width: 30%;
		  height: 20%;
		  .img {
			  width: 100%;
			  height: 100%;
			  border-radius: 15rpx;
		  }
		  .con {
			  padding: 0 10rpx;
			  overflow: hidden;
			  text-overflow: ellipsis;
			  font-size: 25rpx;
		  }
        }
      }
    }
  }
}
</style>
