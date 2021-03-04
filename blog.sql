/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50515
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50515
 File Encoding         : 65001

 Date: 04/03/2021 22:53:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `category` int(20) NOT NULL,
  `title` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `article_abstract` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '摘要',
  `content` varchar(8000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` datetime DEFAULT NULL,
  `image` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `article_category`(`category`) USING BTREE,
  CONSTRAINT `article_category` FOREIGN KEY (`category`) REFERENCES `category` (`categoryid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (23, 1, '方法的重载和数组', '注意： 省略写法不能用拆分写法', '<h3 id=\"h3-javase-\"><a name=\"JAVASE-方法的重载和数组\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>JAVASE-方法的重载和数组</h3><p>对于功能类似的方法来说，因为参数列表不一样，却需要记住那么多不同的方法名称，太麻烦了。</p>\n<p>方法的重载（overload）：多个方法的名称一样，但是参数列表不一样。<br>好处：只需要记住唯一一个方法的名称，就可以实现类似的多个功能。<br>方法重载相关因素：参数个数不同，参数类型不同，参数的多类型顺序不同。<br>方法重载无关因素：与参数的名称无关，与方法的返回值类型无关。</p>\n<hr>\n<p>数组的概念：是一种容器，可以同时存放多个数据值。</p>\n<p>特点：数组是一种引用数据类型、数组当中的多个数据，类型必须统一、数组的长度在程序运行期间不可改变。两种常见的初始化方式：动态初始化（指定长度）、静态初始化（指定内容）。<br>int[] array = new int[10]<br>int[] array = new int{1,2,3,4,5,6}<br>省略格式：int[] array = {1,2,3,4,5,6}<br>拆分写法：int[] array;</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"pln\">              array</span><span class=\"pun\">=</span><span class=\"kwd\">new</span><span class=\"pln\"> </span><span class=\"kwd\">int</span><span class=\"pun\">[]{</span><span class=\"lit\">1</span><span class=\"pun\">,</span><span class=\"lit\">2</span><span class=\"pun\">,</span><span class=\"lit\">3</span><span class=\"pun\">,</span><span class=\"lit\">4</span><span class=\"pun\">,</span><span class=\"lit\">5</span><span class=\"pun\">,</span><span class=\"lit\">6</span><span class=\"pun\">};</span></code></li><li class=\"L1\"><code><span class=\"pln\">              array</span><span class=\"pun\">=</span><span class=\"kwd\">new</span><span class=\"pln\"> </span><span class=\"kwd\">int</span><span class=\"pun\">[</span><span class=\"lit\">10</span><span class=\"pun\">];</span></code></li></ol></pre><p>注意： 省略写法不能用拆分写法</p>\n', '2020-05-27 18:36:48', '/img/f5f6cdb2-4194-4499-ad3d-1302f2159488.jpg');
INSERT INTO `article` VALUES (25, 1, 'JAVASE-匿名对象', '匿名对象：只有右边的对象，没有左边的名字和赋值运算符。', '<h3 id=\"h3-javase-\"><a name=\"JAVASE-匿名对象\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>JAVASE-匿名对象</h3><p>匿名对象：只有右边的对象，没有左边的名字和赋值运算符。<br>new 类名称（）；</p>\n<p>注意：匿名对象只能使用唯一的一次，下次再用不得不再创建一个新对象。</p>\n<p>使用建议：如果确定有一个对象只需要使用一次，就可以用匿名对象。</p>\n', '2020-05-27 18:49:33', '/img/02954b72-e171-4c18-b6e5-3c54751cd278.jpg');
INSERT INTO `article` VALUES (26, 1, 'JVASE-String', '数组的长度不可以发生改变。ArrayList 的长度是可以改变的。对于Array来说，有一个尖括号<E>代表泛型。泛型：也就是装在集合当中的所有元素，全都是统一的什么类型。泛型只能是引用类型，不能是基本类型。', '<h1 id=\"h1-jvase-string\"><a name=\"JVASE-String\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>JVASE-String</h1><p>数组的长度不可以发生改变。ArrayList 的长度是可以改变的。对于Array来说，有一个尖括号<e>代表泛型。泛型：也就是装在集合当中的所有元素，全都是统一的什么类型。泛型只能是引用类型，不能是基本类型。</e></p>\n<h2 id=\"h2-string\"><a name=\"String\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>String</h2><p>java程序中的所有字符串字面值都是String的实例实现。也就是说程序中所有的双引号字符串，都是String类的对象，没有new，也照样是。</p>\n<h3 id=\"h3-u5B57u7B26u4E32u7279u70B9\"><a name=\"字符串特点\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>字符串特点</h3><p>1.字符串的内容用不可变。<br>2.正是因为字符串不可改变，所有字符串是可以共享使用的。<br>3.字符串效果相当于是char[]字符数组，但是底层实现原理是byte[]字节数组。</p>\n<h3 id=\"h3-u521Bu5EFAu65B9u5F0F\"><a name=\"创建方式\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>创建方式</h3><p>public String()：创建一个空白字符串，不含任何内容</p>\n<p>String str = new String();</p>\n<p>public String(char [] array)：根据字符数组的内容创建字符串</p>\n<p>char [] chararray = {‘a’,’b’};</p>\n<p>String str=new String(chararray);</p>\n<p>public String(byte[] array)：根据字节数组的内容创建字符串</p>\n<p>char [] bytearray = {97,98};</p>\n<p>String str=new String(bytearray);</p>\n<p>直接创建：String str =”ab”；</p>\n<h3 id=\"h3-u5B57u7B26u4E32u5E38u91CFu6C60\"><a name=\"字符串常量池\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>字符串常量池</h3><p>程序当中直接写上的双引号字符串，就在字符串常量池中。</p>\n<p>String str1=”abc”；</p>\n<p>String str2=”abc”;</p>\n<p>str1==str2  //true   地址值相等</p>\n<p>==：基本类型比较值，引用类型比较地址</p>\n', '2020-05-27 18:58:05', '/img/d1652f5e-a5d8-4208-9734-77410f964a6f.jpg');
INSERT INTO `article` VALUES (28, 1, 'JAVASE-File', '文件和目录路劲名的抽象表示形式。java把电脑中的文件和文件夹封装为一个File类，我们可以使用File类对文件和文件夹进行操作。创建文件/文件夹,删除文件/文件夹,获取文件/文件夹,判断文件/文件夹是否存在,对文件夹进行遍历,获取文件的大小。', '<h1 id=\"h1-java-io-file-\"><a name=\"java.io.File类\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>java.io.File类</h1><p>文件和目录路劲名的抽象表示形式。java把电脑中的文件和文件夹封装为一个File类，我们可以使用File类对文件和文件夹进行操作。创建文件/文件夹,删除文件/文件夹,获取文件/文件夹,判断文件/文件夹是否存在,对文件夹进行遍历,获取文件的大小。</p>\n<h3 id=\"h3-u7CFBu7EDFu4E0Eu6587u4EF6\"><a name=\"系统与文件\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>系统与文件</h3><p>File类是一个与系统无关的类，任何的操作系统都可以使用。<br>window pathSeparator(路径分隔符):；separator(文件分隔符)：\\<br>inux pathSeparator(路径分隔符):\\  separator(文件分隔符)：/</p>\n<h3 id=\"h3-file-\"><a name=\"File类构造方法：\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>File类构造方法：</h3><p>File(String pathname):通过将给定路径名字字符串转换为抽象路径名来创建一个File实例。<br>File(String parent,String child):根据parent路径名字字符串和child路径名字字符串创建一个新File实例。<br>参数：父路径和子路径<br>把路径分成两部分-&gt;灵活<br>File(File parent,String child):根据parent路径名字字符串和child路径名字字符串创建一个新File实例。</p>\n<h2 id=\"h2--\"><a name=\"常用方法：\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>常用方法：</h2><h3 id=\"h3--\"><a name=\"获取方法：\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>获取方法：</h3><p>public String getAbsoluPath():返回File的绝对路径名字符串<br>public String getPath():将此File转换为路径名字符串<br>public String getNAme():返回由此File表示的文件或目录的名称<br>public long length():返回由此File表示的文件长度。（字节单位）</p>\n<h3 id=\"h3--\"><a name=\"判断方法：\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>判断方法：</h3><p>public boolean exists():此File表示的文件或目录是否实际存在。<br>public boolean isDirectory():此File表示是否为目录。<br>public boolean isFile():此File表示是否为文件。</p>\n<h3 id=\"h3--\"><a name=\"创建方法：\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>创建方法：</h3><p>public boolean createNewFile():当且仅当有该名称的文件尚不存在时，创建一个空文件。<br>public boolean delete():删除由此File表示的文件或目录<br>public boolean mkdir():创建由此File表示的目录<br>public boolean mkdirs():创建由此File表示的目录，包括任何必须但不存在的父目录。</p>\n<h3 id=\"h3--\"><a name=\"遍历方法：\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>遍历方法：</h3><p>public String[] list():返回一个String数组，表示File目录的所有文件或目录<br>public File[] listFiles():返回一个File数组，表示该File目录的所有的子文件或目录。</p>\n', '2020-05-27 19:17:41', '/img/c7fc7402-2b73-4aa4-87d3-f40f19d6f3a1.jpg');
INSERT INTO `article` VALUES (29, 1, 'myabtis 自定义sql遇到的问题', 'org.apache.ibatis.binding.BindingException: Invalid bound statement (not found)问题，即在mybatis中dao接口与mapper配置文件在做映射绑定的时候出现问题，简单说，就是接口与xml要么是找不到，要么是找到了却匹配不到。', '<p>org.apache.ibatis.binding.BindingException: Invalid bound statement (not found)问题，即在mybatis中dao接口与mapper配置文件在做映射绑定的时候出现问题，简单说，就是接口与xml要么是找不到，要么是找到了却匹配不到。<br>Mapper接口开发需要遵循以下规范：</p>\n<ol>\n<li><p>Mapper.xml文件中的namespace与mapper接口的类路径相同。</p>\n</li><li><p>Mapper接口方法名和Mapper.xml中定义的每个statement的id相同</p>\n</li><li><p>Mapper接口方法的输入参数类型和mapper.xml中定义的每个sql 的parameterType的类型相同</p>\n</li><li><p>Mapper接口方法的输出参数类型和mapper.xml中定义的每个sql的resultType的类型相同</p>\n</li></ol>\n<h3 id=\"h3--com-bwai-mapper-com-bwai-mapper-com-bwai-mapper-\"><a name=\"创建的包名是com.bwai.mapper，它在这里不是一级一级的创建文件夹而是创建了一个com.bwai.mapper名字的一个包，所以需要com/bwai/mapper 这样创建\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>创建的包名是com.bwai.mapper，它在这里不是一级一级的创建文件夹而是创建了一个com.bwai.mapper名字的一个包，所以需要com/bwai/mapper 这样创建</h3>', '2020-05-27 19:56:05', '/img/48aab616-18fd-49e6-b78a-2c9c8b00ad8f.jpg');
INSERT INTO `article` VALUES (30, 1, 'JAVASE-IO流', 'IO：Java对数据的操作是通过流的方式，IO流用来处理设备之间的数据传输，上传文件和下载文件，Java用于操作流的对象都在IO包中。', '<p> 输入流 和 输出流</p>\n<p>字节流：字节输入流InputStream            字节输出流OutputStream</p>\n<p>字符流：字符输入流Reader                    字符输出流Writer</p>\n<p>一切皆为字节</p>\n<p>使用步骤：</p>\n<p>1.创建流对象（传入要写入数据的目的地参数可以是String路径或File对象）</p>\n<p>创建流对象会根据传入的参数（路径/File）创建一个空的文件</p>\n<p>2.写入数据</p>\n<p>3.关闭流释放资源</p>\n<p>缓冲流：<br>缓冲流，也叫高效流，是对4个基本的FileXxx流的增强，所以也是4个流，按照数据类型分类：</p>\n<p>字节缓冲流：BufferredInputStream,BufferedOutStream</p>\n<p>字符缓冲流:BufferedReader,BufferedWriter</p>\n<p>原理：缓冲流的基本原理，是在创建流对象时，会创建一个内置的默认大小的缓冲区数组，通过缓冲区读写，减少系统IO次数，从而提高读写的效率。</p>\n', '2020-05-30 13:01:23', '/img/b2e386bd-bb09-4565-99d0-ab59c8a99e08.jpg');
INSERT INTO `article` VALUES (31, 2, 'Vue', '如果不使用 Vue, 那么就会用到 JS 或者 JQuery，通过操作 HTML DOM 的方式，把数据显示上去。\r\n如果使用Vue, 那么仅仅需要提供数据，以及数据要绑定到的元素的id,就行了,不需要显式地操作HTML DOM。', '<h2 id=\"h2--vue-\"><a name=\"什么是 Vue？\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>什么是 Vue？</h2><p>考虑这个需求： 我们要把一个 json对象的数据，显示到一个元素上去。<br>如果不使用 Vue, 那么就会用到 JS 或者 JQuery，通过操作 HTML DOM 的方式，把数据显示上去。<br>如果使用Vue, 那么仅仅需要提供数据，以及数据要绑定到的元素的id,就行了,不需要显式地操作HTML DOM。<br>以下就用代码来表示这两种方式，通过比较，就知道Vue 是做什么的了。</p>\n<h3 id=\"h3-js-\"><a name=\"JS的方式\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>JS的方式</h3><ol>\n<li>首先准备一个div元素，它其实就是视图</li><li>然后在js代码中准备一个json数据。</li><li>接着通过 原生的js 获取 div 对应的 html dom</li><li>最后把 json 数据赋给 html dom，就导致 div 里显示 英雄的名称了<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code class=\"lang-javascript\"><span class=\"pun\">&lt;</span><span class=\"pln\">div id</span><span class=\"pun\">=</span><span class=\"str\">\"div1\"</span><span class=\"pun\">&gt;</span></code></li><li class=\"L1\"><code class=\"lang-javascript\"><span class=\"pun\">&lt;/</span><span class=\"pln\">div</span><span class=\"pun\">&gt;</span></code></li><li class=\"L2\"><code class=\"lang-javascript\"><span class=\"pun\">&lt;</span><span class=\"pln\">script</span><span class=\"pun\">&gt;</span></code></li><li class=\"L3\"><code class=\"lang-javascript\"><span class=\"com\">//准备数据</span></code></li><li class=\"L4\"><code class=\"lang-javascript\"><span class=\"kwd\">var</span><span class=\"pln\"> gareen </span><span class=\"pun\">=</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"str\">\"name\"</span><span class=\"pun\">:</span><span class=\"str\">\"盖伦\"</span><span class=\"pun\">,</span><span class=\"str\">\"hp\"</span><span class=\"pun\">:</span><span class=\"lit\">616</span><span class=\"pun\">};</span></code></li><li class=\"L5\"><code class=\"lang-javascript\"><span class=\"com\">//获取 html dom</span></code></li><li class=\"L6\"><code class=\"lang-javascript\"><span class=\"kwd\">var</span><span class=\"pln\"> div1 </span><span class=\"pun\">=</span><span class=\"pln\"> document</span><span class=\"pun\">.</span><span class=\"pln\">getElementById</span><span class=\"pun\">(</span><span class=\"str\">\"div1\"</span><span class=\"pun\">);</span></code></li><li class=\"L7\"><code class=\"lang-javascript\"><span class=\"com\">//显示数据</span></code></li><li class=\"L8\"><code class=\"lang-javascript\"><span class=\"pln\">div1</span><span class=\"pun\">.</span><span class=\"pln\">innerHTML</span><span class=\"pun\">=</span><span class=\"pln\"> gareen</span><span class=\"pun\">.</span><span class=\"pln\">name</span><span class=\"pun\">;</span></code></li><li class=\"L9\"><code class=\"lang-javascript\"><span class=\"pun\">&lt;/</span><span class=\"pln\">script</span><span class=\"pun\">&gt;</span></code></li></ol></pre>\n<h3 id=\"h3-js-\"><a name=\"js方式的问题\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>js方式的问题</h3>js 方式有问题吗？ 没问题。 不过敏锐的同学会意识到， html dom其实只是手段，我们真正想要的，就是数据，显示在元素上。而vue.js 就是用来解决这个问题的。<br>下面请看vue.js 的做法。<h3 id=\"h3-vue-\"><a name=\"VUE 的方式\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>VUE 的方式</h3></li><li>首先导入 vue.js 要用到的库： vue.min.js. 这里这个库我是放在网站上的，自己练习的同学，可以从右上角下载一个，方便自己本地用。<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code class=\"lang-javascript\"><span class=\"pun\">&lt;</span><span class=\"pln\">script src</span><span class=\"pun\">=</span><span class=\"str\">\"http://how2j.cn/study/vue.min.js\"</span><span class=\"pun\">&gt;&lt;/</span><span class=\"pln\">script</span><span class=\"pun\">&gt;</span></code></li></ol></pre>\n</li><li>同样准备一个div元素，其id是div1.</li><li>在js中准备json数据 gareen</li><li>创建一个Vue对象。 这个Vue对象就把数据 gareen和 视图 div1 关联起来了</li></ol>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code class=\"lang-javascript\"><span class=\"kwd\">new</span><span class=\"pln\"> </span><span class=\"typ\">Vue</span><span class=\"pun\">({</span></code></li><li class=\"L1\"><code class=\"lang-javascript\"><span class=\"pln\">  el</span><span class=\"pun\">:</span><span class=\"pln\"> </span><span class=\"str\">\'#div1\'</span><span class=\"pun\">,</span></code></li><li class=\"L2\"><code class=\"lang-javascript\"><span class=\"pln\">  data</span><span class=\"pun\">:</span><span class=\"pln\"> </span><span class=\"pun\">{</span></code></li><li class=\"L3\"><code class=\"lang-javascript\"><span class=\"pln\">    message</span><span class=\"pun\">:</span><span class=\"pln\"> gareen</span></code></li><li class=\"L4\"><code class=\"lang-javascript\"><span class=\"pln\"> </span><span class=\"pun\">}</span></code></li><li class=\"L5\"><code class=\"lang-javascript\"><span class=\"pun\">})</span></code></li></ol></pre>\n<ol>\n<li>在视图div中，就可以通过如下方式把数据取出来了。<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code class=\"lang-javascript\"><span class=\"pun\">{{</span><span class=\"pln\">gareen</span><span class=\"pun\">.</span><span class=\"pln\">name</span><span class=\"pun\">}}</span></code></li></ol></pre>\n这种方式 html dom对开发人员就是透明的了。</li></ol>\n', '2020-05-30 13:22:26', '/img/e5327765-a801-4b6f-8046-cab40a63abca.jpg');
INSERT INTO `article` VALUES (32, 2, 'JSON', 'JSON JavaScript 对象表示法（JavaScript Object Notation） 是一种存储数据的方式。', '<h1 id=\"h1-json\"><a name=\"JSON\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>JSON</h1><p>JSON JavaScript 对象表示法（JavaScript Object Notation） 是一种存储数据的方式。</p>\n<h3 id=\"h3--json-\"><a name=\"创建JSON对象\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>创建JSON对象</h3><p>var gareen = {“name”:”盖伦”,”hp”:616};<br>这样就创建了一个JSON 对象<br>JSON对象由 名称/值对组成 名称和值之间用冒号:隔开<br>名称必须用双引号” 包含起来<br>值可以是任意javascript数据类型，字符串，布尔，数字 ，数组甚至是对象<br>不同的名称/值对之间用 逗号 , 隔开</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code class=\"lang-javascript\"><span class=\"pun\">&lt;</span><span class=\"pln\">script</span><span class=\"pun\">&gt;</span></code></li><li class=\"L1\"><code class=\"lang-javascript\"><span class=\"kwd\">var</span><span class=\"pln\"> gareen </span><span class=\"pun\">=</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"str\">\"name\"</span><span class=\"pun\">:</span><span class=\"str\">\"盖伦\"</span><span class=\"pun\">,</span><span class=\"str\">\"hp\"</span><span class=\"pun\">:</span><span class=\"lit\">616</span><span class=\"pun\">};</span></code></li><li class=\"L2\"><code class=\"lang-javascript\"><span class=\"pln\">document</span><span class=\"pun\">.</span><span class=\"pln\">write</span><span class=\"pun\">(</span><span class=\"str\">\"这是一个JSON对象: \"</span><span class=\"pun\">+</span><span class=\"pln\">gareen</span><span class=\"pun\">);</span></code></li><li class=\"L3\"><code class=\"lang-javascript\"><span class=\"pun\">&lt;/</span><span class=\"pln\">script</span><span class=\"pun\">&gt;</span></code></li></ol></pre>\n<h3 id=\"h3--json-\"><a name=\"访问JSON对象\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>访问JSON对象</h3><p>通过 点. 访问JSON对象的属性</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code class=\"lang-javascript\"><span class=\"pun\">&lt;</span><span class=\"pln\">script</span><span class=\"pun\">&gt;</span></code></li><li class=\"L1\"><code class=\"lang-javascript\"><span class=\"kwd\">var</span><span class=\"pln\"> gareen </span><span class=\"pun\">=</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"str\">\"name\"</span><span class=\"pun\">:</span><span class=\"str\">\"盖伦\"</span><span class=\"pun\">,</span><span class=\"str\">\"hp\"</span><span class=\"pun\">:</span><span class=\"lit\">616</span><span class=\"pun\">};</span></code></li><li class=\"L2\"><code class=\"lang-javascript\"></code></li><li class=\"L3\"><code class=\"lang-javascript\"><span class=\"pln\">document</span><span class=\"pun\">.</span><span class=\"pln\">write</span><span class=\"pun\">(</span><span class=\"str\">\"英雄名称: \"</span><span class=\"pln\"> </span><span class=\"pun\">+</span><span class=\"pln\"> gareen</span><span class=\"pun\">.</span><span class=\"pln\">name </span><span class=\"pun\">+</span><span class=\"pln\"> </span><span class=\"str\">\"&lt;br&gt;\"</span><span class=\"pun\">);</span></code></li><li class=\"L4\"><code class=\"lang-javascript\"><span class=\"pln\">document</span><span class=\"pun\">.</span><span class=\"pln\">write</span><span class=\"pun\">(</span><span class=\"str\">\"英雄血量: \"</span><span class=\"pln\"> </span><span class=\"pun\">+</span><span class=\"pln\"> gareen</span><span class=\"pun\">.</span><span class=\"pln\">hp </span><span class=\"pun\">+</span><span class=\"pln\"> </span><span class=\"str\">\"&lt;br&gt;\"</span><span class=\"pun\">);</span></code></li><li class=\"L5\"><code class=\"lang-javascript\"><span class=\"pun\">&lt;/</span><span class=\"pln\">script</span></code></li></ol></pre>\n', '2020-05-30 13:32:30', '/img/b2806a39-5db6-452f-b485-c84ee2a78008.jpg');
INSERT INTO `article` VALUES (33, 3, 'MySQL学习笔记', '查询员工姓名，工资 的投影\r\nselect ename,sal from emp', '<p><strong>选择（行) 投影（列)</strong><br>查询员工姓名，工资 的投影<br>select ename,sal from emp</p>\n<p><strong>查询员工信息(用select 查询对应列)</strong><br>其中 <em> 为通配符代表 数据表中所有的列<br>from 数据来源 （数据源）<br>方法一 （实际开发常用）select empno,ename,job,mgr,hiredate,sal,comm,deptno from emp<br>方法二 （简便但是容易出错 ，工作之后不建议使用）select </em> from emp</p>\n<p><strong>查询部门表信息</strong><br>方法一 select deptno,dname,loc from dept<br>方法二 select * from dept</p>\n<p><strong>mysql大小写不敏感 可以全大写，全小写，大小写混合用<br>推荐大家 全小写 或者 关键词大写，列名，表名小写。<br>查询 员工的员工编号，员工姓名，工资，部门编号</strong><br>select empno,ename,sal,deptno from emp</p>\n<p><strong>算术运算符(＋ － * / %)</strong><br>%为取模运算(取余数)<br>取模运算的结果的正负取决于等式前边的数的符号</p>\n<p><strong>消除重复行</strong><br>关键词：distinct</p>\n<p><strong>查看表结构</strong><br>desc 表名<br>也可以使用navicate 右键单击表 —设计表 查看表结构</p>\n<p><strong>查看限定数据行</strong><br>关键词:where<br>例:查看10部门人员信息<br>select * from emp where deptno=10</p>\n<p><strong>查询在某一范围之间的数据</strong><br>用between a and b(包括a和b)</p>\n<p><strong>模糊查询</strong><br>关键词:like<br>两种通配符: <em> %<br>% 代表一个或多个字符\n</em> 代表一个字符<br>例：查询首字母为S的员工信息<br>select <em> from emp where ename like ‘S%’<br>例：查询名字中第二个字母为C的员工信息<br>select </em> from emp where ename like ‘<em>C%’<br>特殊情况 查询名字中有</em>的员工信息需要先让<em>表示其原意，而不再表示任意一个字符用关键词escape，让其后面的有特殊意义的字符表示其本身的意思<br>select * from emp where ename like ‘%<a href=\"https://github.com/_\" title=\"@_\" class=\"at-link\">@_</a></em>%’ escape’@’(此时@相当于Java中的/起到转义字符的作用)</p>\n<p><strong>判断数据为空</strong><br>只能用is null，不能用＝</p>\n<p><strong>逻辑运算符(and or not</strong>)<br>and (与) 一假为假<br>or (或) 一真为真<br>not (取反) 真变假，假变真<br>优先级：not &gt; and &gt; or</p>\n<p><strong>排序<em>**</em></strong><br>关键词：order by (默认从小到大排序)<br>Asc：升序排序(从小到大)(可以省略)<br>Desc：降序排序(从大到小)<br>例：根据员工工资，将员工信息从小到大排序<br>select * from emp order by sal asc(asc可省略)<br>查询结果中如果有null，升序排序时，null排在最上面，降序排序时，null排在最下面<br>多列排序时，order by 列名 排序方式，列名 排序方式…</p>\n<p><strong>限制查询(分页查询)</strong><br>关键词：limit [start],length(起始数据下标，每页几条)<br>例：从第一条数据开始，显示四条<br>select <em> from emp limit 0,4<br>分页规律 每页显示m条数据，想要显示第n页<br>limit (n-1)</em>m,m</p>\n', '2020-05-30 13:46:10', '/img/eac3cab0-49fc-4ddf-9c27-3d01c1023871.jpg');
INSERT INTO `article` VALUES (34, 3, '666', '数据库', '<p>数据库</p>\n', '2020-12-15 13:37:46', '/img/moren.jpg');
INSERT INTO `article` VALUES (35, 3, '666', '数据库', '<p>数据库</p>\n', '2020-12-15 13:37:52', '/img/moren.jpg');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`categoryid`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `id`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'java');
INSERT INTO `category` VALUES (2, '前端');
INSERT INTO `category` VALUES (3, '数据库');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `operation` int(255) NOT NULL,
  `content` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `commenttime` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `article_comment`(`article_id`) USING BTREE,
  INDEX `user_comment`(`user_id`) USING BTREE,
  CONSTRAINT `article_comment` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_comment` FOREIGN KEY (`user_id`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (18, 23, 2020003, 2, '萨达萨达', '2020-5-29 14:54:38');
INSERT INTO `comment` VALUES (19, 23, 2020003, 2, '哈哈哈哈', '2020-5-29 15:2:10');
INSERT INTO `comment` VALUES (20, 23, 2020003, 2, '123456789', '2020-5-29 15:3:47');
INSERT INTO `comment` VALUES (21, 23, 2020003, 2, 'iu呼呼', '2020-5-29 15:6:43');
INSERT INTO `comment` VALUES (22, 23, 2020002, 2, '双击666', '2020-5-29 15:30:1');
INSERT INTO `comment` VALUES (23, 23, 2020002, 2, '写的太棒了', '2020-5-29 15:32:23');
INSERT INTO `comment` VALUES (24, 29, 2020002, 2, '写太太棒了', '2020-5-29 15:33:26');
INSERT INTO `comment` VALUES (25, 29, 2020002, 2, '强哥牛皮！！！', '2020-5-29 15:35:58');
INSERT INTO `comment` VALUES (26, 23, 778778, 2, '哈哈哈', '2020-5-29 18:25:17');
INSERT INTO `comment` VALUES (27, 23, 778778, 2, '优秀', '2020-5-29 19:2:58');
INSERT INTO `comment` VALUES (28, 23, 778778, 2, '优秀', '2020-5-29 19:3:26');
INSERT INTO `comment` VALUES (29, 23, 778778, 2, '我也遇到过', '2020-5-29 19:4:51');
INSERT INTO `comment` VALUES (30, 23, 778778, 2, '太难了', '2020-5-29 19:6:37');
INSERT INTO `comment` VALUES (31, 23, 778778, 2, '写的什么垃圾玩意儿', '2020-5-29 19:14:15');
INSERT INTO `comment` VALUES (32, 23, 778778, 2, '文笔不错', '2020-5-29 19:18:38');
INSERT INTO `comment` VALUES (33, 23, 778778, 2, '写的太基础了吧', '2020-5-29 19:20:24');
INSERT INTO `comment` VALUES (34, 23, 778778, 2, '文笔不错', '2020-5-29 19:23:10');

-- ----------------------------
-- Table structure for leacots
-- ----------------------------
DROP TABLE IF EXISTS `leacots`;
CREATE TABLE `leacots`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `operation` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `commenttime` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_leacots`(`user_id`) USING BTREE,
  CONSTRAINT `user_leacots` FOREIGN KEY (`user_id`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of leacots
-- ----------------------------
INSERT INTO `leacots` VALUES (1, 2020003, '2', '我是敏敏子', '2020-12-06');
INSERT INTO `leacots` VALUES (12, 2020001, '2', '我又来了', '2020-12-15 13:8:0');

-- ----------------------------
-- Table structure for operationtype
-- ----------------------------
DROP TABLE IF EXISTS `operationtype`;
CREATE TABLE `operationtype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operationtype
-- ----------------------------
INSERT INTO `operationtype` VALUES (1, '点赞');
INSERT INTO `operationtype` VALUES (2, '评论');
INSERT INTO `operationtype` VALUES (3, '阅读');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `psd` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `headImage` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `userType` int(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `userid`(`userid`) USING BTREE,
  INDEX `userType`(`userType`) USING BTREE,
  CONSTRAINT `userType` FOREIGN KEY (`userType`) REFERENCES `usertype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 2020001, '张三', '123456', '/img/head.jpg', 1);
INSERT INTO `user` VALUES (6, 2020002, '李四', '654321', '/img/5774cd8e-e626-4b0d-b991-f2aad30eff74.jpg', 2);
INSERT INTO `user` VALUES (7, 2020003, '敏敏子', '857', '/img/a59abfb5-8f46-418e-90a4-e254e9592acc.jpg', 2);
INSERT INTO `user` VALUES (8, 778778, '王五', 'meihao', '/img/a908b8c0-85e5-4c2e-a5d8-b5a1b162f0f3.jpg', 2);

-- ----------------------------
-- Table structure for usertype
-- ----------------------------
DROP TABLE IF EXISTS `usertype`;
CREATE TABLE `usertype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of usertype
-- ----------------------------
INSERT INTO `usertype` VALUES (2, '普通用户');
INSERT INTO `usertype` VALUES (1, '管理员');

-- ----------------------------
-- Table structure for xc
-- ----------------------------
DROP TABLE IF EXISTS `xc`;
CREATE TABLE `xc`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xc
-- ----------------------------
INSERT INTO `xc` VALUES (1, '武汉长江大桥一日游', '湖北武汉', '2020-5-29 22:29:44', '/img/32443dd5-8e10-4ce4-871f-744080c839c0.jpg');
INSERT INTO `xc` VALUES (2, '长江大学', '湖北荆州', '2020-5-29 22:53:3', '/img/904d4366-fb79-4dd7-aae8-e4e5e9ac3617.jpg');
INSERT INTO `xc` VALUES (4, '万寿宝塔', '湖北荆州', '2020-5-29 22:59:50', '/img/610cada6-764a-4d01-900b-a93474f42eb4.jpg');
INSERT INTO `xc` VALUES (5, '长江大学学生卡', '湖北荆州', '2020-5-29 23:1:35', '/img/a7e3db3c-fcc8-4a8c-a173-8f10f4a8d703.jpg');
INSERT INTO `xc` VALUES (6, '关公义园关公像', '湖北荆州', '2020-5-29 23:4:21', '/img/619c148f-b550-4ed3-95c9-84abf83a6714.jpg');
INSERT INTO `xc` VALUES (7, '滑板鞋五杀', '召唤师峡谷—裁决之地', '2020-5-29 23:12:14', '/img/106a9a10-ab75-49b1-8a79-31cb4dd63ac0.jpg');
INSERT INTO `xc` VALUES (8, '木兰草原的蒙古包', '武汉黄陂', '2020-5-29 23:22:32', '/img/7d31c47d-5a81-499b-8b9d-71773e634422.jpg');
INSERT INTO `xc` VALUES (9, '武软15栋对面的烽火', '武汉软件工程职业学院', '2020-5-29 23:24:39', '/img/29f9db1e-0bd5-4f56-b1a2-258d86858e64.jpg');
INSERT INTO `xc` VALUES (10, '大学的周末生活', '武汉东湖', '2020-5-29 23:30:36', '/img/4915382e-a93f-4223-a5c0-3ac93837668b.jpg');
INSERT INTO `xc` VALUES (11, '庐山一日游', '江西九江', '2020-5-30 0:7:9', '/img/da8528df-b3aa-4356-9446-268f1da8dd2f.jpg');

SET FOREIGN_KEY_CHECKS = 1;
