<template>
    <button type="submit" v-bind:class="classes" v-on:click="toggle">
        <span class="glyphicon glyphicon-heart"></span>
        <span v-text="count"></span>
    </button>
</template>

<script>
    export default {
        props: ['reply'],

        computed: {
            classes() {
                return ['btn', this.active ? 'btn-primary' : 'btn-default'];
            },

            endpoint() {
                return '/replies/' + this.reply.id + '/favorites';
            }
        },

        data() {
            return {
                count: this.reply.favoritesCount,
                active: this.reply.isFavorited
            }
        },

        methods: {
            toggle() {
                this.active ? this.destroy() : this.create();
            },

            create() {
                axios.post(this.endpoint);

                this.active = true;
                this.count++;
            },

            destroy() {
                axios.delete(this.endpoint);

                this.active = false;
                this.count--;
            }
        }
    }
</script>