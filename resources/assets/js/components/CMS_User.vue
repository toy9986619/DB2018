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

    <!-- 編輯使用者資料表單 -->
    <modal v-if="showUserModal" @close="showUserModal = false">
        <div slot="header">
            <h3 v-if="userModalState == 'insert'">新增使用者</h3>
            <h3 v-if="userModalState == 'edit'">編輯使用者</h3>
        </div>

        <div slot="body">
            <div class="row"><label>使用者名稱</label><input v-model="user.name"/></div>
            <div class="row"><label>使用者帳號</label><input v-model="user.email"/></div>
            <div class="row"><label>使用者類型</label><select v-model="user.type">
                <option v-for="type in userTypeList" :value="type" :key="type.id">
                    {{ type }}
                </option>
            </select></div>
        </div>

        <div slot="footer">
            <button class="modal-default-button" v-if="userModalState == 'insert'" @click="insertCard()">新增</button>
            <button class="modal-default-button" v-if="userModalState == 'edit'" @click="updateCard()">更新</button>
            <button class="modal-default-button" @click="showUserModal = false">取消</button>
        </div>
    </modal>
</div>
</template>

<script>
import modal from './Modal.vue'

export default {
    data: function(){
        return {
            user_list: [],
            showUserModal: false,
            userModalState: "",
            userTypeList: ["normal", "admin"]
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
            this.userModalState = "insert";
            this.showUserModal = true;
        },

        showUserEdit: function(id, index){
            this.userModalState = "edit";

            let self = this;
            this.axios.get('/user/' + id + "/edit")
                .then((response) => {
                    self.user = response.data.user;
                    self.showUserModal = true;
                })
                .catch((response) => {
                    console.log(response);
                });
        },

    },

    watch: {
        userModalState: function(value){
            if(value == "insert"){
                this.user = {
                    id: "",
                    type: "normal",
                    name: "",
                    email: "",
                    password: ""
                }
            }
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