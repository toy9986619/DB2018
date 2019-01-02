<template>
<div class="content">
    <div class="search-area">
        <div class="attribute">
            屬性: 
            <input type="radio" checked="checked" v-model="attribute_selected" v-on:change="cardFilter(0)" value="" /><label>不限</label>
            <input type="radio" v-model="attribute_selected" v-on:change="cardFilter(0)" value="火" /><label>火</label>
            <input type="radio" v-model="attribute_selected" v-on:change="cardFilter(0)" value="水" /><label>水</label>
            <input type="radio" v-model="attribute_selected" v-on:change="cardFilter(0)" value="木" /><label>木</label>
            <input type="radio" v-model="attribute_selected" v-on:change="cardFilter(0)" value="光" /><label>光</label>
            <input type="radio" v-model="attribute_selected" v-on:change="cardFilter(0)" value="暗" /><label>暗</label>
        </div>
    </div>
    <div>
        <ul class="gallery" v-if="page_data.total > 0">
            <li v-for="card in page_data.data" :key="card.id">
                <a :href="'/gallery/' + card.id ">
                    <img :src="getIconUrl(card.id)" :style="'width:50px; height:50px;'">
                </a>
            </li>
        </ul>
    </div>

    <div class="page" align="center">
        <span v-for="i in page_data.last_page" :key="i" 
            @click="cardFilter(i)"
            :class="{'page-nonactive': page_data.current_page != i}">{{ i }}</span>
    </div>
</div>
</template>

<script>
export default {
    data () {
        return {
            page_data:{},
            attribute_selected: ''
        }
    },

    methods: {
        init: function(){
            this.cardFilter();
        },

        getIconUrl: function(i){
            return '/img/card/no' + i + '_icon.png';
        },

        cardFilter: function(page){
            let self = this;
            this.axios.get('/card', {
                    params:{
                        attribute: self.attribute_selected,
                        page:page
                    }
                })
                .then(function(response){
                    self.page_data = response.data.cards;
                })
                .catch(function(response){
                    console.log(response);
                });
        }
    },

    mounted: function(){
        this.init();
    }
}
</script>

<style>
    .gallery li{
        display: inline-block;
        vertical-align: top;
        padding: 5px;
        text-align: center;
        margin: 2px;
    }
</style>
