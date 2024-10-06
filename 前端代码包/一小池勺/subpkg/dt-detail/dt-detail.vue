<template>
	<view class="container">
		<view class="avatar">
			<image class="img" :src="avatar"></image>
			<view class="info">
				<view class="name">{{ name }}</view>
				<view class="date">2023-11-25</view>
			</view>
		</view>
		<view class="con">
			{{ momentContent }}
		</view>
		<view class="imgList">
			<view v-for="(item,index) in imgList" class="item" @click="previewImage(index)">
				<image :src="item" class="img" mode="aspectFill"></image>
			</view>
			<view v-if="imgList.length > 1 && imgList.length <= 2"></view>
			<view v-if="imgList.length > 1 && imgList.length <= 2"></view>
			<view v-if="imgList.length > 1 && imgList.length <= 2"></view>
			<view v-if="imgList.length > 1 && imgList.length <= 2"></view>
			<view v-if="imgList.length > 1 && imgList.length <= 2"></view>
			<view v-if="imgList.length > 1 && imgList.length <= 2"></view>
			<view v-if="imgList.length > 1 && imgList.length <= 2"></view>
			<view v-if="imgList.length > 1 && imgList.length <= 2"></view>
			<view v-if="imgList.length > 1 && imgList.length <= 2"></view>
			<view v-if="imgList.length > 1 && imgList.length <= 2"></view>
			<view v-if="imgList.length > 1 && imgList.length <= 2"></view>
			<view v-if="imgList.length > 1 && imgList.length <= 2"></view>
			<view v-if="imgList.length > 1 && imgList.length <= 2"></view>
			<view v-if="imgList.length > 1 && imgList.length <= 2"></view>
			<view v-if="imgList.length > 1 && imgList.length <= 2"></view>
			
			<view v-if="imgList.length > 3 && imgList.length <= 5"></view>
			<view v-if="imgList.length > 3 && imgList.length <= 5"></view>
			<view v-if="imgList.length > 3 && imgList.length <= 5"></view>
			<view v-if="imgList.length > 3 && imgList.length <= 5"></view>
			<view v-if="imgList.length > 3 && imgList.length <= 5"></view>
			<view v-if="imgList.length > 3 && imgList.length <= 5"></view>
			<view v-if="imgList.length > 3 && imgList.length <= 5"></view>
			<view v-if="imgList.length > 3 && imgList.length <= 5"></view>
			<view v-if="imgList.length > 3 && imgList.length <= 5"></view>
			<view v-if="imgList.length > 3 && imgList.length <= 5"></view>
			<view v-if="imgList.length > 3 && imgList.length <= 5"></view>
			<view v-if="imgList.length > 3 && imgList.length <= 5"></view>
			<view v-if="imgList.length > 3 && imgList.length <= 5"></view>
			<view v-if="imgList.length > 3 && imgList.length <= 5"></view>
			<view v-if="imgList.length > 3 && imgList.length <= 5"></view>
			
			<view v-if="imgList.length > 6 && imgList.length < 9"></view>
			<view v-if="imgList.length > 6 && imgList.length < 9"></view>
			<view v-if="imgList.length > 6 && imgList.length < 9"></view>
			<view v-if="imgList.length > 6 && imgList.length < 9"></view>
			<view v-if="imgList.length > 6 && imgList.length < 9"></view>
			<view v-if="imgList.length > 6 && imgList.length < 9"></view>
			<view v-if="imgList.length > 6 && imgList.length < 9"></view>
			<view v-if="imgList.length > 6 && imgList.length < 9"></view>
			<view v-if="imgList.length > 6 && imgList.length < 9"></view>
			<view v-if="imgList.length > 6 && imgList.length < 9"></view>
			<view v-if="imgList.length > 6 && imgList.length < 9"></view>
			<view v-if="imgList.length > 6 && imgList.length < 9"></view>
			<view v-if="imgList.length > 6 && imgList.length < 9"></view>
			<view v-if="imgList.length > 6 && imgList.length < 9"></view>
			<view v-if="imgList.length > 6 && imgList.length < 9"></view>
		</view>
		
		<view class="like">
			<view class="box">
				<image class="img" :src="pic" @click="dynamicLike"></image>
				<text v-if="likesNum >= 0" class="num">
					{{ likesNum }}
				</text>
			</view>
			<image class="img" src="../../static/025_分享-17.png"></image>
			<image @click="deleteIt" v-if="userId === nowUserId" class="img" style="margin-left: 35rpx;" src="../../static/删除.png"></image>
		</view>
		<view class="comments">
			<view class="title">全部评论</view>
			<view
			  class="comment-box"
			  :class="{ expanded: isExpanded }"
			  @click="toggleExpand"
			>
			  <textarea class="inp" v-model="commentContent" :maxlength="300" placeholder="说点什么吧..."></textarea>
			  <view class="box">
				  <view class="num">{{ commentContent.length }} / 300</view>
				  <view class="publish-btn" @click="publishComment">发表</view>
			  </view>
			</view>
		</view>
		<view v-if="commentList.length > 0" class="comments_item">
			<view class="title">最新评论</view>
			<view class="comments_list">
				<!-- 评论点赞 并做点赞排序暂时不做 -->
				<block v-for="(item,index) in commentList" :key="index">
					<view class="list-top">
						<image class="avatarPic" :src="item.avatar" @click="tothis(item.userId)"></image>
						<view class="avatarInfo">
							<text class="avatarName">
								{{ item.name }}
							</text>
							<text class="avatarTime">{{ item.commentDate }}</text>
						</view>
					</view>
					<view class="list-bottom">
						{{ item.commentContent }}
					</view>
				</block>
			</view>
		</view>
		<view v-else class="imgsbox">
			<!-- https://pic2.zhimg.com/v2-c24a51507ef271b12af06248bbfde3d5_r.jpg -->
			<image class="img" src="https://cdn.nlark.com/yuque/0/2023/png/34278134/1702222332492-729aba37-c137-4e0b-9888-ea230eae04bc.png?x-oss-process=image%2Fresize%2Cw_750%2Climit_0"></image>
			<view>还没有评论，快来占楼吧~</view>
		</view>
	</view>
</template>

<script>
	import { Dynamiclikes,DynamicDetail,MomentComment, deleteDymaic } from '../../services/AboutDynamics.js'
	
	export default {
		data() {
			return {
				avatar: "",
				name: "",
				id: null, // 动态id
				commentContent: '',
				isExpanded: false,
				commentsList: [],
				imgList: [],
				momentContent: "",
				likesNum: null,
				userId: null,
				msg: "",
				pic: "",
				commentList: [],
				nowUserId: null,
			}
		},
		onLoad(options) {
			this.id = options.id
		},
		mounted() {
			this.fetchDynamicDetail(this.id)
			// 从本地缓存中获取数据
			uni.getStorage({
			  key: 'userId',
			  success:  (res) => {
			    console.log(res.data)
				this.nowUserId = res.data
			  }
			})
		},
		methods: {
			// 删除
			async deleteIt() {
			  uni.showModal({
			    title: '提示',
			    content: '确认删除？',
			    success: async (res) => {
			      if (res.confirm) {
			        const res = await deleteDymaic(this.id);
			        console.log(res);
			        setTimeout(() => {
			          if (res.code === 200) {
			            uni.switchTab({
			              url: "../../pages/add/add"
			            });
			          }
			        }, 1500);
			      } else if (res.cancel) {
			        console.log('用户点击取消');
			      }
			    }
			  });
			},
			// 点赞
			async dynamicLike() {
				try {
				  const res = await Dynamiclikes(this.momentId,this.nowUserId)
				  console.log(res)
				  this.msg = res.data.msg
				  if(this.msg === '点赞成功') {
					  this.pic = '../../static/点赞 (1).png'
					  this.likesNum++
				  } else {
					  this.pic = '../../static/025_点赞-30.png'
					  this.likesNum--
				  }
				} catch (error) {
				  console.log("错误信息:",error)
				}
			},
			async fetchDynamicDetail(id) {
				const res = await DynamicDetail(id)
				console.log(res)
				if(res.data.logo === 1) {
					this.pic = '../../static/点赞 (1).png'
				} else {
					this.pic = '../../static/025_点赞-30.png'
				}
				this.name = res.data.name
				this.avatar = res.data.avatar
				this.momentContent = res.data.momentContent
				this.likesNum = res.data.likesNum
				this.imgList = res.data.momentPicture
				this.momentId = res.data.momentId
				this.userId = res.data.userId
				this.logo = res.data.logo
				this.commentList = res.data.commentList
			},
		    async publishComment() {
				const res = await MomentComment(this.commentContent, this.id, this.nowUserId)
				console.log(res)
				if(res.code === 200) {
					this.commentContent = ''
					setTimeout(() => {
						uni.showToast({
						  title: '评论成功',
						  icon: 'success'
						})
						this.fetchDynamicDetail(this.id)
					  }, 1000)
				}
			},
			previewImage(index) {
			  uni.previewImage({
				urls: this.imgList,
				current: this.imgList[index] // 当前图片
			  })
			},
		    toggleExpand() {
		      this.isExpanded = !this.isExpanded
		    },
			tothis(id) {
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
	height: auto;
	.avatar {
		display: flex;
		width: 90%;
		margin: 0 auto;
		.img {
			width: 100rpx;
			height: 100rpx;
			border-radius: 50%;
		}
		.info {
			margin-left: 20rpx;
			.name {
				font-size: 35rpx;
				color: skyblue;
				font-weight: 200;
				margin-bottom: 10rpx;
			}
			.date {
				font-size: 20rpx;
				color: #ccc;
				font-weight: 100;
			}
		}
	}
	.con {
		width: 90%;
		margin: 50rpx auto;
	}
	.imgList {
		display: flex;
		flex-wrap: wrap;
		justify-content: space-between;
		width: 90vw;
		height: auto;
		// background-color: red; 背景板
		margin: 0 auto;
		.item {
			width: 32%;
			height: 200rpx;
			border-radius: 10rpx;
			overflow: hidden;
			margin-bottom: 15rpx;
			box-shadow: 0px 0px 7rpx 2rpx rgba(0, 0, 0, 0.1);
			.img {
				width: 100%;
				height: 100%;
			}
		}
	}
	.like {
		width: 90%;
		display: flex;
		justify-content: flex-start;
		margin: 30rpx auto;
		.box {
			display: flex;
			height: auto;
			align-items: center;
			.img {
				width: 40rpx;
				height: 40rpx;
				
			}
			.num {
				margin: 0 35rpx 0 10rpx;
				font-weight: 100;
			}
		}
		.img {
			width: 40rpx;
			height: 40rpx;
			
		}
	}
	.comments {
		width: 90%;
		margin: 0 auto;
		.title {
			font-weight: 800;
			font-size: 40rpx;
			margin-bottom: 40rpx;
		}
		.comment-box {
			width: 90%;
			margin: 0 auto;
			padding: 20rpx;
			border: 1px solid #ccc;
			border-radius: 10rpx;
			overflow: hidden;
			background-color: #F8F8F8;
			.inp {
			    width: 100%;
				height: 80rpx;
			    box-sizing: border-box;
			    padding: 10rpx;
			    margin-bottom: 10rpx;
			    transition: all 0.3s; // 过渡一下
			}
			.box {
				display: flex;
				justify-content: space-between;
				width: 100%;
				color: #ccc;
				.num {
					
				}
				.publish-btn {
				}
			}
			&.expanded {
			    .inp {
			      height: 200px; // 评论框的高度变大
			    }
			}
		}
	}
	.imgsbox {
		width: 90%;
		margin: 0 auto;
		display: flex;
		flex-direction: column;
		align-items: center;
		color: #ccc;
		font-size: 35rpx;
		font-weight: 100;
		margin-bottom: 100rpx;
	}
	.comments_item {
		.title {
			margin: 30rpx 30rpx;
		}
		.comments_list {
			display: flex;
			flex-direction: column;
			height: auto;
			width: 90%;
			margin: 0 auto;
			margin-bottom: 80rpx;
			.list-top {
				display: flex;
				margin-top: 20rpx;
				align-items: center;
				.avatarPic {
					width: 80rpx;
					height: 80rpx;
					border-radius: 50%;
				}
				.avatarInfo {
					margin: -20rpx 0 0 15rpx;
					display: flex;
					flex-direction: column;
					.avatarName {
						padding-top: 30rpx;
						font-weight: 100;
						font-size: 30rpx;
					}
					.avatarTime {
						font-size: 20rpx;
						color: #ccc;
						margin-top: 15rpx;
						margin-left: 15rpx;
					}
				}
		
			}
			.list-bottom {
				margin-left: 100rpx;
				margin-top: 20rpx;
				padding-bottom: 40rpx;
				font-size: 25rpx;
				border-bottom: #ccc 1rpx solid;
			}
		}
	}
}
</style>
