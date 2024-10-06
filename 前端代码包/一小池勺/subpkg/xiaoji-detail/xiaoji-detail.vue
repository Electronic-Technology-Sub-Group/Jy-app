<template>
	<view class="container">
		<image src="/static/删除.png" class="img" @click="deleteIt"></image>
		<view class="con">
			{{ Daylieres.diaryContent }}
		</view>
	</view>
</template>

<script>
	import { deletDiarye, findDiary, DiaryDetail  } from '../../services/AboutDaily.js'
	export default {
		data() {
			return {
				id: "",
				Daylieres: {}
			}
		},
		onLoad(options) {
			console.log(options.id)
			this.id = options.id
		},
		mounted() {
			this.fetchThisDaily()
		},
		methods: {
			async fetchThisDaily() {
				const res = await DiaryDetail(this.id)
				this.Daylieres = res.data
			},
			async deleteIt() {
				uni.showModal({
				  title: '提示',
				  content: '确认删除？',
				  success: async (res) => {
				    if (res.confirm) {
					  const res = await deletDiarye(this.id)
					  console.log(res)
				      setTimeout(() => {
				        if (res.code === 200) {
				          uni.switchTab({
				            url: "../../pages/find/find"
				          });
				        }
				      }, 1500);
				    } else if (res.cancel) {
				      console.log('用户点击取消');
				    }
				  }
				});
			}
		}
	}
</script>

<style lang="scss">
.container {
	position: relative;
	width: 100vw;
	height: 100vh;
	padding: 0 40rpx;
	display: flex;
	justify-content: center;
	align-items: center;
	box-sizing: border-box;
	margin-top: -60rpx;
	.con {
		font-weight: 100;
	}
	.img {
		position: absolute;
		top: 150rpx;
		right: 40rpx;
		width: 65rpx;
		height: 65rpx;
	}
}
</style>