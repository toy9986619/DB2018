<template>
<div class="content" >
<div v-if="Object.keys(card).length === 0">
    <span>查無資料</span>
</div>

<div v-if="isReady">
    <div>
    <table align="center" >
        <tbody>
            <tr>
                <td>
                    <div>
                        <img :src="'/img/card/no' + card.id + '_large.png'" />
                    </div>
                </td>
            </tr>
        </tbody>
    </table>

    <table class="data-table outer-table" align="center" border="1">
        <tbody>
            <tr>
                <td rowspan="3">
                    <table align="left">
                        <tbody>
                            <tr>
                                <td><img :src="'/img/card/no' + card.id + '_icon.png'"></td>
                                <td>
                                    <h3>No. {{card.id}}</h3>
                                    <h2>{{card.name}}</h2>
                                    <h3>稀有度: {{card.rarity}}</h3>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
                <td>屬性: {{card.attribute}}</td>
                <td>種族: {{card.race.name}}</td>
            </tr>
            <tr>
                <td>經驗曲線: {{card.exp_curve}}</td>
                <td>COST: {{card.cost}}</td>
            </tr>
            <tr>
                <td colspan="2">滿等所需經驗值: {{card.max_exp}}</td>
            </tr>
        </tbody>
    </table>

    <table class="data-table outer-table" align="center" border="1">
        <tbody>
            <tr>
                <td>初始 Lv: {{card.min_level}}</td>
                <td>生命: {{card.min_hp}}</td>
                <td>攻擊: {{card.min_atk}}</td>
                <td>回復: {{card.min_rec}}</td>
            </tr>
            <tr>
                <td>最大 Lv: {{card.max_level}}</td>
                <td>生命: {{card.max_hp}}</td>
                <td>攻擊: {{card.max_atk}}</td>
                <td>回復: {{card.max_rec}}</td>
            </tr>
        </tbody>
    </table>

    <table class="data-table outer-table" align="center" border="1">
        <tbody>
            <tr>
                <td>主動技能: {{card.active_skill.name}}</td>
                <td>初始冷卻: {{card.active_skill.max_cd}}</td>
                <td>最小冷卻: {{card.active_skill.min_cd}}</td>
            </tr>
            <tr>
                <td colspan="3">{{card.active_skill.description}}</td>
            </tr>
        </tbody>
    </table>

    <table class="data-table outer-table" align="center" border="1">
        <tbody>
            <tr>
                <td>隊長技能: {{card.leader_skill.name}}</td>
            </tr>
            <tr>
                <td>{{card.leader_skill.description}}</td>
            </tr>
        </tbody>
    </table>
    </div>

    <div v-if="isReady && card.evolution" align="center">
        <EvolutionNode v-if="card.evolution"
            :node="card.evolution"
            :cardId="card.id"></EvolutionNode>
    </div>
    
    <ArticleReply :card-id="this.cardId" :user="[this.userName, this.userType]" align="center"></ArticleReply>
</div>
</div>
</template>

<style>
    .outer-table {
        width: 700px;
    }

    .data-table {
        border-style: solid;
    }

    .data-table td{
        padding: 5px;
    }

</style>

<script>
import modal from './Modal.vue'
import ArticleReply from "./CardInfo_Article.vue";
import EvolutionNode from "./CardInfo_Evolution.vue";

export default {
    
    props: ['cardId','userName','userType'],

    data () {
        return {
            card: {
            },
            isReady: false
        }
    },

    methods: {
        init: function(){
            let self = this;
            this.axios.get('/card/' + this.cardId)
                .then(function(response){
                    if(response.data.card){
                        self.card = response.data.card;
                        self.isReady = true;
                    }
                    
                })
                .catch(function(response){
                    console.log(response);
                });            
        }
    },

    mounted: function(){
        this.init();

    },
    
    components: {
        modal, ArticleReply, EvolutionNode
    }
}
</script>
