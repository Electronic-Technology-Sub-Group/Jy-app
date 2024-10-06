<template>
	<view class="container">
		<view class="follow-list" v-if="list.length > 0" v-for="(item,index) in list" :key="index" @click="fetchfollowListItem(item.userId)">
			<view class="left">
				<image class="img" :src="item.avatar"></image>
			</view>
			<view class="right">
				<view class="name">{{ item.name }}</view>
				<view class="id">ID：{{ item.username }}</view>
			</view>
		</view>
		<view v-else></view>
	</view>
</template>

<script>
	import { fanList } from '../../services/AboutUserInfo.js'
 	export default {
		data() {
			return {
				list: []
			}
		},
		mounted() {
			this.fetchfanList()
		},
		methods: {
			async fetchfanList() {
				const res = await fanList()
				console.log(res)
				this.list = res.data
			},
			async fetchfollowListItem(id) {
				uni.navigateTo({
					url: `../../subpkg/search-others/search-others?userId=${id}`
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
.container {
	width: 100vw;
	.follow-list {
		display: flex;
		align-items: center;
		width: 90%;
		margin: 20rpx auto;
		// background-color: red;
		.left {
			width: 100rpx;
			height: 100rpx;
			margin-right: 30rpx;
			border-radius: 50%;
			overflow: hidden;
			.img {
				width: 100%;
				height: 100rpx;
				box-shadow: 1rpx 1rpx 1rpx rgba(0,0,0,.1);
			}
		}
		.right {
			.name { 
				font-size: 30rpx;
				font-weight: 100;
			}
			.id {   
				font-size: 25rpx;
				color: #ccc;
			}
		}
	}
}
</style>
