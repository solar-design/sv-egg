'use strict';

const Controller = require('egg').Controller;

class AccountController extends Controller {
  /**
   * 接口-登录
   */
  async login() {
    const { username, password } = this.ctx.request.body;
    console.log(username, password);
    this.ctx.body = {
      code: 1,
      message: 'login success',
      data: { session: 'wj871287' },
    };
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
