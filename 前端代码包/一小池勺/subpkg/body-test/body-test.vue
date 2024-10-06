<template>
	<view class="container">
		<view class="container-header">
		   <text class="header-title1"> YOU Shoud </text>
			 <text class="header-title2"> Just Do It! </text>
		</view>
		
		<view class="container-content">
		   <view class="item item1" style="background-color: rgb(103, 136, 136);" @click="toStart">
			    <view class="item1-con">
					   <text>热身</text>
					   <text>运动</text>
					</view>
			 </view>
			 <view class="item item2" style="background-color: rgb(135, 238, 238)">
			     <view class="item2-con">
					     <text class="con-title">坚持天数</text>
		           <view class="con-days">
								<text> {{ 0 }} </text>
							  <text> Day </text>
							 </view>
					 </view>
			 </view>
			 <view class="item item3" style="background-color: blueviolet;">
		        <view class="item3-con">
							<view class="clock">
								<view class="hour-hand" :style="{ transform: 'rotate(' + hourDegree + 'deg)' }"></view>
								<view class="minute-hand" :style="{ transform: 'rotate(' + minuteDegree + 'deg)' }"></view>
								<view class="second-hand" :style="{ transform: 'rotate(' + secondDegree + 'deg)' }"></view>
							</view>
						</view>
			 </view>
			 <view class="item item4" style="background-color: salmon;">
			     <view class="item4-con" @click="tomoreTest">
					    <text>开始</text>
						<text>训练</text>
				 </view>
			 </view>
		</view>
		<view class="container-footer" @click="add">打个卡</view>
	</view>
</template>

<script>
	  export default {
		data() {
		  return {
			hourDegree: 0,
			minuteDegree: 0,
			secondDegree: 0,
			sum: null
		  }
		},
		onLoad() {
		  this.updateClock();
		  setInterval(this.updateClock, 1000)
		},
		methods: {
		  updateClock() {
			const now = new Date()
			const hours = now.getHours()
			const minutes = now.getMinutes()
			const seconds = now.getSeconds()
			const hourDegree = (hours % 12 + minutes / 60) * 30
			const minuteDegree = minutes * 6
			const secondDegree = seconds * 6
			this.hourDegree = hourDegree
			this.minuteDegree = minuteDegree
			this.secondDegree = secondDegree
		  },
		  toStart() {
			uni.navigateTo({
			  url: '../../subpkg/to-start/to-start',
			});
		  },
		  add() {
			  uni.navigateTo({
			  	url: "../../subpkg/more-test/more-test"
			  })
		  }
		}
	  }
</script>

<style lang="scss" scoped>
.container {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 100vh;
}

.container-header {
	display: flex;
	flex-direction: column;
}

.header-title1 {
	color: #000;
	font-weight: 600;
	font-size: x-large;
}

.header-title2 {
	font-weight: 800;
	font-size: xx-large;
}

.container-content {
	width: 100%;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
}

.item {
	border-radius: 20rpx;
	height: 300rpx;
	width: 40%;
	margin: 30rpx;
	background-color: pink;
}

.container-footer {
	text-align: center;
	line-height: 100rpx;
	color: white;
	border-radius: 20rpx;
	width: 240rpx;
	height: 100rpx;
	background-color: skyblue;
}

.item1-con {
	color: white;
	margin: 30rpx;
	font-weight: 800;
	font-size: x-large;
}

.item4 {
	display: flex;
	justify-content: flex-end;
	align-items: flex-end;
}

.item4-con {
	display: flex;
	font-weight: 800;
	font-size: x-large;
	color: white;
	flex-direction: column;
	margin: 0 30rpx 30rpx 0;
}

.item2-con {
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	color: white;
}

.item3-con {
	display: flex;
	position: relative;
	height: 100%;
	justify-content: center;
	align-items: center;
}

.item3-con::after {
	content: "";
	position: fixed;
	width: 15rpx;
	height: 15rpx;
	border-radius: 50%;
	background-color: white;
}

.clock {
  width: 200rpx;
  height: 200rpx;
  position: relative;
  border-radius: 50%;
}

.hour-hand, 
.minute-hand, 
.second-hand {
  position: absolute;
	bottom: 50%;
	left: 50%;
  width: 5rpx;
  background-color: #000;  
  transform-origin: bottom center;
}

.hour-hand {
	height: 30%;
}

.minute-hand {
	height: 50%;
}

.second-hand {
	height: 60%;
}

.item1-con {
	display: flex;
	flex-direction: column;
}
</style>