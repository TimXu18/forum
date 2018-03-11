<template>
    <div>
        <div v-for="(reply, index) in items" :key="reply.id">
            <reply :data="reply" v-on:delete="remove(index)"></reply>
        </div>

        <paginator :dataSet="dataSet" @updatePage="fetch"></paginator>

        <new-reply @created="item => add(item)"></new-reply>
    </div>
</template>

<script>
    import Reply from './Reply.vue';
    import NewReply from './NewReply.vue';
    import collection from '../mixins/collection';

    export default {
        components: {Reply, NewReply},

        mixins: [collection],

        // data() method return will merge with mixins data() method return object
        data(){
            return {
                dataSet: false
            }
        },

        created(){
            this.fetch();
        },

        methods: {
            fetch(page){
                axios.get(this.url(page))
                    .then(response => {this.refresh(response)});
            },

            url(page){
                if(! page){
                    let query = location.search.match(/page=(\d)+/);

                    page = query ? query[1] : 1;
                }


                return `${location.pathname}/replies?page=${page}`;
            },

            refresh({data}){
                this.dataSet = data;
                this.items = data.data;

                window.scrollTo(0, 0);
            },


        }
    }
</script>