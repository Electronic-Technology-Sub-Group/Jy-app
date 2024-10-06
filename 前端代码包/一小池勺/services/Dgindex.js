import {baseUrl_b} from './config'
class DGRequest {
  constructor(baseURL) {
    this.baseURL = baseURL
  }
  request(options) {
    const { url } = options
    return new Promise((resolve, reject) => {
      uni.request({
        ...options,
		//配置请求头信息
		header: {
		  //设置用户访问的token信息
		  "authentication": uni.getStorageSync('token')
	     },
        url: this.baseURL + url,
        success: (res) => {
          resolve(res.data)
        },
        fail: (err) => {
          console.log("err:", err)
        }
      })
    })
  }
  get(options) {
    return this.request({ ...options, method: "get" })
  }
  post(options) {
    return this.request({ ...options, method: "post" })
  }
  put(options) {
  	  return this.request({ ...options, method: "put"})
  }
}

export const dgRequest = new DGRequest(baseUrl_b)