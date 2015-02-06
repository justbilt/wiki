---
title: "HelloSimiki"
date: 2015-02-02 10:33
---

# 欢迎使用 Cmd - 在线 Markdown 编辑阅读器

------

# 1.标题测试
## 标题2
### 标题3
#### 标题4
##### 标题5
###### 标题6


# 2.引用测试

> * 整理知识，学习笔记
> * 发布日记，杂文，所见所想
> * 撰写发布技术文稿（代码支持）
> * 撰写发布学术论文（LaTeX 公式支持）


# 3.代码高亮

## 3.1 行内代码高亮

这是一个行内代码高亮`int a =0;`


## 3.2 高亮一段代码

```python
@requires_authorization
class SomeClass:
    pass

if __name__ == '__main__':
    # A comment
    print 'hello world'
```

### 绘制表格

| 项目        | 价格   |  数量  |
| --------   | -----:  | :----:  |
| 计算机     | $1600 |   5     |
| 手机        |   $12   |   12   |
| 管线        |    $1    |  234  |


### 插入图片

![][1]






```
Traceback (most recent call last):
  File "/usr/local/bin/simiki", line 9, in <module>
    load_entry_point('simiki==1.2.4', 'console_scripts', 'simiki')()
  File "/Library/Python/2.7/site-packages/simiki/cli.py", line 245, in main
    execute(args)
  File "/Library/Python/2.7/site-packages/simiki/cli.py", line 236, in execute
    preview(configs["destination"])
  File "/Library/Python/2.7/site-packages/simiki/server.py", line 27, in preview
    httpd = Reuse_TCPServer(("", port), Handler)
  File "/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/SocketServer.py", line 419, in __init__
    self.server_bind()
  File "/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/SocketServer.py", line 430, in server_bind
    self.socket.bind(self.server_address)
  File "/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/socket.py", line 224, in meth
    return getattr(self._sock,name)(*args)
socket.error: [Errno 48] Address already in use
```

解决方案:

```
lsof -i:8000
结果:
COMMAND   PID USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
Python  XXX zxsk    4u  IPv4 0x65c0c8e6c646d80d      0t0  TCP *:irdmi (LISTEN)
```

找到Python对应的PID,干掉:
```
kill XXX
```


[1]: /image/QQ20150129-1.jpg

