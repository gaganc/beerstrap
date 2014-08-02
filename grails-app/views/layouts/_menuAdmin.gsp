<a class="dropdown-toggle" data-toggle="dropdown" href="#">
<img src="https://secure.gravatar.com/avatar/b8858d36dfda0373ac35edfb084e3b17?d=https%3A%2F%2Fdwz7u9t8u8usb.cloudfront.net%2Fm%2F2219cd120e6a%2Fimg%2Fdefault_avatar%2F32%2Fuser_blue.png&amp;s=32" alt="raulgomis" height="18" width="18">
    <sec:loggedInUserInfo field="username">No user</sec:loggedInUserInfo>
    <b class="caret"></b>
</a>
<ul class="dropdown-menu">
    <li class='controller ${pageProperty(name:"page.menu_Profile")}'>
        <g:link controller="profile" action="index">
        <i class="fa fa-user"></i>
        <g:message code="app.menu.profile.label" />
        </g:link>
    </li>

    <sec:access url="/admin/**">
        <li class="divider"></li>
        <li class="dropdown-header"><g:message code="app.menu.management.label" /></li>

        <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.name } }">
            <g:if test="${c.getPropertyValue('admin')}">
                <li class='${pageProperty(name:"page.menu_"+c.name)}'>
                    <g:link controller="${c.logicalPropertyName}">
                        <i class="fa fa-briefcase"></i>
                        <g:message code="app.menu.${c.name.toLowerCase()}.label" default="${c.name}" />
                    </g:link>
                </li>
            </g:if>
        </g:each>

        <li class='${pageProperty(name:"page.menu_Configuration")}'>
            <g:link controller="configuration">
                <i class="fa fa-cog"></i>
                <g:message code="app.menu.configuration.label" />
            </g:link>
        </li>
    </sec:access>

    <li class="divider"></li>
    <li class='${pageProperty(name:"page.menu_Help")}'>
        <g:link controller="help" action="index">
            <i class="fa fa-question-circle"></i>
            <g:message code="app.menu.help.label" />
        </g:link>
    </li>
    <li>
        <g:link controller="logout">
        <i class="fa fa-power-off"></i>
        <g:message code="app.menu.signout.label" />
        </g:link>
    </li>

</ul>