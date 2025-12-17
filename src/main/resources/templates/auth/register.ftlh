<#import "../layout.ftlh" as main>
<@main.layout ; spring>

    <style>
        .register-page-wrapper {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            position: relative;
        }

        .register-animated-bg {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 0;
            overflow: hidden;
            pointer-events: none;
        }

        .register-particle {
            position: absolute;
            background: rgba(88, 166, 255, 0.1);
            border-radius: 50%;
            animation: float-register-particle linear infinite;
        }

        @keyframes float-register-particle {
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

        .register-gradient-orb {
            position: absolute;
            border-radius: 50%;
            filter: blur(60px);
            animation: drift-register 20s ease-in-out infinite;
            opacity: 0.3;
        }

        .register-orb-1 {
            width: 400px;
            height: 400px;
            background: radial-gradient(circle, rgba(88, 166, 255, 0.4), transparent);
            top: 10%;
            left: 10%;
            animation-duration: 25s;
        }

        .register-orb-2 {
            width: 300px;
            height: 300px;
            background: radial-gradient(circle, rgba(188, 76, 247, 0.4), transparent);
            top: 60%;
            right: 15%;
            animation-duration: 30s;
            animation-delay: -10s;
        }

        .register-orb-3 {
            width: 350px;
            height: 350px;
            background: radial-gradient(circle, rgba(36, 203, 156, 0.3), transparent);
            bottom: 10%;
            left: 30%;
            animation-duration: 35s;
            animation-delay: -20s;
        }

        @keyframes drift-register {
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

        .register-container {
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
            animation: slideInRegister 0.8s ease-out;
        }

        @keyframes slideInRegister {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .register-logo {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
            font-size: 28px;
            font-weight: 600;
            color: #fff;
            margin-bottom: 40px;
        }

        .register-logo i {
            font-size: 32px;
            color: #58a6ff;
        }

        .register-welcome {
            text-align: center;
            margin-bottom: 35px;
        }

        .register-welcome h2 {
            font-size: 24px;
            font-weight: 600;
            color: #fff;
            margin-bottom: 12px;
        }

        .register-welcome p {
            color: #8b949e;
            font-size: 15px;
            line-height: 1.6;
        }

        .register-form {
            margin-bottom: 25px;
        }

        .register-form-group {
            margin-bottom: 20px;
        }

        .register-form-group label {
            display: block;
            color: #c9d1d9;
            font-size: 14px;
            font-weight: 500;
            margin-bottom: 8px;
        }

        .register-input-wrapper {
            position: relative;
        }

        .register-input-wrapper i {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: #8b949e;
            font-size: 16px;
        }

        .register-input {
            width: 100%;
            padding: 14px 14px 14px 45px;
            background: rgba(13, 17, 23, 0.6);
            border: 1px solid rgba(48, 54, 61, 0.8);
            border-radius: 8px;
            color: #c9d1d9;
            font-size: 15px;
            transition: all 0.3s ease;
        }

        .register-input:focus {
            outline: none;
            border-color: #58a6ff;
            background: rgba(13, 17, 23, 0.8);
            box-shadow: 0 0 0 3px rgba(88, 166, 255, 0.1);
        }

        .register-input::placeholder {
            color: #6e7681;
        }

        .register-input.error {
            border-color: #f85149;
        }

        .register-input.success {
            border-color: #3fb950;
        }

        .password-strength {
            margin-top: 8px;
            height: 4px;
            background: rgba(48, 54, 61, 0.8);
            border-radius: 2px;
            overflow: hidden;
            display: none;
        }

        .password-strength.show {
            display: block;
        }

        .password-strength-bar {
            height: 100%;
            width: 0%;
            transition: all 0.3s ease;
            border-radius: 2px;
        }

        .password-strength-bar.weak {
            width: 33%;
            background: #f85149;
        }

        .password-strength-bar.medium {
            width: 66%;
            background: #d29922;
        }

        .password-strength-bar.strong {
            width: 100%;
            background: #3fb950;
        }

        .password-strength-text {
            font-size: 12px;
            margin-top: 4px;
            color: #8b949e;
        }

        .error-message {
            color: #f85149;
            font-size: 12px;
            margin-top: 6px;
            display: none;
        }

        .error-message.show {
            display: block;
        }

        /* Buttons */
        .register-btn {
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
            margin-top: 10px;
        }

        .register-btn:hover:not(:disabled) {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(88, 166, 255, 0.4);
        }

        .register-btn:active:not(:disabled) {
            transform: scale(0.98);
        }

        .register-btn:disabled {
            opacity: 0.5;
            cursor: not-allowed;
        }

        /* Login Link */
        .register-login {
            text-align: center;
            margin-top: 25px;
            padding-top: 25px;
            border-top: 1px solid rgba(48, 54, 61, 0.5);
            color: #8b949e;
            font-size: 14px;
        }

        .register-login a {
            color: #58a6ff;
            text-decoration: none;
            font-weight: 600;
            transition: color 0.3s ease;
        }

        .register-login a:hover {
            color: #79c0ff;
            text-decoration: underline;
        }

        @media (max-width: 540px) {
            .register-container {
                padding: 40px 30px;
                margin: 20px;
            }

            .register-logo {
                font-size: 24px;
            }

            .register-logo i {
                font-size: 28px;
            }

            .register-welcome h2 {
                font-size: 20px;
            }
        }
    </style>
    </head>
    <body>
<div class="register-page-wrapper">
    <div class="register-animated-bg">
        <div class="register-gradient-orb register-orb-1"></div>
        <div class="register-gradient-orb register-orb-2"></div>
        <div class="register-gradient-orb register-orb-3"></div>
    </div>

    <div class="register-container">
        <div class="register-logo">
            <i class="bi bi-graph-up-arrow"></i>
            CodeMetrics Pro
        </div>

        <div class="register-welcome">
            <h2>Создать аккаунт</h2>
            <p>Присоединяйтесь к нам для доступа к аналитике</p>
        </div>

        <form class="register-form" action="/auth/register" method="post" id="registerForm">
            <#if _csrf??>
                <input type="hidden" name="${(_csrf.parameterName)!'csrf-param-name'}"
                       value="${(_csrf.token)!'csrf-token'}"/>
            </#if>
            <div class="register-form-group">
                <label for="name">Имя</label>
                <div class="register-input-wrapper">
                    <i class="bi bi-person-fill"></i>
                    <@spring.formInput "userDto.name" 'id="name" class="register-input" placeholder="Введите ваше имя"'/>
                </div>
                <@spring.showErrors "userDto.name" "error-message show"/>
            </div>

            <div class="register-form-group">
                <label for="email">Email</label>
                <div class="register-input-wrapper">
                    <i class="bi bi-envelope-fill"></i>
                    <@spring.formInput "userDto.email" 'type="email" id="email" class="register-input" placeholder="example@email.com"'/>
                </div>
                <@spring.showErrors "userDto.email" "error-message show"/>
            </div>

            <div class="register-form-group">
                <label for="password">Пароль</label>
                <div class="register-input-wrapper">
                    <i class="bi bi-lock-fill"></i>
                    <@spring.formPasswordInput "userDto.password" 'id="password" class="register-input" placeholder="Минимум 8 символов"'/>
                </div>
                <div class="password-strength" id="passwordStrength">
                    <div class="password-strength-bar" id="passwordStrengthBar"></div>
                </div>
                <div class="password-strength-text" id="passwordStrengthText"></div>
                <@spring.showErrors "userDto.password" "error-message show"/>
            </div>

            <button type="submit" class="register-btn" id="submitBtn">
                <i class="bi bi-person-plus-fill"></i>
                Зарегистрироваться
            </button>
        </form>

        <div class="register-login">
            Уже есть аккаунт? <a href="/login">Войти</a>
        </div>
    </div>
</div>

<script>
    const particleContainer = document.querySelector('.register-animated-bg');
    for (let i = 0; i < 30; i++) {
        const particle = document.createElement('div');
        particle.className = 'register-particle';
        const size = Math.random() * 4 + 2;
        particle.style.width = size + 'px';
        particle.style.height = size + 'px';
        particle.style.left = Math.random() * 100 + '%';
        particle.style.animationDuration = (Math.random() * 15 + 10) + 's';
        particle.style.animationDelay = Math.random() * 5 + 's';
        particleContainer.appendChild(particle);
    }
</script>
</@main.layout>