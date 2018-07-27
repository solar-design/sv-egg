'use strict';

const Controller = require('egg').Controller;

class AccountController extends Controller {
  /**
   * 接口-登录
   */
  async login() {
    const { username, password } = this.ctx.request.body;
    if (username === 'dengdeng@sail-fs.com' && password === 'wj871287') {
      this.ctx.body = {
        code: 1,
        message: 'success',
        data: { session: username },
      };
    } else {
      this.ctx.body = {
        code: 0,
        message: 'error:username or password is wrong',
        data: [],
      };
    }
  }
  /**
   * 接口-注销
   */
  async logout() {
    this.ctx.body = {
      code: 1,
      message: 'logout success',
      data: { session: 'wj871287' },
    };
  }
  /**
   * 接口-获取用户信息
   */
  async getUserInfo() {
    this.ctx.body = {
      code: 1,
      message: 'getUserInfo success',
      data: { session: 'wj871287' },
    };
  }
}
module.exports = AccountController;
