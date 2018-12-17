<template>
<div class="cms-container">
    <table>
        <tbody>
            <tr>
                <td>卡片編號</td>
                <td>卡片名稱</td>
                <td>操作</td>
            </tr>
            <tr v-for="card in card_list" :key="card.id">
                <td>{{ card.id }}</td>
                <td>{{ card.name }}</td>
                <td>
                    <button id="show-card-edit-modal" @click="showCardEdit(card.id)">編輯</button>
                    <button>刪除</button>
                </td>
            </tr>
        </tbody>
    </table>

        <!-- 編輯卡片資料表單 -->
    <modal v-if="showCardEditModal" @close="showCardEditModal = false">
        <div slot="header">
            <h3>編輯卡片</h3>
        </div>

        <div slot="body">
            <form>
                <label>卡片編號</label><input v-model="card.id" />
                <label>卡片名稱</label><input v-model="card.name" />
                <label>卡片屬性</label><input v-model="card.attribute" />
                <label>稀有度</label><input v-model="card.rarity" />
                <label>COST</label><input v-model="card.cost" />
                <label>exp曲線</label><input v-model="card.exp_curve" />
                <label>滿級經驗</label><input v-model="card.max_exp" />
                <label>最小HP</label><input v-model="card.min_hp" />
                <label>最小ATK</label><input v-model="card.min_atk" />
                <label>最小回復力</label><input v-model="card.min_rec" />
                <label>最大等級</label><input v-model="card.max_level" />
                <label>最大HP</label><input v-model="card.max_hp" />
                <label>最大ATK</label><input v-model="card.max_atk" />
                <label>最大回復力</label><input v-model="card.max_rec" />
                <label>主動技</label><select v-model="card.active_skill_id">
                    <option v-for="skill in active_skill_list" v-bind:value="skill.id" :key="skill.id">
                        {{ skill.name }}
                    </option>
                </select>
                <label>隊長技</label><select v-model="card.leader_skill_id">
                    <option v-for="skill in leader_skill_list" v-bind:value="skill.id" :key="skill.id">
                        {{ skill.name }}
                    </option>
                </select>
            </form>
        </div>

        <div slot="footer">
            <button class="modal-default-button" @click="updateCard()">更新</button>
            <button class="modal-default-button" @click="showCardEditModal = false">取消</button>
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
            showCardEditModal: false,
            card: {
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
            },
            card_list: [],
            active_skill_list: [],
            leader_skill_list: []
        }
    },

    methods: {
        init: function(){
            this.getActiveSkillList();
            this.getLeaderSkillList();
            this.getCardList();
        },

        showCardEdit: function(id){
            let self = this;
            this.axios.get('/card/' + id + '/edit')
                .then(function(response){
                    self.card = response.data.card;
                    self.active_selected = self.card.active_skill_id;
                    self.leader_selected = self.card.leader_skill_id;
                    self.showCardEditModal = true;
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

        updateCard: function(){
            let self = this;
            // console.log(this.card);

            this.axios({
                method: 'put',
                url: '/card/' + self.card.id,
                data: {
                    'card': self.card
                },
            }).then(function(response){
                self.showCardEditModal = false;
                console.log("完成");
            }).catch(function(response){
                console.log(response);
            });
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
