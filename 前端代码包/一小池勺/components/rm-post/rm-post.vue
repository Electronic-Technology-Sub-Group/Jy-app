<template>
	<view class="rm-container" @click="toDtDetail(item.momentId)">
		<view class="container-avater">
			<image @click="toOthers(item.userId)" :src="UserAvatarPic ? UserAvatarPic : item.avatar" class="avater_pic"></image>
			<view class="box">
				<text class="avater_name">{{ UserAvatarName ? UserAvatarName : item.name }}</text>
				<view class="time">
					{{ item.momentCreateDate }}
				</view>
			</view>
		</view>
		<view class="container-con">
			<view class="con_text">
				​{{ item.momentContent }}
			</view>
			<view class="con_img">
				<block v-for="(item,index) in item.momentPicture" :key="index">
					<image class="img" :src="item"></image>
				</block>
			</view>
		</view>
	</view>
</template>

<script>
	import { mapState } from 'vuex'
	export default {
		name:"rm-post",
		props: {
		  item: {
		    type: Object,
		    required: true
		  }
		},
		computed: {
			...mapState('user_info', ['UserAvatarPic', 'UserAvatarName', 'UserAvatarId'])
		},
		data() {
			return {
				
			};
		},
		methods: {
			toDtDetail(id) {
				uni.navigateTo({
					url: `../../subpkg/dt-detail/dt-detail?id=${id}`
				})
			},
			toOthers(id) {
				uni.navigateTo({
					url: `../../subpkg/search-others/search-others?userId=${id}`
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
.rm-container {
	box-sizing: border-box;
	width: 100%;
	margin-bottom: 15rpx;
	height: auto;
	box-shadow: 0 0 15rpx rgba(31,11,51,0.3);
	padding: 20rpx;
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
	.container-avater {
		display: flex;
		align-items: center;
		margin-bottom: 30rpx;
		.avater_pic {
			border-radius: 50%;
			width: 60rpx;
			height: 60rpx;
		}
		.avater_name {
			font-weight: 600;
			font-size: 25rpx;
			font-family: '楷体';
			margin-left: 30rpx;
		}
		.time {
			font-size: 20rpx;
			color: #ccc;
			margin-left: 30rpx;
		}
	}
	.container-con {
		width: 100%;
		height: auto;
		.con_text {
			font-size: 30rpx;
			font-weight: 300;
			font-family: '楷体';
			margin-bottom: 30rpx;
		}
		.con_img {
		  display: flex;
		  flex-wrap: wrap;
		  justify-content: space-between;
			  .img {
				width: calc(33.33% - 5rpx); /* 计算每个图片的宽度，减去一些间距 */
				height: 200rpx;
				margin-bottom: 5rpx; /* 设置图片之间的间距 */
				border-radius: 10rpx;
				box-shadow: 0px 0px 7rpx 2rpx rgba(0, 0, 0, 0.1);
			  }
         }
	}
}
</style>