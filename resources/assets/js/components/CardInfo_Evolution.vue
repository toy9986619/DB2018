<template>
    <div>
        <node v-if="node.evolve_parent && node.data_card_id"
            :node="node.evolve_parent"
            :cardId="node.evolve_parent.data_card_id"></node>
        <img :src="getImageUrl()">
        <node v-if="node.evolve"
            v-for="child in node.evolve"
            :key="child.id"
            :node="child"
            :cardId="child.data_card_id"></node>
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
            return '/img/card/no' + this.cardId + '_icon.png';
        }
    },

    mounted: function(){

    }
}
</script>

<style>

</style>
