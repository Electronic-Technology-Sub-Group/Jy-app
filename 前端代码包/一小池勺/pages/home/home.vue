<template>
    <view class="container">
		<!-- 粘性固定导航栏 -->
      <view class="container-fixed_area">
          <rm-search></rm-search>
          <view class="area-list">
            <view class="item" :class="{ active: nowflag === 0 }" @tap="switchTabbar(0)">更多</view>
            <view class="item" :class="{ active: nowflag === 1 }" @tap="switchTabbar(1)">最新</view>
            <view class="item" :class="{ active: nowflag === 2 }" @tap="switchTabbar(2)">ALBUM</view>
            <view class="item" :class="{ active: nowflag === 3 }" @tap="switchTabbar(3)">MV</view>
            <view class="item" :class="{ active: nowflag === 4 }" @tap="switchTabbar(4)">创作</view>
          </view>
      </view>
      <view class="container-content">
		<!-- 内部tab切换内容区 -->
        <view v-show="nowflag === 0" class="A-scrollView">
          <scroll-view scroll-y style="height: 100%;">
			  <view class="section_a">星座日签</view>
			  <rm-cardformedian></rm-cardformedian>
			  <view class="section_b">推荐</view>
			  <rm-scrolxcardforfindB :menuList="menuList"></rm-scrolxcardforfindB>
			  <view class="section_c">
				  <view class="section_c_left">好评榜</view>
				  <view class="section_c_right">
					  <view class="more" @click="toJqrbDetail">更多</view>
					  <image class="img" src="../../static/rm-more.png"></image>
				  </view>
			  </view>
			  <rm-hotcard :hotcarditemList="hotcarditemList"></rm-hotcard>
			  <view class="section-d">
				  <view class="section-d_left">中国速度</view>
				  <view class="section-d_right" @click="toHMore">
					  <view @click="hello" class="more">更多</view>
					  <image class= "img" src="../../static/rm-more.png"></image>
				  </view>
			  </view>
			  <rm-historycard></rm-historycard>
			  <view class="section-e">
				  <view style="color: bisque">——</view>
			        <view style="color: #ccc; padding: 0 10rpx; font-size: 20rpx;">发现更多</view>
			      <view style="color: bisque">——</view>
			  </view>
			  <block v-for="(item,index) in moreList" :key="index">
				  <rm-cardmore :item="item"></rm-cardmore>
			  </block>
			  <view style="font-size: 30rpx; color: #ccc; text-align: center;"> --- 已经到底了 ---</view>
          </scroll-view>
        </view>
		<view v-show="nowflag === 1" class="B-scrollView">
		  <view class="waterfall-container">
			  <view class="left-column">
				  <view v-for="(item,index) in leftItems" class="item" @click="toThisSentence">
					  <rm-whaterfallviewforcartmore :item="item"></rm-whaterfallviewforcartmore>
				  </view>
			  </view>
			  <view class="right-column">
				  <view v-for="(item,index) in rightItems" class="item" @click="toThisSentence">
					   <rm-whaterfallviewforcartmore :item="item"></rm-whaterfallviewforcartmore>
				  </view>
			  </view>
		  </view>
		</view>
		<view v-show="nowflag === 2" class="C-scrollView">
		  <scroll-view scroll-y style="height: 100%;">
			  <scroll-view 
			  scroll-x
			  class="fourPage_list"
			  style="width: 100vw;"
			  >
			    <block v-for="(item,index) in albumList" :key="index">
					<view class="tab-item" @tap="switchTabbarItem(index)" :class="{ active: currentTab === index }">{{ item.albumName }}</view>
				</block>
			  </scroll-view>
			  <!-- 选项内容 -->
			  <swiper style="height: calc(95vh - 200rpx);" :current="currentTab" @change="swiperChange" class="s">
				<swiper-item v-for="(itemA, index) in albumList" :key="index">
					<scroll-view scroll-y="true" style="height: calc(95vh - 200rpx);" class="view">
						<view v-for="(itemB,indexB) in itemA.categoryVOList" :key="indexB" class="b">
							<view class="left">
								<image class="img" :src="itemB.categoryPicture"></image>
							</view>
							<view class="right" @click="toThisAlbum(itemB.categoryId)">
								<view class="name">
									{{ itemB.categoryName }}
								</view>
								<view class="desc" v-if="itemB.categorySynopsis">{{ itemB.categorySynopsis }}</view>
							</view>
						</view>
					</scroll-view>
				</swiper-item>
			  </swiper>
		  </scroll-view>
		</view>
		<view v-show="nowflag === 3" class="D-scrollView">
			<view class="video-list">
				<block v-for="(item,index) in videoList" :key="index">
					<video-item
					  :item="item"
					>
					</video-item>
				</block>
			</view>
		</view>
		<view v-show="nowflag === 4" class="E-scrollView">
		  <scroll-view scroll-y style="height: 100%;">
			  <view class="fivePage-a">
				  <view class="fivePage-a_left">素材</view>
				  <view class="fivePage-a_right">
					  <view style="font-size: 30rpx; color: #ccc;" @click="Toessaymaterial">更多</view>
					  <image style="width: 30rpx; height: 30rpx;" src="../../static/rm-more.png"></image>
				  </view>
			  </view>
			  <rm-scrolxcardforfind :menuList="essaymaterial"></rm-scrolxcardforfind>
			  <view class="fivePage-b">
				  <view class="fivePage-b_left">诗词</view>
			  </view>
			  <rm-displaypoem :poemList="poemList"></rm-displaypoem>
			  <view style="margin-top: 200rpx; font-size: 28rpx; color: #ccc;text-align: center;">———— 谢谢款待 ————</view>
		  </scroll-view>
		</view>
      </view>
    </view>
  </template>
  
  <script>
  import { getDetailMv } from '../../services/video.js'
  import { sixCategory, sentenceAlbum, findTop10, ImmerseReading } from '../../services/AboutTheSentence.js'
  export default {
    data() {
      return {
		hasMore: true,
		offset: 0,
		screenWidth: 150,
        nowflag: 0,
		active: 0,
		currentTab: 0,
		videoList: [],
		albumList: [ ],
		poemList: ['山水','春天','秋天','飘雪','西湖','山景','田园','长江','友谊','家国'],
		personList: [
			{
				name: "李白",
				picUrl : "https://pica.zhimg.com/v2-162b43f95437eb22347262165c8729e2_r.jpg"
			},
			{
				name: "杜甫",
				picUrl: "https://pic2.zhimg.com/v2-519bc836466116ce814e67c1f8ab69c5_r.jpg"
			},
			{
				name: "苏轼",
				picUrl: "https://pic1.zhimg.com/v2-ed358eb713074c802e2f6e7aab165316_r.jpg"
			},
			{
				name: "王维",
				picUrl: "https://picx.zhimg.com/v2-4d8065c039d6ad09f2ce6d4d97a4c631_r.jpg"
			},
			{
				name: "李煜",
				picUrl: "https://pic3.zhimg.com/v2-d0267ea92700cae534639dd742e8b424_r.jpg"
			},
			{
				name: "辛弃疾",
				picUrl: "https://pica.zhimg.com/80/v2-8dcd24535b716c232fb2d547944de274_720w.webp"
			},
			{
				name: "王安石",
				picUrl: "https://pica.zhimg.com/v2-ab642588929d456ae2ef001b18ab5102_r.jpg"
			},
			{
				name: "李商隐",
				picUrl: "https://pic3.zhimg.com/v2-067150e76badde79e85709b85cbfdd24_r.jpg"
			},
			{
				name: "白居易",
				picUrl: "https://pic3.zhimg.com/v2-0475da97322e7dd6d41b75a684058c3a_r.jpg"
			}
		],
		peopleList: [
			{
				imgPic: "https://pic.baike.soso.com/ugc/baikepic2/0/ori-20210106111655-200096512_png_633_483_382222.jpg/800",
				catTotal: "三毛"
			},
			{
				imgPic: "https://pic.baike.soso.com/ugc/baikepic2/0/ori-20200415161131-1549704486_png_576_587_421488.jpg/800",
				catTotal: "村上春树"
			},
			{
				imgPic: "https://pic.baike.soso.com/ugc/baikepic2/0/ori-20210713115330-1931826465_png_480_456_415288.jpg/800",
				catTotal: "王尔德"
			}
		],
		essaymaterial: [
			{
				id: "a",
				imgPic: "https://pic4.zhimg.com/v2-9d36185b88cf07dceab5108c0cfd93c5_r.jpg",
				catTotal: "人民日报 | 来自央视金句句句都是高分",
				readCount: '2244'
			},
			{
				id: "e",
				imgPic: "https://pic3.zhimg.com/v2-dc5fe2fb2bb0d0528841b4d27b2e3930_r.jpg",
				catTotal: "奇葩说 | 各大辩手齐聚一堂，领略思想的碰撞",
				readCount: '4892'
			},
			{
				imgPic: "https://picx.zhimg.com/v2-88a1de8a5b5ec2668ed5a28b795da7d1_r.jpg",
				id: "h",
				catTotal: "经典散文 | 看散文里的一份份柔情",
				readCount: '41122'
			},
			{
				id: "j",
				imgPic: "https://pic4.zhimg.com/v2-43a7d74c901fcc6666fdbc16a74a36f5_r.jpg",
				catTotal: "记叙文 | 这里收录了很多小小的故事",
				readCount: '4812'
			},
			{
				id: "d",
				imgPic: "https://pic1.zhimg.com/80/v2-710b01fa6c5af927b59bd6feef0a19f4_720w.webp",
				catTotal: "美词美句 | 原来句子可以这样美",
				readCount: '56122'
			}
		],
		hotcarditemList: [],
		menuList: [],
        moreList: [],
		leftItems: [],
		rightItems: [],
		newList: []
      }
    },
	mounted() {
		// 1. 更多
		this.fetchMore()
		// 2.Mv
		this.fetchMv()
		// 3. 推荐专辑
		this.fetchsixCategory()
		// 4. 近期热榜
		this.fetchfindTop10()
	},
    methods: {
	  async fetchMore () {
		  const res = await ImmerseReading()
		  this.moreList = res.data
		  this.moreList.reverse()
	  },
	  async fetchMv() {
		const res = await getDetailMv(this.offset)
		const newVideoList = [...this.videoList, ...res.data]
		this.videoList = newVideoList
		this.offset = this.videoList.length
		this.hasMore = res.hasMore
		console.log(res)
	  },
	  async onPullDownRefresh() {
		this.videoList = []
		this.offset = 0
		this.hasMore = true
		await this.fetchMv()
		this.fetchMore()
		uni.stopPullDownRefresh()
	  },
	  async fetchsixCategory() {
		const res = await sixCategory()
		console.log(res)
		this.menuList = res.data
	  },
 	  async fetchfindTop10() {
		const res = await findTop10()
		this.hotcarditemList = res.data.slice(0, 3)
		console.log(res)
		this.hotcarditemList.forEach((item,index) => {
			item.index = index
		})
	  },
	  toJqrbDetail() {
		  uni.navigateTo({
		  	url: "../../subpkg/jqrb-detail/jqrb-detail"
		  })
	  },
	  toThisAlbum(id) {
		  console.log(id)
		  uni.navigateTo({
		  	url: `../../subpkg/album-detail/album-detail?id=${id}`
		  })
	  },
      async switchTabbar(index) {
        this.nowflag = index
		switch (index) {
			case 0:
			console.log("已渲染")
				break;
			case 1:
			const resA = await ImmerseReading()
			console.log(resA)
			this.newList = resA.data
			this.newList.reverse()
			let midIndex = Math.ceil(this.newList.length / 2)
			this.leftItems = this.newList.slice(0, midIndex)
			this.rightItems = this.newList.slice(midIndex)
				break;
			case 2:
			const resB = await sentenceAlbum()
			this.albumList = resB.data
			console.log(this.albumList.categoryVOList)
			console.log(resB)
			console.log(this.albumList)
				break;
			case 3:
			
				break;
			case 4:
			
				break;
			default:
				console.log("蚂蚁呀嘿~");
		}
      },
	  switchTabbarItem(index) {
		this.currentTab = index;
	  },
	  toHMore() {
		  uni.navigateTo({
		  	url: "../../subpkg/historyAndDay/historyAndDay"
		  })
	  },
	  toThisSentence() {
		  uni.navigateTo({
		  	url: "../../subpkg/sentence-details/sentence-details"
		  })
	  },
	  Toessaymaterial() {
		  uni.navigateTo({
		  	url: "../../subpkg/essay-material/essay-material"
		  })
	  },
	  toMoreAbulmn() {
		  uni.navigateTo({
		  	url: "../../subpkg/more-pabublum/more-pabublum"
		  })
	  },
	  swiperChange(e) {
		this.currentTab = e.detail.current;
	  }
    },
  }
  </script>
  
  <style lang="scss" scoped>
  .container{
    height: 100vh;
    width: 100vw;
    background-color: #FFFFFF;
	.container-fixed_area {
		position: sticky;
		top: 0;
		.area-list {
		  display: flex;
		  justify-content: space-around;
		  // padding: 20rpx 0;
		  height: 70rpx;
		  box-sizing: border-box;
		  margin-top: 60rpx;
		  background-color: #FFFFFF;
		  .item {
		    font-size: 30rpx;
		    color: #333333;
			&.active {
				position: relative;
				z-index: 9999;
				color: #460779;
				font-weight: 800;
				&::after {
					position: absolute;
					z-index: -9999;
					content: "";
					width: 26rpx;
					height: 26rpx;
					background-color: rgba(70,7,121,.2);
					left: 50%;
					top: 50%;
					border-radius: 50%;
					transform: translate(-50%, -50%);
				} 
			}
		  }
		}
	}

    .container-content {
      padding-top: 30rpx;
	  width: 95%;
	  margin: 0 auto;
	  height: calc(100vh - 200rpx);
	  overflow-y: scroll;
	  .A-scrollView {
		  .section_a {
			  margin: 30rpx 0;
			  font-size: large;
			  font-weight: 300;
		  }
		  .section_b {
			  margin: 30rpx 0;
			  font-size: large;
			  font-weight: 300;
		  }
		  .section_c {
			  margin: 30rpx 0;
			  font-size: large;
			  font-weight: 300;
			  display: flex;
			  justify-content: space-between;
			  .section_c_right {
				  display: flex;
				  align-items: center;
				  .more {
					  font-size: 30rpx;
					  color: #ccc;
				  }
				  .img {
					  width: 30rpx;
					  height: 30rpx;
				  }
			  }
		  }
		  .section-d {
		  		  margin: 30rpx 0;
		  		  font-size: large;
		  		  font-weight: 300;
		  		  display: flex;
		  		  justify-content: space-between;
		  		  .section-d_right {
		  			  display: flex;
		  			  align-items: center;
		  			  .more {
		  				  font-size: 30rpx;
		  				  color: #ccc;
		  			  }
		  			  .img {
		  				  width: 30rpx;
		  				  height: 30rpx;
		  			  }
		  		  }
		  }
		  .section-e {
			  margin: 30rpx 0;
			  display: flex; 
			  justify-content: center;
			  align-items: center;
		  }
	  }
	  
	  .B-scrollView {
		  .waterfall-container {
		  	display: flex;
		  	justify-content: space-between;
		  }
		  .left-column,
		  .right-column {
		  	width: 48vw;
		  }
		  .item {
		  	margin-bottom: 10rpx;
		  	padding: 10rpx;
		  }
	  }
	  
	  .C-scrollView {
		  .fourPage_list {
		     font-size: smaller;
		     color: #ccc;
		     white-space: nowrap;
		     .tab-item {
		  	   display: inline-block;
		  	   padding: 20rpx 30rpx;
		  	   &.active {
		  		   color: rgba(70,7,121,.5);;
				   font-weight: 500;
		  	   }
		     }
		     .tab-item:last-of-type {
		     	margin-right: 110rpx;
		     }
		  }
	  }
	  
	  .D-scrollView {
		  height: auto;
		  .video-list {
			  width: 95%;
			  margin: 0 auto;
		  }
	  }
	  
	  .E-scrollView {
		  .fivePage-a {
		  		  margin: 30rpx 0;
		  		  font-size: large;
		  		  font-weight: 300;
		  		  display: flex;
		  		  justify-content: space-between;
		  		  .fivePage-a_right {
		  			  display: flex;
		  			  align-items: center;
		  		  }
		  }
		  .fivePage-b {
		  		  margin: 30rpx 0;
		  		  font-size: large;
		  		  font-weight: 300;
		  		  display: flex;
		  		  justify-content: space-between;
		  		  .fivePage-b_right {
		  			  display: flex;
		  			  align-items: center;
		  		  }
		  }
		  .fivePage-c {
		  		  margin: 30rpx 0;
		  		  font-size: large;
		  		  font-weight: 300;
		  		  display: flex;
		  		  justify-content: space-between;
		  		  .fivePage-c_right {
		  			  display: flex;
		  			  align-items: center;
		  		  }
		  }
		  .fivePage-d {
		  		  margin: 30rpx 0;
		  		  font-size: large;
		  		  font-weight: 300;
		  		  display: flex;
		  		  justify-content: space-between;
		  		  .fivePage-d_right {
		  			  display: flex;
		  			  align-items: center;
		  		  }
		  }
		  .peopleAllBox {
			  width: 100%;
			  .item {
				  width: 100%;
				  display: flex;
				  margin-bottom: 25rpx;
				  .img { 
					  width: 40%;
					  height: 230rpx;
					  border-radius: 30rpx;
				  }
				  .avatar {
					  margin: 20rpx 0 0 30rpx;
					  width: 60%;
					  .name {
						  font-size: 40rpx;
						  font-weight: 600;
					  }
					  .desc {
						  font-size: 25rpx;
						  font-weight: 100;
						  padding-top: 20rpx;
						  box-sizing: border-box;
					  }
				  }
			  }
		  }
	  }
    }
	.s {
		  width: 100%;
		  .view {
			  width: 100%;
			  height: 300rpx;
			  .b {
				  width: 100%;
				  box-sizing: border-box;
				  padding: 0 20rpx;
				  display: flex;
				  .left {
						  width: 35%;
						  height: 180rpx;
						  display: flex;
						  justify-content: center;
						  align-items: center;
						  .img {
							width: 100%;
							height: 90%;
							border-radius: 15rpx;
						  }
				  }
				  .right {
				  		width: 70%;
						margin-left: 15rpx;
						.name { 
							font-weight: 900;
						}
						.desc { 
							margin-top: 15rpx;
							font-weight: 100;
							font-size: 25rpx;
						}
				  }
			  }
		  }
	}
  }
  </style>