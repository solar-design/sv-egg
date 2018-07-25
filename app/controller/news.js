'use strict';

const Controller = require('egg').Controller;
class NewsController extends Controller {
  async index() {
    await this.ctx.render('news.tpl', { state: '服务端渲染' });
  }
  async getNewsList() {
    const newsData = await this.ctx.service.news.newsList(2);
    this.ctx.body = {
      code: 1,
      message: 'success',
      data: newsData,
    };
  }
}
module.exports = NewsController;
