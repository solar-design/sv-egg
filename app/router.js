'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  router.get('/', controller.home.index);
  router.get('/svapp', controller.home.svapp);
  // Account 用户信息
  router.post('/api/v2/Account/Login', controller.account.login);
  router.get('/api/v2/Account/Logout', controller.account.logout);
  router.get('/api/v2/Account/GetUserInfo', controller.account.getUserInfo);
  // News 新闻数据
  router.get('/news', controller.news.index);
  router.get('/api/v2/News/GetNewsList', controller.news.getNewsList);
};
