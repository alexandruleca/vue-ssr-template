<template>
    <div>        
        <users-list :users="users"></users-list>
    </div>
</template>

<script>
    import {mapGetters} from 'vuex';
    import UsersList from './components/users-list/index.vue';

    export default {
        name: 'Home',

        metaInfo: {
            title: 'Home - VueJS SSR',
            meta: [
                { name: 'description', content: 'Home page description' }
            ]
        },

        components: {
            UsersList,
        },

        computed: {
            ...mapGetters({
                users: 'users',
            })
        },

        // Server-side only
        // This will be called by the server renderer automatically
        serverPrefetch () {
            // return the Promise from the action
            // so that the component waits before rendering
            return this.getUsers();
        },

        // Client-side only
        mounted () {
            // If we didn't already do it on the server, we fetch the users
            if (!this.users.length) {
                this.getUsers();
            }
        },

        methods: {
            getUsers () {
                return this.$store.dispatch('getUsers');
            }
        }
    };
</script>
