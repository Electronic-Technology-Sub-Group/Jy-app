<template>
	<view class="container">
		<view class="box">
			<view class="left">
				昵称
			</view>
			<view class="right">
				<input class="inp" type="text" v-model="value">
			</view>
		</view>
		<view class="btn" @click="changeName">
			确认修改
		</view>
	</view>
</template>


<script>
import { mapState } from 'vuex'
import { modifyUserInfoName } from '../../services/AboutUserInfo.js'
	export default {
		computed: {
		  ...mapState('user_info', ['UserAvatarName']),
		  value: {
			get() {
			  return this.UserAvatarName;
			},
			set(newValue) {
			  this.$store.commit('user_info/UpdateUserAvatarName', newValue);
			}
		  }
		},
		data() {
			return {
				userId: null,
				vlaue: null
			}
		},
		mounted() {
			// 从本地缓存中获取数据
			uni.getStorage({
			  key: 'userId',
			  success:  (res) => {
			    console.log(res.data)
					this.userId = res.data
			  }
			})
		},
		methods: {
			async changeName() {
			  uni.showModal({
			    title: '提示',
			    content: '确认修改？',
			    success: async (res) => {
			      if (res.confirm) {
					const res = await modifyUserInfoName(this.value,this.userId)
					console.log(res)
			        setTimeout(() => {
			          if (res.code === 200) {
			            uni.switchTab({
			              url: "../../pages/myinfo/myinfo"
			            });
			          }
			        }, 1500);
			      } else if (res.cancel) {
			        console.log('用户点击取消');
			      }
			    }
			  });
			},
	    },
	}
</script>
<style lang="scss">
.container {
	width: 100vw;
	height: 100vh;
	position: relative;
	// background-color: red; // 背景板
	.box {
		padding-top: 40rpx;
		width: 80%;
		margin: 0 auto;
		display: flex;
		padding-bottom: 30rpx;
		box-sizing: border-box;
		border-bottom: 1rpx solid #ccc;
		justify-content: space-between;

		.left {}

		.right {
			display: flex;
			align-items: center;

			.inp {
				width: 150rpx;
				// background-color: greenyellow;
			}
		}
	}
	.btn {
		position: absolute;
		bottom: 30rpx;
		left: 50%;
		transform: translateX(-50%);
		background-color: #000;
		padding: 40rpx 100rpx;
		box-sizing: border-box;
		border-radius: 30rpx;
		color: #fff;
	}
}
</style>