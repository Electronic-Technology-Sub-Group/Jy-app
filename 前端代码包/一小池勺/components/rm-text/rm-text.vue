<template>
  <view>
    <scroll-view scroll-y class="scroll-view" @scrolltolower="loadMoreSentences">
      <view v-for="(sentence, index) in sentences" :key="index" class="sentence-item">
        {{ sentence }}
      </view>
    </scroll-view>
  </view>
</template>

<script>
export default {
  data() {
    return {
      sentences: [], // 从后端获取的句子数据
      currentPage: 1, // 当前页数
      pageSize: 10, // 每页显示的句子数量
    };
  },
  mounted() {
    // 在页面加载时获取第一页句子数据
    this.fetchSentences()
  },
  methods: {
    fetchSentences() {
      // 使用uni.request或其他方法从后端获取句子数据
      // 将获取的数据追加到this.sentences中
      // 示例代码假设你的后端接口支持分页，根据实际情况进行修改
      const url = `your_backend_api?page=${this.currentPage}&pageSize=${this.pageSize}`
      uni.request({
        url: url,
        method: 'GET',
        success: (res) => {
          this.sentences = this.sentences.concat(res.data) // 追加数据
          this.currentPage++ // 下一页
        },
        fail: (err) => {
          console.error('Failed to fetch sentences', err)
        },
      });
    },
    loadMoreSentences() {
      // 滚动到底部时加载更多句子数据
      this.fetchSentences()
    },
  },
};
</script>

<style scoped>
/* 样式可以根据你的需求进行调整 */
.scroll-view {
  height: 100vh; /* 设置scroll-view的高度，使其占满整个视口 */
}

.sentence-item {
  padding: 20rpx;
  border-bottom: 1px solid #eee; /* 添加句子之间的分隔线 */
}
</style>