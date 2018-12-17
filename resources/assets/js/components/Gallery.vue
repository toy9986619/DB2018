<template>
<div class="content">
    <div class="search-area">
        <div class="attribute">
            屬性: 
            <input type="radio" checked="checked" v-model="attribute_selected" v-on:change="cardFilter()" value="" /><label>不限</label>
            <input type="radio" v-model="attribute_selected" v-on:change="cardFilter()" value="火" /><label>火</label>
            <input type="radio" v-model="attribute_selected" v-on:change="cardFilter()" value="水" /><label>水</label>
            <input type="radio" v-model="attribute_selected" v-on:change="cardFilter()" value="木" /><label>木</label>
            <input type="radio" v-model="attribute_selected" v-on:change="cardFilter()" value="光" /><label>光</label>
            <input type="radio" v-model="attribute_selected" v-on:change="cardFilter()" value="暗" /><label>暗</label>
        </div>
    </div>
    <div>
        <ul class="gallery" v-if="cards.length > 0">
            <li v-for="card in cards" :key="card.id">
                <a :href="'/gallery/' + card.id ">
                    <img :src="getIconUrl(card.id)" :style="'width:50px; height:50px;'">
                </a>
            </li>
        </ul>
    </div>
</div>
</template>

<script>
export default {
    data () {
        return {
            count: 0,
            cards: {
                id: 0
            },
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

        cardFilter: function(){
            let self = this;
            this.axios.get('/card', {
                    params:{
                        attribute: self.attribute_selected
                    }
                })
                .then(function(response){
                    self.count = response.data.count;
                    self.cards = response.data.cards;
                    console.log(self.count);
                    console.log(self.cards);
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
