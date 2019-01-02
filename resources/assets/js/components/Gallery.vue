<template>
<div class="content">
    <div class="search-area">
        <div class="card-id">
            <span>卡片編號:</span>
            <input type="text" v-model="search_id"/>
        </div>
        <div class="attribute">
            <span>屬性:</span> 
            <input type="radio" checked="checked" v-model="attribute_selected" value="" /><label>不限</label>
            <input type="radio" v-model="attribute_selected" value="火" /><label>火</label>
            <input type="radio" v-model="attribute_selected" value="水" /><label>水</label>
            <input type="radio" v-model="attribute_selected" value="木" /><label>木</label>
            <input type="radio" v-model="attribute_selected" value="光" /><label>光</label>
            <input type="radio" v-model="attribute_selected" value="暗" /><label>暗</label>
        </div>
        <div class="race">
            <span>種族:</span>
            <select v-model="race_selected">
                <option v-for="race in race_list_sort" :value="race.id" :key="race.id">{{ race.name }}</option>
            </select>
        </div>
        <div class="series">
            <span>類型:</span>
            <select v-model="series_selected">
                <option v-for="series in series_list_sort" :value="series.id" :key="series.id">{{ series.name }}</option>
            </select>
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

    <div class="page" align="center" v-if="page_data.last_page > 0">
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
            page_data: {},
            race_list: [],
            series_list: [],
            attribute_selected: "",
            race_selected: 0,
            series_selected: 0,
            search_id:""
        }
    },

    methods: {
        init: function(){
            this.getSeriesList();
            this.getRaceList();
            this.cardFilter();
        },

        getIconUrl: function(i){
            return '/img/card/no' + i + '_icon.png';
        },

        getSeriesList: function(){
            let self = this;
            this.axios.get('/series')
                .then(function(response){
                    self.series_list = response.data.list;
                    self.series_list.push({id: 0, name:"不限"});
                })
                .catch(function(response){
                    console.log(response);
                })
        },

        getRaceList: function(){
            let self = this;
            this.axios.get('/race')
                .then(function(response){
                    self.race_list = response.data.list;
                    self.race_list.push({id: 0, name:"不限"});
                })
                .catch(function(response){
                    console.log(response);
                })
        },

        cardFilter: function(page){
            let self = this;
            this.axios.get('/card', {
                    params:{
                        attribute: self.attribute_selected,
                        race: self.race_selected,
                        series: self.series_selected,
                        page: page
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

    watch: {
        search_id: function(value){
            if(value){
                let self = this;
                this.axios.get('/card/' + self.search_id)
                    .then((response) => {
                        if(response.data.card){
                            var data = response.data.card;
                            self.page_data = {
                                'total': 1,
                                'data': [{
                                    'id': data['id'],
                                    'name': data['name']
                                }],
                                'last_page': 0
                            }
                        }else{
                            self.page_data = {
                                'total':0
                            }
                        }
                    })
                    .catch((response) => {
                        console.log(response);
                    });
            }else{
                this.cardFilter(0);
            }
            
        },

        attribute_selected: function(){
            this.cardFilter(0)
        },
        series_selected: function(){
            this.cardFilter(0)
        },
        race_selected: function(){
            this.cardFilter(0)
        }
    },

    computed: {
        race_list_sort: function(){
            return this.race_list.sort(function(a, b){
                return a.id - b.id;
            })
        },

        series_list_sort: function(){
            return this.series_list.sort(function(a, b){
                return a.id - b.id;
            })
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
