'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  router.get('/', controller.home.index);
  // 爬取新闻服务
  router.get('/news', controller.news.index);
  router.get('/api/v2/newsList', controller.news.newsList);
};
