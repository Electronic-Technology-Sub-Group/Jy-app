<template>
	<view class="container">
		<view class="Pagename">
			<image class="img" src="../../static/云社区.png" v-if="Catname"></image>
			<view class="txt">{{ Catname }}</view>
		</view>
		<scroll-view scroll-y="true" class="scrollView">
			<block v-for="(item,index) in CatList" :key="index">
				<view class="ViewiItem" @longpress="handleLongPress(item)">
					{{ item }}
				</view>
			</block>
		</scroll-view>
	</view>
</template>

<script>
	import CatItem from '../../static/db/AllCatItem.json'
	export default {
		data() {
			return {
				id: "",
				CatList: [],
				Catname: "",
				pressDetail: "",
				Pagename: ""
			}
		},
		onLoad(options) {
		  const id = options.id
		  this.id = id
		},
		mounted() {
			uni.showToast({
				title: '加载中',
				icon: 'none', // 你可以尝试更换为其他图标，比如'success'、'none'等
				duration: 1000,
				mask: false, // 是否显示透明蒙层，可以增加加载时的遮罩效果
				image: '../../static/云社区.png', // 自定义加载图标的路径
				complete: () => {
					setTimeout(() => {
						this.CatList = CatItem[this.id].slice(1)
						this.Catname = CatItem[this.id].slice(0,1)
					}, 1000)
				}
			})
		},
		methods: {
			handleLongPress(item) {
			  uni.setClipboardData({
				data: item,
				success() {
				  uni.showToast({
					title: '复制成功',
					icon: 'success'
				  })
				}
			  })
		}
	},
}
</script>

<style lang="scss" scoped>
.container {
	width: 100vw;
	height: 100vh;
	// background-color: thistle;
	.scrollView {
		width: 100%;
		height: 100%;
		margin:0 auto;
		.ViewiItem {
			box-sizing: border-box;
			padding: 30rpx;
			width: 100%;
			height: auto;
			border-radius: 10rpx;
			background-color: transparent;
			border-bottom: 1rpx solid #ccc;
			margin: 10rpx 0;
			font-weight: 100;
		}
	}
	.Pagename {
		margin-bottom: 15rpx;
		height: 50rpx;
		display: flex;
		.txt {
			font-weight: 100;
		}
		.img {
			width: 40rpx;
			height: 40rpx;
			margin: 0 15rpx;
		}
	}
}
</style>
