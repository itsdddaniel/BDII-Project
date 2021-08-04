const mongoose = require('mongoose');
let Schema = mongoose.Schema;
export let apiData = new Schema
(
    {
        video_id: String,
        channel_title: String,
        video_title: String,
        url_video: String,
        date_video: String,
        views: String,
        likes: String,
        dislikes: String,
        comments: String
    }
)
module.exports.apiData =mongoose.model('api',apiData)