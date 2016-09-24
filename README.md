# Setup
- Local Dev Machine 配置
	+ Install [`localtunnel`](https://localtunnel.github.io/www/)
	+ Kick off your rails server
	+ `lt -p 3000 -s foobar`
	
- 公众号开发配置
	+ 登录[微信公众管理平台](https://mp.weixin.qq.com)
	+ 进入`开发者工具` => `公众平台测试帐号` => `接口配置信息`
	+ 设置URL `http://foobar.localtunnel.me/wechat` 和Token `blahblahblah` (公众号平台会ping你的local server, 它拿到了echo msg才会通过这个配置)
	+ 接着到`体验接口权限表` 的 `网页授权获取用户基本信息`, 修改成域名 `foobar.localtunnel.me` (别加http或者https prefix，不然会fail)

Happy coding