SELECT CAST([_id] AS VARCHAR(1000)) AS 'id',
CAST([video_title] AS VARCHAR(1000)) AS 'title',
CAST([url_video] AS VARCHAR(1000)) AS 'url'
FROM apidata;

SELECT CAST([_id] AS VARCHAR(1000)) AS 'id',
CAST([channel_title] AS VARCHAR(1000)) AS 'id'
FROM apidata;

SELECT CAST([_id] AS VARCHAR(1000)) AS 'id',
CAST([views] AS VARCHAR(1000)) AS 'views',
CAST([likes] AS VARCHAR(1000)) AS 'likes',
CAST([dislikes] AS VARCHAR(1000)) AS 'dislikes',
CAST([comments] AS VARCHAR(1000)) AS 'comments',
CAST([date_video] AS VARCHAR(1000)) AS 'date'
FROM apidata;

SELECT CAST([_id] AS VARCHAR(1000)) AS 'ID_CANAL',
CAST([_id] AS VARCHAR(1000)) AS 'ID_ESTADISTICAS',
CAST([video_id] AS VARCHAR(1000)) AS 'ID_VIDEOS'
FROM apidata;