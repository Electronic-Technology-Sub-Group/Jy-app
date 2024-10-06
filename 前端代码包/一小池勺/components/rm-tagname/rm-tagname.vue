<template>
	<view>
		{{ item.name }}
	</view>
</template>

<script>
	export default {
		name:"rm-tagname",
		props: {
		  item: {
		    type: String,
		    required: true
		  }
		},
		data() {
			return {
				
			}
		}
	}
</script>

<style lang="scss" scoped>

</style>