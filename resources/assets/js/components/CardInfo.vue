<template>
<div class="content">
    <h1>{{ card.id }}</h1>
    <p>{{ card.name }}</p>
</div>
</template>

<script>
export default {
    data () {
        return {
            card: {
                id: null,
                name: "",
            }
        }
    },

    methods: {
        init: function(){
            let self = this;
            this.axios.get('/card/1')
                .then(function(response){
                    self.card = response.data.data[0];
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
