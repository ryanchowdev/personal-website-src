<style>
@import 'bulma/css/bulma.css';
@import '@fortawesome/fontawesome-free/css/all.css';
[v-cloak] {
    display: none;
}
</style>

<template>
    <div class="section" id="vue-target" v-cloak>
        <!-- Overview -->
        <div class="has-text-right has-text-info">
            <p>Time in California: {{time}}</p>
        </div>
        <div class="has-text-centered">
            <figure class="image is-128x128 is-inline-block">
                <img class="is-rounded" src="../assets/ryan.jpeg">
            </figure>
        </div>
        <div class="container block has-text-centered py-1">
            <h1 class="title">Ryan Chow</h1>
            <h2 class="subtitle">Computer Science, B.S. @ University of California, Santa Cruz</h2>
        </div>

        <!-- Tabs -->
        <div class="tabs is-toggle is-toggle-rounded is-fullwidth">
            <ul>
                <li :class="{'is-active': show_about_tab}"><a @click="activate_about_tab">About Me</a></li>
                <li :class="{'is-active': show_skills_tab}"><a @click="activate_skills_tab">Skills</a></li>
                <li :class="{'is-active': show_projects_tab}"><a @click="activate_projects_tab">Projects</a></li>
                <li :class="{'is-active': show_contact_tab}"><a @click="activate_contacts_tab">Contact</a></li>
            </ul>
        </div>

        <!-- About Me -->
        <div class="has-text-centered" v-if="show_about_tab">
            Hello! My name is Ryan Chow.
            <br>I graduated from the University of California, Santa Cruz in June 2022 with a B.S. in Computer Science.
            <br>I achieved a 3.86 GPA, earning the Cum Laude honor.
            <br>I am located in the SF Bay Area, California.
            <br>I am a native English speaker.
        </div>

        <!-- Skills -->
        <div class="has-text-centered" v-if="show_skills_tab">
            <nav class="panel">
                <p class="panel-tabs">
                    <a :class="{'is-active': show_all_skills}" @click="activate_all_skills">All</a>
                    <a :class="{'is-active': show_languages}" @click="activate_languages">Languages</a>
                    <a :class="{'is-active': show_frameworks}" @click="activate_frameworks">Frameworks</a>
                    <a :class="{'is-active': show_tools}" @click="activate_tools">Tools</a>
                </p>
                <a class="panel-block" v-if="show_all_skills || show_languages">
                    Python
                </a>
                <a class="panel-block" v-if="show_all_skills || show_languages">
                    C, C++
                </a>
                <a class="panel-block" v-if="show_all_skills || show_languages">
                    Java
                </a>
                <a class="panel-block" v-if="show_all_skills || show_languages">
                    HTML, CSS, JavaScript
                </a>
                <a class="panel-block" v-if="show_all_skills || show_tools">
                    Git
                </a>
                <a class="panel-block" v-if="show_all_skills || show_frameworks">
                    Py4web
                </a>
                <a class="panel-block" v-if="show_all_skills || show_frameworks">
                    Bulma CSS
                </a>
                <a class="panel-block" v-if="show_all_skills || show_frameworks">
                    Vue.js
                </a>
                <a class="panel-block" v-if="show_all_skills || show_languages">
                    PostgreSQL, SQLite
                </a>
                <a class="panel-block" v-if="show_all_skills || show_tools">
                    Unix, Linux
                </a>
                <a class="panel-block" v-if="show_all_skills || show_languages">
                    Assembly (MIPS, RISC-V)
                </a>
                <a class="panel-block" v-if="show_all_skills || show_languages">
                    LaTeX
                </a>
                <a class="panel-block" v-if="show_all_skills || show_tools">
                    Docker
                </a>
            </nav>
        </div>

        <!-- Projects -->
        <div class="has-text-centered" v-if="show_projects_tab">
            <p>
                Click the projects to learn more!
            </p>
            <hr>
            <!-- List of projects -->
            <aside class="menu">
                <p class="menu-label">
                    2022
                </p>
                <ul class="menu-list">
                    <li><a @click="activate_personal_website(true)">Personal Website</a></li>
                    <li><a @click="activate_roommatehelper(true)">RoommateHelper</a></li>
                    <li><a @click="activate_stock_market_imitation(true)">Stock Market Imitation</a></li>
                </ul>
                <p class="menu-label">
                    2021
                </p>
                <ul class="menu-list">
                    <li><a @click="activate_ucsc_classcheck(true)">UCSC ClassCheck</a></li>
                </ul>
                <p class="menu-label">
                    2020
                </p>
                <ul class="menu-list">
                    <li><a @click="activate_prototype_bot(true)">Prototype Bot</a></li>
                </ul>
            </aside>

            <!-- Personal website card -->
            <div class="modal" :class="{'is-active': show_personal_website}">
                <div class="modal-background" @click="activate_personal_website(false)"></div>
                <div class="modal-card">
                    <header class="modal-card-head">
                        <p class="modal-card-title">Personal Website</p>
                        <button class="delete" aria-label="close" @click="activate_personal_website(false)"></button>
                    </header>
                    <section class="modal-card-body has-text-left">
                        You are viewing this website currently!
                        <div class="content">
                            <ul>
                                <li>Built with Vue.js and Bulma</li>
                                <li>Showcases my skills and projects</li>
                                <li>Tells the reader about myself</li>
                            </ul>
                        </div>
                        <a class="button is-link" href="https://github.com/ryanchowdev/ryanchowdev.github.io" target="_blank" rel="noopener noreferer">
                            <span class="icon-text">
                                <span class="icon">
                                    <i class="fa-brands fa-github"></i>
                                </span>
                                <span>Github Repository</span>
                            </span>
                        </a>
                    </section>
                </div>
            </div>

            <!-- RoommateHelper card -->
            <div class="modal" :class="{'is-active': show_roommatehelper}">
                <div class="modal-background" @click="activate_roommatehelper(false)"></div>
                <div class="modal-card">
                    <header class="modal-card-head">
                        <p class="modal-card-title">RoommateHelper</p>
                        <button class="delete" aria-label="close" @click="activate_roommatehelper(false)"></button>
                    </header>
                    <section class="modal-card-body has-text-left">
                        A Discord bot that facilitates living with roommates.
                        <div class="content">
                            <ul>
                                <li>Built with Python using discord.py, a Python wrapper for the Discord API</li>
                                <li>Uses SQLite to maintain persistent data after the bot is restarted</li>
                                <li>Lead team of five developers and utilized SCRUM practices</li>
                                <li>Deployed to Microsoft Azure</li>
                                <li>Schedule tasks, such as taking out the garbage</li>
                                <li>Set alarms</li>
                                <li>Debt system to track who owes money for bills, rent, splitting groceries, etc.</li>
                                <li>Check the weather, using data from OpenWeatherMap API</li>
                                <li>Look for nearby places of interest, such as pizza or sushi, using Google Maps</li>
                                <li>Play music so you can listen together</li>
                                <li>Calculator with parser to support complex equations, useful for studying together or dividing expenses</li>
                                <li>Create polls to make decisions such as where to eat</li>
                                <li>Flip a coin if you need to make a random decision</li>
                                <li>Set rules that roommates can agree on</li>
                                <li>Intuitive help menu so that anyone can use the bot with ease</li>
                            </ul>
                        </div>
                        <a class="button is-link" href="https://github.com/ryanchowdev/RoommateHelper" target="_blank" rel="noopener noreferer">
                            <span class="icon-text">
                                <span class="icon">
                                    <i class="fa-brands fa-github"></i>
                                </span>
                                <span>Github Repository</span>
                            </span>
                        </a>
                    </section>
                </div>
            </div>

            <!-- Stock Market Imitation card -->
            <div class="modal" :class="{'is-active': show_stock_market_imitation}">
                <div class="modal-background" @click="activate_stock_market_imitation(false)"></div>
                <div class="modal-card">
                    <header class="modal-card-head">
                        <p class="modal-card-title">Stock Market Imitation</p>
                        <button class="delete" aria-label="close" @click="activate_stock_market_imitation(false)"></button>
                    </header>
                    <section class="modal-card-body has-text-left">
                        A web page that simulates stock market trading.
                        <div class="content">
                            <ul>
                                <li>Built with Py4web, Vue.js, and Bulma</li>
                                <li>Collaborated with team of five developers</li>
                                <li>Dynamic website which supports multiple users</li>
                                <li>Simulated stock market behavior</li>
                                <li>Buy and sell stocks, and watch your portfolio change without risking real money</li>
                                <li>Detailed graphs to show your portfolio's performance, as well as historical stock prices</li>
                                <li>Forum for users to have discussions</li>
                            </ul>
                        </div>
                        <a class="button is-link" href="https://github.com/ryanchowdev/Stock-Market-Imitation" target="_blank" rel="noopener noreferer">
                            <span class="icon-text">
                                <span class="icon">
                                    <i class="fa-brands fa-github"></i>
                                </span>
                                <span>Github Repository</span>
                            </span>
                        </a>
                    </section>
                </div>
            </div>

            <!-- UCSC ClassCheck card -->
            <div class="modal" :class="{'is-active': show_ucsc_classcheck}">
                <div class="modal-background" @click="activate_ucsc_classcheck(false)"></div>
                <div class="modal-card">
                    <header class="modal-card-head">
                        <p class="modal-card-title">UCSC ClassCheck</p>
                        <button class="delete" aria-label="close" @click="activate_ucsc_classcheck(false)"></button>
                    </header>
                    <section class="modal-card-body has-text-left">
                        A web scraper that helps students to enroll in classes that fill up quickly.
                        <div class="content">
                            <ul>
                                <li>Built with Python</li>
                                <li>Uses Beautiful Soup for web scraping</li>
                                <li>Uses Tkinter to present results in a user-friendly GUI</li>
                                <li>Monitors the current enrollment of classes, allowing the user to sign up as soon a spot opens up</li>
                            </ul>
                        </div>
                        <a class="button is-link" href="https://github.com/ryanchowdev/UCSC-ClassCheck" target="_blank" rel="noopener noreferer">
                            <span class="icon-text">
                                <span class="icon">
                                    <i class="fa-brands fa-github"></i>
                                </span>
                                <span>Github Repository</span>
                            </span>
                        </a>
                    </section>
                </div>
            </div>

            <!-- Prototype Bot card -->
            <div class="modal" :class="{'is-active': show_prototype_bot}">
                <div class="modal-background" @click="activate_prototype_bot(false)"></div>
                <div class="modal-card">
                    <header class="modal-card-head">
                        <p class="modal-card-title">Prototype Bot</p>
                        <button class="delete" aria-label="close" @click="activate_prototype_bot(false)"></button>
                    </header>
                    <section class="modal-card-body has-text-left">
                        A multi-purpose Discord bot.
                        <div class="content">
                            <ul>
                                <li>Built with Python</li>
                                <li>My first project, created out of interest in Discord bots</li>
                                <li>Uses discord.py, a Python wrapper for the Discord API</li>
                                <li>Server administration</li>
                                <li>Stocks lookup, using Yahoo Finance API</li>
                                <li>Weather lookup, using OpenWeatherMap API</li>
                                <li>Currency conversion</li>
                            </ul>
                        </div>
                        <a class="button is-link" href="https://github.com/ryanchowdev/prototype-bot" target="_blank" rel="noopener noreferer">
                            <span class="icon-text">
                                <span class="icon">
                                    <i class="fa-brands fa-github"></i>
                                </span>
                                <span>Github Repository</span>
                            </span>
                        </a>
                    </section>
                </div>
            </div>
        </div>

        <!-- Contact -->
        <div class="block has-text-centered" v-if="show_contact_tab">
            <div class="pb-5">
                <p>
                    Here you can find my personal links. Check out my Github repositories and LinkedIn portfolio. Email me for any inquiries.
                </p>
            </div>
            <div class="columns is-centered">
                <div class="column is-1">
                    <a class="button is-success" href="https://github.com/ryanchowdev" target="_blank" rel="noopener noreferer">
                        <span class="icon-text">
                            <span class="icon">
                                <i class="fa-brands fa-github"></i>
                            </span>
                            <span>Github</span>
                        </span>
                    </a>
                </div>
                <div class="column is-1">
                    <a class="button is-info" href="https://www.linkedin.com/in/ryanchowdev/" target="_blank" rel="noopener noreferer">
                        <span class="icon-text">
                            <span class="icon">
                                <i class="fa-brands fa-linkedin"></i>
                            </span>
                            <span>LinkedIn</span>
                        </span>
                    </a>
                </div>
                <div class="column is-1">
                    <a class="button is-danger" href="mailto:ryanchowdev@gmail.com" target="_blank" rel="noopener noreferer">
                        <span class="icon-text">
                            <span class="icon">
                                <i class="fa-solid fa-envelope"></i>
                            </span>
                            <span>Email</span>
                        </span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'MyIndex',

    data() {
        return {
            show_about_tab: true,
            show_skills_tab: false,
            show_projects_tab: false,
            show_contact_tab: false,
            show_all_skills: true,
            show_languages: false,
            show_frameworks: false,
            show_tools: false,
            show_personal_website: false,
            show_roommatehelper: false,
            show_stock_market_imitation: false,
            show_ucsc_classcheck: false,
            show_prototype_bot: false,
            interval: null,
            time: null,
        }
    },

    beforeUnmount() {
        clearInterval(this.interval)
    },

    created() {
        // Initialize time
        this.time = this.get_time()
        // Update time every second
        this.interval = setInterval(() => {
            this.time = this.get_time()
        }, 1000)
    },

    methods: {
        get_time : function() {
            // Use California time
            return Intl.DateTimeFormat('en-US', {
                hour: 'numeric',
                minute: 'numeric',
                second: 'numeric',
                timeZone: 'America/Los_Angeles',
            }).format()
        },
        hide_all_tabs: function() {
            this.show_about_tab = false;
            this.show_skills_tab = false;
            this.show_projects_tab = false;
            this.show_contact_tab = false;
        },
        hide_all_skills: function() {
            this.show_all_skills = false;
            this.show_languages = false;
            this.show_frameworks = false;
            this.show_tools = false;
        },
        activate_about_tab: function () {
            this.hide_all_tabs();
            this.show_about_tab = true;
        },
        activate_skills_tab: function() {
            this.hide_all_tabs();
            this.show_skills_tab = true;
        },
        activate_projects_tab: function() {
            this.hide_all_tabs();
            this.show_projects_tab = true;
        },
        activate_contacts_tab: function() {
            this.hide_all_tabs();
            this.show_contact_tab = true;
        },
        activate_all_skills: function() {
            this.hide_all_skills();
            this.show_all_skills = true;
        },
        activate_languages: function() {
            this.hide_all_skills();
            this.show_languages = true;
        },
        activate_frameworks: function() {
            this.hide_all_skills();
            this.show_frameworks = true;
        },
        activate_tools: function() {
            this.hide_all_skills();
            this.show_tools = true;
        },
        activate_personal_website: function(flag) {
            this.show_personal_website = flag;
        },
        activate_roommatehelper: function(flag) {
            this.show_roommatehelper = flag;
        },
        activate_stock_market_imitation: function(flag) {
            this.show_stock_market_imitation = flag;
        },
        activate_ucsc_classcheck: function(flag) {
            this.show_ucsc_classcheck = flag;
        },
        activate_prototype_bot: function(flag) {
            this.show_prototype_bot = flag;
        },
    }
}
</script>