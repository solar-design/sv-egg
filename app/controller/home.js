'use strict';

const Controller = require('egg').Controller;
class HomeController extends Controller {
  async index() {
    await this.ctx.render('home.tpl', { state: 'Restful API' });
  }
  async svapp() {
    await this.ctx.render('index.html');
  }
}

module.exports = HomeController;
