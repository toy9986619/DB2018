<template>
<div>
    <div class="article-body" v-show="isReady">
        <button id="show-article-modal" @click="showArticleInsert()" v-if="userName != 'Guest'">新增文章</button>
        <table class="article-table outer-table" v-for="(article, article_index) in article" :key="article.id" width="70%" align="center">
            <tr class="article-main">
                <td>
                    <!-- <tr>
                        <td colspan="">Article:</td>
                    </tr> -->
                    <tr class="article-user">
                        <td>發文者:&nbsp;{{article.user.name}}</td>
                    </tr>
                    <tr class="article-title">
                        <td class="title">標題:&nbsp;{{article.title}}</td>
                    </tr>
                    <tr class="article-content">
                        <td><p class="pre-text">{{article.content}}</p></td>
                    </tr>
                    <tr>
                        <td v-if="userName == article.user.name">
                            <button id="edit-article-model" @click="showArticleEdit(article.id, article_index)">編輯文章</button>
                            <button id="del-article-model" @click="delArticle(article.id, article_index)">刪除</button>
                        </td>
                    </tr>
                </td>
            </tr>
            <tr  v-for="(reply, reply_index) in article.reply" :key="reply.id" class="reply-main">
                <td>
                    <!-- <tr>
                        <td>Reply:</td>
                    </tr> -->
                    <tr class="reply-header">
                        <td class="user-name">{{reply.user.name}}</td>
                    </tr>
                    <tr class="reply-content">
                        <td>
                            <p  class="pre-text">&emsp;{{reply.content}}</p>
                            <button id="del-reply-model" @click="delReply(reply.id, article_index, reply_index)" 
                                v-if="userName == article.user.name">刪除</button>
                        </td>
                    </tr>
                    <!-- <tr>
                        <td>
                            <button id="edit-reply-model" @click="showReplyEdit(reply.id, article_index)" v-if="userName == reply.user.name">編輯文章</button>
                            <button id="del-reply-model" @click="delReply(reply.id, article_index)" v-if="userName == article.user.name">刪除</button>
                        </td>
                    </tr> -->
                </td>
            </tr>
            <tr class="reply-footer" v-if="userName != 'Guest'">
                <td>
                    <form onsubmit="return false;">
                        <textarea @blur="setNewReply(userName, article.id, new_reply_list[article_index])" v-model="new_reply_list[article_index]" 
                            ></textarea>
                            <!-- oninput="this.style.height = this.scrollHeight+'px'" -->
                        <button @click="ReplyInsert(article_index)">回應</button>
                    </form>
                </td>
            </tr>
            <tr class="reply-footer" v-if="userName == 'Guest'">
                <td><input value="尚未登入，無法回應" disabled /></td>
            </tr>
        </table>
    </div>

    <!-- 編輯文章 -->
    <modal v-if="showArticleModal" @close="showArticleModal = false" class="atricle-model">
        <div slot="header">
            <h3 v-if="articleModalState == 'insert'">新增文章</h3>
            <h3 v-if="articleModalState == 'edit'">編輯文章</h3>
        </div>

        <div slot="body">
            <form>
                <div class="row">{{userName}}</div>
                <div class="row"><label>標題</label><input v-model="new_article.title" /></div>
                <div class="row"><label>內容</label><textarea v-model="new_article.content"></textarea></div>
            </form>
        </div>

        <div slot="footer">
            <button class="modal-default-button" v-if="articleModalState == 'insert'" @click="ArticleInsert()">新增</button>
            <button class="modal-default-button" v-if="articleModalState == 'edit'" @click="ArticleUpdate()">更新</button>
            <button class="modal-default-button" @click="showArticleModal = false">取消</button>
        </div>
    </modal>
</div>
</template>

<script>
import modal from "./Modal.vue";

export default {
    props: ['cardId', 'userName'],

    data: function(){
        return {
            article: [],
            reply: [],
            articleModalState: "",
            showArticleModal: false,
            new_reply_list: [],

            isReady: false
        }
    },

    methods: {
        init: function(){
            console.log(this.cardId);
            console.log(this.userName);
            let self = this;
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
            
            //delete slef article
            this.axios({
                method: 'delete',
                url: '/article/del/'+article_id,
            }).then(function(response){
                self.article.splice(index, 1);
                console.log("完成");
            }).catch(function(response){
                console.log(response);
            });
            //delete all reply in self article
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

        ReplyInsert: function(index){
            let self = this;
            self.articleIndex = index

            this.axios.post('/reply', {
                reply: self.new_reply
            })
            .then(function(response){
                self.showArticleModal = false;
                self.article[self.articleIndex].reply.push(response.data.reply);
                self.new_reply_list[self.articleIndex] = null;
                // console.log(self.new_reply, self.article[self.articleIndex].reply);
                console.log("完成");
            })
            .catch(function(response){
                // console.log(self.new_reply);
                console.log(response);
            });

        },

        setNewReply: function(user_name, article_id, content){
            this.new_reply = {
                user_name: user_name,
                content: content,
                article_id: article_id
            }
        },

        delReply: function(reply_id, article_index, reply_index){
            let self = this;
            
            //delete slef reply
            this.axios({
                method: 'delete',
                url: '/reply/del/'+reply_id,
            }).then(function(response){
                self.article[article_index].reply.splice(reply_index, 1);
                console.log("完成");
            }).catch(function(response){
                console.log(response);
            });
        },
    },

    mounted: function(){
        this.init()
    },

    components:{
        modal
    }
}
</script>

<style>
    .pre-text{
        white-space: pre-line;
        word-wrap: break-word;
    }

    .article-main td{
        /* background-color: chartreuse; */
        /* up right down left */
        padding: 4px 4px 4px 6px;
    }

    .reply-main,.reply-footer{
        border-bottom: 1px black solid;
        /* background-color: aqua; */
    }

    .reply-footer textarea{
        width: 90%;
        resize: none;
    }

    .reply-main td,.reply-footer td{
        padding : 4px 4px 4px 6px;
    }
    
    .article-main{
        border: 1px black solid;
    }

    .article-table{
        border: 1px black solid;
    }

    .article-model {
        display: inline-block;
        width: auto;
        height: auto;
        position: relative;
        left: 300px;
    }
</style>
