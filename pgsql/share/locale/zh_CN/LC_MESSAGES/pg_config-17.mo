��    ,      |  ;   �      �  E   �  0        @  :   S  E   �  I   �  L     s   k  K   �  =   +  B   i  i   �  G     J   ^  M   �  M   �  ?   E  G   �  >   �  6   	  <   C	  >   �	  F   �	  P   
  I   W
  4   �
  2   �
     	       *   -     X  	   r     |  &   �     �  &   �      �  (   	     2  %   M     s     �     �  �  �  (   K  /   t     �  7   �  F   �  I   5  D     b   �  C   '  1   k  ;   �  _   �  @   9  J   z  E   �  E     @   Q  H   �  C   �  7     ;   W  D   �  :   �  C     I   W  8   �  3   �               .     L     b     k  *   �     �  "   �  !   �             !   ;     ]     x     �            #                )   	          '      &   ,       
   $   %                                  +      (                                                           *         "   !                      
%s provides information about the installed version of PostgreSQL.

 
With no arguments, all known items are shown.

   %s [OPTION]...

   --bindir              show location of user executables
   --cc                  show CC value used when PostgreSQL was built
   --cflags              show CFLAGS value used when PostgreSQL was built
   --cflags_sl           show CFLAGS_SL value used when PostgreSQL was built
   --configure           show options given to "configure" script when
                        PostgreSQL was built
   --cppflags            show CPPFLAGS value used when PostgreSQL was built
   --docdir              show location of documentation files
   --htmldir             show location of HTML documentation files
   --includedir          show location of C header files of the client
                        interfaces
   --includedir-server   show location of C header files for the server
   --ldflags             show LDFLAGS value used when PostgreSQL was built
   --ldflags_ex          show LDFLAGS_EX value used when PostgreSQL was built
   --ldflags_sl          show LDFLAGS_SL value used when PostgreSQL was built
   --libdir              show location of object code libraries
   --libs                show LIBS value used when PostgreSQL was built
   --localedir           show location of locale support files
   --mandir              show location of manual pages
   --pgxs                show location of extension makefile
   --pkgincludedir       show location of other C header files
   --pkglibdir           show location of dynamically loadable modules
   --sharedir            show location of architecture-independent support files
   --sysconfdir          show location of system-wide configuration files
   --version             show the PostgreSQL version
   -?, --help            show this help, then exit
 %s home page: <%s>
 %s() failed: %m %s: could not find own program executable
 %s: invalid argument: %s
 Options:
 Report bugs to <%s>.
 Try "%s --help" for more information.
 Usage:
 could not change directory to "%s": %m could not find a "%s" to execute could not identify current directory: %m could not read binary "%s" could not read symbolic link "%s": %m invalid binary "%s" not recorded out of memory Project-Id-Version: pg_config (PostgreSQL) 14
Report-Msgid-Bugs-To: pgsql-bugs@lists.postgresql.org
POT-Creation-Date: 2021-08-14 05:46+0000
PO-Revision-Date: 2021-08-15 17:25+0800
Last-Translator: Jie Zhang <zhangjie2@fujitsu.com>
Language-Team: Chinese (Simplified) <zhangjie2@fujitsu.com>
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.5.4
 
%s 提供 PostgreSQL 的安装信息.

 
没有参数,将显示所有已知的成员.

   %s [选项]...
   --bindir              显示执行文件所在位置
   --cc                  显示在创建PostgreSQL时所使用的CC值
   --cflags              显示在创建PostgreSQL时所使用的CFLAG值
   --cflags_sl           当创建PostgreSQL时显示CFLAGS_SL的值
   --configure           显示编译 PostgreSQL 时 "configure"
                        的选项
   --cppflags            当创建PostgreSQL时显示CPPFLAGS的值
   --docdir              显示文档所在位置
   --htmldir             显示HTML文档文件所在位置
   --includedir          显示客户端接口 C 头文件所在
                        位置
   --includedir-server   显示服务端 C 头文件所在位置
   --ldflags             显示在创建PostgreSQL时所使用的LDFLAG值
   --ldflags_ex          当创建PostgreSQL时显示LDFLAGS_EX的值
   --ldflags_sl          当创建PostgreSQL时显示LDFLAGS_SL的值
   --libdir              显示目标代码库文件所在位置
   --libs                显示在创建PostgreSQL时所使用的LIBS值
   --localedir           显示语言环境支持文件所在位置
   --mandir              显示参考手册所在位置
   --pgxs                显示扩展 makefile 所在位置
   --pkgincludedir       显示其它C语言头文件所在的位置
   --pkglibdir           显示动态加载库所在位置
   --sharedir            显示独立架构支持文件所在位置
   --sysconfdir          显示系统范围的配置文件的所在位置
   --version             显示PostgreSQL的版本信息
   -?, --help            显示帮助, 然后退出
 %s 主页: <%s>
 %s()失败: %m %s: 无法找到执行文件
 %s: 无效参数: %s
 选项:
 臭虫报告至<%s>.
 请用 "%s --help" 获取更多的信息.
 使用方法:
 无法跳转到目录 "%s" 中: %m 未能找到一个 "%s" 来执行 无法确认当前目录: %m 无法读取二进制码 "%s" 无法读取符号链接 "%s": %m 无效的二进制码 "%s" 没有被记录 内存不足 