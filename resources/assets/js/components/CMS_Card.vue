<template>
<div class="cms-container">
    <button id="show-card-create-modal" @click="showCardInsert()">新增</button>
    <table>
        <tbody>
            <tr>
                <td>卡片編號</td>
                <td>卡片名稱</td>
                <td>操作</td>
            </tr>
            <tr v-for="(card, index) in card_list" :key="card.id">
                <td>{{ card.id }}</td>
                <td>{{ card.name }}</td>
                <td>
                    <button id="show-card-edit-modal" @click="showCardEdit(card.id, index)">編輯</button>
                    <button>刪除</button>
                </td>
            </tr>
        </tbody>
    </table>

        <!-- 編輯卡片資料表單 -->
    <modal v-if="showCardModal" @close="showCardModal = false">
        <div slot="header">
            <h3 v-if="cardModalState == 'insert'">新增卡片</h3>
            <h3 v-if="cardModalState == 'edit'">編輯卡片</h3>
        </div>

        <div slot="body">
            <form>
                <div class="row"><label>卡片編號</label><input v-model="card.id" /></div>
                <div class="row"><label>卡片名稱</label><input v-model="card.name" /></div>
                <div class="row"><label>卡片屬性</label><input v-model="card.attribute" /></div>
                <div class="row"><label>稀有度</label><input v-model="card.rarity" /></div>
                <div class="row"><label>COST</label><input v-model="card.cost" /></div>
                <div class="row"><label>exp曲線</label><input v-model="card.exp_curve" /></div>
                <div class="row"><label>滿級經驗</label><input v-model="card.max_exp" /></div>
                <div class="row"><label>最小HP</label><input v-model="card.min_hp" /></div>
                <div class="row"><label>最小ATK</label><input v-model="card.min_atk" /></div>
                <div class="row"><label>最小回復力</label><input v-model="card.min_rec" /></div>
                <div class="row"><label>最大等級</label><input v-model="card.max_level" /></div>
                <div class="row"><label>最大HP</label><input v-model="card.max_hp" /></div>
                <div class="row"><label>最大ATK</label><input v-model="card.max_atk" /></div>
                <div class="row"><label>最大回復力</label><input v-model="card.max_rec" /></div>
                <div class="row"><label>主動技</label><select v-model="card.active_skill_id">
                    <option v-for="skill in active_skill_list" v-bind:value="skill.id" :key="skill.id">
                        {{ skill.name }}
                    </option>
                </select></div>
                <div class="row"><label>隊長技</label><select v-model="card.leader_skill_id">
                    <option v-for="skill in leader_skill_list" v-bind:value="skill.id" :key="skill.id">
                        {{ skill.name }}
                    </option>
                </select></div>
                <div class="row"><label>種族</label><select v-model="card.race_id">
                    <option v-for="race in race_list" v-bind:value="race.id" :key="race.id">
                        {{ race.name }}
                    </option>
                </select></div>
                <div class="row"><label>類型</label><select v-model="card.series_id">
                    <option v-for="series in series_list" v-bind:value="series.id" :key="series.id">
                        {{ series.name }}
                    </option>
                </select></div>
            </form>
        </div>

        <div slot="footer">
            <button class="modal-default-button" v-if="cardModalState == 'insert'" @click="insertCard()">新增</button>
            <button class="modal-default-button" v-if="cardModalState == 'edit'" @click="updateCard()">更新</button>
            <button class="modal-default-button" @click="showCardModal = false">取消</button>
        </div>
    </modal>

    <!-- 刪除卡片資料表單 -->    
</div>
</template>

<script>
import modal from './Modal.vue'

export default {
    data: function(){
        return {
            isReady: false,
            showCardModal: false,
            cardModalState: "",
            card_list: [],
            active_skill_list: [],
            leader_skill_list: [],
            series_list: [],
            race_list: []
        }
    },

    methods: {
        init: function(){
            this.getActiveSkillList();
            this.getLeaderSkillList();
            this.getSeriesList();
            this.getRaceList();
            this.getCardList();
        },

        showCardInsert: function(){
            this.setNewCard();

            this.cardModalState = "insert";
            this.showCardModal = true;
        },

        showCardEdit: function(id, index){
            let self = this;
            this.cardIndex = index;

            this.axios.get('/card/' + id + '/edit')
                .then(function(response){
                    self.card = response.data.card;
                    self.active_selected = self.card.active_skill_id;
                    self.leader_selected = self.card.leader_skill_id;
                    self.cardModalState = "edit";
                    self.showCardModal = true;
                })
                .catch(function(response){
                    console.log(response);
                });
        },

        getCardList: function(){
            let self = this;
            this.axios.get('/card', {
                    params:{
                        'attribute':""
                    }
                })
                .then(function(response){
                    self.card_list = response.data.cards;
                    self.isReady = true;
                })
                .catch(function(response){
                    console.log(response);
                })
        },

        getActiveSkillList: function(){
            let self = this;
            this.axios.get('/activeskill')
                .then(function(response){
                    self.active_skill_list = response.data.list;
                })
                .catch(function(response){
                    console.log(response);
                })
        },

        getLeaderSkillList: function(){
            let self = this;
            this.axios.get('/leaderskill')
                .then(function(response){
                    self.leader_skill_list = response.data.list;
                })
                .catch(function(response){
                    console.log(response);
                })
        },

        getSeriesList: function(){
            let self = this;
            this.axios.get('/series')
                .then(function(response){
                    self.series_list = response.data.list;
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
                })
                .catch(function(response){
                    console.log(response);
                })
        },

        insertCard: function(){
            let self = this;

            this.axios.post('/card', {
                    card: self.card
                })
                .then(function(response){
                    self.showCardModal = false;
                    //self.card_list.push(self.card);
                })
                .catch(function(response){
                    console.log(response);
                });
        },
        
        updateCard: function(){
            let self = this;

            this.axios({
                method: 'put',
                url: '/card/' + self.card.id,
                data: {
                    'card': self.card
                },
            }).then(function(response){
                self.showCardModal = false;
                self.card_list[self.cardIndex] = self.card;
                console.log("完成");
            }).catch(function(response){
                console.log(response);
            });
        },

        setNewCard: function(){
            this.card = {
                id: "",
                name: "",
                attribute: "",
                race_id: "",
                series_id: "",
                rarity: "",
                cost: "",
                exp_curve: "",
                max_exp: "",
                min_level: "",
                min_hp: "",
                min_atk: "",
                min_rec: "",
                max_level: "",
                max_hp: "",
                max_atk: "",
                max_rec: "",
                active_skill_id: "",
                leader_skill_id: ""
            }
        }
    },

    mounted: function(){
        this.init();
    },

    components: {
        modal
    }
}
</script>

<style>
    .cms-container {
        display: inline-block;
        width: auto;
        height: auto;
        position: relative;
        left: 300px;
    }
</style>
