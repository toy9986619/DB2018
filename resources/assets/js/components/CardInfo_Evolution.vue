<template>
    <div>
        <label v-if="cardId == node.data_card_id">BASE:</label><img :src="getImageUrl()">
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

</style>
