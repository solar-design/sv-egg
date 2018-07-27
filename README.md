# sv-egg

A nodejs server dev for Solar Value

## Work Log

- 2018/07/26
  - 完善接口，`Restful` 化，理解 `CRUD` 后端接口设计
  - 理解安全威胁 `csrf` 防范，对 `POST` 请求带上 `_csrd` 字段的 `key` 值校验
   
## Git

``` git
git config user.email “wj871287@gmail.com”
```

## QuickStart

<!-- add docs here for user -->

see [egg docs][egg] for more detail.

### Development

```bash
$ npm i
$ npm run dev
$ open http://localhost:7001/
```

### Deploy

```bash
$ npm start
$ npm stop
```

### npm scripts

- Use `npm run lint` to check code style.
- Use `npm test` to run unit test.
- Use `npm run autod` to auto detect dependencies upgrade, see [autod](https://www.npmjs.com/package/autod) for more detail.


[egg]: https://eggjs.org