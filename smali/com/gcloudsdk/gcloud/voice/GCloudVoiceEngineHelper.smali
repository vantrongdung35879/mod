.class public Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngineHelper;
.super Ljava/lang/Object;
.source "GCloudVoiceEngineHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native APITrace(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native AndroidInit()V
.end method

.method public static native ApplyMessageKey(I)I
.end method

.method public static native ApplyMessageKey(Ljava/lang/String;II)I
.end method

.method public static native AuditionFileForMagicType(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native ChangeRole(ILjava/lang/String;)I
.end method

.method public static native CloseMic()I
.end method

.method public static native CloseSpeaker()I
.end method

.method public static native DownloadRecordedFile(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native DownloadRecordedFile(Ljava/lang/String;Ljava/lang/String;IZ)I
.end method

.method public static native EnableAccFilePlay(Z)I
.end method

.method public static native EnableBluetoothSCO(Z)V
.end method

.method public static native EnableCivilFile(Z)I
.end method

.method public static native EnableCivilVoice(Z)I
.end method

.method public static native EnableEarBack(Z)I
.end method

.method public static native EnableKeyWordsDetect(Z)I
.end method

.method public static native EnableKws(Z)I
.end method

.method public static native EnableLog(Z)I
.end method

.method public static native EnableMagicVoice(Ljava/lang/String;Z)I
.end method

.method public static native EnableMultiRoom(Z)I
.end method

.method public static native EnableNativeBGMPlay(Z)I
.end method

.method public static native EnableRSTSSubtitle(ZI[II)I
.end method

.method public static native EnableRecvMagicVoice(Z)I
.end method

.method public static native EnableReportALL(Z)I
.end method

.method public static native EnableReportALLAbroad(Z)I
.end method

.method public static native EnableReportForAbroad(Z)I
.end method

.method public static native EnableRoomMicrophone(Ljava/lang/String;Z)I
.end method

.method public static native EnableRoomSpeaker(Ljava/lang/String;Z)I
.end method

.method public static native EnableSpeakerOn(Z)I
.end method

.method public static native EnableTranslate(Ljava/lang/String;ZII)I
.end method

.method public static native EngineJniInstance()I
.end method

.method public static native ForbidMemberVoice(IZLjava/lang/String;)I
.end method

.method public static native ForbidUseIDVoice(Ljava/lang/String;ZLjava/lang/String;)I
.end method

.method public static native GetAccFileTotalTimeByMs()I
.end method

.method public static native GetAccPlayTimeByMs()I
.end method

.method public static native GetBGMLevel()I
.end method

.method public static native GetBGMPlayState()I
.end method

.method public static native GetCurPlayTimeForPreview()I
.end method

.method public static native GetFileParam(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;)I
.end method

.method public static native GetMicLevel()I
.end method

.method public static native GetMicState()I
.end method

.method public static native GetMuteResult()I
.end method

.method public static native GetRecordKaraokeTotalTime()I
.end method

.method public static native GetRoomMembers(Ljava/lang/String;[Ljava/lang/String;[I[I)I
.end method

.method public static native GetSpeakerLevel()I
.end method

.method public static native GetSpeakerState()I
.end method

.method public static native GetUseID(Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method public static native Init()I
.end method

.method public static native Invoke(III[I)I
.end method

.method public static native IsRecordComplete(Z)I
.end method

.method public static native IsSaveMagicFile(Z)I
.end method

.method public static native IsSpeaking()I
.end method

.method public static native IsUseIDBeForbidVoice(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native JoinNationalRoom(Ljava/lang/String;II)I
.end method

.method public static native JoinNationalRoom(Ljava/lang/String;ILjava/lang/String;II)I
.end method

.method public static native JoinNationalRoomByScenes(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public static native JoinRangeRoom(Ljava/lang/String;I)I
.end method

.method public static native JoinRangeRoomByScenes(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native JoinTeamRoom(Ljava/lang/String;I)I
.end method

.method public static native JoinTeamRoom(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public static native JoinTeamRoomByScenes(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native OpenMic()I
.end method

.method public static native OpenSpeaker()I
.end method

.method public static native Pause()I
.end method

.method public static native PauseBGMPlay()I
.end method

.method public static native PauseKaraoke()I
.end method

.method public static native PlayRecordedFile(Ljava/lang/String;I)I
.end method

.method public static native Poll()I
.end method

.method public static native QuitRoom(Ljava/lang/String;I)I
.end method

.method public static native QuitRoomByScenes(Ljava/lang/String;I)I
.end method

.method public static native RSTSSpeechToSpeech(I[IILjava/lang/String;IFFILjava/lang/String;)I
.end method

.method public static native RSTSSpeechToText(I[IIILjava/lang/String;)I
.end method

.method public static native RSTSStartRecording(I[IIIILjava/lang/String;)I
.end method

.method public static native RSTSStopRecording()I
.end method

.method public static native ReportFileForAbroad(Ljava/lang/String;ZZI)I
.end method

.method public static native ReportPlayer([Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public static native Resume()I
.end method

.method public static native ResumeBGMPlay()I
.end method

.method public static native ResumeKaraoke()I
.end method

.method public static native RoomGeneralDataChannel(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native SeekTimeMsForAcc(I)I
.end method

.method public static native SeekTimeMsForPreview(I)I
.end method

.method public static native SetAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native SetAudience([IILjava/lang/String;)I
.end method

.method public static native SetBGMPath(Ljava/lang/String;)I
.end method

.method public static native SetBGMVol(I)I
.end method

.method public static native SetBitRate(I)I
.end method

.method public static native SetCivilBinPath(Ljava/lang/String;)I
.end method

.method public static native SetDataFree(Z)I
.end method

.method public static native SetKaraokeAccVol(I)I
.end method

.method public static native SetKaraokeVoiceDelay(I)I
.end method

.method public static native SetKaraokeVoiceVol(I)I
.end method

.method public static native SetKwsModelPath(Ljava/lang/String;)I
.end method

.method public static native SetMagicVoiceMsgType(Ljava/lang/String;)I
.end method

.method public static native SetMicVolume(I)I
.end method

.method public static native SetMode(I)I
.end method

.method public static native SetNotify(Lcom/gcloudsdk/gcloud/voice/IGCloudVoiceNotify;)I
.end method

.method public static native SetPlayerForUseID([Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public static native SetPlayerInfoAbroad([Ljava/lang/String;[I[II)I
.end method

.method public static native SetRSTTServerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native SetReportBufferTime(I)I
.end method

.method public static native SetReportedPlayerInfo([Ljava/lang/String;[II)I
.end method

.method public static native SetServerInfo(Ljava/lang/String;)I
.end method

.method public static native SetSpeakerVolume(I)I
.end method

.method public static native SetVoiceEffects(I)I
.end method

.method public static native SetVolumeForRoom(Ljava/lang/String;I)I
.end method

.method public static native SetVolumeForUseID(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native SpeechFileToText(Ljava/lang/String;III)I
.end method

.method public static native SpeechFileTranslate(Ljava/lang/String;IIIFFI)I
.end method

.method public static native SpeechToText(Ljava/lang/String;II)I
.end method

.method public static native SpeechToText(Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method public static native SpeechTranslate(Ljava/lang/String;IIII)I
.end method

.method public static native StartBGMPlay()I
.end method

.method public static native StartKaraokeRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native StartPreview()I
.end method

.method public static native StartRecording(Ljava/lang/String;)I
.end method

.method public static native StopBGMPlay()I
.end method

.method public static native StopKaraokeRecording()I
.end method

.method public static native StopPlayFile()I
.end method

.method public static native StopPreview()I
.end method

.method public static native StopRecording()I
.end method

.method public static native TestMic()I
.end method

.method public static native TextToSpeech(Ljava/lang/String;IIILjava/lang/String;)I
.end method

.method public static native TextToSpeechFile(Ljava/lang/String;ILjava/lang/String;IFFILjava/lang/String;)I
.end method

.method public static native TextToStreamSpeechStart(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native TextToStreamSpeechStop()I
.end method

.method public static native TextTranslate(Ljava/lang/String;III)I
.end method

.method public static native UpdateCoordinate(Ljava/lang/String;JJJJ)I
.end method

.method public static native UploadRecordedFile(Ljava/lang/String;I)I
.end method

.method public static native UploadRecordedFile(Ljava/lang/String;IZ)I
.end method
