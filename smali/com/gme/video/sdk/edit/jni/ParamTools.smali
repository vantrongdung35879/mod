.class public Lcom/gme/video/sdk/edit/jni/ParamTools;
.super Ljava/lang/Object;
.source "ParamTools.java"


# static fields
.field private static final BGM_AT_VIDEO_TIME:Ljava/lang/String; = "BGMAtVideoTime"

.field private static final BGM_CONFIG:Ljava/lang/String; = "BGMConfig"

.field private static final BGM_IS_LOOP:Ljava/lang/String; = "BGMIsLoop"

.field private static final BGM_PATH:Ljava/lang/String; = "BGMPath"

.field private static final BGM_VIDEO_VOLUME:Ljava/lang/String; = "BGMVideoVolume"

.field private static final BGM_VOLUME:Ljava/lang/String; = "BGMVolume"

.field private static final COMPRESS_LEVEL:Ljava/lang/String; = "compressLevel"

.field private static final END_TIME:Ljava/lang/String; = "endTime"

.field private static final IS_REVERSE:Ljava/lang/String; = "isReverse"

.field private static final OUT_PATH:Ljava/lang/String; = "outPath"

.field private static final REPEAT_CONFIG:Ljava/lang/String; = "repeatConfig"

.field private static final REPEAT_TIMES:Ljava/lang/String; = "repeatTimes"

.field private static final SOURCE_PAH:Ljava/lang/String; = "sourcePath"

.field private static final SPEED_CONFIG:Ljava/lang/String; = "speedConfig"

.field private static final SPEED_LEVEL:Ljava/lang/String; = "speedLevel"

.field private static final START_TIME:Ljava/lang/String; = "startTime"

.field public static final TAG:Ljava/lang/String; = "ParamTools"

.field private static final TIME_CONFIG:Ljava/lang/String; = "timeConfig"

.field private static final TRIM_CONFIG:Ljava/lang/String; = "trimConfig"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/gme/video/sdk/GmeVideoGeneratorParam;
    .locals 21

    move-object/from16 v1, p0

    .line 114
    const-string v0, "BGMConfig"

    const-string/jumbo v2, "timeConfig"

    const-string/jumbo v3, "trimConfig"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 116
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "endTime"

    const-string/jumbo v10, "startTime"

    if-eqz v8, :cond_0

    .line 118
    :try_start_1
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 121
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 122
    new-instance v3, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;

    invoke-direct {v3, v11, v12, v13, v14}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;-><init>(JJ)V

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 126
    :goto_0
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 127
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 129
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v8, :cond_1

    .line 131
    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 132
    new-instance v13, Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;

    invoke-direct {v13}, Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;-><init>()V

    .line 133
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v13, Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;->startTimeMs:J

    .line 134
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v13, Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;->endTimeMs:J

    .line 135
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v3, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;

    invoke-direct {v3, v11}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;-><init>(Ljava/util/List;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    .line 141
    sget-object v0, Lcom/gme/video/sdk/edit/jni/ParamTools;->TAG:Ljava/lang/String;

    const-string v2, "build is null, json = %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    .line 145
    :cond_2
    const-string/jumbo v2, "sourcePath"

    .line 146
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "outPath"

    .line 147
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 145
    invoke-virtual {v3, v2, v8}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->videoPath(Ljava/lang/String;Ljava/lang/String;)Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;

    .line 150
    const-string v2, "repeatConfig"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 152
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v8, :cond_3

    .line 154
    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 155
    new-instance v14, Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;

    invoke-direct {v14}, Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;-><init>()V

    .line 156
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v14, Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;->startTimeMs:J

    .line 157
    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v14, Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;->endTimeMs:J

    .line 158
    const-string v4, "repeatTimes"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v14, Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;->repeatTimes:I

    .line 159
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_2

    .line 161
    :cond_3
    invoke-virtual {v3, v11}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->repeat(Ljava/util/List;)Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;

    .line 163
    const-string/jumbo v2, "speedConfig"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 165
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v4, :cond_4

    .line 167
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    .line 168
    new-instance v12, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;

    invoke-direct {v12}, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;-><init>()V

    .line 169
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;->startTimeMs:J

    .line 170
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;->endTimeMs:J

    .line 171
    const-string/jumbo v13, "speedLevel"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v12, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;->speedLevel:I

    .line 172
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 174
    :cond_4
    invoke-virtual {v3, v5}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->speed(Ljava/util/List;)Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;

    .line 176
    const-string v2, "isReverse"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->reverse(Z)Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;

    .line 177
    const-string v2, "compressLevel"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 178
    sget-object v4, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;->LEVEL_ORIGINAL:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    const/4 v5, -0x1

    if-le v2, v5, :cond_5

    .line 179
    invoke-static {}, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;->values()[Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_5

    .line 180
    invoke-static {}, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;->values()[Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    move-result-object v4

    aget-object v4, v4, v2

    .line 182
    :cond_5
    invoke-virtual {v3, v4}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->compress(Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;)Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;

    .line 184
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 185
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 186
    const-string v2, "BGMPath"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->bgmPath(Ljava/lang/String;)Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;

    .line 188
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 189
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v2, "BGMAtVideoTime"

    .line 190
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    const-string v2, "BGMIsLoop"

    .line 191
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    move-object v13, v3

    .line 187
    invoke-virtual/range {v13 .. v20}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->bgmTime(JJJZ)Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;

    .line 193
    const-string v2, "BGMVolume"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const-string v4, "BGMVideoVolume"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v2, v0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->bgmVolume(FF)Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;

    .line 196
    :cond_6
    invoke-virtual {v3}, Lcom/gme/video/sdk/GmeVideoGeneratorParam$Builder;->build()Lcom/gme/video/sdk/GmeVideoGeneratorParam;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 198
    sget-object v2, Lcom/gme/video/sdk/edit/jni/ParamTools;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "json = %s"

    invoke-static {v2, v1, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    const-string v1, "fromJson"

    invoke-static {v2, v1, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static toJson(Lcom/gme/video/sdk/GmeVideoGeneratorParam;)Ljava/lang/String;
    .locals 9

    .line 46
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getTimeConfigs()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "endTime"

    const-string/jumbo v3, "startTime"

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getTimeConfigs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 48
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getTimeConfigs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;

    .line 50
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 51
    iget-wide v7, v5, Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;->startTimeMs:J

    invoke-virtual {v6, v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 52
    iget-wide v7, v5, Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;->endTimeMs:J

    invoke-virtual {v6, v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 55
    :cond_0
    const-string/jumbo v4, "timeConfig"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 57
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getStartMs()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 59
    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getEndMs()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 60
    const-string/jumbo v4, "trimConfig"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :goto_1
    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getRepeatConfigs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 64
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 65
    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getRepeatConfigs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;

    .line 66
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 67
    iget-wide v7, v5, Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;->startTimeMs:J

    invoke-virtual {v6, v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 68
    iget-wide v7, v5, Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;->endTimeMs:J

    invoke-virtual {v6, v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 69
    const-string v7, "repeatTimes"

    iget v5, v5, Lcom/gme/video/sdk/IGmeVideoEditControl$RepeatConfig;->repeatTimes:I

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 72
    :cond_2
    const-string v4, "repeatConfig"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    :cond_3
    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getSpeedConfigs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 76
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 77
    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getSpeedConfigs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;

    .line 78
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 79
    iget-wide v7, v5, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;->startTimeMs:J

    invoke-virtual {v6, v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 80
    iget-wide v7, v5, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;->endTimeMs:J

    invoke-virtual {v6, v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v7, "speedLevel"

    iget v5, v5, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;->speedLevel:I

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 84
    :cond_4
    const-string/jumbo v4, "speedConfig"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :cond_5
    const-string v1, "isReverse"

    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->isReverse()Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 88
    const-string v1, "compressLevel"

    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getCompressLevel()Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;->ordinal()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v1, "sourcePath"

    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getSourcePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v1, "outPath"

    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getOutPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getBgmPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 93
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 94
    const-string v4, "BGMPath"

    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getBgmPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getBgmStartMs()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 96
    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getBgmEndMs()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 97
    const-string v2, "BGMAtVideoTime"

    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getBgmAtVideoMs()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 98
    const-string v2, "BGMVolume"

    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getBgmVolume()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 99
    const-string v2, "BGMVideoVolume"

    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->getBgmVideoVolume()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 100
    const-string v2, "BGMIsLoop"

    invoke-virtual {p0}, Lcom/gme/video/sdk/GmeVideoGeneratorParam;->isBgmLoop()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 101
    const-string v2, "BGMConfig"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    :cond_6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 106
    sget-object v1, Lcom/gme/video/sdk/edit/jni/ParamTools;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "param = %s"

    invoke-static {v1, p0, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    const-string/jumbo p0, "toJson"

    invoke-static {v1, p0, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0
.end method
