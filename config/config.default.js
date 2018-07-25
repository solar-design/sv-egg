'use strict';
const path = require('path');

module.exports = appInfo => {
  const config = exports = {};

  // use for cookie sign key, should change to your own and keep security
  config.keys = appInfo.name + '_1531730490297_8102';

  // add your config here
  config.middleware = [];

  // add view tpl
  config.view = {
    mapping: {
      '.tpl': 'nunjucks',
    },
    defaultViewEngine: 'nunjucks',
    root: [
      path.join(appInfo.baseDir, 'app/view'),
      path.join(appInfo.baseDir, 'app/public'),
    ].join(','),
  };

  config.static = {
    prefix: '/public/',
    dir: path.join(appInfo.baseDir, 'app/public'),
  };

  // 天天基金网-私募基金板块
  config.privateEquity = {
    serverUrl: 'http://simu.eastmoney.com',
  };

  return config;
};
