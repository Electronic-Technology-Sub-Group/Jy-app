<template>
    <view class="rm-search" @click="toSearchView">
        <image src="../../static/rm-search.png" mode="" style="width: 60rpx;height: 60rpx;"></image>
        <text class="searchText" :class="{animation: animation}">{{ searchText[index] }}</text>
    </view>
</template>

<script>
export default {
    name:"rm-search",
    data() {
        return {
            searchText: [
                '近期热搜 “岁月”',
                '近期热搜 “青春”',
                '近期热搜 “励志”',
                '近期热搜 “伤感”',
                '近期热搜 “恋爱”',
                '近期热搜 “季节”',
                '近期热搜 “人间值得”',
                '近期热搜 “意义”',
                '近期热搜 “第一次”',
                '近期热搜 “遇见”',
                '近期热搜 “歌词”',
                '近期热搜 “时光”'
            ],
            index: 0,
            animation: false,
        }
    },
    mounted() {
        this.searchTextLoop()
    },
    methods: {
        searchTextLoop() {
            setInterval(() => {
                this.animation = true
                setTimeout(() => {
                    this.animation = false
                    this.index = (this.index + 1) % this.searchText.length
                }, 280)
            }, 4000)
        },
		toSearchView() {
			uni.navigateTo({
				url: "/subpkg/search-view/search-view"
			})
		}
    }
}
</script>

<style lang="scss" scoped>
.rm-search {
    position: relative;
    display: flex;
    top: 30rpx;
    left: 50%;
    align-items: center;
    transform: translateX(-50%);
    height: 80rpx;
    width: 90vw;
    padding: 0 0 0 40rpx;
    background-color: #fff;
    border-radius: 50rpx;
    box-shadow: 0px 0px 10px 2px rgba(0, 0, 0, 0.1);

    .searchText {
        font-size: smaller;
        margin-left: 20rpx;
        color: #ccc;
        transition: transform 1s;
        animation-fill-mode: forwards;
    }

    .searchText.animation {
        transform: translateY(-10px);
        animation-name: slideUp;
        animation-duration: 0.5s;
        animation-timing-function: linear;
    }
}

@keyframes slideUp {
    from {
        transform: translateY(100%);
        opacity: 0;
    }
    to {
        transform: translateY(0);
        opacity: 1;
    }
}
</style>