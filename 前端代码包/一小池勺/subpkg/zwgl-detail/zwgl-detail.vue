<template>
	<view class="container">
		<view class="sentence_box">
			{{ sentencesList[currentIndex] }}
		</view>
		<view class="fixed_con">
			<view class="date">
				<view class="day">25</view>
				<view class="ym_week">
					<view class="ym">
						2023年11月
					</view>
					<view class="week">
						星期六
					</view>
				</view>
			</view>
			<image class="img" src="../../static/刷新 (1).png" @click="changeIndex"></image>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				currentIndex: 0, // 当前句子索引
				sentencesList: [
					"以正念善待自己是一生的冒险，也会一生的力量和礼物。",
					"为了活得充实，你必须活在当下。",
					"记住，无论好坏，愉快或不愉快，现在是我们唯一活着的时刻。",
					"你有很多时刻，我们可以把每一个都当作一个新的开始。",
					"专注可以减压，其实是专注里潜伏着沉静的激情。",
					"当自端心，正念求度。",
					"我走得很慢，但我从不后退。",
					"我一边踉跄前行，一边重整旗鼓。",
					"所谓努力，就是​主动而有目的的活动。",
					"没有一个冬天不可逾越，没有一个春天不会来临。",
					"我们都得经历一段努力闭嘴不抱怨的时光，才能熠熠生辉。",
					"明日之我，胸中有丘壑，立马振山河。",
					"你要忍，忍到春暖花开。",
					"你要卯足劲变好，再旗鼓相当站在不敢想象的人身边。",
					"人与人之间的距离，要保持好，太近了会扎人，太远了会伤人。",
					"与跟生命有关的人耗着，少与生命无关的事耗。",
					"经常笑，学会向比自己小的人称哥，以保持年轻心态。"
				]
			}
		},
		methods: {
			changeIndex() {
				uni.showToast({
				  title: '加载中',
				  icon: 'none', // 你可以尝试更换为其他图标，比如'success'、'none'等
				  duration: 1000,
				  mask: false, // 是否显示透明蒙层，可以增加加载时的遮罩效果
				  image: '../../static/云社区.png', // 自定义加载图标的路径
				})
				setTimeout(() => {
					if(this.currentIndex >= 16) {
						this.currentIndex = 0
					} else {
						this.currentIndex++
					}
				}, 1000)

			}
		}
	}
</script>

<style lang="scss" scoped>
.container {
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100vw;
	height: 100vh;
	background-color: #F8F8F8;
	.sentence_box {
		color: #20242b;
		width: 80%;
		height: 400rpx;
		// background-color: aqua; // 背景板
		text-align: center;
		font-size: 40rpx;
		font-weight: 100;
	}
	.fixed_con {
		display: flex;
		justify-content: space-between;
		align-items: center;
		position: fixed;
		width: 90%;
		height: 300rpx;
		// background-color: pink; // 背景板
		margin: 0 auto;
		bottom: 40rpx;
		.date {
			.day {
				font-size: 80rpx;
				color: #20242b;
				font-weight: 600;
				margin-bottom: 30rpx;
			}
			.ym_week {
				display: flex;
				color: #20242b;
				.ym {
					margin-right: 20rpx;
				}
				.week {
					
				}
			}
		}
		.img {
			width: 80rpx;
			height: 80rpx;
		}
	}
}
</style>
