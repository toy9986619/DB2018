<template>
<div class="content">
    <div class="cms-sidemenu">
        <ul>
            <li><span class="menu" v-on:click="management = 'account'">會員管理</span></li>
            <li><span class="menu" v-on:click="management = 'card'">卡片管理</span></li>
        </ul>
    </div>

    <cms_card v-if="management == 'card'"></cms_card>
    <cms_account v-if="management == 'account'"></cms_account>
    
</div>
</template>

<script>
import cms_card from "./CMS_Card.vue";
import cms_account from "./CMS_Account.vue"

export default {
    data: function(){
        return {
           management: "card"
        }
    },

    methods: {
        
    },

    mounted: function(){
        
    },

    components: {
        cms_card,
        cms_account
    }
}
</script>

<style>
    li {
        list-style-type: none;
    }
    .menu {
        cursor: pointer;
    }
    .cms-sidemenu {
        display: inline-block;
        width: 300px;
        height: auto;
        position: absolute;
    }
</style>

