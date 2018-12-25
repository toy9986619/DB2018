<template>
<div class="cms-container">
    <button id="show-user-create-modal" @click="showUserInsert()">新增</button>
    <table class="data-table" border="3" cellpadding="5">
        <tbody>
            <tr>
                <td>使用者編號</td>
                <td>使用者名稱</td>
                <td>使用者帳號</td>
                <td>操作</td>
            </tr>
            <tr v-for="(user, index) in user_list" :key="user.id">
                <td>{{ user.id }}</td>
                <td>{{ user.name }}</td>
                <td>{{ user.email }}</td>
                <td>
                    <button id="show-user-edit-modal" @click="showUserEdit(user.id, index)">編輯</button>
                    <button>刪除</button>
                </td>
            </tr>
        </tbody>
    </table>
</div>
</template>

<script>
import modal from './Modal.vue'

export default {
    data: function(){
        return {
            user_list: []
        }
    },

    methods: {
        init: function(){
            this.getUserList()
        },

        getUserList: function(){
            let self = this;

            this.axios.get('/user')
                .then((response) => {
                    self.user_list = response.data.users;
                })
                .catch((response) => {
                    console.log(response);
                })
        },

        showUserInsert: function(){

        },

        showUserEdit: function(){

        }
    },

    mounted: function() {
        this.init();
    }, 
    
    components: {
        modal
    }
}
</script>

<style>
    .data-table {
        border: 1px black solid;
    }
</style>