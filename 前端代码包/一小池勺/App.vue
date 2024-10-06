<script>
	export default {
		onLaunch: function() {
			console.log('App Launch')
		},
		onShow: function() {
			console.log('App Show')
		},
		onHide: function() {
			console.log('App Hide')
		}
	}
</script>

<style>
/*每个页面公共css */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
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
</style>
