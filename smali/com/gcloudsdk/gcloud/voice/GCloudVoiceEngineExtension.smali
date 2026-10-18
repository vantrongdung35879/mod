.class public Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineExtension;
.super Ljava/lang/Object;
.source "GCloudVoiceEngineExtension.java"


# static fields
.field private static JNIHelper:Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-direct {v0}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;-><init>()V

    sput-object v0, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineExtension;->JNIHelper:Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;

    .line 31
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EngineJniInstance()I

    return-void
.end method


# virtual methods
.method public APITrace(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 965
    invoke-static {p1, p2}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->APITrace(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public ApplyMessageKey_Token(Ljava/lang/String;II)I
    .locals 0

    .line 350
    invoke-static {p1, p2, p3}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->ApplyMessageKey(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public AuditionFileForMagicType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1053
    invoke-static {p1, p2}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->AuditionFileForMagicType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public DownloadRecordedFile(Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 0

    .line 653
    invoke-static {p1, p2, p3, p4}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->DownloadRecordedFile(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result p1

    return p1
.end method

.method public EnableAccFilePlay(Z)I
    .locals 0

    .line 1115
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableAccFilePlay(Z)I

    move-result p1

    return p1
.end method

.method public EnableBluetoothSCO(Z)V
    .locals 0

    .line 485
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableBluetoothSCO(Z)V

    return-void
.end method

.method public EnableCivilFile(Z)I
    .locals 0

    .line 1043
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableCivilFile(Z)I

    move-result p1

    return p1
.end method

.method public EnableCivilVoice(Z)I
    .locals 0

    .line 843
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableCivilVoice(Z)I

    move-result p1

    return p1
.end method

.method public EnableEarBack(Z)I
    .locals 0

    .line 1087
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableEarBack(Z)I

    move-result p1

    return p1
.end method

.method public EnableKeyWordsDetect(Z)I
    .locals 0

    .line 855
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableKeyWordsDetect(Z)I

    move-result p1

    return p1
.end method

.method public EnableKws(Z)I
    .locals 0

    .line 1012
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableKws(Z)I

    move-result p1

    return p1
.end method

.method public EnableLog(Z)I
    .locals 0

    .line 563
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableLog(Z)I

    move-result p1

    return p1
.end method

.method public EnableMagicVoice(Ljava/lang/String;Z)I
    .locals 0

    .line 892
    invoke-static {p1, p2}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableMagicVoice(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public EnableMultiRoom(Z)I
    .locals 0

    .line 149
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableMultiRoom(Z)I

    move-result p1

    return p1
.end method

.method public EnableNativeBGMPlay(Z)I
    .locals 0

    .line 212
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableNativeBGMPlay(Z)I

    move-result p1

    return p1
.end method

.method public EnableRSTSSubtitle(ZI[II)I
    .locals 0

    .line 1369
    invoke-static {p1, p2, p3, p4}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableRSTSSubtitle(ZI[II)I

    move-result p1

    return p1
.end method

.method public EnableRecvMagicVoice(Z)I
    .locals 0

    .line 912
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableRecvMagicVoice(Z)I

    move-result p1

    return p1
.end method

.method public EnableReportALL(Z)I
    .locals 0

    .line 986
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableReportALL(Z)I

    move-result p1

    return p1
.end method

.method public EnableReportALLAbroad(Z)I
    .locals 0

    .line 996
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableReportALLAbroad(Z)I

    move-result p1

    return p1
.end method

.method public EnableReportForAbroad(Z)I
    .locals 0

    .line 1007
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableReportForAbroad(Z)I

    move-result p1

    return p1
.end method

.method public EnableRoomMicrophone(Ljava/lang/String;Z)I
    .locals 0

    .line 164
    invoke-static {p1, p2}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableRoomMicrophone(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public EnableRoomSpeaker(Ljava/lang/String;Z)I
    .locals 0

    .line 179
    invoke-static {p1, p2}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableRoomSpeaker(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public EnableSpeakerOn(Z)I
    .locals 0

    .line 390
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableSpeakerOn(Z)I

    move-result p1

    return p1
.end method

.method public EnableTranslate(Ljava/lang/String;ZII)I
    .locals 0

    .line 871
    invoke-static {p1, p2, p3, p4}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->EnableTranslate(Ljava/lang/String;ZII)I

    move-result p1

    return p1
.end method

.method public ForbidMemberVoice(IZ)I
    .locals 1

    .line 591
    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->ForbidMemberVoice(IZLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public ForbidMemberVoice(IZLjava/lang/String;)I
    .locals 0

    .line 608
    invoke-static {p1, p2, p3}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->ForbidMemberVoice(IZLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public ForbidUseIDVoice(Ljava/lang/String;ZLjava/lang/String;)I
    .locals 0

    .line 1329
    invoke-static {p1, p2, p3}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->ForbidUseIDVoice(Ljava/lang/String;ZLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public GetAccFileTotalTimeByMs()I
    .locals 1

    .line 1208
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->GetAccFileTotalTimeByMs()I

    move-result v0

    return v0
.end method

.method public GetAccPlayTimeByMs()I
    .locals 1

    .line 1217
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->GetAccPlayTimeByMs()I

    move-result v0

    return v0
.end method

.method public GetBGMFileTime()I
    .locals 1

    .line 1246
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->GetAccFileTotalTimeByMs()I

    move-result v0

    return v0
.end method

.method public GetBGMLevel()I
    .locals 1

    .line 1256
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->GetBGMLevel()I

    move-result v0

    return v0
.end method

.method public GetBGMPlayState()I
    .locals 1

    .line 271
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->GetBGMPlayState()I

    move-result v0

    return v0
.end method

.method public GetBGMPlayTime()I
    .locals 1

    .line 1260
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->GetAccPlayTimeByMs()I

    move-result v0

    return v0
.end method

.method public GetCurPlayTimeForPreview()I
    .locals 1

    .line 1234
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->GetCurPlayTimeForPreview()I

    move-result v0

    return v0
.end method

.method public GetFileParam(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;)I
    .locals 0

    .line 666
    invoke-static {p1, p2, p3}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->GetFileParam(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;)I

    move-result p1

    return p1
.end method

.method public GetMicLevel()I
    .locals 1

    .line 423
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->GetMicLevel()I

    move-result v0

    return v0
.end method

.method public GetMicState()I
    .locals 1

    .line 443
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->GetMicState()I

    move-result v0

    return v0
.end method

.method public GetMuteResult()I
    .locals 1

    .line 494
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->GetMuteResult()I

    move-result v0

    return v0
.end method

.method public GetRecordKaraokeTotalTime()I
    .locals 1

    .line 1225
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->GetRecordKaraokeTotalTime()I

    move-result v0

    return v0
.end method

.method public GetRoomMembers(Ljava/lang/String;[Lcom/gcloudsdk/gcloud/voice/RoomMember;)I
    .locals 7

    if-eqz p2, :cond_3

    .line 1286
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1292
    :cond_0
    array-length v0, p2

    .line 1293
    new-array v1, v0, [Ljava/lang/String;

    .line 1294
    new-array v2, v0, [I

    .line 1295
    new-array v0, v0, [I

    .line 1296
    invoke-static {p1, v1, v2, v0}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->GetRoomMembers(Ljava/lang/String;[Ljava/lang/String;[I[I)I

    move-result p1

    if-lez p1, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_2

    .line 1299
    array-length v5, p2

    if-ge v4, v5, :cond_2

    .line 1301
    aget-object v5, p2, v4

    if-nez v5, :cond_1

    .line 1303
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getroommbers ret="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but roommembers is null,maybe you need new it"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    return v3

    .line 1306
    :cond_1
    aget-object v6, v1, v4

    iput-object v6, v5, Lcom/gcloudsdk/gcloud/voice/RoomMember;->openid:Ljava/lang/String;

    .line 1307
    aget-object v5, p2, v4

    aget v6, v2, v4

    iput v6, v5, Lcom/gcloudsdk/gcloud/voice/RoomMember;->memberid:I

    .line 1308
    aget-object v5, p2, v4

    aget v6, v0, v4

    iput v6, v5, Lcom/gcloudsdk/gcloud/voice/RoomMember;->status:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return p1

    :cond_3
    :goto_1
    const/4 p2, 0x0

    .line 1288
    invoke-static {p1, p2, p2, p2}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->GetRoomMembers(Ljava/lang/String;[Ljava/lang/String;[I[I)I

    move-result p1

    return p1
.end method

.method public GetSpeakerLevel()I
    .locals 1

    .line 433
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->GetSpeakerLevel()I

    move-result v0

    return v0
.end method

.method public GetSpeakerState()I
    .locals 1

    .line 453
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->GetSpeakerState()I

    move-result v0

    return v0
.end method

.method public GetUseID(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0

    .line 1346
    invoke-static {p1, p2, p3}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->GetUseID(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public Invoke(III[I)I
    .locals 0

    .line 824
    invoke-static {p1, p2, p3, p4}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->Invoke(III[I)I

    move-result p1

    return p1
.end method

.method public IsRecordComplete(Z)I
    .locals 0

    .line 1165
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->IsRecordComplete(Z)I

    move-result p1

    return p1
.end method

.method public IsSaveMagicFile(Z)I
    .locals 0

    .line 1059
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->IsSaveMagicFile(Z)I

    move-result p1

    return p1
.end method

.method public IsSpeaking()I
    .locals 1

    .line 475
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->IsSpeaking()I

    move-result v0

    return v0
.end method

.method public IsUseIDBeForbidVoice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1340
    invoke-static {p1, p2}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->IsUseIDBeForbidVoice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public JoinNationalRoom_Scenes(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 0

    .line 104
    invoke-static {p1, p2, p3, p4}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->JoinNationalRoomByScenes(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public JoinNationalRoom_Token(Ljava/lang/String;ILjava/lang/String;II)I
    .locals 0

    .line 331
    invoke-static {p1, p2, p3, p4, p5}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->JoinNationalRoom(Ljava/lang/String;ILjava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public JoinRangeRoom_Scenes(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 78
    invoke-static {p1, p2, p3}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->JoinRangeRoomByScenes(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public JoinTeamRoom_Scenes(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 54
    invoke-static {p1, p2, p3}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->JoinTeamRoomByScenes(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public JoinTeamRoom_Token(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 0

    .line 307
    invoke-static {p1, p2, p3, p4}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->JoinTeamRoom(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public PauseBGMPlay()I
    .locals 1

    .line 247
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->PauseBGMPlay()I

    move-result v0

    return v0
.end method

.method public PauseKaraoke()I
    .locals 1

    .line 1192
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->PauseKaraoke()I

    move-result v0

    return v0
.end method

.method public QuitRoom_Scenes(Ljava/lang/String;I)I
    .locals 0

    .line 124
    invoke-static {p1, p2}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->QuitRoomByScenes(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public RSTSSpeechToSpeech(I[IILjava/lang/String;IFFILjava/lang/String;)I
    .locals 0

    .line 790
    invoke-static/range {p1 .. p9}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->RSTSSpeechToSpeech(I[IILjava/lang/String;IFFILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public RSTSSpeechToText(I[IIILjava/lang/String;)I
    .locals 0

    .line 809
    invoke-static {p1, p2, p3, p4, p5}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->RSTSSpeechToText(I[IIILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public RSTSStartRecording(I[IIIILjava/lang/String;)I
    .locals 0

    .line 767
    invoke-static/range {p1 .. p6}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->RSTSStartRecording(I[IIIILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public RSTSStopRecording()I
    .locals 1

    .line 816
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->RSTSStopRecording()I

    move-result v0

    return v0
.end method

.method public ReportFileForAbroad(Ljava/lang/String;ZZI)I
    .locals 0

    .line 1031
    invoke-static {p1, p2, p3, p4}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->ReportFileForAbroad(Ljava/lang/String;ZZI)I

    move-result p1

    return p1
.end method

.method public ReportPlayer([Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 1274
    invoke-static {p1, p2, p3}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->ReportPlayer([Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public ResumeBGMPlay()I
    .locals 1

    .line 259
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->ResumeBGMPlay()I

    move-result v0

    return v0
.end method

.method public ResumeKaraoke()I
    .locals 1

    .line 1199
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->ResumeKaraoke()I

    move-result v0

    return v0
.end method

.method public RoomGeneralDataChannel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 953
    invoke-static {p1, p2}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->RoomGeneralDataChannel(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public SeekTimeMsForAcc(I)I
    .locals 0

    .line 1185
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SeekTimeMsForAcc(I)I

    move-result p1

    return p1
.end method

.method public SeekTimeMsForPreview(I)I
    .locals 0

    .line 1175
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SeekTimeMsForPreview(I)I

    move-result p1

    return p1
.end method

.method public SetAudience([ILjava/lang/String;)I
    .locals 1

    .line 575
    array-length v0, p1

    invoke-static {p1, v0, p2}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetAudience([IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public SetBGMPath(Ljava/lang/String;)I
    .locals 0

    .line 200
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetBGMPath(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public SetBGMPlayTime(I)I
    .locals 0

    .line 1264
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SeekTimeMsForAcc(I)I

    move-result p1

    return p1
.end method

.method public SetBGMVol(I)I
    .locals 0

    .line 235
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetBGMVol(I)I

    move-result p1

    return p1
.end method

.method public SetBitRate(I)I
    .locals 0

    .line 539
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetBitRate(I)I

    move-result p1

    return p1
.end method

.method public SetCivilBinPath(Ljava/lang/String;)I
    .locals 0

    .line 831
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetCivilBinPath(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public SetDataFree(Z)I
    .locals 0

    .line 551
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetDataFree(Z)I

    move-result p1

    return p1
.end method

.method public SetKaraokeAccVol(I)I
    .locals 0

    .line 1132
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetKaraokeAccVol(I)I

    move-result p1

    return p1
.end method

.method public SetKaraokeVoiceDelay(I)I
    .locals 0

    .line 1141
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetKaraokeVoiceDelay(I)I

    move-result p1

    return p1
.end method

.method public SetKaraokeVoiceVol(I)I
    .locals 0

    .line 1124
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetKaraokeVoiceVol(I)I

    move-result p1

    return p1
.end method

.method public SetKwsModelPath(Ljava/lang/String;)I
    .locals 0

    .line 1016
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetKwsModelPath(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public SetMagicVoiceMsgType(Ljava/lang/String;)I
    .locals 0

    .line 976
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetMagicVoiceMsgType(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public SetMicVolume(I)I
    .locals 0

    .line 401
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetMicVolume(I)I

    move-result p1

    return p1
.end method

.method public SetPlayerForUseID([Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 1364
    invoke-static {p1, p2, p3}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetPlayerForUseID([Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public SetPlayerInfoAbroad([Ljava/lang/String;[I[II)I
    .locals 0

    .line 970
    invoke-static {p1, p2, p3, p4}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetPlayerInfoAbroad([Ljava/lang/String;[I[II)I

    move-result p1

    return p1
.end method

.method public SetRSTTServerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1075
    invoke-static {p1, p2, p3}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetRSTTServerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public SetReportBufferTime(I)I
    .locals 0

    .line 1279
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetReportBufferTime(I)I

    move-result p1

    return p1
.end method

.method public SetReportedPlayerInfo([Ljava/lang/String;[II)I
    .locals 0

    .line 1269
    invoke-static {p1, p2, p3}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetReportedPlayerInfo([Ljava/lang/String;[II)I

    move-result p1

    return p1
.end method

.method public SetServerInfo(Ljava/lang/String;)I
    .locals 0

    .line 526
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetServerInfo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public SetSpeakerVolume(I)I
    .locals 0

    .line 413
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetSpeakerVolume(I)I

    move-result p1

    return p1
.end method

.method public SetVoiceEffects(I)I
    .locals 0

    .line 511
    invoke-static {p1}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetVoiceEffects(I)I

    move-result p1

    return p1
.end method

.method public SetVolumeForRoom(Ljava/lang/String;I)I
    .locals 0

    .line 1352
    invoke-static {p1, p2}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetVolumeForRoom(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public SetVolumeForUseID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1359
    invoke-static {p1, p2, p3}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SetVolumeForUseID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public SpeechFileToText(Ljava/lang/String;III)I
    .locals 0

    .line 709
    invoke-static {p1, p2, p3, p4}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SpeechFileToText(Ljava/lang/String;III)I

    move-result p1

    return p1
.end method

.method public SpeechFileTranslate(Ljava/lang/String;IIIFFI)I
    .locals 0

    .line 697
    invoke-static/range {p1 .. p7}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SpeechFileTranslate(Ljava/lang/String;IIIFFI)I

    move-result p1

    return p1
.end method

.method public SpeechToText_Token(Ljava/lang/String;Ljava/lang/String;III)I
    .locals 0

    .line 374
    invoke-static {p1, p2, p3, p4, p5}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SpeechToText(Ljava/lang/String;Ljava/lang/String;III)I

    move-result p1

    return p1
.end method

.method public SpeechTranslate(Ljava/lang/String;IIII)I
    .locals 0

    .line 682
    invoke-static {p1, p2, p3, p4, p5}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->SpeechTranslate(Ljava/lang/String;IIII)I

    move-result p1

    return p1
.end method

.method public StartBGMPlay()I
    .locals 1

    .line 223
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->StartBGMPlay()I

    move-result v0

    return v0
.end method

.method public StartKaraokeRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1098
    invoke-static {p1, p2, p3}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->StartKaraokeRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public StartPreview()I
    .locals 1

    .line 1148
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->StartPreview()I

    move-result v0

    return v0
.end method

.method public StopBGMPlay()I
    .locals 1

    .line 282
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->StopBGMPlay()I

    move-result v0

    return v0
.end method

.method public StopKaraokeRecording()I
    .locals 1

    .line 1106
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->StopKaraokeRecording()I

    move-result v0

    return v0
.end method

.method public StopPreview()I
    .locals 1

    .line 1155
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->StopPreview()I

    move-result v0

    return v0
.end method

.method public TestMic()I
    .locals 1

    .line 465
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->TestMic()I

    move-result v0

    return v0
.end method

.method public TextToSpeech(Ljava/lang/String;IIILjava/lang/String;)I
    .locals 0

    .line 722
    invoke-static {p1, p2, p3, p4, p5}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->TextToSpeech(Ljava/lang/String;IIILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public TextToSpeechFile(Ljava/lang/String;ILjava/lang/String;IFFILjava/lang/String;)I
    .locals 0

    .line 738
    invoke-static/range {p1 .. p8}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->TextToSpeechFile(Ljava/lang/String;ILjava/lang/String;IFFILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public TextToStreamSpeechStart(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 934
    invoke-static {p1, p2, p3, p4, p5}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->TextToStreamSpeechStart(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public TextToStreamSpeechStop()I
    .locals 1

    .line 941
    invoke-static {}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->TextToStreamSpeechStop()I

    move-result v0

    return v0
.end method

.method public TextTranslate(Ljava/lang/String;III)I
    .locals 0

    .line 750
    invoke-static {p1, p2, p3, p4}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->TextTranslate(Ljava/lang/String;III)I

    move-result p1

    return p1
.end method

.method public UploadRecordedFile(Ljava/lang/String;IZ)I
    .locals 0

    .line 630
    invoke-static {p1, p2, p3}, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;->UploadRecordedFile(Ljava/lang/String;IZ)I

    move-result p1

    return p1
.end method
