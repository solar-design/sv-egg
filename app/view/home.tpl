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
      <td>用户登录</td>
      <td>POST</td>
      <td>携带{ userName, password }发起登录</td>
      <td align="right"><a href="/api/v2/Account/Login">http://127.0.0.1:7001/api/v2/Account/Login</a></td>
    </tr>
    <tr>
      <td>用户信息</td>
      <td>GET</td>
      <td>获取用户基本信息</td>
      <td align="right"><a href="/api/v2/Account/GetUserInfo">http://127.0.0.1:7001/api/v2/Account/GetUserInfo</a></td>
    </tr>
    <tr>
      <td>新闻列表</td>
      <td>GET</td>
      <td>调用原生http模块从-天天基金网-爬取行情新闻列表</td>
      <td align="right"><a href="/api/v2/News/GetNewsList">http://127.0.0.1:7001/api/v2/News/GetNewsList</a></td>
    </tr>
  </tbody>
</table>
{% endblock %}