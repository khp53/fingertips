const Model = require('./model')

// singleton class

class PostsModel extends Model {
    constructor(){
        super('posts')
        if(this.intance) return this.intance
        PostsModel.intance = this
    }
}

module.exports = new PostsModel();