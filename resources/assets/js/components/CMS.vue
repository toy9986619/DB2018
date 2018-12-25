<template>
<div class="content">
    <div class="cms-sidemenu">
        <ul>
            <li><span class="menu" v-on:click="management = 'user'">會員管理</span></li>
            <li><span class="menu" v-on:click="management = 'card'">卡片管理</span></li>
        </ul>
    </div>

    <cms_card v-if="management == 'card'"></cms_card>
    <cms_user v-if="management == 'user'"></cms_user>
    
</div>
</template>

<script>
import cms_card from "./CMS_Card.vue";
import cms_user from "./CMS_User.vue"

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
        cms_user
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

