import { dgRequest } from "./Dgindex.js"

// 用户登录接口
// password 密码  username  账号
export function UserLogin(password, username) {
	return dgRequest.post({
		url: "/user/user/login",
		data: {
			password,
			username
		}
	})
}

// 用户注册接口
// username 账号 password 密码
export function UserRegiest(password, username) {
	return dgRequest.post({
		url: "/user/user/save",
		data: {
			password,
			username
		}
	})
}


// 用户修改密码接口
// oldPassword 旧密码  empId 用户 ID newPassword 新密码
export function UserChangePassword(newPassword, oldPassword) {
	return dgRequest.put({
		url: "/admin/employee/editPassword",
		data: {
			newPassword,
			oldPassword
		}
	})
}