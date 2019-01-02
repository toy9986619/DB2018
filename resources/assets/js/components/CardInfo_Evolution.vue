<template>
    <div>
        <img :src="getImageUrl()" :class="{base: cardId == node.data_card_id}">
        <node v-if="node.evolve"
            v-for="child in node.evolve"
            :key="child.id"
            :node="child"
            :cardId="cardId"></node>
    </div>
</template>

<script>
export default {
    name: "node",

    props: {
        node: Object,
        cardId: Number
    },

    data: function(){
        return {

        }
    },

    methods: {
        getImageUrl: function(){
            return '/img/card/no' + this.node.data_card_id + '_icon.png';
        }
    },

    mounted: function(){

    }
}
</script>

<style>
    .base{
        border-radius: 50%;
        border: 3px solid blue
    }
</style>
