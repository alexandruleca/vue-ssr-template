import { createApp } from './main';

const { app, router } = createApp({state: window.__INITIAL_STATE__});

import './assets/style.scss';

router.onReady(() => {
    app.$mount('#app');
});