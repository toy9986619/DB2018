<template>
    <div class="evolution">
        <img v-if="node.parent_id" src="/img/evolution-arrow/right-arrow.png">
        <a :href="'/gallery/'+node.data_card_id"><img :src="getImageUrl()" :class="{base: cardId == node.data_card_id}"></a>
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
    .evolution{
        /* margin: 5px; */
        display: inline-block;
        vertical-align: middle;
    }

    .evolution img{
        display:inline-block;
        margin: 20px 7.5px 10px 7.5px;
    }

    .base{
        border-radius: 50%;
        border: 3px solid blue
    }
</style>
