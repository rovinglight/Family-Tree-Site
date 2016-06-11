# 功能	
建立自己的姓氏，账户，密码。
建立完成后，可以设定自己家族的成员
建立成员后可以编辑自己和成员的辈分。 
# 网站组成
### 前端页面
index（主页，起链接各页的功能）
howToUse,whyWeCreateThis,whatIsFamilyTree（介绍性页面）
myFamilyTree（实现登陆功能）
register（实现注册功能）
account（账户信息）
viewFamilyTree（族谱浏览页面）
editFamilyTree（实现对族谱的编辑功能）
guideWithAccount（每一页的侧边栏，判断是否登陆，登录了显示用户名，点击会跳转至账户界面，未登录点击跳转至登陆界面）
### 后端页面
doEdit（接收editFamilyTree的表单对数据库进行添加删除，并跳转至viewFamilyTree）
doRegister（接收register页面的表单数据并加入数据库，跳转至myFamilyTree页面）
Conn（导入数据库驱动，储存数据库用户名、url、密码等数据供别页引用）
### 数据库设计
##### 数据库结构
数据库：FamilyTreeUser
familyMember
userInfo
##### 表内容
userInfo（按列展开）
id：(int)用以存放用户id，自动生成，不可重复，后台区分用户的唯一根据。
userName：(char(8))存放用户的用户名。
pwd:(int)：存放用户密码。
lastName:(char(8)):存放用户姓氏。
familyMember（按列展开）
id:（int）用以存放成员id，自动生成，不可重复，后台区分成员的唯一根据。
name：（char）存放成员姓名。
generation：（int）存放成员辈份。
user：（int）存放用户的id，以此来判断此成员属于哪一个用户。
