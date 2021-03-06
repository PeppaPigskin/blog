<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: WuChen
  Date: 2020/09/29
  Time: 11:22
  To change this template use File | Settings | File Templates.
  Description:前台底部模板页
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--设置底部部分-->
<footer class="ui inverted vertical segment m-padded-tb-massive">
    <!--    center aligned:设置居中-->
    <div class="ui center aligned container">
        <!--        可以用来一列一列布局，分成16份-->
        <!--        divided:设置分割线-->
        <div class="ui inverted divided stackable grid">
            <div class="two wide column">
                <div class="ui inverted link list">
                    <div class="item">
                        <!--                设置公众号图片-->
                        <img src="${pageContext.request.contextPath}/static/images/gongzhonghao.png"
                             class="ui rounded image"
                             title="关注我的微信公众号" alt="微信公众号" style="width: 100px">
                    </div>
                </div>
            </div>
            <div class="three wide column">
                <!--                设置竖着的列表-->
                <h4 class="ui inverted header m-text-spaced m-opacity-mini">最新博客</h4>
                <div class="ui inverted link list">
                    <c:forEach items="${applicationScope.newestBlog}" var="newBlog">
                        <a href="${pageContext.request.contextPath}/blog/${newBlog.id}.do"
                           class="item m-text-pre">${newBlog.title}</a>
                    </c:forEach>
                </div>
            </div>
            <div class="three wide column">
                <!--                设置竖着的列表-->
                <h4 class="ui inverted header m-text-spaced m-opacity-mini">联系方式</h4>
                <div class="ui inverted link list">
                    <a href="${pageContext.request.contextPath}/about.do" class="item m-text-pre">Email:1789484932@qq.com</a>
                    <a href="${pageContext.request.contextPath}/about.do" class="item m-text-pre">QQ:1789484932</a>
                </div>
            </div>
            <div class="eight wide column">
                <h4 class="ui inverted header m-text-spaced m-opacity-mini">站点介绍</h4>
                <p class="m-text-thin m-text-spaced m-opacity-mini">
                    这是我的个人博客，会为大家分享本人在工作以及学习过程中的一些开发经验，希望可以给大家带来帮助...</p>
            </div>
        </div>
        <!--        divider:代表一个分割线-->
        <div class="ui inverted section divider"></div>
        <p class="m-text-thin m-text-spaced m-opacity-tiny">
            Copyright@2019-<fmt:formatDate value="<%=new Date()%>" pattern="yyyy"></fmt:formatDate>
            <a href="${pageContext.request.contextPath}/login.jsp" target="_blank">Designed By</a>
            Mr.Chen</p>
    </div>

</footer>
