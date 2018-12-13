<template>
<div class="content" v-if="isReady">
    <div>
    <table align="center" >
        <tbody>
            <tr align="center">
                <td>
                    <div>
                        <img :src="'/img/card/no' + card.id + '_large.png'" />
                    </div>
                </td>
            </tr>
        </tbody>
    </table>

    <table>
        <tbody>
            <tr>
                <td>
                    <table>
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
                <td>經驗曲線: {{card.exp_curve}} COST: {{card.cost}}</td>
            </tr>
            <tr>
                <td>滿等所需經驗值: {{card.max_exp}}</td>
            </tr>
        </tbody>
    </table>

    <table>
        <tbody>
            <tr>
                <td>初始 Lv: {{card.min_level}}</td>
                <td>能力值 生命: {{card.min_hp}} 攻擊: {{card.min_atk}} 回復: {{card.min_rec}}</td>
            </tr>
            <tr>
                <td>最大 Lv: {{card.max_level}}</td>
                <td>能力值 生命: {{card.max_hp}} 攻擊: {{card.max_atk}} 回復: {{card.max_rec}}</td>
            </tr>
        </tbody>
    </table>

    <table>
        <tbody>
            <tr>
                <td>主動技能: {{card.active_skill.name}}</td>
                <td>初始冷卻: {{card.active_skill.max_cd}}</td>
                <td>最小冷卻: {{card.active_skill.min_cd}}</td>
            </tr>
            <tr>
                <td>{{card.active_skill.description}}</td>
            </tr>
        </tbody>
    </table>

    <table>
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

    <div>
        article & reply
    </div>
</div>
</template>

<script>
export default {
    props: ['cardId'],

    data () {
        return {
            card: {
            },

            isReady: false
        }
    },

    methods: {
        init: function(){
            console.log(this.cardId);
            let self = this;
            this.axios.get('/card/' + this.cardId)
                .then(function(response){
                    self.card = response.data.card;
                    console.log(self.card);
                    self.isReady = true;
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
