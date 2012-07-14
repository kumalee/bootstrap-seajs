bootstrap-seajs
===============

Make bootstrap's js files modular

支持linux，mac os

使用方法：

1. 下载bootstrap到本地

2. 拷贝Makefile文件到bootstrap的js目录

3. 运行Makefile文件：

  make single 将各个js文件模块化好，生成到当前目录的bootstrap-sea目录下
  
  make combine 将各个js合并，然后模块化，生成到当前目录的bootstrap-sea目录下

4. 大功告成，你可以拷贝这些js到你项目中使用了！具体用法详见demo