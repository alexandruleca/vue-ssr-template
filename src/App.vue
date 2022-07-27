<template>
    <div id="app">
        <div class="main">
            <h1>{{title}}</h1>
            <div>
              <router-link to="/">Home</router-link>
              <router-link to="/about">About</router-link>
            </div>
            <router-view></router-view>
        </div>
    </div>
</template>

<script>
    import {mapGetters} from 'vuex';

    export default {
        name: 'App',

        metaInfo: {
            meta: [
                { charset: 'utf-8' },
            ]
        },

        computed: {
            ...mapGetters({
                title: 'title',
            })
        },
    };
</script>
