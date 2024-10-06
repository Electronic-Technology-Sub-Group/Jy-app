<template>
 <view class="container">
    <view class="container-header">
      <view @click="submitAll" class="submit-btn">发布</view>
    </view>
    <textarea
	   class="container-textarea"
       v-model="momentContent"
       placeholder="在这里你不用害怕被看见，可以释放你的分享欲..."
    >
	</textarea>
    <view class="image-container">
        <!-- 将 + 图标也视为一个图片项 -->
	    <block v-for="(img, index) in ossImgsUrl" :key="index">
			<image
			  class="image-item"
			  :src="img"
			  style="padding: 5rpx;"
			  @click="deleteImage(index)"
			>
			</image>
		</block>
      <view class="icon-container" @tap="chooseImage" style="padding: 5rpx;" v-if="momentPicture.length < 9">
        <view class="image-addIcon"></view>
      </view>
    </view>
    <view class="container-footer"></view>
  </view>
</template>
<script>
import { addDynamicB } from '../../services/AboutDynamics.js'
export default {
  data() {
    return {
	  itemId: null,
	  userId: null,
      momentContent: "", // 动态内容
      momentPicture: [], // 选中的图片路径数组
	  serverUrl: "http://localhost:8080/user/common/upload", // 图片上传接口
	  ossImgsUrl: []
    }
  },
  onLoad(options) {
	  console.log(options.itemId)
	  this.itemId = options.itemId
  },
  mounted() {
	  uni.getStorage({
	    key: 'userId',
	    success: (res) => {
	      console.log(res.data)
	  	  this.userId = res.data
	    }
	  })
  },
  methods: {
	async submitAll() {
		const res = await addDynamicB(this.itemId, this.momentContent, this.ossImgsUrl, this.userId)
		console.log(res)
		if(res.code === 200) {
			uni.navigateTo({
				url: `../../subpkg/hot-topic/hot-topic?itemId=${this.itemId}`
			})
		}
	},
	chooseImage() {
		// 选取图片列表
		uni.chooseImage({
		  count: 9,
		  success: (res) => {
			console.log(res.tempFilePaths);
			res.tempFilePaths.forEach((item, index) => {
			  this.momentPicture.push(item)
			  // 上传图片
			  uni.uploadFile({
				url: this.serverUrl, // 上传文件的接口地址
				filePath: item, // 要上传的文件路径
				name: 'file', // 文件对应的key，后端可以通过这个key获取文件
				header: {
				  // 设置用户访问的token信息
				  "authentication": uni.getStorageSync('token')
				},
				success: (uploadRes) => {
				  console.log(uploadRes)
				  let data = JSON.parse(uploadRes.data) // 后端返回给我的是一个字符串，处理一下
				  console.log(data)
				  // 将得到的在线地址保存到要提交的图片列表里
				  this.ossImgsUrl.push(data.data)
				},
				fail: (err) => {
				  console.error(err);
				  // 在这里可以处理上传失败后的逻辑
				}
			  });
			});
		  },
		});
	},
    deleteImage(index) {
      uni.showModal({
        title: "提示",
        content: "确定要删除这张图片吗？",
        success: (res) => {
          if (res.confirm) {
            this.momentPicture.splice(index, 1)
          }
        },
      })
    },

  }
}
</script>

<style lang="scss" scoped>
  .container {
	width: 90vw;
	margin: 0 auto;
	
    .container-header {
      display: flex;
      height: 50rpx;
      width: 100%;
      justify-content: flex-end;
      .submit-btn {
        width: 120rpx;
        height: 50rpx;
        background-color: deepskyblue;
        color: #fff;
        font-size: x-small;
        text-align: center;
        line-height: 50rpx;
        border-radius: 20rpx;
        margin: 20rpx 20rpx 0 0;
      }
    }
    .container-textarea {
      width: 100%;
	  box-shadow: 1px 1px 7rpx 2rpx rgba(0, 0, 0, 0.1);
      margin-top: 35rpx;
	  border-radius: 20rpx;
	  box-sizing: border-box;
	  padding: 30rpx;
    }
    .image-container {
      width: 100%;
	  box-sizing: border-box;
      display: flex;
      flex-wrap: wrap;
	  margin-top: 30rpx;
      .image-item {
        width: 30%;
        height: 200rpx;
      }
      .icon-container {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 30%;
        height: 200rpx;
		border-radius: 15rpx;
        background-color: #eee;
        .image-addIcon {
          width: 80rpx;
          height: 80rpx;
          background-color: rgba(0,0,0,.2);
          border-radius: 50%;
          display: flex;
          justify-content: center;
          align-items: center;

          &::before,
          &::after {
            content: "";
            position: absolute;
            width: 60rpx;
            height: 8rpx;
            background-color: white;
            border-radius: 4rpx;
          }

          &::before {
            transform: rotate(90deg);
          }
        }
      }
    }
    .container-footer {
		height: 200rpx;
	}
  }
</style>