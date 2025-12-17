<#import "spring.ftl" as spring>
<#macro layout>

    <!DOCTYPE html>
    <html lang="ru">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>CodeMetrics Pro</title>
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.11.1/font/bootstrap-icons.min.css">
        <link rel="stylesheet" href="/static/css/main.css">
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
                background: #0d1117;
                color: #c9d1d9;
                min-height: 100vh;
                position: relative;
                overflow-x: hidden;
            }

            .animated-bg {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                z-index: -1;
                overflow: hidden;
            }

            .gradient-orb {
                position: absolute;
                border-radius: 50%;
                filter: blur(80px);
                opacity: 0.3;
                animation: float 20s ease-in-out infinite;
            }

            .orb-1 {
                width: 500px;
                height: 500px;
                background: radial-gradient(circle, #58a6ff 0%, transparent 70%);
                top: -10%;
                left: -10%;
                animation-delay: 0s;
            }

            .orb-2 {
                width: 400px;
                height: 400px;
                background: radial-gradient(circle, #bc4cf7 0%, transparent 70%);
                top: 40%;
                right: -5%;
                animation-delay: 7s;
            }

            .orb-3 {
                width: 450px;
                height: 450px;
                background: radial-gradient(circle, #24cb9c 0%, transparent 70%);
                bottom: -10%;
                left: 30%;
                animation-delay: 14s;
            }

            @keyframes float {
                0%, 100% {
                    transform: translate(0, 0) scale(1);
                }
                33% {
                    transform: translate(30px, -50px) scale(1.1);
                }
                66% {
                    transform: translate(-20px, 30px) scale(0.9);
                }
            }

            header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 1.5rem 2rem;
                background: rgba(13, 17, 23, 0.8);
                backdrop-filter: blur(10px);
                border-bottom: 1px solid rgba(48, 54, 61, 0.5);
                position: sticky;
                top: 0;
                z-index: 1000;
            }

            .logo {
                display: flex;
                align-items: center;
                gap: 0.5rem;
                font-size: 1.5rem;
                font-weight: 700;
                color: #58a6ff;
            }

            .logo i {
                font-size: 1.8rem;
            }

            nav {
                display: flex;
                gap: 2rem;
                align-items: center;
            }

            nav a {
                color: #c9d1d9;
                text-decoration: none;
                font-weight: 500;
                transition: color 0.3s ease;
                position: relative;
            }

            nav a:hover {
                color: #58a6ff;
            }

            nav a::after {
                content: '';
                position: absolute;
                bottom: -5px;
                left: 0;
                width: 0;
                height: 2px;
                background: #58a6ff;
                transition: width 0.3s ease;
            }

            nav a:hover::after {
                width: 100%;
            }

            /* Стиль для активной ссылки */
            nav a.active {
                color: #58a6ff;
                font-weight: 600;
            }

            nav a.active::after {
                width: 100%;
            }

            .container {
                max-width: 1200px;
                margin: 0 auto;
                padding: 2rem;
            }

            footer {
                background: rgba(13, 17, 23, 0.95);
                padding: 2rem;
                text-align: center;
                border-top: 1px solid rgba(48, 54, 61, 0.5);
                margin-top: 4rem;
            }

            .footer-links {
                display: flex;
                justify-content: center;
                gap: 2rem;
                margin-top: 1rem;
            }

            .footer-links a {
                color: #8b949e;
                text-decoration: none;
                transition: color 0.3s ease;
            }

            .footer-links a:hover {
                color: #58a6ff;
            }

            @media (max-width: 768px) {
                header {
                    flex-direction: column;
                    gap: 1rem;
                }

                nav {
                    flex-wrap: wrap;
                    justify-content: center;
                    gap: 1rem;
                }
            }        </style>
    </head>
    <body>

    <div class="animated-bg">
        <div class="gradient-orb orb-1"></div>
        <div class="gradient-orb orb-2"></div>
        <div class="gradient-orb orb-3"></div>
    </div>

    <header>
        <a href="/">
            <div class="logo">
                <i class="bi bi-graph-up-arrow"></i>
                CodeMetrics Pro
            </div>
        </a>

        <nav>
            <#assign currentPath = springMacroRequestContext.requestUri>

            <a href="/" class="${(currentPath == '/')?then('active', '')}">
                <i class="bi bi-house-door-fill"></i> Главная
            </a>

            <#if SPRING_SECURITY_CONTEXT?? && SPRING_SECURITY_CONTEXT.authentication??>
                <#assign user = SPRING_SECURITY_CONTEXT.authentication.principal>
            </#if>

            <a href="/repository" class="${(currentPath?starts_with('/vacancy'))?then('active', '')}">
                <i class="bi bi-card-list"></i> Все репозитории
            </a>

            <#if SPRING_SECURITY_CONTEXT?? && SPRING_SECURITY_CONTEXT.authentication??>
                <a href="/profile/main" class="${(currentPath?starts_with('/profile/main'))?then('active', '')}">
                    <i class="bi bi-person-circle"></i> Профиль
                </a>

                <#if _csrf??>
                    <form action="/logout" method="post" style="display: inline;">
                        <input type="hidden" name="${(_csrf.parameterName)!'csrf'}"
                               value="${(_csrf.token)!'--no-token--'}"/>
                        <button type="submit"
                                style="background: none; border: none; color: #f85149; cursor: pointer; font-weight: 500; font-size: 1rem;">
                            <i class="bi bi-box-arrow-right"></i> Выйти
                        </button>
                    </form>
                </#if>
            <#else>
                <a href="/auth/login" class="${(currentPath?starts_with('/auth/login'))?then('active', '')}">
                    <i class="bi bi-box-arrow-in-right"></i> Войти
                </a>
            </#if>

            <div style="position: relative; display: inline-block;">
                <button style="background: transparent; border: 1px solid #58a6ff; color: #58a6ff; padding: 0.5rem 1rem; border-radius: 6px; cursor: pointer; font-weight: 500;">
                    <i class="bi bi-globe"></i> Сменить язык
                </button>
            </div>
        </nav>
    </header>

    <div class="container">
        <#nested spring>
    </div>

    <footer>
        <div>© 2023 CodeMetrics Pro. Все права защищены</div>
        <div class="footer-links">
            <a href="#">Политика</a>
            <a href="#">Условия</a>
            <a href="#">Связаться</a>
        </div>
    </footer>

    </body>
    </html>

</#macro>