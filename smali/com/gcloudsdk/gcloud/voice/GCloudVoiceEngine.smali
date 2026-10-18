.class public Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;
.super Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineExtension;
.source "GCloudVoiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine$TaskID;
    }
.end annotation


# static fields
.field private static volatile _instance:Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;


# instance fields
.field private JNIHelper:Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;

.field private appContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    :try_start_0
    const-string v0, "GCloudVoice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Load library GCloudVoice failed!!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 63
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineExtension;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;->appContext:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-direct {v0}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;-><init>()V

    iput-object v0, p0, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;

    .line 96
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EngineJniInstance()I

    return-void
.end method

.method public static getInstance()Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;
    .locals 2

    .line 84
    sget-object v0, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;->_instance:Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;

    if-nez v0, :cond_1

    .line 85
    const-class v0, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;->_instance:Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;

    invoke-direct {v1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;-><init>()V

    sput-object v1, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;->_instance:Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;

    .line 89
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 91
    :cond_1
    :goto_0
    sget-object v0, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;->_instance:Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;

    return-object v0
.end method


# virtual methods
.method public ApplyMessageKey(I)I
    .locals 0

    .line 426
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->ApplyMessageKey(I)I

    move-result p1

    return p1
.end method

.method public ChangeRole(I)I
    .locals 1

    .line 309
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->ChangeRole(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public ChangeRole(ILjava/lang/String;)I
    .locals 0

    .line 329
    invoke-static {p1, p2}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->ChangeRole(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public CloseMic()I
    .locals 1

    .line 357
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->CloseMic()I

    move-result v0

    return v0
.end method

.method public CloseSpeaker()I
    .locals 1

    .line 385
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->CloseSpeaker()I

    move-result v0

    return v0
.end method

.method public DownloadRecordedFile(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 498
    invoke-static {p1, p2, p3}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->DownloadRecordedFile(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public Init()I
    .locals 1

    .line 140
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->Init()I

    move-result v0

    return v0
.end method

.method public JoinNationalRoom(Ljava/lang/String;II)I
    .locals 0

    .line 270
    invoke-static {p1, p2, p3}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->JoinNationalRoom(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public JoinRangeRoom(Ljava/lang/String;I)I
    .locals 0

    .line 248
    invoke-static {p1, p2}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->JoinRangeRoom(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public JoinTeamRoom(Ljava/lang/String;I)I
    .locals 0

    .line 228
    invoke-static {p1, p2}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->JoinTeamRoom(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public OpenMic()I
    .locals 1

    .line 343
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->OpenMic()I

    move-result v0

    return v0
.end method

.method public OpenSpeaker()I
    .locals 1

    .line 371
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->OpenSpeaker()I

    move-result v0

    return v0
.end method

.method public Pause()I
    .locals 1

    .line 194
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->Pause()I

    move-result v0

    return v0
.end method

.method public PlayRecordedFile(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 520
    invoke-static {p1, v0}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->PlayRecordedFile(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public Poll()I
    .locals 1

    .line 183
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->Poll()I

    move-result v0

    return v0
.end method

.method public QuitRoom(Ljava/lang/String;I)I
    .locals 0

    .line 405
    invoke-static {p1, p2}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->QuitRoom(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public Resume()I
    .locals 1

    .line 205
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->Resume()I

    move-result v0

    return v0
.end method

.method public SetAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 127
    invoke-static {p1, p2, p3}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public SetMode(I)I
    .locals 0

    .line 170
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetMode(I)I

    move-result p1

    return p1
.end method

.method public SetNotify(Lcom/gcloudsdk/gcloud/voice/IGCloudVoiceNotify;)I
    .locals 0

    .line 155
    invoke-static {p1}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->setGCloudVoiceNotify(Lcom/gcloudsdk/gcloud/voice/IGCloudVoiceNotify;)V

    .line 156
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetNotify(Lcom/gcloudsdk/gcloud/voice/IGCloudVoiceNotify;)I

    move-result p1

    return p1
.end method

.method public SpeechToText(Ljava/lang/String;II)I
    .locals 0

    .line 560
    invoke-static {p1, p2, p3}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SpeechToText(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public StartRecording(Ljava/lang/String;)I
    .locals 0

    .line 442
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->StartRecording(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public StopPlayFile()I
    .locals 1

    .line 534
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->StopPlayFile()I

    move-result v0

    return v0
.end method

.method public StopRecording()I
    .locals 1

    .line 457
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->StopRecording()I

    move-result v0

    return v0
.end method

.method public UpdateCoordinate(Ljava/lang/String;JJJJ)I
    .locals 0

    .line 289
    invoke-static/range {p1 .. p9}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->UpdateCoordinate(Ljava/lang/String;JJJJ)I

    move-result p1

    return p1
.end method

.method public UploadRecordedFile(Ljava/lang/String;I)I
    .locals 0

    .line 477
    invoke-static {p1, p2}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->UploadRecordedFile(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public init(Landroid/content/Context;Landroid/app/Activity;)I
    .locals 0

    .line 103
    invoke-static {p1, p2}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceDeviceInit(Landroid/content/Context;Landroid/app/Activity;)V

    if-eqz p1, :cond_0

    .line 106
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->AndroidInit()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
