<template>
  	<view class="container">
  		<view class="container-dairly">
  			<text class="txt" @click="test">热身运动</text>
			<view class="desc">运动之前一定要记得热身噢~</view>
  		</view>
  		<view class="rm-container">
		   <scroll-view
		   scroll-x
		   class="list"
		   :style="{width: screenWidth + 'px'}"
		   >
			 <block v-for="(item,index) in cardList" :key="index">
			  <view class="rm-cardforindex item">
				<view class="rm-img-wrapper">
					<image class="rm-cardforindex_headerImg" :src="item.imgPic"></image>
				</view>
				<view class="rm-cardforindex_content">
				   <view class="content-main">
					   {{ item.desc }}
				   </view>
				   <view class="content-title">{{ item.title }}</view>
				</view>
			  </view>
			 </block>
		   </scroll-view>
  		</view>
  	</view>
  </template>
  
  <script>
	export default {
	    data() {
	        return {
				screenWidth: 375, // => 动态适配不同设备
				cardList: [
					{
						title: "点头运动",
						imgPic: "https://pic3.zhimg.com/v2-ad1672804fdf2a6ee89a4f609214497e_b.webp",
						desc: "轻轻地将下巴向胸部方向缓慢移动，直到你感到颈部的轻微伸展。缓慢地将头抬起，直到你的头部向后伸展，但不要过度仰头。重复这个动作，根据自己的舒适程度，每次动作持续约10-15秒。"
					},
					{
						title: "肩部环绕",
						imgPic: "https://pic2.zhimg.com/v2-5b320fa2be646ff94ed595b731c9efb5_b.webp",
						desc: "站直或坐直，放松双臂自然垂放于身体两侧。缓慢地将肩膀向前提起，然后向上提起，再向后转动，最后放下来，完成一个完整的环绕动作。接着反方向进行，即先向后提起，再向上提起，再向前转动，最后放下来，也完成一个完整的环绕动作。重复这个动作，每次动作持续约10-15秒。"
					},
					{
						title: "扩胸运动",
						imgPic: "https://pic2.zhimg.com/v2-f3475b25e619720b28036fd045938db9_b.webp",
						desc: "站直或坐直，抬起胸部，保持挺直的姿势。交叉双臂放在胸前，手掌放在对侧的肩部上。缓慢地深吸气，同时尽量扩展胸部，感受胸部和肩部的舒展。缓慢地呼气，放松双臂。"
					},
					{
						title: "前后踮脚尖",
						imgPic: "https://pic2.zhimg.com/v2-43a52bcab05993390cddb33f23cc7e49_b.webp",
						desc: "站直，双脚并拢或稍微分开，然后将脚尖向上抬起，站在脚尖上。保持站立姿势数秒钟，然后缓慢地将脚跟放下，回到原来的站立姿势。接着将脚尖向后抬起，站在脚尖上，同样保持数秒钟，然后缓慢地将脚跟放下。"
					},
					{
						title: "高抬腿",
						imgPic: "https://pic1.zhimg.com/v2-0fa413da449cc472b148bf7647c04668_b.webp",
						desc: "站直或坐直，然后开始抬腿。你可以选择站立或行走时抬腿，或者坐在地面上进行这个动作。尽量抬高膝盖，将大腿抬至大约与地面平行的位置，或者更高，同时保持身体的姿势挺直。每次交替抬起左右腿，类似于行军时的动作。"
					},
					{
						title: "开合跳",
						imgPic: "https://pic1.zhimg.com/v2-04a86129e215688cb944cff6fc3592b8_b.webp",
						desc: "站立，双脚并拢。将双脚跳开，同时双臂向两侧挥舞。立刻将双脚跳回原来的位置，同时将双臂收回身体两侧。重复这个动作，保持节奏。"
					},
					{
						title: "后踢腿跳",
						imgPic: "https://pic4.zhimg.com/v2-e6d72eb31ee8bd851bec190de68f1d93_b.webp",
						desc: "站立，双脚并拢。用一只脚向后直Kick，并同时用另一只脚跳起，然后立即换脚，用另一只脚向后Kick。保持节奏，交替使用双脚进行Kick跳。"
					}
				],
	        }
	    },
	    methods: {

	    },
	}
  </script>
  
  <style lang="scss" scoped>
    /* 隐藏垂直滚动条 */
    ::-webkit-scrollbar {
      width: 0;
      height: 0;
    }
    
    /* 隐藏水平滚动条（如果需要） */
    ::-webkit-scrollbar-horizontal {
      height: 0;
    }
    
    /* 隐藏滚动条上的按钮和轨道背景（如果需要） */
    ::-webkit-scrollbar-thumb,
    ::-webkit-scrollbar-track {
      background: transparent;
    }
	.container {
		.container-dairly {
			box-sizing: border-box;
			padding: 60rpx;
			.txt {
				font-weight: 700;
				font-weight: 40rpx;
			}
			.desc {
				margin-top: 20rpx;
				font-size: 25rpx;
				color: #ccc;
			}
		}
		position: relative;
		height: 100vh;
	   .rm-container {
	     display: flex;
		 position: absolute;
		 top: 50%;
		 transform: translateY(-50%);
	     justify-content: center;
	   }
	   
	   .list {
	     white-space: nowrap;
	   }
	   
	   .list .item {
	     display: inline-block;
	     width: 80vw;
	     margin-left: 60rpx;
	   }
	   
	   .list .item:last-of-type {
	     margin-right: 60rpx;
	   }
	   
	   .rm-cardforindex {
	       width: 80vw;
	       height: 70vh;
	       overflow: hidden;
	   	background-color: #fff;
	   	box-shadow: 0px 0px 2rpx 2rpx rgba(0, 0, 0, 0.1);
	       .rm-img-wrapper {
	           position: relative;
	           width: 100%;
	           height: 40%;
	           .rm-cardforindex_headerImg {
	               width: 100%;
	               height: 100%;
	           }
	           .number {
	               position: absolute;
	               top: 10px;
	               left: 20px;
	               font-size: 2em;
	               color: white;
	           }
	           .date {
	               position: absolute;
	               bottom: 10px;
	               right: 20px;
	               font-size: 25rpx;
	               color: white;
	           }
	   		.day {
	   		  position: absolute;
	   		  font-size: 30rpx;
	   		  color: #fff;
	   		  top: 50px;
	   		  left: 30px;
	   		}
	       }
	   	.rm-cardforindex_content {
	   		width: 100%;
	   		height: 60%;
	           display: flex;
	        	flex-direction: column;
	   		align-items: center;
	   		justify-content: space-between;
	   		.content-main {
	   			width: 90%;
	   			flex: 2;
	   			color: #000;
	   			font-family: '楷体';
	   			font-size: 35rpx;
	   			margin-top: 60rpx;
	   			white-space: normal;
	   		}
	   		
	   		.content-title {
	   			flex: 2;
	   			color: #ccc;
	   			font-size: 30rpx;
	   			margin-top: 100rpx;
	   		}
	   		.rm-cardforindex_tool {
	   			flex: 1;
	   			display: flex;
	   			align-items: center;
	   			justify-content: space-between;
	   			width: 100%;
	   			margin-bottom: 30rpx;
	   			.tool_left {
	   				margin-left: 45rpx; 
	   			}
	   			.tool_right {
	   				display: flex;
	   				align-items: center;
	   				view {
	   					margin-right: 45rpx;
	   					padding-left: 10rpx;
	   				}
	   			}
	   		}
	   	}
	   }	
	}
  </style>