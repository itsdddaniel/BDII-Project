const { google } = require('googleapis');
import axios from "axios";
import { apiData } from "../model/api-schema";

export class APIService
{
    public static apiCall = async (token?: string) =>
    {
        try
        {
            let key_api = 'AIzaSyAd8fRnuY68Wg8EF5MPo-QvP1tAD9Pgtcc';
            google.youtube('v3').search.list
            ({
                    key: key_api,
                    part: 'snippet',
                    channelId: 'UC-lHJZR3Gqxm24_Vd_AJ5Yw',
                    maxResults: 50,
                    pageToken: token,
            }).then((response: { data: any; }) => 
            {
                const { data } = response;
                data.items.forEach((item: { snippet: { title: any; description: any; channelTitle: any; publishedAt: any}; id: any; }) => 
                {
                    let idVideo = item.id.videoId;
                    let channelTitle = item.snippet.channelTitle;
                    let videoTitle = item.snippet.title;
                    let urlVideo = `http://www.youtube.com/watch?v=${item.id.videoId}`;
                    let dateVideo = item.snippet.publishedAt;
                    let tokenPage = data.nextPageToken;

                    google.youtube('v3').videos.list
                    ({
                        id: `${idVideo}`,
                        part: 'statistics',
                        key: key_api,
                        maxResults: 50,
                    }).then((response: { data: any; }) => 
                    {
                        const { data } = response;
                        data.items.forEach((item: { statistics: { viewCount: any; likeCount: any; dislikeCount: any; commentCount: any}; id: any; }) => 
                        {
                            let videoViewCount = item.statistics.viewCount;
                            let videoLikeCount = item.statistics.likeCount;
                            let videoDislikeCount = item.statistics.dislikeCount;
                            let videoCommentCount = item.statistics.commentCount;

                            const api = 
                            {
                                video_id: idVideo,
                                channel_title: channelTitle,
                                video_title: videoTitle,
                                url_video: urlVideo,
                                date_video: dateVideo,
                                views: videoViewCount,
                                likes: videoLikeCount,
                                dislikes: videoDislikeCount,
                                comments: videoCommentCount
                            }
                            new apiData(api).save()
                            
                        })
                    }).catch((err: any) => console.log(err))
                    
                        if(data.nextPageToken != null || data.nextPageToken != undefined)
                        {
                            return APIService.apiCall(data.nextPageToken);
                        }
                        else
                        {
                            console.log('no')
                        }
                })
            }).catch((err: any) => console.log(err))
        }
        catch(err)
        {
            console.log('r')
        }
    }
}

function url(url: any, options: any, arg2: (error: any, res: any, body: any) => void) {
    throw new Error("Function not implemented.");
}
