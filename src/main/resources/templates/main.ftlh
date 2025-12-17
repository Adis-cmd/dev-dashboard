<#import "layout.ftlh" as main>
<@main.layout>
<main>
    <section class="hero">
        <h1>Откройте для себя возможности CodeMetrics Pro</h1>

        <div class="device-illustration">
            <div class="stats-card">
                <div class="stats-header">
                    <div class="stats-avatar">👨‍💻</div>
                    <div>
                        <div class="stats-name">JohnDev</div>
                        <div style="font-size: 0.85rem; color: #8b949e;">@johndev</div>
                    </div>
                </div>

                <div class="stat-item">
                    <span class="stat-label">Репозитории</span>
                    <span class="stat-value">42</span>
                </div>
                <div class="stat-bar">
                    <div class="stat-bar-fill" style="--dash-array: 1"></div>
                </div>

                <div class="stat-item">
                    <span class="stat-label">Коммиты</span>
                    <span class="stat-value">1,247</span>
                </div>
                <div class="stat-bar">
                    <div class="stat-bar-fill" style="--dash-array: 0.8"></div>
                </div>

                <div class="stat-item">
                    <span class="stat-label">Звезды</span>
                    <span class="stat-value">356</span>
                </div>
                <div class="stat-bar">
                    <div class="stat-bar-fill" style="--dash-array: 0.6"></div>
                </div>

                <div class="stat-item">
                    <span class="stat-label">Подписчики</span>
                    <span class="stat-value">89</span>
                </div>
                <div class="stat-bar">
                    <div class="stat-bar-fill" style="--dash-array: 0.4"></div>
                </div>
            </div>

            <div class="language-chart">
                <div class="chart-title">Языки программирования</div>
                <div class="donut-chart">
                    <svg width="200" height="200" viewBox="0 0 200 200">
                        <circle cx="100" cy="100" r="85" fill="none" stroke="rgba(88, 166, 255, 0.1)" stroke-width="30"/>
                        <circle class="donut-segment" cx="100" cy="100" r="85" stroke="#58a6ff" style="--dash-array: 220 628" stroke-dashoffset="0"/>
                        <circle class="donut-segment" cx="100" cy="100" r="85" stroke="#bc4cf7" style="--dash-array: 157 628" stroke-dashoffset="-220"/>
                        <circle class="donut-segment" cx="100" cy="100" r="85" stroke="#24cb9c" style="--dash-array: 125 628" stroke-dashoffset="-377"/>
                        <circle class="donut-segment" cx="100" cy="100" r="85" stroke="#f97316" style="--dash-array: 126 628" stroke-dashoffset="-502"/>
                    </svg>
                    <div class="donut-center">
                        <div style="font-size: 1.5rem; font-weight: 700; color: #fff;">100%</div>
                        <div style="font-size: 0.8rem; color: #8b949e;">Охват кода</div>
                    </div>
                </div>

                <div class="language-list">
                    <div class="language-item">
                        <div class="language-color" style="background: #58a6ff;"></div>
                        <div class="language-name">JavaScript</div>
                        <div class="language-percent">35%</div>
                    </div>
                    <div class="language-item">
                        <div class="language-color" style="background: #bc4cf7;"></div>
                        <div class="language-name">Python</div>
                        <div class="language-percent">25%</div>
                    </div>
                    <div class="language-item">
                        <div class="language-color" style="background: #24cb9c;"></div>
                        <div class="language-name">TypeScript</div>
                        <div class="language-percent">20%</div>
                    </div>
                    <div class="language-item">
                        <div class="language-color" style="background: #f97316;"></div>
                        <div class="language-name">HTML/CSS</div>
                        <div class="language-percent">20%</div>
                    </div>
                </div>
            </div>
        </div>

        <p>CodeMetrics Pro предоставляет детальную аналитику репозиториев GitHub, отслеживает проблемы, запросы на вытягивание и многое другое</p>
        <button class="cta-button">Войти</button>
    </section>

    <section class="activity-section">
        <div class="activity-card">
            <div class="activity-header">
                <h2 class="activity-title">График активности</h2>
                <div class="activity-stats">
                    <div class="activity-stat">
                        <div class="activity-stat-value">847</div>
                        <div class="activity-stat-label">Коммитов за неделю</div>
                    </div>
                    <div class="activity-stat">
                        <div class="activity-stat-value">+24%</div>
                        <div class="activity-stat-label">Рост активности</div>
                    </div>
                </div>
            </div>

            <div class="chart-container">
                <svg class="chart-svg" viewBox="0 0 800 300" preserveAspectRatio="none">
                    <defs>
                        <linearGradient id="lineGradient" x1="0%" y1="0%" x2="100%" y2="0%">
                            <stop offset="0%" style="stop-color:#58a6ff;stop-opacity:1" />
                            <stop offset="50%" style="stop-color:#bc4cf7;stop-opacity:1" />
                            <stop offset="100%" style="stop-color:#24cb9c;stop-opacity:1" />
                        </linearGradient>
                        <linearGradient id="areaGradient" x1="0%" y1="0%" x2="0%" y2="100%">
                            <stop offset="0%" style="stop-color:#58a6ff;stop-opacity:0.3" />
                            <stop offset="100%" style="stop-color:#58a6ff;stop-opacity:0" />
                        </linearGradient>
                    </defs>
                    <line class="chart-grid-line" x1="0" y1="60" x2="800" y2="60" />
                    <line class="chart-grid-line" x1="0" y1="120" x2="800" y2="120" />
                    <line class="chart-grid-line" x1="0" y1="180" x2="800" y2="180" />
                    <line class="chart-grid-line" x1="0" y1="240" x2="800" y2="240" />

                    <line class="chart-axis" x1="0" y1="270" x2="800" y2="270" />
                    <line class="chart-axis" x1="0" y1="0" x2="0" y2="270" />

                    <path class="chart-area" d="M 50,180 L 150,120 L 250,150 L 350,80 L 450,110 L 550,60 L 650,90 L 750,50 L 750,270 L 50,270 Z" />

                    <path class="chart-line" d="M 50,180 L 150,120 L 250,150 L 350,80 L 450,110 L 550,60 L 650,90 L 750,50" />

                    <circle class="chart-point" cx="50" cy="180" r="6" />
                    <circle class="chart-point" cx="150" cy="120" r="6" />
                    <circle class="chart-point" cx="250" cy="150" r="6" />
                    <circle class="chart-point" cx="350" cy="80" r="6" />
                    <circle class="chart-point" cx="450" cy="110" r="6" />
                    <circle class="chart-point" cx="550" cy="60" r="6" />
                    <circle class="chart-point" cx="650" cy="90" r="6" />
                    <circle class="chart-point" cx="750" cy="50" r="6" />

                    <text class="chart-label" x="50" y="290" text-anchor="middle">Пн</text>
                    <text class="chart-label" x="150" y="290" text-anchor="middle">Вт</text>
                    <text class="chart-label" x="250" y="290" text-anchor="middle">Ср</text>
                    <text class="chart-label" x="350" y="290" text-anchor="middle">Чт</text>
                    <text class="chart-label" x="450" y="290" text-anchor="middle">Пт</text>
                    <text class="chart-label" x="550" y="290" text-anchor="middle">Сб</text>
                    <text class="chart-label" x="650" y="290" text-anchor="middle">Вс</text>
                    <text class="chart-label" x="750" y="290" text-anchor="middle">Сегодня</text>

                    <text class="chart-label" x="-10" y="65" text-anchor="end">200</text>
                    <text class="chart-label" x="-10" y="125" text-anchor="end">150</text>
                    <text class="chart-label" x="-10" y="185" text-anchor="end">100</text>
                    <text class="chart-label" x="-10" y="245" text-anchor="end">50</text>
                </svg>
            </div>
        </div>
    </section>
</main>
<script src="/static/js/main.js"></script>
</@main.layout>