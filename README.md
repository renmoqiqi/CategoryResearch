# CategoryResearch

# 分类的好处 
把功能的实现分散到多个文件中 
便于多人共同开发完成一个类 
可以按需加载不能的分类

# 注意
分类是不能直接添加实例变量的，因为在运行期间，对象的内存已经确定，如果添加实例变量会破坏类的内部的布局。
分类添加实例变量可以通过关联对象解决

# 分类的构成：
类的名字
实例方法列表
类方法列表
所有的协议列表
所有的属性

# 分类会覆盖原来的方法
这个覆盖其实是两者存在的，只不过是分类的方法在原来类方法的前面被优先找到的

# 方法加载顺序
类的load方法先与其他分类load方法，优先于类别的其他方法,其他分类的load执行顺序和编译顺序有关。


# 参考链接

https://tech.meituan.com/DiveIntoCategory.html

https://blog.sunnyxx.com/2014/03/05/objc_category_secret/

https://nshipster.cn/associated-objects/
