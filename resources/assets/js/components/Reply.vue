<template>
        <div :id="'reply-'+id" class="panel panel-default">
            <div class="panel-heading">
                <div class="level">
                    <h5 class="flex">
                        <a :href="'/profiles/'+data.owner.name"
                           v-text="data.owner.name">
                        </a> said <span v-text="createdAt"></span>
                    </h5>

                    <div v-if="signedIn">
                        <!-- :reply assign reply as property to favorite component -->
                        <favorite :reply = "data"></favorite>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div v-if="editing">
                    <!--
                    <form @submit="update"> in my case make axios.patch and then refresh page all page
                    <form @submit.prevent="update"> - fix this problem
                    -->
                    <form @submit.prevent="update">
                        <div class="form-group">
                            <textarea class="form-control" v-model="body" required></textarea>
                        </div>

                        <button class="btn btn-xs btn-primary">Update</button>
                        <button class="btn btn-xs btn-link" @click="editing = false" type="button">Cancel</button>
                    </form>
                </div>

                <div v-else v-html="body"></div>
            </div>

            <!--@if(Auth::user()->can('update', $reply))-->
            <div class="panel-footer level" v-if="canUpdate">
                <button class="btn btn-xs mr-1" @click="editing = true">Edit</button>
                <button class="btn btn-xs btn-danger mr-1" v-on:click="destroy">Delete</button>

            </div>
            <!--@endif-->
        </div>
</template>

<script>
    import Favorite from './Favorite.vue';
    import moment from 'moment';

    export default {
        props: ['data'],

        components: {Favorite},

        data() {
            return {
                editing: false,
                body: this.data.body,
                id: this.data.id
            }
        },

        computed: {
          createdAt() {
            return moment(this.data.created_at + 'Z').fromNow() + '...';
          },
          signedIn() {
              return window.App.signedIn;
          },

          canUpdate() {
              return this.authorize(user => this.data.user_id == user.id);
          }
        },

        methods: {
            update() {
                axios.patch('/replies/' + this.data.id, {
                    body: this.body
                }).catch(error => {
                    flash(error.response.data, 'danger');
                });

                this.editing = false;
                flash('updated!');
            },

            destroy() {
                axios.delete('/replies/' + this.data.id);

                this.$emit('delete', this.data.id);

//                $(this.$el).fadeOut(300, function(){
//                    flash('Your reply has been deleted.');
//                });
            }
        }
    }
</script>