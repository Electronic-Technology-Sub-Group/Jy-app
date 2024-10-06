<template>
	<view class="container">
		<textarea class="area" name="" id="" cols="30" rows="10" placeholder="输入一句话介绍一下自己吧~" v-model="text"></textarea>
		<view class="btn" @click="isok">确认修改</view>
	</view>
</template>
<script>
  import { modifyUserSignatory } from '../../services/AboutUserInfo.js'
  export default {
    data() {
      return {
        text: "",
        userId: null,
      }
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
      async isok() {
		if(this.text.length === 0) {
			uni.showModal({
			  title: '提示',
			  content: '确认清空简介？',
			  success: async (res) => {
			    if (res.confirm) {
			      try {
			        const response = await modifyUserSignatory(this.text, this.userId);
			        console.log(response);
			        this.$store.commit('user_info/UpdateUserAvatarSignature', this.text);
			        setTimeout(() => {
			          uni.switchTab({
			            url: '../../pages/myinfo/myinfo'
			          });
			        }, 1500);
			      } catch (error) {
			        console.error(error);
			      }
			    } else if (res.cancel) {
			      console.log('用户点击取消');
			    }
			  }
			})
		} else {
			uni.showModal({
			  title: '提示',
			  content: '确认修改？',
			  success: async (res) => {
			    if (res.confirm) {
			      try {
			        const response = await modifyUserSignatory(this.text, this.userId);
			        console.log(response);
			        this.$store.commit('user_info/UpdateUserAvatarSignature', this.text);
			        setTimeout(() => {
			          uni.switchTab({
			            url: '../../pages/myinfo/myinfo'
			          });
			        }, 1500);
			      } catch (error) {
			        console.error(error);
			      }
			    } else if (res.cancel) {
			      console.log('用户点击取消');
			    }
			  }
			})
		}
      }
    }
  }
</script>

<style lang="scss" scoped>
.container {
	position: relative;
	width: 100vw;
	height: 100vh;
	.area {
		box-shadow: 0rpx 0rpx 5rpx rgba(0,0,0,.2);
		width: 80%;
		height: 300rpx;
		// background-color: red;
		margin: 20rpx auto;
		border-radius: 20rpx;
		box-sizing: border-box;
		padding: 20rpx;
	}
	.btn {
		text-align: center;
		line-height: 85rpx;
		border-radius: 20rpx;
		width: 30%;
		height: 85rpx;
		color: #fff;
		margin: 0 auto;
		background-color: #000;
	}
}
</style>
