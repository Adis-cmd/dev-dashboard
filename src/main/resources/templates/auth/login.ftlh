<#import "../layout.ftlh" as main>
<@main.layout>

    <style>
        .login-page-wrapper {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            position: relative;
        }

        .login-animated-bg {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 0;
            overflow: hidden;
            pointer-events: none;
        }

        .login-particle {
            position: absolute;
            background: rgba(88, 166, 255, 0.1);
            border-radius: 50%;
            animation: float-login-particle linear infinite;
        }

        @keyframes float-login-particle {
            0% {
                transform: translateY(100vh) rotate(0deg);
                opacity: 0;
            }
            10% {
                opacity: 1;
            }
            90% {
                opacity: 1;
            }
            100% {
                transform: translateY(-100px) rotate(360deg);
                opacity: 0;
            }
        }

        .login-gradient-orb {
            position: absolute;
            border-radius: 50%;
            filter: blur(60px);
            animation: drift-login 20s ease-in-out infinite;
            opacity: 0.3;
        }

        .login-orb-1 {
            width: 400px;
            height: 400px;
            background: radial-gradient(circle, rgba(88, 166, 255, 0.4), transparent);
            top: 10%;
            left: 10%;
            animation-duration: 25s;
        }

        .login-orb-2 {
            width: 300px;
            height: 300px;
            background: radial-gradient(circle, rgba(188, 76, 247, 0.4), transparent);
            top: 60%;
            right: 15%;
            animation-duration: 30s;
            animation-delay: -10s;
        }

        .login-orb-3 {
            width: 350px;
            height: 350px;
            background: radial-gradient(circle, rgba(36, 203, 156, 0.3), transparent);
            bottom: 10%;
            left: 30%;
            animation-duration: 35s;
            animation-delay: -20s;
        }

        @keyframes drift-login {
            0%, 100% {
                transform: translate(0, 0) scale(1);
            }
            33% {
                transform: translate(50px, -50px) scale(1.1);
            }
            66% {
                transform: translate(-30px, 30px) scale(0.9);
            }
        }

        /* Error Alert Styles */
        .login-error-alert {
            position: fixed;
            top: 30px;
            left: 50%;
            transform: translateX(-50%);
            z-index: 1000;
            background: rgba(248, 81, 73, 0.95);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(248, 81, 73, 0.5);
            border-radius: 12px;
            padding: 16px 24px;
            max-width: 450px;
            width: calc(100% - 40px);
            box-shadow: 0 10px 40px rgba(248, 81, 73, 0.3);
            animation: slideDownError 0.5s ease-out;
            display: flex;
            align-items: center;
            gap: 12px;
        }

        @keyframes slideDownError {
            from {
                opacity: 0;
                transform: translateX(-50%) translateY(-30px);
            }
            to {
                opacity: 1;
                transform: translateX(-50%) translateY(0);
            }
        }

        .login-error-alert i {
            font-size: 22px;
            color: #fff;
            flex-shrink: 0;
        }

        .login-error-alert .error-content {
            flex: 1;
            color: #fff;
        }

        .login-error-alert .error-title {
            font-weight: 600;
            font-size: 15px;
            margin-bottom: 4px;
        }

        .login-error-alert .error-message {
            font-size: 14px;
            opacity: 0.95;
            line-height: 1.4;
        }

        .login-error-close {
            background: none;
            border: none;
            color: #fff;
            font-size: 20px;
            cursor: pointer;
            padding: 4px;
            opacity: 0.8;
            transition: opacity 0.3s ease;
            flex-shrink: 0;
        }

        .login-error-close:hover {
            opacity: 1;
        }

        /* Login Container */
        .login-container {
            position: relative;
            z-index: 10;
            background: rgba(22, 27, 34, 0.8);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(88, 166, 255, 0.3);
            border-radius: 16px;
            padding: 50px 40px;
            width: 100%;
            max-width: 450px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.5);
            animation: slideInLogin 0.8s ease-out;
        }

        @keyframes slideInLogin {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Logo */
        .login-logo {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
            font-size: 28px;
            font-weight: 600;
            color: #fff;
            margin-bottom: 40px;
        }

        .login-logo i {
            font-size: 32px;
            color: #58a6ff;
        }

        /* Welcome Text */
        .login-welcome {
            text-align: center;
            margin-bottom: 35px;
        }

        .login-welcome h2 {
            font-size: 24px;
            font-weight: 600;
            color: #fff;
            margin-bottom: 12px;
        }

        .login-welcome p {
            color: #8b949e;
            font-size: 15px;
            line-height: 1.6;
        }

        /* Form Styles */
        .login-form {
            margin-bottom: 25px;
        }

        .login-form-group {
            margin-bottom: 20px;
        }

        .login-form-group label {
            display: block;
            color: #c9d1d9;
            font-size: 14px;
            font-weight: 500;
            margin-bottom: 8px;
        }

        .login-input-wrapper {
            position: relative;
        }

        .login-input-wrapper i {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: #8b949e;
            font-size: 16px;
        }

        .login-input {
            width: 100%;
            padding: 14px 14px 14px 45px;
            background: rgba(13, 17, 23, 0.6);
            border: 1px solid rgba(48, 54, 61, 0.8);
            border-radius: 8px;
            color: #c9d1d9;
            font-size: 15px;
            transition: all 0.3s ease;
        }

        .login-input:focus {
            outline: none;
            border-color: #58a6ff;
            background: rgba(13, 17, 23, 0.8);
            box-shadow: 0 0 0 3px rgba(88, 166, 255, 0.1);
        }

        .login-input::placeholder {
            color: #6e7681;
        }

        .login-forgot {
            text-align: right;
            margin-top: 8px;
        }

        .login-forgot a {
            color: #58a6ff;
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        .login-forgot a:hover {
            color: #79c0ff;
            text-decoration: underline;
        }

        /* Buttons */
        .login-btn {
            width: 100%;
            padding: 14px;
            background: linear-gradient(135deg, #58a6ff 0%, #1f6feb 100%);
            color: #ffffff;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-bottom: 15px;
        }

        .login-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(88, 166, 255, 0.4);
        }

        .login-btn:active {
            transform: scale(0.98);
        }

        /* Divider */
        .login-divider {
            display: flex;
            align-items: center;
            margin: 25px 0;
            color: #6e7681;
            font-size: 14px;
        }

        .login-divider::before,
        .login-divider::after {
            content: '';
            flex: 1;
            height: 1px;
            background: rgba(48, 54, 61, 0.8);
        }

        .login-divider span {
            padding: 0 15px;
        }

        /* GitHub Button */
        .github-login-btn {
            width: 100%;
            padding: 14px;
            background: rgba(48, 54, 61, 0.6);
            color: #c9d1d9;
            border: 1px solid rgba(48, 54, 61, 0.8);
            border-radius: 8px;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            transition: all 0.3s ease;
            text-decoration: none;
        }

        .github-login-btn:hover {
            background: rgba(48, 54, 61, 0.8);
            border-color: #58a6ff;
            transform: translateY(-2px);
        }

        .github-login-btn i {
            font-size: 18px;
        }

        /* Register Link */
        .login-register {
            text-align: center;
            margin-top: 25px;
            padding-top: 25px;
            border-top: 1px solid rgba(48, 54, 61, 0.5);
            color: #8b949e;
            font-size: 14px;
        }

        .login-register a {
            color: #58a6ff;
            text-decoration: none;
            font-weight: 600;
            transition: color 0.3s ease;
        }

        .login-register a:hover {
            color: #79c0ff;
            text-decoration: underline;
        }

        @media (max-width: 540px) {
            .login-container {
                padding: 40px 30px;
                margin: 20px;
            }

            .login-logo {
                font-size: 24px;
            }

            .login-logo i {
                font-size: 28px;
            }

            .login-welcome h2 {
                font-size: 20px;
            }

            .login-error-alert {
                top: 20px;
            }
        }
    </style>

    <#if RequestParameters.error??>
        <div class="login-error-alert" id="errorAlert">
            <i class="bi bi-exclamation-triangle-fill"></i>
            <div class="error-content">
                <div class="error-title">Ошибка входа</div>
                <div class="error-message">Неверный логин или пароль. Попробуйте снова.</div>
            </div>
            <button class="login-error-close" onclick="closeError()">
                <i class="bi bi-x"></i>
            </button>
        </div>
    </#if>

    <div class="login-page-wrapper">
        <div class="login-animated-bg">
            <div class="login-gradient-orb login-orb-1"></div>
            <div class="login-gradient-orb login-orb-2"></div>
            <div class="login-gradient-orb login-orb-3"></div>
        </div>

        <div class="login-container">
            <div class="login-logo">
                <i class="bi bi-graph-up-arrow"></i>
                CodeMetrics Pro
            </div>

            <div class="login-welcome">
                <h2>Добро пожаловать!</h2>
                <p>Войдите в свой аккаунт для доступа к аналитике</p>
            </div>

            <form class="login-form" action="/auth/login" method="post">
                <#if _csrf??>
                    <input type="hidden" name="${(_csrf.parameterName)!'csrf-param-name'}"
                           value="${(_csrf.token)!'csrf-token'}"/>
                </#if>
                <div class="login-form-group">
                    <label for="email">Email</label>
                    <div class="login-input-wrapper">
                        <i class="bi bi-envelope-fill"></i>
                        <input
                                type="email"
                                id="email"
                                name="email"
                                class="login-input"
                                placeholder="example@email.com"
                                required
                        >
                    </div>
                </div>

                <div class="login-form-group">
                    <label for="password">Пароль</label>
                    <div class="login-input-wrapper">
                        <i class="bi bi-lock-fill"></i>
                        <input
                                type="password"
                                id="password"
                                name="password"
                                class="login-input"
                                placeholder="Введите пароль"
                                required
                        >
                    </div>
                    <div class="login-forgot">
                        <a href="/forgot-password">Забыли пароль?</a>
                    </div>
                </div>

                <button type="submit" class="login-btn">
                    <i class="bi bi-box-arrow-in-right"></i>
                    Войти
                </button>
            </form>

            <div class="login-register">
                Нет аккаунта? <a href="/auth/register">Зарегистрироваться</a>
            </div>
        </div>
    </div>

    <script>
        const particleContainer = document.querySelector('.login-animated-bg');
        for (let i = 0; i < 30; i++) {
            const particle = document.createElement('div');
            particle.className = 'login-particle';
            const size = Math.random() * 4 + 2;
            particle.style.width = size + 'px';
            particle.style.height = size + 'px';
            particle.style.left = Math.random() * 100 + '%';
            particle.style.animationDuration = (Math.random() * 15 + 10) + 's';
            particle.style.animationDelay = Math.random() * 5 + 's';
            particleContainer.appendChild(particle);
        }

        function closeError() {
            const errorAlert = document.getElementById('errorAlert');
            if (errorAlert) {
                errorAlert.style.animation = 'slideUpError 0.3s ease-out forwards';
                setTimeout(() => {
                    errorAlert.remove();
                }, 300);
            }
        }

        setTimeout(() => {
            const errorAlert = document.getElementById('errorAlert');
            if (errorAlert) {
                closeError();
            }
        }, 5000);
    </script>

    <style>
        @keyframes slideUpError {
            to {
                opacity: 0;
                transform: translateX(-50%) translateY(-30px);
            }
        }
    </style>

</@main.layout>