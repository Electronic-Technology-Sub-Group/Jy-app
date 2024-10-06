// count 格式化
export function formatCount(count) {
  count = Number(count)
  if (count >= 100000000) {
    return (count / 100000000).toFixed(1) + "亿"
  } else if (count >= 10000) {
    return (count / 10000).toFixed(1) + "万"
  } else {
    return count
  }
}

// 2 -> 02
// 24 -> 24
export function padLeft(time) {
  time = time + ""
  return ("00" + time).slice(time.length)
}

// time 进行格式化
// 100s -> 01:40 分钟:秒
export function formatTime(time) {
  // 0.将毫秒转换成秒钟
  time /= 1000
  // 1.获取时间
  var minute = Math.floor(time / 60)
  var second = Math.floor(time) % 60

  // 2.拼接字符串
  return padLeft(minute) + ":" + padLeft(second)
}