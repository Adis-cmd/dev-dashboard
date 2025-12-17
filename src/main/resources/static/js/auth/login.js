const particleContainer = document.querySelector('.animated-bg');
for (let i = 0; i < 30; i++) {
    const particle = document.createElement('div');
    particle.className = 'particle';
    const size = Math.random() * 4 + 2;
    particle.style.width = size + 'px';
    particle.style.height = size + 'px';
    particle.style.left = Math.random() * 100 + '%';
    particle.style.animationDuration = (Math.random() * 15 + 10) + 's';
    particle.style.animationDelay = Math.random() * 5 + 's';
    particleContainer.appendChild(particle);
}

const togglePassword = document.getElementById('togglePassword');
const passwordInput = document.getElementById('password');

togglePassword.addEventListener('click', function() {
    const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
    passwordInput.setAttribute('type', type);

    this.classList.toggle('bi-eye');
    this.classList.toggle('bi-eye-slash');
});

const loginForm = document.getElementById('loginForm');

loginForm.addEventListener('submit', function(e) {
    e.preventDefault();

    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
    const rememberMe = document.getElementById('rememberMe').checked;

    console.log('Email:', email);
    console.log('Password:', password);
    console.log('Remember me:', rememberMe);

    if (email && password) {
        const loginBtn = document.querySelector('.login-btn');
        loginBtn.innerHTML = '<i class="bi bi-hourglass-split"></i><span>Вход...</span>';
        loginBtn.style.pointerEvents = 'none';

        setTimeout(() => {
            alert('Функция входа будет реализована на backend');

            loginBtn.innerHTML = '<span>Войти</span><i class="bi bi-arrow-right"></i>';
            loginBtn.style.pointerEvents = 'auto';
        }, 1500);
    }
});

window.addEventListener('load', function() {
    document.getElementById('email').focus();
});