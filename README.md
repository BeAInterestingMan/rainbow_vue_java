# rainbow_vue_jwt

1. 目的 使用 vue + springboot + shiro + jwt 搭建一个基本的RPAC骨架

2.思路
   
   1. 前端进行登陆访问，后台拦截未认证(无需认证请求不需要拦截，类似登陆，登出)请求，
      如果是/login登陆，后台controller判断一下，然后JWT生成token返回，同时将token保存在redis设置一个过期时间。
      前台拿到token  放在请求头里，所有请求都要携带token，后台拦截拿到token,进行解密，判断用户名和密码是否正确，token是否过期等。
      
   2.如果该请求未进行登陆认证，则拦截该请求。
