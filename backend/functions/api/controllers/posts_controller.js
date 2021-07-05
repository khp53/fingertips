const Controller = require('./controllers')
const PostsModel =  require('../models/posts_model')

const postsController = new Controller(PostsModel)
module.exports = postsController.router