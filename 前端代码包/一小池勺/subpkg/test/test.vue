<!-- <template>
  <view class="container">
    <scroll-view class="slider-left" scroll-y>
      <view
        class="tab"
        :class="{ active: currentTab === index }"
        v-for="(item, index) in categoryList"
        :key="index"
        @tap="switchTab(index)"
      >
        {{ item.name }}
      </view>
    </scroll-view>
    <scroll-view class="slider-right" @scroll="checkRightScroll" scroll-y :scroll-into-view="'category' + currentTab">
      <view v-for="(item, index) in categoryList" :key="index" :id="'category' + index" class="cat-item">
        <view class="item-name"> {{ item.name }} </view>
		<block v-for="(item1, index) in item.children">
			<view class="item-list">
				<view class="list-left">
					<view class="main">
						<image class="img" :src="item1.pic"></image>
					</view>
					<view class="list-mid">
						<view class="title">{{item1.title}}</view>
						<view class="num">{{item1.num}} 条动态</view>
					</view>
				</view>
				<view class="list-right" @click="todosmoething">加入</view>
			</view>
		</block>
      </view>
    </scroll-view>
  </view>
</template>

<script>
export default { 
  data() {
    return {
      currentTab: 0,
      categoryList: [
        { 
			name: '情感', 
			children: [
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				}
			] ,
		},
        { 
			name: '校园', 
			children: [
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				}
			] ,
		},
		{ 
			name: '日常', 
			children: [
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				}
			] ,
		},
		{ 
			name: '职场', 
			children: [
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				}
			] ,
		},
		{ 
			name: '句子控', 
			children: [
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				}
			] ,
		},
		{ 
			name: '心情', 
			children: [
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				}
			] ,
		},
		{ 
			name: '故事', 
			children: [
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				}
			] ,
		},
		{ 
			name: '影视', 
			children: [
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				}
			] ,
		},
		{ 
			name: '社会事件', 
			children: [
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				}
			] ,
		},
		{ 
			name: '美食', 
			children: [
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				}
			] ,
		},
		{ 
			name: '歌词', 
			children: [
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				}
			] ,
		},
		{ 
			name: '旅行', 
			children: [
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				}
			] ,
		},
		{ 
			name: '摘抄', 
			children: [
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				}
			] ,
		},
		{ 
			name: '读书', 
			children: [
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				},
				{
					pic: "https://pic2.zhimg.com/80/v2-50fcba43bd35b6f017ae31f0c8f787db_720w.webp",
					title: "谁来安慰我一下",
					num: 12
				}
			] ,
		}
     ]
    };
  },
  methods: {
    switchTab(index) {
      this.currentTab = index;
    },
	checkRightScroll(event) {
		console.log(event.detail.scrollTop)
		const index = Math.floor(event.detail.scrollTop / 300)
		this.currentTab = index
	},
	todosmoething() {
		uni.navigateTo({
			url: "../../subpkg/hot-topic/hot-topic"
		})
	}
  },
};
</script>

<style lang="scss" scoped>
.container {
  display: flex;
  height: 100vh;
  .slider-left {
    font-size: small;
    color: #ccc;
    width: 25%;
    .tab {
      padding: 30rpx 20rpx 30rpx 20rpx;
	  text-align: center;
      &.active {
		position: relative;
		z-index: 1;
        color: #fff;
        &::after {
        	content: '';
			position: absolute;
			z-index: -1;
			left: 0;
			top: 50%;
			transform: translateY(-50%);
        	width: 8rpx;
			height: 60rpx;
		    background: radial-gradient(circle at 10% 20%, rgb(138,229,240) 0%, rgb(206, 239, 253) 90%);
		    border-radius: 30rpx;
			animation: expandglow 0.5s ease-out forwards;
		}
	  }
    }
	@keyframes expandglow {
	  to {
	    width: 100%;
	  }
	}
  }
  .slider-right {
    width: 75%;
	padding-left: 20rpx;
	.cat-item {
		height: 320px;
		.item-name {
			font-size: 40rpx;
			font-weight: 100;
		}
		.item-list {
			display: flex;
			justify-content: space-between;
			align-items: center;
			width: 90%;
			margin: 20rpx auto;
			.list-left {
				display: flex;
				align-items: center;
				.main{ 
					width: 110rpx;
					height: 110rpx;
					border-radius: 15rpx;
					overflow: hidden;
					margin-right: 20rpx;
					.img {
						width: 100%;
						height: 100%;
					}
				}
				.list-mid {
					.title {
						font-size: 25rpx;
						margin-bottom: 20rpx;
						font-weight: 100;
						color: #000;
					}
					.num {
						font-size: 18rpx;
						color: #ccc;
					}
				}
			}
			.list-right {
				width: 70rpx;
				height: 38rpx;
				text-align: center;
				line-height: 38rpx;
				font-size: 20rpx;
				border-radius: 15rpx;
				background-color:#eeeeee;
			}
		}
	}
  }
}
</style -->

<!-- <template>  
  <view>  
    <view  
      v-for="(diary, index) in diaries"  
      :key="diary.id"  
      class="swipe-container"  
      @touchstart="onTouchStart"  
      @touchmove="onTouchMove"  
      @touchend="onTouchEnd"  
    >  
      <view class="swipe-content">  
        <text>{{ diary.title }}</text>  
        <text>{{ diary.content }}</text>  
      </view>  
      <view class="swipe-delete" v-show="deleteShowing">删除</view>  
    </view>  
    <button @tap="addDiary">新增日记</button>  
  </view>  
</template> 
  
<script>  
export default {  
  data() {  
    return {  
      diaries: [  
        {
			title: "111",
			content: "wwww"
		} 
      ],  
      touchStartX: 0, // 触摸起始点的X坐标  
      touchEndX: 0, // 触摸结束点的X坐标  
      deleteShowing: false, // 是否显示删除按钮  
    };  
  },  
  methods: {  
    addDiary() {  
      // 添加日记的逻辑...  
    },  
    onTouchStart(e) {  
      this.touchStartX = e.touches[0].clientX;  
    },  
    onTouchMove(e) {  
      this.touchEndX = e.touches[0].clientX;  
    },  
    onTouchEnd() {  
      // 判断滑动距离，如果满足条件则显示删除按钮  
      if (this.touchEndX - this.touchStartX < -100) {  
        this.deleteShowing = true;  
      } else {  
        this.deleteShowing = false;  
      }  
    },  
    onDelete(index) {  
      // 删除日记的逻辑...  
    },  
  },  
};  
</script> -->

<template>
	<view class="item" bindtap="onItemTap">
	  <view class="album">
		<image class="image" mode="widthFix" :src="item.cover"></image>
		<view class="info">
		  <view class="count">{{ fmtCount }}</view>
		  <view class="duration">{{ fmtDuration }}</view>
		</view>
	  </view>
	  <view class="content">
		  <view class="mvname">
		  	{{ item.name }}
		  </view>
		  <view class="artistName">
		  	{{ item.artistName }}
		  </view>
	  </view>
	</view>
</template>

<script>
	import { formatCount,formatTime } from '../../utils/formate.js'
	export default {
		name:"video-item",
		props: {
		  item: {
		    type: Object,
		    required: true
		  }
		},
		data() {
			return {
				
			}
		},
		computed: {
			fmtCount() {
				return formatCount(this.item.playCount)
			},
			fmtDuration() {
				return formatTime(this.item.mv.videos[0].duration)
			}
		}
	}
</script>

<style lang="scss" scoped>
.item {
	display: flex;
	width: 100%;
    margin-bottom: 30rpx;
	.album {
	  width: 40%;
	  position: relative;
	  border-radius: 12rpx;
	  overflow: hidden;
	  display: flex;
	  .image {
		 width: 100%;
	  }
	  .info {
	    position: absolute;
	    padding: 0 10rpx;
	    box-sizing: border-box;
	    width: 100%;
	    bottom: 8rpx;
	    display: flex;
	    justify-content: space-between;
	    color: #fff;
	    font-size: 24rpx;
		.count {
			padding-left: 36rpx;
			position: relative;
			&::before {
				content: "";
				position: absolute;
				left: -2rpx;
				top: 4rpx;
				width: 30rpx;
				height: 24rpx;
				background-size: cover;
			}
		}
	  }
	  .content {
		width: 60%;
	    margin-top: 10rpx;
	    font-size: 20rpx;
	    /* 显示两行 */
	    overflow: hidden;
	    // text-overflow: ellipsis;
	    // display: -webkit-box; 
	    // -webkit-line-clamp: 2;
	    // -webkit-box-orient: vertical;
		.mvname {
			font-size: 10rpx;
		} 
 		.artistName  {
			
		}
	  }
	}
}
</style>