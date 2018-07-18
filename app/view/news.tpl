{% extends "layout.tpl" %}

{% block content %}
<h2>{{ state }}</h2>
{# Restful API #}
<table width="80%">
  <thead>
    <tr>
      <th align="left">Name</th>
      <th align="left">Type</th>
      <th align="left">Descript</th>
      <th align="right">URL</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>新闻列表</td>
      <td>GET</td>
      <td>调用原生http模块 <a href="http://simu.eastmoney.com">天天基金网</a> 爬取的行情新闻列表</td>
      <td align="right"><a href="/api/v2/newsList">http://127.0.0.1:7001/api/v2/newsList</a></td>
    </tr>
    <tr>
      <td>新闻列表</td>
      <td>GET</td>
      <td>调用原生http模块 <a href="http://simu.eastmoney.com">天天基金网</a> 爬取的行情新闻列表</td>
      <td align="right"><a href="/api/v2/newsList">http://127.0.0.1:7001/api/v2/newsList</a></td>
    </tr>
    <tr>
      <td>新闻列表</td>
      <td>GET</td>
      <td>调用原生http模块 <a href="http://simu.eastmoney.com">天天基金网</a> 爬取的行情新闻列表</td>
      <td align="right"><a href="/api/v2/newsList">http://127.0.0.1:7001/api/v2/newsList</a></td>
    </tr>
  </tbody>
</table>
{# 异步请求渲染结果 #}
<hr>
<h2>从页面发起 AJAX 请求</h2>
<div id="sv-newsList"></div>
{# 发起AJAX请求获取接口数据并渲染 #}
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
  // 定义 NewsList 类
  var NewsList = function(opt) {
    this.URL = opt.url;
  }
  NewsList.prototype = {
    constructor: NewsList,
    render: function(DOM) {
      var self = this;
      this._getJSON(this.URL)
        .then(function(res){
          $(DOM).append(self._renderTable(res));
        });
    },
    _renderTable: function(data) {
      var tag =  '';
          tag += '<table border="1">';
          tag += this._renderBody(data);
          tag += '</table>';
      return tag;
    },
    _renderBody: function(data) {
      var tag =  '';
      for(var key in data) {
        tag += this._renderRow(data[key].id, data[key].text)
      };
      return tag;
    },
    _renderRow: function(id, text) {
      var tag =  '<tr>';
          tag += '<td>' + id + '</td>';
          tag += '<td>' + text + '</td>';
          tag += '</tr>';
      return tag;
    },
    _getJSON: function(url) {
      var dfd = new $.Deferred();
      $.get(url, function(res){
        if(res.code === 1){
          dfd.resolve(res.data);
        } else {
          console.error('ERROR', 'Request');
          dfd.reject(res.data);
        }
      });
      return dfd.promise();
    },
  }
  // 实例化组件
  var newsList = new NewsList({
    url: './api/v2/newsList'
  });
  newsList.render(document.getElementById('sv-newsList'));
</script>
{% endblock %}