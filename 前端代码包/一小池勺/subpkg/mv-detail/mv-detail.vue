<template>
	<view class="mv-detail">
		<video 
		  class="video" 
		  :src="mvUrl" 
		  autoplay
		  referrer-policy="origin"
		/>
	</view>
</template>

<script>
	import { getMVUrl } from '../../services/video.js'
	export default {
		data() {
			return {
				id: 0,
				mvUrl: ""
			}
		},
		mounted() {
			console.log(this.$mp.query)
			this.fetchVideoUrl(this.$mp.query.id)
		},
		methods: {
			async fetchVideoUrl(id) {
				let { data: { url } } = await getMVUrl(id)
				console.log(url)
				this.mvUrl = url
			}
		}
	}
</script>

<style lang="scss" scoped>
.mv-detail {
	width: 100vw;
	height: 100vh;
	.video {
		width: 100%;
		height: 100%;
	}
}
</style>
