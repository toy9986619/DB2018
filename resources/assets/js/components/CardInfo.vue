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
    
    <div class="article-body">
        <button id="show-article-modal" @click="showArticleInsert()" v-if="userName != 'Guest'">新增文章</button>
        <table class="article-main">
            <tr  v-for="(article, article_index) in article" :key="article.id"><td>
            <tr>Article:</tr>
            <tr class="article-header">
                <td class="user-name">{{article.user.name}}</td>
                <td class="article-title">{{article.title}}</td>
            </tr>
            <tr class="article-content">
                <td>{{article.content}}</td>
            </tr>
            <tr>
                <td v-if="userName == article.user.name">
                    <button id="edit-article-model" @click="showArticleEdit(article.id, article_index)">編輯文章</button>
                    <button id="del-article-model" @click="delArticle(article.id, article_index)">刪除</button>
                </td>
            </tr>
            
            <tr class="reply-main">
                <table class="reply-main">
                    <tr  v-for="reply in article.reply" v-bind="article.reply" :key="reply.id"><td>
                        <tr>Reply:</tr>
                        <tr class="reply-header">
                            <td class="user-name">{{reply.user.name}}</td>
                        </tr>
                        <tr class="reply-content">
                            <td>{{reply.content}}</td>
                        </tr>
                        <!-- <tr>
                            <td>
                                <button id="edit-reply-model" @click="showReplyEdit(reply.id, article_index)" v-if="userName == reply.user.name">編輯文章</button>
                                <button id="del-reply-model" @click="delReply(reply.id, article_index)" v-if="userName == article.user.name">刪除</button>
                            </td>
                        </tr> -->
                    </td></tr>
                    <tr class="reply-footer" v-if="userName != 'Guest'">
                        <!-- <td><input  /></td> -->
                        <td><button @click="showReplyInsert(article.id, article_index)">回應</button></td>
                    </tr>
                    <tr class="reply-footer" v-if="userName == 'Guest'">
                        <td><input value="尚未登入，無法回應" disabled /></td>
                    </tr>
                </table>
            </tr>
            </td></tr>
        </table>
    </div>

    <!-- 編輯文章 -->
    <modal v-if="showArticleModal" @close="showArticleModal = false" class="atricle-model">
        <div slot="header">
            <h3 v-if="articleModalState == 'insert'">新增文章</h3>
            <h3 v-if="articleModalState == 'edit'">編輯文章</h3>
            <h3 v-if="articleModalState == 'reply'">回應文章</h3>
        </div>

        <div slot="body">
            <form>
                <div class="row">{{userName}}</div>
                <div v-if="articleModalState != 'reply'">
                <div class="row"><label>標題</label><input v-model="new_article.title" /></div>
                <div class="row"><label>內容</label><textarea v-model="new_article.content"></textarea></div>
                </div>
                <div class="row" v-else><label>內容</label><textarea v-model="new_reply.content"></textarea></div>
            </form>
        </div>

        <div slot="footer">
            <button class="modal-default-button" v-if="articleModalState == 'insert'" @click="ArticleInsert()">新增</button>
            <button class="modal-default-button" v-if="articleModalState == 'edit'" @click="ArticleUpdate()">更新</button>
            <button class="modal-default-button" v-if="articleModalState == 'reply'" @click="ReplyInsert()">回應</button>
            <button class="modal-default-button" @click="showArticleModal = false">取消</button>
        </div>
    </modal>

</div>
</template>

<style>
    /* table,tr,td{
        border: 1px black solid;
    } */
    .article-model {
        display: inline-block;
        width: auto;
        height: auto;
        position: relative;
        left: 300px;
    }

</style>

<script>
import modal from './Modal.vue'

export default {
    
    props: ['cardId','userName'],

    data () {
        return {
            card: {
            },
            article: [],
            reply: [],
            articleModalState: "",
            showArticleModal: false,

            isReady: false
        }
    },

    methods: {
        init: function(){
            console.log(this.cardId);
            console.log(this.userName);
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
            this.axios.get('/article/' + this.cardId)
                .then(function(response){
                    self.article = response.data.article;
                    console.log(self.article);
                    self.isReady = true;
                })
                .catch(function(response){
                    console.log(response);
                });
            
        },

        showArticleInsert: function(){
            this.setNewArticle(this.userName, this.cardId);

            this.articleModalState = "insert";
            this.showArticleModal = true;
        },

        showArticleEdit: function(article_id, index){
            let self = this;
            this.articleIndex = index
            this.setNewArticle(this.userName, this.cardId);

            this.axios.get('/article/edit/'+article_id)
                .then(function(response){
                    self.new_article = response.data.article;
                    self.articleModalState = "edit";
                    self.showArticleModal = true;
                })

        },

        ArticleUpdate: function(){
            let self = this;

            this.axios({
                method: 'put',
                url: '/article/update/'+self.new_article.id,
                data: {
                    article: self.new_article
                },
            }).then(function(response){
                self.showArticleModal = false;
                self.article[self.articleIndex]['title'] = self.new_article['title'];
                self.article[self.articleIndex]['content'] = self.new_article['content'];
                // console.log(self.new_article, self.new_article['title'], self.new_article['content'], self.article[self.articleIndex]);
                console.log("完成");
            }).catch(function(response){
                // console.log(self.new_article, self.new_article['title'], self.new_article['content']);
                console.log(response);
            });
        },

        ArticleInsert: function(){
            let self = this;

            this.axios.post('/article', {
                article: self.new_article
            })
            .then(function(response){
                self.showArticleModal = false;
                // console.log(response.data.article);
                self.article = response.data.article;
                // console.log(self.article);
                console.log("完成");
                
            })
            .catch(function(response){
                // console.log(self.new_article);
                console.log(response);
            });
        },
        
        delArticle: function(article_id, index){
            let self = this;

            this.axios({
                method: 'delete',
                url: '/article/del/'+article_id,
            }).then(function(response){
                self.article.splice(index, 1);
                console.log("完成");
            }).catch(function(response){
                console.log(response);
            });
            this.axios({
                method: 'delete',
                url: '/reply/delAll/'+article_id,
            }).then(function(response){
                self.article[index].reply = null;
                console.log("完成");
            }).catch(function(response){
                console.log(response);
            });
        },

        setNewArticle: function(user_name , card_id){
            this.new_article = {
                user_name: user_name,
                title: "",
                content: "",
                card_id: card_id
            }
        },

        ReplyInsert: function(){
            let self = this;

            this.axios.post('/reply', {
                reply: self.new_reply
            })
            .then(function(response){
                self.showArticleModal = false;
                self.article[self.articleIndex].reply.push(response.data.reply);
                // console.log(self.new_reply, self.article[self.articleIndex].reply);
                console.log("完成");
            })
            .catch(function(response){
                // console.log(self.new_reply);
                console.log(response);
            });

        },

        setNewReply: function(user_name, article_id){
            this.new_reply = {
                user_name: user_name,
                content: "",
                article_id: article_id
            }
        },

        showReplyInsert: function(article_id, index){
            this.setNewReply(this.userName, article_id);
            this.articleIndex = index

            this.articleModalState = "reply";
            this.showArticleModal = true;
        },
    },


    mounted: function(){
        this.init();
        
    },
    
    components: {
        modal
    }
}
</script>
