<template>
	<view class="container" v-if="thisSentenceDetail">
		<view class="container-gf">
			<image class="gf-img" src="https://cdn.nlark.com/yuque/0/2023/jpeg/34278134/1700121639454-c0816851-4eff-47e8-9340-3b5f4b09d9a1.jpeg"></image>
			<view class="gf-name">
				<view class="a">官方精选</view>
				<view class="b">发布</view>
			</view>
		</view>
		<view class="container-banner">
			<view v-if="thisSentenceDetail.sentenceText" class="banner-content">
				{{ thisSentenceDetail.sentenceText }}
			</view>
		</view>
		<view class="container-contact">
			<view class="contact_top">
				<image class="icon" src="../../static/rm-contact.png"></image>
				<view class="text">链接</view>
			</view>
			<view class="contact_list">
				<block v-for="(item, index) in recommendRes" :key="index">
					<view class="list-item"  @click="tothis(item.sentenceId)">
						<view class="text">
							{{ item.sentenceText }}
						</view>
					</view>
				</block>
			</view>
		</view>
		<view class="container-comments">
			<view class="comments_top">
				<view class="top_left">
					<image class="left_icon" src="../../static/rm-pl.png"></image>
					<view class="text">评论</view>
				</view>
			</view>
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
			<view style="margin: 30rpx 30rpx;">
				最新评论
			</view>
			<view class="comments_list" v-if="commentList.length > 0">
				<block v-for="(item,index) in commentList" :key="index">
					<view class="list-top">
						<image class="avatarPic" :src="item.avatar"></image>
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
			<view v-else class="imgsbox">
				<image class="img" src="https://pic2.zhimg.com/v2-c24a51507ef271b12af06248bbfde3d5_r.jpg"></image>
				<view>还没有评论，快来占楼吧~</view>
			</view>
		</view>
		<view class="comments_fixed">
			<view class="comments-box">
				聊聊你的看法吧 ~
			</view>
			<view class="item">
				<image class="like" :src="likeUrl" @click="likeIt"></image>
				<text class="num">{{thisSentenceDetail.likeNum}}</text>
			</view>
			<view class="item">
				<image class="cart" :src="cloctUrl" @click="Collect"></image>
				<text class="num">{{thisSentenceDetail.favoriteNum}}</text>
			</view>
			<view class="item">
				<image class="commentsTotal" src="../../static/025_文本.png"></image>
				<text class="num">{{ thisSentenceDetail.commentList.length }}</text>
			</view>
			<view class="item">
				<image class="share" src="../../static/025_分享-17.png"></image>
				<text class="num">分享</text>
			</view>
		</view>
	</view>
</template>

<script>
	import { sentenceDetail, RecommendedSentence, sentenceComment, SentenceLike, sentenceCollect } from '../../services/AboutTheSentence.js'
	export default {
		name:"sentence-detail",
		data() {
			return {
				cloctUrl: "",
				logo: null,
				likeUrl: "",
				userId: null,
				// comment: '', // 评论内容
				id: null, // 该句子的 id
				recommendRes: [],
				thisSentenceDetail: {},
				imgList: [], //  点击打开大图
				commentList: [],
				commentContent: '',
				isExpanded: false,
			}
		},
		onLoad(options) {
			console.log(options)
			this.id = options.id
		},
		mounted() {
			this.fetchSentenceDetail()
			this.fetchRecommendedSentence()
			uni.getStorage({
			  key: 'userId',
			  success:  (res) => {
			    console.log(res.data)
					this.userId = res.data
			  }
			})
		},
		methods: {
			toggleExpand() {
			      this.isExpanded = !this.isExpanded
			},
			async Collect() {
				const res = await sentenceCollect(this.id, this.userId)
				console.log(res)
				if(res.data.msg === '收藏成功') {
					this.thisSentenceDetail.favoriteNum++
					this.cloctUrl = '../../static/收藏 (2).png'
				} else {
					this.thisSentenceDetail.favoriteNum--
					this.cloctUrl = '../../static/025_会员.png'
				}
			},
			async likeIt() {
				const res = await SentenceLike(this.id, this.userId)
				console.log(res)
				if(res.code === 200) {
					if(res.data.msg === '点赞成功') {
						this.thisSentenceDetail.likeNum++
						this.likeUrl = '../../static/点赞 (1).png'
					} else {
						this.thisSentenceDetail.likeNum--
						this.likeUrl = '../../static/025_点赞-30.png'
					}
				}
			},
			async publishComment() {
				const res = await sentenceComment(this.commentContent, this.id, this.userId)
				console.log(res)
				this.fetchSentenceDetail()
				this.commentContent = ''
				setTimeout(() => {
					uni.showToast({
					  title: '发布成功',
					  icon: 'success'
					})
				  }, 500)
			},
			tothis(id) {
				uni.navigateTo({
					url: `../../subpkg/sentence-details/sentence-details?id=${id}`
				})
			},
			previewImage(index) {
			  uni.previewImage({
				urls: this.imgList,
				current: this.imgList[index] // 当前图片
			  })
			},
			async fetchSentenceDetail() {
				// console.log(this.id)
				const res = await sentenceDetail(this.id)
				console.log(res)
				if(res.data.logo === 1) {
					this.likeUrl = '../../static/点赞 (1).png'
				}
				if(res.data.logo === 0) {
					this.likeUrl = '../../static/025_点赞-30.png'
				}
				if(res.data.judge === 1) {
					this.cloctUrl = '../../static/收藏 (2).png'
				}
				if(res.data.judge === 0) {
					this.cloctUrl = '../../static/025_会员.png'
				}
				this.thisSentenceDetail = res.data
				this.imgList.push(this.thisSentenceDetail.sentencePicture)
				console.log(this.thisSentenceDetail.sentencePicture)
				this.commentList = this.thisSentenceDetail.commentList
				
			},
			async fetchRecommendedSentence() {
				const res = await RecommendedSentence()
				console.log(res)
				this.recommendRes = res.data.slice(8, 10)
			}
 		}
	}
</script>

<style lang="scss" scoped>
.container {
	position: absolute;
	width: 100vw;
	height: auto;
	background-color: #F8F8F8;
	box-sizing: border-box;
	.comments_fixed {
		display: flex;
		justify-content: space-around;
		position: fixed;
		align-items: center;
		bottom: 0;
		left: 0;
		width: 100%;
		height: 100rpx;
		background-color: #fff;
		border-top: 1rpx solid #F8F8F8;
		.comments-box {
			line-height: 60rpx;
			text-align: center;
			font-size: 25rpx;
			color: #ccc;
			width: 250rpx;
			height: 60rpx;
			border-radius: 30rpx;
			background-color: #F8F8F8;
		}
		.item {
			display: flex;
			flex-direction: column;
			width: auto;
			align-items: center;
			box-sizing: border-box;
			.like {
				width: 40rpx;
				height: 40rpx;
			}
			.cart {
				width: 40rpx;
				height: 40rpx;
			}
			.commentsTotal {
				width: 40rpx;
				height: 40rpx;
			}
			.share {
				width: 40rpx;
				height: 40rpx;
			}
			.num {
				box-sizing: border-box;
				padding-top: 5rpx;
				font-size: 20rpx;
				font-weight: 100;
			}
		}

	}
	.container-gf {
		display: flex;
		align-items: center;
		box-sizing: border-box;
		padding-left: 30rpx;
		padding-top: 30rpx;
		padding-bottom: 40rpx;
		width: 100%;
		height: 110rpx;
		background-color: #fff;
		.gf-img {
			width: 80rpx;
			height: 80rpx;
			border-radius: 50%;
		}
		.gf-name {
			box-sizing: border-box;
			padding-left: 20rpx;
			.a {
				font-size: 35rpx;
				font-weight: 100;
				color: #000;
			}
			.b {
				font-size: 20rpx;
				color: #ccc;
			}
		}
	}
	.container-banner {
		position: relative;
		display: flex;
		justify-content: flex-start;
		flex-direction: column;
		align-items: center;
		width: 100vw;
		height: 80vh;
		background-color: #fff;
		.banner_img {
			width: 95%;
			height: 400rpx;
			border-top-left-radius: 40rpx;
			border-top-right-radius: 40rpx;
			overflow: hidden;
			.img {
				width: 100%;
				height: 100%;
			}
		}
		.banner-content {
			position: absolute;
			width: 80%;
			height: calc(100% - 400rpx);
			left: 50%;
			transform: translateX(-50%);
			top: 500rpx;
			font-size: 35rpx;
			font-weight: 100;
		}
		.banner-tags {
			position: absolute;
			display: flex;
			bottom: 20rpx;
			left: 60rpx;
			.tags-item {
				margin-right: 20rpx;
				width: auto;
				border-radius: 40rpx;
				padding: 0 20rpx;
				height: 80rpx;
				line-height: 80rpx;
				font-size: 20rpx;
				font-weight: 200;
				background-color: #F8F8F8;
			}
		}
	}
	.container-contact {
		margin-top: 25rpx;
		background-color: #fff;
		height: 500rpx;
		margin-bottom: 25rpx;
		.contact_top {
			display: flex;
			width: auto;
			align-items: center;
			padding: 40rpx 0;
			margin-left: 30rpx;
			.icon {
				width: 30rpx;
				height: 30rpx;
			}
			.text {
				font-weight: 100;
				font-size: 28rpx;
				padding-left: 20rpx;
				box-sizing: border-box;
			}
		}
		.contact_list {
			display: flex;
			flex-direction: column;
			align-items: center;
			margin: 0 auto;
			width: 80vw;
			height: 360rpx;
			background-color: #F8F8F8;
			border-radius: 20rpx;
			.list-item {
				display: flex;
				justify-content: center;
				align-items: center;
				width: 90%;
				height: 180rpx;
				&:first-child {
				  border-bottom: 1px solid #ccc;
				}
				.text {
					overflow: hidden; /* 隐藏超出容器的部分 */
					text-overflow: ellipsis; /* 显示省略号 */
				}
			}
		}
	}
	.container-comments {
		width: 100%;
		height: auto;
		padding-top: 100rpx;
		box-sizing: border-box;
		background-color: #fff;
		.comments_top {
			display: flex;
			justify-content: space-between;
			width: 100%;
			.top_left {
				display: flex;
				width: auto;
				margin: 50rpx 0 60rpx 30rpx;
				.left_icon {
					width: 40rpx;
					height: 40rpx;
				}
			    .text {
					padding-left: 20rpx;
				}
			}
			.top_right {
				display: flex;
				align-items: center;
				margin: -10rpx 30rpx 0 0;
				.hot {
					font-size: 24rpx
				}
				.hr {
					padding: 0 20rpx;
				}
				.new {
					font-size: 24rpx;
				}
			}
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
			    margin-bottom: 30rpx;
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
		.comments_list {
			display: flex;
			flex-direction: column;
			height: auto;
			width: 90%;
			margin: 0 auto;
			margin-bottom: 80rpx;
			.list-top {
				display: flex;
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